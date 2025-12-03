@interface FPUserProcess
+ (unsigned)_dirtyFlagsFromEntryState:(unsigned int)state;
- (BOOL)_populateMemoryRegionWithPageQueries:(id)queries regionInfo:(vm_region_submap_info_64 *)info;
- (BOOL)_populateTask;
- (FPUserProcess)initWithBsdInfo:(proc_bsdinfo *)info;
- (id)_gatherOwnedVmObjects;
- (id)auxData;
- (id)extendedInfoForRegionType:(int)type at:(unint64_t)at extendedInfoProvider:(id)provider;
- (void)_addSubrangesForRegion:(id)region purgeState:(int)state;
- (void)_drainDeferredReclaim;
- (void)_gatherImageData;
- (void)_gatherLedgers;
- (void)_gatherProcessState;
- (void)_gatherSharedCacheFromDyldSnapshot:(dyld_process_snapshot_s *)snapshot;
- (void)_setIdleExitStatusFromDirtyFlags:(unsigned int)flags;
- (void)addLedgerData:(unint64_t *)data count:(unint64_t)count;
- (void)dealloc;
- (void)enumerateRegions:(id)regions;
- (void)gatherData:(unint64_t)data extendedInfoProvider:(id)provider;
@end

@implementation FPUserProcess

- (FPUserProcess)initWithBsdInfo:(proc_bsdinfo *)info
{
  self->super._pid = info->pbi_pid;
  [(FPUserProcess *)self _gatherIsTranslated];
  v9.receiver = self;
  v9.super_class = FPUserProcess;
  v5 = [(FPProcess *)&v9 initWithBsdInfo:info];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    images = v5->_images;
    v5->_images = v6;

    [(FPUserProcess *)v5 _gatherLedgers];
    [(FPUserProcess *)v5 _gatherProcessState];
  }

  return v5;
}

- (void)dealloc
{
  task = self->_task;
  if (task)
  {
    mach_port_deallocate(mach_task_self_, task);
  }

  v4.receiver = self;
  v4.super_class = FPUserProcess;
  [(FPUserProcess *)&v4 dealloc];
}

- (void)gatherData:(unint64_t)data extendedInfoProvider:(id)provider
{
  dataCopy = data;
  providerCopy = provider;
  memoryRegions = [(FPProcess *)self memoryRegions];

  if (!memoryRegions)
  {
    if (![(FPUserProcess *)self _configurePageSize])
    {
      self->_bailedOut = 1;
      v8 = __stderrp;
      images = [(FPProcess *)self displayString];
      fprintf(v8, "%s: skipping due to an error configuring page size for analysis\n", [images UTF8String]);
LABEL_64:

      goto LABEL_65;
    }

    if ([(FPProcess *)self hiddenFromDisplay])
    {
      v7 = providerCopy;
      if (!self)
      {
LABEL_63:

        images = self->_images;
        self->_images = 0;
        goto LABEL_64;
      }
    }

    else
    {
      if ((dataCopy & 8) != 0)
      {
        [(FPUserProcess *)self _drainDeferredReclaim];
      }

      v10 = objc_autoreleasePoolPush();
      [(FPUserProcess *)self _gatherImageData];
      objc_autoreleasePoolPop(v10);
      [(FPUserProcess *)self _gatherLedgers];
      _gatherOwnedVmObjects = [(FPUserProcess *)self _gatherOwnedVmObjects];
      ownedVmObjects = self->_ownedVmObjects;
      self->_ownedVmObjects = _gatherOwnedVmObjects;

      v13 = providerCopy;
    }

    v14 = (dataCopy >> 1) & 1;
    v15 = (dataCopy >> 2) & 1;
    v16 = sub_10000AC10([FPImageEnumerator alloc], self->_images);
    v17 = objc_alloc_init(NSMutableArray);
    hiddenFromDisplay = [(FPProcess *)self hiddenFromDisplay];
    breakDownPhysFootprint = [(FPProcess *)self breakDownPhysFootprint];
    objc_opt_self();
    selfCopy = self;
    v20 = byte_100038638;
    doOwnedAccountingAdjustments = [(FPUserProcess *)selfCopy doOwnedAccountingAdjustments];
    v100 = 0;
    v101 = &v100;
    v102 = 0x2020000000;
    v103 = 0;
    v94 = 0;
    v95 = &v94;
    v96 = 0x3032000000;
    v97 = sub_1000072EC;
    v98 = sub_1000072FC;
    v99 = 0;
    v67 = selfCopy;
    sharedCache = selfCopy->super._sharedCache;
    if (sharedCache)
    {
      v22 = *&sharedCache->_baseAddress;
    }

    else
    {
      v22 = 0uLL;
    }

    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_100007304;
    v81[3] = &unk_1000291B0;
    v87 = v22;
    v88 = hiddenFromDisplay;
    v81[4] = selfCopy;
    v68 = v17;
    v82 = v68;
    v89 = breakDownPhysFootprint;
    v61 = v16;
    v83 = v61;
    v85 = &v94;
    v90 = v14;
    v91 = v15;
    v92 = doOwnedAccountingAdjustments;
    v84 = providerCopy;
    v86 = &v100;
    v93 = v20;
    self = selfCopy;
    [(FPUserProcess *)selfCopy enumerateRegions:v81];
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    objectEnumerator = [(NSMutableDictionary *)selfCopy->_ownedVmObjects objectEnumerator];
    v24 = [objectEnumerator countByEnumeratingWithState:&v77 objects:v104 count:16];
    if (v24)
    {
      obj = objectEnumerator;
      v66 = *v78;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v78 != v66)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v77 + 1) + 8 * i);
          v76 = 0;
          v74 = 0u;
          v75 = 0u;
          v73 = 0u;
          [v26 getBytes:&v73 length:56];
          v27 = objc_alloc_init(FPMemoryRegion);
          v28 = v27;
          if (v27)
          {
            v27->_object_id = v73;
            *(v27 + 8) |= 8u;
            v27->_user_tag = -1;
          }

          v29 = sub_1000023E4(FPMemoryRegion, (v76 >> 1) & 7);
          v30 = sub_100002228(FPMemoryRegion, 0xFFFFFFFFLL);
          if (v29)
          {
            v31 = [[NSString alloc] initWithFormat:@"%@ (%@)", v30, v29];
            [(FPMemoryRegion *)v28 setName:v31];
          }

          else
          {
            [(FPMemoryRegion *)v28 setName:v30];
          }

          if (v28)
          {
            v28->_start = -1;
            v28->_share_mode = 4;
          }

          v71 = 0;
          v72 = 0;
          v69 = 0;
          v70 = 0;
          sub_100007EA4(&v73, &v72, &v71, &v70, &v69);
          v32 = v71;
          [(FPMemoryRegion *)v28 setSwappedSize:v71];
          v33 = v72;
          [(FPMemoryRegion *)v28 setDirtySize:v72];
          v34 = v70;
          [(FPMemoryRegion *)v28 setCleanSize:v70];
          v35 = v69;
          [(FPMemoryRegion *)v28 setReclaimableSize:v69];
          if (v28)
          {
            v36 = v33 + v32 + v34 + v35;
            v37 = *(&v74 + 1);
            if (*(&v73 + 1))
            {
              v36 = *(&v73 + 1);
            }

            v28->_size = v36;
            v38 = *(v28 + 8) & 0xFE;
            if (v37)
            {
              ++v38;
            }

            *(v28 + 8) = v38;
          }

          [v68 addObject:v28];

          self = v67;
        }

        objectEnumerator = obj;
        v24 = [obj countByEnumeratingWithState:&v77 objects:v104 count:16];
      }

      while (v24);
    }

    v39 = self->_ownedVmObjects;
    self->_ownedVmObjects = 0;

    v40 = v95[5];
    if (v40)
    {
      if (doOwnedAccountingAdjustments)
      {
        dirtySize = [v40 dirtySize];
        if (dirtySize >= v101[3])
        {
          [v95[5] setDirtySize:{objc_msgSend(v95[5], "dirtySize") - v101[3]}];
        }

        else
        {
          dirtySize2 = [v95[5] dirtySize];
          v101[3] -= dirtySize2;
          [v95[5] setDirtySize:0];
          swappedSize = [v95[5] swappedSize];
          v44 = v101;
          v45 = v95[5];
          if (swappedSize >= v101[3])
          {
            v50 = [v95[5] swappedSize] - v44[3];
          }

          else
          {
            swappedSize2 = [v95[5] swappedSize];
            v47 = v101[3] - swappedSize2;
            v101[3] = v47;
            warnings = self->super._warnings;
            v49 = [NSString stringWithFormat:@"Footprint changed while analyzing – unmapped owned physical footprint may be over-counted by %llu bytes", v47];
            [(NSMutableArray *)warnings addObject:v49];

            v50 = 0;
            v45 = v95[5];
          }

          [v45 setSwappedSize:v50];
        }
      }

      dirtySize3 = [v95[5] dirtySize];
      if ([v95[5] swappedSize] + dirtySize3)
      {
        v52 = v95;
        v53 = v95[5];
        if (v53)
        {
          *(v53 + 80) = -1;
          v54 = v52[5];
        }

        else
        {
          v54 = 0;
        }

        [v68 addObject:v54];
      }
    }

    if (breakDownPhysFootprint && self->_ledgers[0])
    {
      v55 = objc_alloc_init(FPMemoryRegion);
      v56 = v55;
      v57 = self->_ledgers[0];
      if (v55)
      {
        v55->_size = v57;
      }

      [(FPMemoryRegion *)v55 setDirtySize:v57];
      if (v56)
      {
        v56->_start = -1;
      }

      [(FPMemoryRegion *)v56 setName:@"page table"];
      if (v56)
      {
        v56->_object_id = -1;
        v56->_share_mode = 2;
      }

      [v68 addObject:v56];
    }

    if ((os_variant_has_internal_content() & breakDownPhysFootprint) == 1 && self->_ledgers[3])
    {
      v58 = objc_alloc_init(FPMemoryRegion);
      v59 = v58;
      v60 = self->_ledgers[3];
      if (v58)
      {
        v58->_size = v60;
      }

      [(FPMemoryRegion *)v58 setCleanSize:v60];
      if (v59)
      {
        v59->_start = -1;
      }

      [(FPMemoryRegion *)v59 setName:@"Conclave"];
      if (v59)
      {
        v59->_object_id = -1;
        v59->_share_mode = 2;
      }

      [v68 addObject:v59];
    }

    [(FPProcess *)self setMemoryRegions:v68];

    _Block_object_dispose(&v94, 8);
    _Block_object_dispose(&v100, 8);

    goto LABEL_63;
  }

LABEL_65:
}

- (void)_drainDeferredReclaim
{
  if ([(FPUserProcess *)self _isAlive])
  {
    v3 = [(FPProcess *)self pid];
    if (sysctlbyname("vm.reclaim.drain_pid", 0, 0, &v3, 4uLL))
    {
      if (*__error() != 2 && *__error() != 1)
      {
        sub_100005E30(self, @"vm.reclaim.drain_pid");
      }
    }
  }
}

- (id)_gatherOwnedVmObjects
{
  if (![(FPUserProcess *)self doOwnedAccountingAdjustments])
  {
LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  v13 = 0;
  if (sysctlbyname("vm.get_owned_vmobjects", 0, &v13, &self->_task, 4uLL))
  {
    if (*__error() != 2)
    {
      sub_100005E30(self, @"vm.get_owned_vmobjects");
    }

    goto LABEL_17;
  }

  v3 = v13;
  if (v13)
  {
    v4 = 0;
    v12 = 0;
    do
    {
      v3 += 896;
      v4 = malloc_type_realloc(v4, v3, 0x6DCDC830uLL);
      v12 = v3;
      if (sysctlbyname("vm.get_owned_vmobjects", v4, &v12, &self->_task, 4uLL))
      {
        sub_100005E30(self, @"vm.get_owned_vmobjects");
        free(v4);
        goto LABEL_17;
      }
    }

    while (v3 == v12);
    if (v12)
    {
      if (v12 <= 7)
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
      }

      else if (v12 - 8 >= 56 * *v4)
      {
        v5 = [[NSMutableDictionary alloc] initWithCapacity:*v4];
        if (*v4)
        {
          v6 = 0;
          v7 = (v4 + 1);
          do
          {
            v8 = [[NSData alloc] initWithBytes:v7 length:56];
            v9 = *v7;
            v7 += 7;
            v10 = [NSNumber numberWithUnsignedLongLong:v9];
            [v5 setObject:v8 forKeyedSubscript:v10];

            ++v6;
          }

          while (v6 < *v4);
        }

        free(v4);
        goto LABEL_18;
      }

      _os_assert_log();
      result = _os_crash();
      __break(1u);
      return result;
    }

    free(v4);
  }

  v5 = [[NSMutableDictionary alloc] initWithCapacity:0];
LABEL_18:

  return v5;
}

- (BOOL)_populateMemoryRegionWithPageQueries:(id)queries regionInfo:(vm_region_submap_info_64 *)info
{
  queriesCopy = queries;
  pageSize = [(FPProcess *)self pageSize];
  v7 = pageSize;
  if (!queriesCopy)
  {
    goto LABEL_28;
  }

  v8 = queriesCopy[10];
  v9 = -pageSize;
  v10 = v8 & -pageSize;
  if (v8 == -1)
  {
    v12 = (pageSize - 2) & v9;
    v13 = v10 != -1;
    v11 = -1;
  }

  else
  {
    v11 = queriesCopy[11] + v8;
    v12 = (pageSize + v11 - 1) & v9;
    v13 = v10 != v8;
  }

  while (1)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    if ([queriesCopy dirtySize])
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
      goto LABEL_27;
    }

    if (![queriesCopy swappedSize])
    {
      break;
    }

LABEL_27:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_28:
    v13 = 0;
    v10 = 0;
    v12 = 0;
    v11 = 0;
    v9 = -v7;
  }

  v31 = v12 != v11;
  v32 = v13;
  cachedDispositionAddress = self->_cachedDispositionAddress;
  v15 = v10;
  v16 = (v12 - v10) / v7;
  v17 = v10 == cachedDispositionAddress;
  if (v10 == cachedDispositionAddress)
  {
    v29 = v11;
    v30 = v12;
    cachedDisposition = self->_cachedDisposition;
    v19 = v48;
    v20 = v44;
    v21 = queriesCopy;
    v22 = v20;
    if (queriesCopy)
    {
      v23 = v7 - v21[10] + (v21[10] & v9);
      if (v21[11] < v23)
      {
        v23 = v21[11];
      }
    }

    else
    {
      v23 = 0;
    }

    v15 = v10 + v7;
    --v16;
    if ((cachedDisposition & 8) != 0 || (cachedDisposition & 0x81) == 1 || (v19 = v22, (cachedDisposition & 0x10) != 0))
    {
      v19[3] += v23;
    }

    v11 = v29;
    v12 = v30;
    v17 = v10 == cachedDispositionAddress;
  }

  if (!queriesCopy || (queriesCopy[1] & 4) == 0)
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000064AC;
    v33[3] = &unk_100029160;
    v40 = v17;
    v41 = v32;
    v42 = v31;
    v24 = queriesCopy;
    v36 = &v47;
    v37 = &v43;
    v34 = v24;
    selfCopy = self;
    v38 = v7;
    v39 = v12;
    v25 = sub_100006768(self, v15, v16, v33);
    [(FPMemoryRegion *)v24 setSwappedSize:v44[3]];
    [(FPMemoryRegion *)v24 setDirtySize:v48[3]];
    pendingUnusedSharedRegion = v34;
    goto LABEL_24;
  }

  if (v10 == cachedDispositionAddress)
  {
    [queriesCopy setDirtySize:v48[3]];
    [queriesCopy setSwappedSize:v44[3]];
  }

  v25 = 1;
  if (v12 != v11 && v16)
  {
    v27 = queriesCopy;
    pendingUnusedSharedRegion = self->_pendingUnusedSharedRegion;
    self->_pendingUnusedSharedRegion = v27;
    v25 = 1;
LABEL_24:
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);

  return v25;
}

- (void)enumerateRegions:(id)regions
{
  regionsCopy = regions;
  memset(v36, 0, 76);
  v35 = 0;
  *v33 = 0u;
  v34 = 0u;
  v31 = 0;
  v32 = 0;
  sharedCache = self->super._sharedCache;
  if (sharedCache)
  {
    mappedSize = sharedCache->_mappedSize;
    slide = sharedCache->_slide;
    v6 = sharedCache->_baseAddress - slide;
  }

  else
  {
LABEL_55:
    slide = 0;
    v6 = 0;
    mappedSize = 0;
  }

  firstObject = [(NSMutableArray *)self->_images firstObject];
  if (firstObject)
  {
    v8 = firstObject[3] + firstObject[2];
  }

  else
  {
    v8 = 0;
  }

  v27 = regionsCopy;
  v37 = 0;
  *nesting_depth = 0;
  v29 = 0;

  size = 0;
  v44 = 0;
  *info = 0u;
  v43 = 0u;
  object_name = 0;
  pageSize = [(FPProcess *)self pageSize];
  if (v6)
  {
    v10 = pageSize;
    v11 = v6;
    v12 = v8;
    do
    {
      address = (v12 >> 1) + (v11 >> 1);
      infoCnt = 9;
      if (mach_vm_region(self->_task, &address, &size, 9, info, &infoCnt, &object_name))
      {
        break;
      }

      if (size + address <= v6)
      {
        v8 = address;
        v12 = size + address;
      }

      else
      {
        if (v12 == address)
        {
          break;
        }

        v11 = (v12 >> 1) + (v11 >> 1) - v10;
      }
    }

    while (v11 > v12 && v11 - v12 > 0x1000000);
  }

  else
  {
    v8 = 0;
  }

  v13 = 0;
  v14 = v6 + slide + mappedSize;
  while (1)
  {
    regionsCopy = objc_autoreleasePoolPush();
    nesting_depth[1] = -1;
    v37 = 9;
    v15 = v32;
    if (v8 - 1 >= v32 || v14 <= v32)
    {
      goto LABEL_25;
    }

    v17 = mach_vm_region(self->_task, &v32, &v31, 9, v33, &v37, &v29);
    if (v17)
    {
      break;
    }

    v18 = v32;
    if (v32 < v15)
    {
      v32 = v15;
LABEL_25:
      v18 = v15;
    }

    if (v18 < v8 || (v6 < v31 + v18 ? (v19 = v18 >= v14) : (v19 = 1), v19))
    {
      v37 = 19;
      v20 = mach_vm_region_recurse(self->_task, &v32, &v31, &nesting_depth[1], v36, &v37);
      v21 = v20;
      if (v37 <= 0x12)
      {
        *&v36[17] = v36[14];
      }

      if (v20 == 1 || (v13 & (v36[5] != -1)) != 0)
      {
        goto LABEL_48;
      }

      if (v20)
      {
        v25 = @"mach_vm_region_recurse";
        goto LABEL_52;
      }

      v22 = v36[5] == -1;
      if (mach_vm_purgable_control(self->_task, v32, 1, nesting_depth))
      {
        nesting_depth[0] = 3;
      }

      if (v36[12])
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
        goto LABEL_55;
      }

      v13 |= v22;
      if (BYTE2(v36[11]) && [(FPUserProcess *)self _isAlive]&& (v23 = proc_regionfilename(self->super._pid, v32, info, 0x400u)) != 0)
      {
        *(info + v23) = 0;
        v24 = [[NSString alloc] initWithUTF8String:info];
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
      v36[2] = v33[2];
      *v36 = *v33;
      *&v36[3] = *(&v34 + 4);
      memset(&v36[5], 0, 24);
      v36[11] = 16842752;
      v36[12] = v34;
      v36[13] = HIDWORD(v34);
      v36[14] = 1;
      v36[15] = v35;
      v36[16] = 0;
      *&v36[17] = 1;
      nesting_depth[0] = 3;
    }

    if ((v27)[2](v27, v32, v31, v36, nesting_depth[0], v24, 0, 0))
    {
      goto LABEL_49;
    }

    v32 += v31;
    objc_autoreleasePoolPop(regionsCopy);
  }

  v21 = v17;
  if (v17 == 1)
  {
LABEL_48:
    v24 = 0;
LABEL_49:

    goto LABEL_53;
  }

  v25 = @"mach_vm_region";
LABEL_52:
  sub_100006D50(self, v21, v25);
LABEL_53:
  objc_autoreleasePoolPop(regionsCopy);
}

- (void)_addSubrangesForRegion:(id)region purgeState:(int)state
{
  regionCopy = region;
  pageSize = [(FPProcess *)self pageSize];
  if (regionCopy)
  {
    if ((regionCopy[8] & 8) == 0)
    {
      v8 = regionCopy[8] & 1;
      v9 = *(regionCopy + 10);
      if (v9 == -1)
      {
        v10 = -1;
      }

      else
      {
        v10 = *(regionCopy + 11) + v9;
      }

      goto LABEL_6;
    }

    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  v10 = 0;
  v8 = 0;
  v9 = 0;
LABEL_6:
  v11 = (pageSize + v10 - 1) & -pageSize;
  v12 = v9 & -pageSize;
  if (state == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2048;
  }

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3010000000;
  v26[3] = "";
  v14 = (v11 - v12) / pageSize;
  if (regionCopy)
  {
    v15 = *(regionCopy + 9);
  }

  else
  {
    v15 = 0;
  }

  v26[4] = v15;
  v26[5] = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000070F8;
  v17[3] = &unk_100029188;
  v22 = 8;
  v23 = v13;
  v19 = v25;
  v20 = v26;
  v24 = v8;
  v16 = regionCopy;
  v18 = v16;
  v21 = pageSize;
  sub_100006768(self, v12, v14, v17);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v26, 8);
}

- (BOOL)_populateTask
{
  [(FPProcess *)self pid];
  v2 = task_read_for_pid();
  if (v2)
  {
    mach_error("task_read_for_pid", v2);
  }

  return v2 == 0;
}

- (void)_setIdleExitStatusFromDirtyFlags:(unsigned int)flags
{
  if ((flags & 4) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  if ((flags & 1) == 0)
  {
    v3 = 1;
  }

  self->super._idleExitStatus = v3;
}

- (void)_gatherProcessState
{
  if ([(FPUserProcess *)self _isAlive])
  {
    flags = 0;
    v3 = [(FPProcess *)self pid];
    objc_opt_self();
    *buf = 0;
    v7 = 0;
    v8 = 0;
    if ((memorystatus_control() & 0x80000000) != 0)
    {
      dirty = proc_get_dirty(v3, &flags);
      if (os_variant_has_internal_content() && dirty && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = dirty;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to fetch process info: %d", buf, 8u);
      }
    }

    else
    {
      [(FPUserProcess *)self _setPriority:*&buf[4]];
      flags = [FPUserProcess _dirtyFlagsFromEntryState:HIDWORD(v8)];
    }

    [(FPUserProcess *)self _setIdleExitStatusFromDirtyFlags:flags];
  }
}

+ (unsigned)_dirtyFlagsFromEntryState:(unsigned int)state
{
  if ((state & 0x20) != 0)
  {
    v3 = 5;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3 | (state >> 3) & 2;
  if ((state & 8) != 0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (void)_gatherLedgers
{
  if ([(FPUserProcess *)self _isAlive])
  {
    [(FPProcess *)self pid];
    v3 = sub_10001B844();
    if (v3)
    {
      v4 = v3;
      for (i = 0; i != 5; ++i)
      {
        if (sub_10001B918(i, v4) < 0)
        {
          v6 = 0;
        }

        else
        {
          v6 = sub_10001B918(i, v4);
        }

        self->_ledgers[i] = v6;
      }

      free(v4);
    }

    else
    {

      sub_100005E30(self, @"Unable to retrieve ledger entry info");
    }
  }
}

- (void)_gatherSharedCacheFromDyldSnapshot:(dyld_process_snapshot_s *)snapshot
{
  v4 = sub_100002964();
  sharedCache = self->super._sharedCache;
  self->super._sharedCache = v4;

  _objc_release_x1(v4, sharedCache);
}

- (void)_gatherImageData
{
  v9 = 0;
  task = self->_task;
  if (dyld_process_create_for_task())
  {
    v9 = 0;
    v4 = dyld_process_snapshot_create_for_process();
    dyld_process_dispose();
    if (v4)
    {
      [(FPUserProcess *)self _gatherSharedCacheFromDyldSnapshot:v4];
      v7[0] = 0;
      v7[1] = v7;
      v7[2] = 0x2020000000;
      v8 = 0;
      v5[0] = 0;
      v5[1] = v5;
      v5[2] = 0x3032000000;
      v5[3] = sub_1000072EC;
      v5[4] = sub_1000072FC;
      v6 = objc_alloc_init(NSMutableSet);
      dyld_process_snapshot_for_each_image();
      dyld_process_snapshot_dispose();
      [(NSMutableArray *)self->_images sortUsingComparator:&stru_100029240, _NSConcreteStackBlock, 3221225472, sub_10000847C, &unk_100029200, self, v5, v7];
      _Block_object_dispose(v5, 8);

      _Block_object_dispose(v7, 8);
    }
  }

  else
  {
    sub_100006D50(self, v9, @"dyld_process_create_for_task");
  }
}

- (id)auxData
{
  v3 = objc_alloc_init(NSMutableDictionary);
  priority = [(FPProcess *)self priority];
  if (os_variant_has_internal_content() && (priority & 0x80000000) == 0)
  {
    v5 = [[FPAuxData alloc] initWithValue:priority shouldAggregate:0];
    [(FPAuxData *)v5 setFormatter:&stru_100029280];
    [v3 setObject:v5 forKeyedSubscript:@"jetsam priority"];
  }

  idleExitStatus = [(FPProcess *)self idleExitStatus];
  if (os_variant_has_internal_content() && idleExitStatus)
  {
    v7 = [[FPAuxData alloc] initWithValue:idleExitStatus shouldAggregate:0];
    [(FPAuxData *)v7 setFormatter:&stru_1000292A0];
    [v3 setObject:v7 forKeyedSubscript:@"dirty"];
  }

  ledgers = self->_ledgers;
  if (self->_ledgers[1])
  {
    v9 = [[FPAuxData alloc] initWithValue:self->_ledgers[1] shouldAggregate:0];
    [v3 setObject:v9 forKeyedSubscript:@"phys_footprint"];

    v10 = [[FPAuxData alloc] initWithValue:ledgers[2] shouldAggregate:0];
    [v3 setObject:v10 forKeyedSubscript:@"phys_footprint_peak"];
  }

  if (ledgers[4])
  {
    v11 = [[FPAuxData alloc] initWithValue:ledgers[4] shouldAggregate:0];
    v12 = [NSString stringWithUTF8String:"neural_peak"];
    [v3 setObject:v11 forKeyedSubscript:v12];
  }

  if ([v3 count])
  {
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)extendedInfoForRegionType:(int)type at:(unint64_t)at extendedInfoProvider:(id)provider
{
  providerCopy = provider;
  v9 = providerCopy;
  if (type != 100)
  {
    if (type != 88 || !self)
    {
      __str = 0;
      goto LABEL_38;
    }

    v10 = providerCopy;
    v11 = [v10 ioSurfaceExtendedInfoDetailsAtAddress:at for:{-[FPProcess pid](self, "pid")}];

    if (!v11)
    {
      __str = 0;
LABEL_22:

      goto LABEL_38;
    }

    v12 = [v11 objectForKeyedSubscript:@"surfaceID"];
    unsignedIntValue = [v12 unsignedIntValue];

    v14 = [v11 objectForKeyedSubscript:@"PixelFormat"];
    unsignedIntValue2 = [v14 unsignedIntValue];

    if ((unsignedIntValue2 & 0x80000000) != 0)
    {
      if (__maskrune(HIBYTE(unsignedIntValue2), 0x800uLL))
      {
        goto LABEL_7;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[HIBYTE(unsignedIntValue2)] & 0x800) != 0)
    {
LABEL_7:
      __str[0] = HIBYTE(unsignedIntValue2);
      __str[1] = BYTE2(unsignedIntValue2);
      __str[2] = BYTE1(unsignedIntValue2);
      __str[3] = unsignedIntValue2;
      __str[4] = 0;
LABEL_19:
      v29 = [NSMutableString alloc];
      v30 = [v11 objectForKeyedSubscript:@"Width"];
      unsignedIntValue3 = [v30 unsignedIntValue];
      v32 = [v11 objectForKeyedSubscript:@"Height"];
      __str = [v29 initWithFormat:@"SID: %#x  %ux%u (%s)", unsignedIntValue, unsignedIntValue3, objc_msgSend(v32, "unsignedIntValue"), __str];

      v33 = [v11 objectForKeyedSubscript:@"Name"];
      if ([v33 length])
      {
        [__str appendFormat:@"  '%@'", v33];
      }

      goto LABEL_22;
    }

    snprintf(__str, 5uLL, "%4d", unsignedIntValue2);
    goto LABEL_19;
  }

  v17 = providerCopy;
  if (self)
  {
    v63 = 0;
    v18 = [v17 ioAccelMemoryInfoDetailsAtAddress:at for:-[FPProcess pid](self error:{"pid"), &v63}];
    v19 = v63;
    v20 = v19;
    if (v19)
    {
      localizedDescription = [v19 localizedDescription];
      [(FPProcess *)self _addGlobalError:localizedDescription];
    }

    if (v18)
    {
      v55 = v20;
      v57 = v9;
      v22 = [v18 objectForKeyedSubscript:@"Size"];
      v23 = [v18 objectForKeyedSubscript:@"ResidentSize"];
      v24 = [v18 objectForKeyedSubscript:@"DirtySize"];
      v25 = [v18 objectForKeyedSubscript:@"SurfaceID"];
      v26 = [v18 objectForKeyedSubscript:@"IsWired"];
      v58 = [v18 objectForKeyedSubscript:@"IsPurgeable"];
      v27 = [v18 objectForKeyedSubscript:@"Descriptions"];
      if ([v25 unsignedLongLongValue])
      {
        v28 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [v25 unsignedLongLongValue]);
      }

      else
      {
        v28 = @"-";
      }

      v54 = v25;
      v52 = v28;
      v34 = v24;
      if ([v26 BOOLValue])
      {
        v35 = @"Wired";
      }

      else
      {
        bOOLValue = [v58 BOOLValue];
        v35 = @"Normal";
        if (bOOLValue)
        {
          v35 = @"Purgeable";
        }
      }

      v51 = v35;
      v53 = v26;
      v56 = v17;
      v37 = +[NSMutableString string];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v38 = v27;
      v39 = [v38 countByEnumeratingWithState:&v59 objects:__str count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v60;
        do
        {
          for (i = 0; i != v40; i = i + 1)
          {
            if (*v60 != v41)
            {
              objc_enumerationMutation(v38);
            }

            [v37 appendString:*(*(&v59 + 1) + 8 * i)];
          }

          v40 = [v38 countByEnumeratingWithState:&v59 objects:__str count:16];
        }

        while (v40);
      }

      v48 = v22;
      [v22 unsignedLongLongValue];
      v43 = NSLocalizedFileSizeDescription();
      uTF8String = [v43 UTF8String];
      [v23 unsignedLongLongValue];
      v44 = NSLocalizedFileSizeDescription();
      uTF8String2 = [v44 UTF8String];
      [v34 unsignedLongLongValue];
      NSLocalizedFileSizeDescription();
      v45 = v50 = v23;
      __str = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Size:%s Resident:%s Dirty:%s IOSurfaceID:%s State:%s %s", uTF8String, uTF8String2, [v45 UTF8String], -[__CFString UTF8String](v52, "UTF8String"), -[__CFString UTF8String](v51, "UTF8String"), objc_msgSend(v37, "UTF8String"));

      v17 = v56;
      v9 = v57;
      v20 = v55;
    }

    else
    {
      __str = 0;
    }
  }

  else
  {
    __str = 0;
  }

LABEL_38:

  return __str;
}

- (void)addLedgerData:(unint64_t *)data count:(unint64_t)count
{
  countCopy = 5;
  if (count < 5)
  {
    countCopy = count;
  }

  memcpy(self->_ledgers, data, 8 * countCopy);
}

@end