@interface FPUserProcess
+ (unsigned)_dirtyFlagsFromEntryState:(unsigned int)a3;
- (BOOL)_populateMemoryRegionWithPageQueries:(id)a3 regionInfo:(vm_region_submap_info_64 *)a4;
- (BOOL)_populateTask;
- (FPUserProcess)initWithBsdInfo:(proc_bsdinfo *)a3;
- (id)_gatherOwnedVmObjects;
- (id)auxData;
- (id)extendedInfoForRegionType:(int)a3 at:(unint64_t)a4 extendedInfoProvider:(id)a5;
- (void)_addSubrangesForRegion:(id)a3 purgeState:(int)a4;
- (void)_drainDeferredReclaim;
- (void)_gatherImageData;
- (void)_gatherLedgers;
- (void)_gatherProcessState;
- (void)_gatherSharedCacheFromDyldSnapshot:(dyld_process_snapshot_s *)a3;
- (void)_setIdleExitStatusFromDirtyFlags:(unsigned int)a3;
- (void)addLedgerData:(unint64_t *)a3 count:(unint64_t)a4;
- (void)dealloc;
- (void)enumerateRegions:(id)a3;
- (void)gatherData:(unint64_t)a3 extendedInfoProvider:(id)a4;
@end

@implementation FPUserProcess

- (FPUserProcess)initWithBsdInfo:(proc_bsdinfo *)a3
{
  self->super._pid = a3->pbi_pid;
  [(FPUserProcess *)self _gatherIsTranslated];
  v9.receiver = self;
  v9.super_class = FPUserProcess;
  v5 = [(FPProcess *)&v9 initWithBsdInfo:a3];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
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
    mach_port_deallocate(*MEMORY[0x29EDCA6B0], task);
  }

  v4.receiver = self;
  v4.super_class = FPUserProcess;
  [(FPUserProcess *)&v4 dealloc];
}

- (void)gatherData:(unint64_t)a3 extendedInfoProvider:(id)a4
{
  v4 = a3;
  v98 = *MEMORY[0x29EDCA608];
  v56 = a4;
  v6 = [(FPProcess *)self memoryRegions];

  if (!v6)
  {
    if (![(FPUserProcess *)self _configurePageSize])
    {
      self->_bailedOut = 1;
      v8 = *MEMORY[0x29EDCA610];
      images = [(FPProcess *)self displayString];
      fprintf(v8, "%s: skipping due to an error configuring page size for analysis\n", [images UTF8String]);
LABEL_41:

      goto LABEL_42;
    }

    if ([(FPProcess *)self hiddenFromDisplay])
    {
      v7 = v56;
      if (!self)
      {
LABEL_40:

        images = self->_images;
        self->_images = 0;
        goto LABEL_41;
      }
    }

    else
    {
      if ((v4 & 8) != 0)
      {
        [(FPUserProcess *)self _drainDeferredReclaim];
      }

      v10 = objc_autoreleasePoolPush();
      [(FPUserProcess *)self _gatherImageData];
      objc_autoreleasePoolPop(v10);
      [(FPUserProcess *)self _gatherLedgers];
      v11 = [(FPUserProcess *)self _gatherOwnedVmObjects];
      ownedVmObjects = self->_ownedVmObjects;
      self->_ownedVmObjects = v11;

      v13 = v56;
    }

    v14 = sub_297E3B29C([FPImageEnumerator alloc], self->_images);
    v15 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    v16 = [(FPProcess *)self hiddenFromDisplay];
    v55 = [(FPProcess *)self breakDownPhysFootprint];
    v17 = +[FPFootprint isSharingAnalysisDisabled];
    v54 = [(FPUserProcess *)self doOwnedAccountingAdjustments];
    v93 = 0;
    v94 = &v93;
    v95 = 0x2020000000;
    v96 = 0;
    v87 = 0;
    v88 = &v87;
    v89 = 0x3032000000;
    v90 = sub_297E313BC;
    v91 = sub_297E313CC;
    v92 = 0;
    v18 = [(FPSharedCache *)self->super._sharedCache baseAddress];
    v19 = [(FPSharedCache *)self->super._sharedCache mappedSize];
    v73[0] = MEMORY[0x29EDCA5F8];
    v73[1] = 3221225472;
    v73[2] = sub_297E313D4;
    v73[3] = &unk_29EE84B18;
    v79 = v18;
    v80 = v19;
    v81 = v16;
    v73[4] = self;
    v59 = v15;
    v74 = v59;
    v82 = v55;
    v53 = v14;
    v75 = v53;
    v77 = &v87;
    v83 = (v4 & 2) != 0;
    v84 = (v4 & 4) != 0;
    v85 = v54;
    v76 = v56;
    v78 = &v93;
    v86 = v17;
    [(FPUserProcess *)self enumerateRegions:v73];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v20 = [(NSMutableDictionary *)self->_ownedVmObjects objectEnumerator];
    v21 = [v20 countByEnumeratingWithState:&v69 objects:v97 count:16];
    if (v21)
    {
      obj = v20;
      v58 = *v70;
      v22 = 0x2A18A5000uLL;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v70 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v69 + 1) + 8 * i);
          v68 = 0;
          v66 = 0u;
          v67 = 0u;
          v65 = 0u;
          [v24 getBytes:&v65 length:56];
          v25 = objc_alloc_init((v22 + 3736));
          [v25 setObject_id:v65];
          [v25 setOwnedExclusivelyByParentProcess:1];
          [v25 setUser_tag:0xFFFFFFFFLL];
          v26 = [v22 + 3736 vmLedgerNameForTag:(v68 >> 1) & 7];
          v27 = [v22 + 3736 categoryNameForTag:0xFFFFFFFFLL];
          if (v26)
          {
            v28 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%@ (%@)", v27, v26];
            [v25 setName:v28];
          }

          else
          {
            [v25 setName:v27];
          }

          [v25 setStart:-1];
          [v25 setShare_mode:4];
          v60 = v26;
          v61 = 0;
          v29 = v22;
          v30 = v21;
          v31 = self;
          v63 = 0;
          v64 = 0;
          v62 = 0;
          sub_297E31EE4(&v65, &v64, &v63, &v62, &v61);
          v32 = v63;
          [v25 setSwappedSize:v63];
          v33 = v64;
          [v25 setDirtySize:v64];
          v34 = v62;
          [v25 setCleanSize:v62];
          v35 = v61;
          [v25 setReclaimableSize:v61];
          if (*(&v65 + 1))
          {
            v36 = *(&v65 + 1);
          }

          else
          {
            v36 = v33 + v32 + v34 + v35;
          }

          [v25 setSize:v36];
          [v25 setWired:*(&v66 + 1) != 0];
          [v59 addObject:v25];

          self = v31;
          v21 = v30;
          v22 = v29;
        }

        v20 = obj;
        v21 = [obj countByEnumeratingWithState:&v69 objects:v97 count:16];
      }

      while (v21);
    }

    v37 = self->_ownedVmObjects;
    self->_ownedVmObjects = 0;

    v38 = v88[5];
    if (v38)
    {
      if (v54)
      {
        v39 = [v38 dirtySize];
        if (v39 >= v94[3])
        {
          [v88[5] setDirtySize:{objc_msgSend(v88[5], "dirtySize") - v94[3]}];
        }

        else
        {
          v40 = [v88[5] dirtySize];
          v94[3] -= v40;
          [v88[5] setDirtySize:0];
          v41 = [v88[5] swappedSize];
          v42 = v94;
          v43 = v88[5];
          if (v41 >= v94[3])
          {
            v48 = [v88[5] swappedSize] - v42[3];
          }

          else
          {
            v44 = [v88[5] swappedSize];
            v45 = v94[3] - v44;
            v94[3] = v45;
            warnings = self->super._warnings;
            v47 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Footprint changed while analyzing – unmapped owned physical footprint may be over-counted by %llu bytes", v45];
            [(NSMutableArray *)warnings addObject:v47];

            v48 = 0;
            v43 = v88[5];
          }

          [v43 setSwappedSize:v48];
        }
      }

      v49 = [v88[5] dirtySize];
      if (v49 + [v88[5] swappedSize])
      {
        [v88[5] setStart:-1];
        [v59 addObject:v88[5]];
      }
    }

    if (v55 && self->_ledgers[0])
    {
      v50 = objc_alloc_init(FPMemoryRegion);
      [(FPMemoryRegion *)v50 setSize:self->_ledgers[0]];
      [(FPMemoryRegion *)v50 setDirtySize:self->_ledgers[0]];
      [(FPMemoryRegion *)v50 setStart:-1];
      [(FPMemoryRegion *)v50 setName:@"page table"];
      [(FPMemoryRegion *)v50 setObject_id:-1];
      [(FPMemoryRegion *)v50 setShare_mode:2];
      [v59 addObject:v50];
    }

    if ((os_variant_has_internal_content() & v55) == 1 && self->_ledgers[3])
    {
      v51 = objc_alloc_init(FPMemoryRegion);
      [(FPMemoryRegion *)v51 setSize:self->_ledgers[3]];
      [(FPMemoryRegion *)v51 setCleanSize:self->_ledgers[3]];
      [(FPMemoryRegion *)v51 setStart:-1];
      [(FPMemoryRegion *)v51 setName:@"Conclave"];
      [(FPMemoryRegion *)v51 setObject_id:-1];
      [(FPMemoryRegion *)v51 setShare_mode:2];
      [v59 addObject:v51];
    }

    [(FPProcess *)self setMemoryRegions:v59];

    _Block_object_dispose(&v87, 8);
    _Block_object_dispose(&v93, 8);

    goto LABEL_40;
  }

LABEL_42:
  v52 = *MEMORY[0x29EDCA608];
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
        sub_297E2FECC(self, @"vm.reclaim.drain_pid");
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
      sub_297E2FECC(self, @"vm.get_owned_vmobjects");
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
        sub_297E2FECC(self, @"vm.get_owned_vmobjects");
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
        v5 = [objc_alloc(MEMORY[0x29EDB8E00]) initWithCapacity:*v4];
        if (*v4)
        {
          v6 = 0;
          v7 = (v4 + 1);
          do
          {
            v8 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:v7 length:56];
            v9 = *v7;
            v7 += 7;
            v10 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:v9];
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

  v5 = [objc_alloc(MEMORY[0x29EDB8E00]) initWithCapacity:0];
LABEL_18:

  return v5;
}

- (BOOL)_populateMemoryRegionWithPageQueries:(id)a3 regionInfo:(vm_region_submap_info_64 *)a4
{
  v5 = a3;
  v6 = [(FPProcess *)self pageSize];
  v7 = [v5 start] & -v6;
  v8 = (v6 + [v5 end] - 1) & -v6;
  v9 = v7 != [v5 start];
  v29 = v8;
  v27 = [v5 end];
  v10 = v8 != v27;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  if ([v5 dirtySize])
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  else if (![v5 swappedSize])
  {
    v25 = v10;
    v26 = v9;
    cachedDispositionAddress = self->_cachedDispositionAddress;
    v28 = (v29 - v7) / v6;
    if (v7 == cachedDispositionAddress)
    {
      cachedDisposition = self->_cachedDisposition;
      v13 = v45;
      v24 = v41;
      v14 = v5;
      v15 = [v14 start];
      v16 = [v14 size];
      v17 = v6 - v15 + (v15 & -v6);
      if (v16 < v17)
      {
        v17 = [v14 size];
      }

      v18 = v7 + v6;
      --v28;
      if ((cachedDisposition & 8) != 0 || (cachedDisposition & 0x81) == 1 || (v13 = v24, (cachedDisposition & 0x10) != 0))
      {
        v13[3] += v17;
      }
    }

    else
    {
      v18 = v7;
    }

    if ([v5 unusedSharedCacheRegion])
    {
      if (v7 == cachedDispositionAddress)
      {
        [v5 setDirtySize:v45[3]];
        [v5 setSwappedSize:v41[3]];
      }

      v19 = 1;
      if (v29 == v27 || !v28)
      {
        goto LABEL_20;
      }

      v20 = v5;
      pendingUnusedSharedRegion = self->_pendingUnusedSharedRegion;
      self->_pendingUnusedSharedRegion = v20;
      v19 = 1;
    }

    else
    {
      v30[0] = MEMORY[0x29EDCA5F8];
      v30[1] = 3221225472;
      v30[2] = sub_297E30554;
      v30[3] = &unk_29EE84AC8;
      v37 = v7 == cachedDispositionAddress;
      v38 = v26;
      v39 = v25;
      v22 = v5;
      v33 = &v44;
      v34 = &v40;
      v31 = v22;
      v32 = self;
      v35 = v6;
      v36 = v29;
      v19 = sub_297E30808(self, v18, v28, v30);
      [(FPMemoryRegion *)v22 setSwappedSize:v41[3]];
      [(FPMemoryRegion *)v22 setDirtySize:v45[3]];
      pendingUnusedSharedRegion = v31;
    }

LABEL_20:
    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v44, 8);

    return v19;
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

- (void)enumerateRegions:(id)a3
{
  v50 = *MEMORY[0x29EDCA608];
  v33 = a3;
  memset(v41, 0, 76);
  v40 = 0;
  *v38 = 0u;
  v39 = 0u;
  v36 = 0;
  v37 = 0;
  v4 = [(FPSharedCache *)self->super._sharedCache baseAddress];
  v5 = [(FPSharedCache *)self->super._sharedCache slide];
  v6 = [(FPSharedCache *)self->super._sharedCache mappedSize];
  v7 = [(FPSharedCache *)self->super._sharedCache slide];
  v8 = [(FPSharedCache *)self->super._sharedCache baseAddress];
  v9 = (v8 - [(FPSharedCache *)self->super._sharedCache slide]);
  v10 = [(NSMutableArray *)self->_images firstObject];
  v30 = v7;
  v31 = v6;
  if (v10)
  {
    v11 = v10[3] + v10[2];
  }

  else
  {
LABEL_53:
    v11 = 0;
  }

  v32 = v4 - v5;
  v42 = 0;
  *nesting_depth = 0;
  v34 = 0;

  size = 0;
  v49 = 0;
  *info = 0u;
  v48 = 0u;
  object_name = 0;
  v12 = [(FPProcess *)self pageSize];
  if (v9)
  {
    v13 = v12;
    v14 = v9;
    v15 = v11;
    do
    {
      address = (v11 >> 1) + (v14 >> 1);
      infoCnt = 9;
      if (mach_vm_region(self->_task, &address, &size, 9, info, &infoCnt, &object_name))
      {
        break;
      }

      if (size + address <= v9)
      {
        v15 = address;
        v11 = size + address;
      }

      else
      {
        if (v11 == address)
        {
          break;
        }

        v14 = (v11 >> 1) + (v14 >> 1) - v13;
      }
    }

    while (v14 > v11 && v14 - v11 > 0x1000000);
  }

  else
  {
    v15 = 0;
  }

  v4 = 0;
  v16 = v15;
  v17 = v15 - 1;
  v5 = v31 + v32 + v30;
  while (1)
  {
    v9 = objc_autoreleasePoolPush();
    nesting_depth[1] = -1;
    v42 = 9;
    v18 = v37;
    if (v17 >= v37 || v5 <= v37)
    {
      goto LABEL_23;
    }

    v20 = mach_vm_region(self->_task, &v37, &v36, 9, v38, &v42, &v34);
    if (v20)
    {
      break;
    }

    v21 = v37;
    if (v37 < v18)
    {
      v37 = v18;
LABEL_23:
      v21 = v18;
    }

    if (v21 < v16 || (v32 < v36 + v21 ? (v22 = v21 >= v5) : (v22 = 1), v22))
    {
      v42 = 19;
      v23 = mach_vm_region_recurse(self->_task, &v37, &v36, &nesting_depth[1], v41, &v42);
      v24 = v23;
      if (v42 <= 0x12)
      {
        *&v41[17] = v41[14];
      }

      if (v23 == 1 || (v4 & (v41[5] != -1)) != 0)
      {
        goto LABEL_46;
      }

      if (v23)
      {
        v28 = @"mach_vm_region_recurse";
        goto LABEL_50;
      }

      v25 = v41[5] == -1;
      if (mach_vm_purgable_control(self->_task, v37, 1, nesting_depth))
      {
        nesting_depth[0] = 3;
      }

      if (v41[12])
      {
        _os_assert_log();
        v10 = _os_crash();
        __break(1u);
        goto LABEL_53;
      }

      v4 = v25 | v4;
      if (BYTE2(v41[11]) && [(FPUserProcess *)self _isAlive]&& (v26 = proc_regionfilename(self->super._pid, v37, info, 0x400u)) != 0)
      {
        *(info + v26) = 0;
        v27 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithUTF8String:info];
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
      v41[2] = v38[2];
      *v41 = *v38;
      *&v41[3] = *(&v39 + 4);
      memset(&v41[5], 0, 24);
      v41[11] = 16842752;
      v41[12] = v39;
      v41[13] = HIDWORD(v39);
      v41[14] = 1;
      v41[15] = v40;
      v41[16] = 0;
      *&v41[17] = 1;
      nesting_depth[0] = 3;
    }

    if ((*(v33 + 2))(v33, v37, v36, v41, nesting_depth[0], v27, 0, 0))
    {
      goto LABEL_47;
    }

    v37 += v36;
    objc_autoreleasePoolPop(v9);
  }

  v24 = v20;
  if (v20 == 1)
  {
LABEL_46:
    v27 = 0;
LABEL_47:

    goto LABEL_51;
  }

  v28 = @"mach_vm_region";
LABEL_50:
  sub_297E30E28(self, v24, v28);
LABEL_51:
  objc_autoreleasePoolPop(v9);

  v29 = *MEMORY[0x29EDCA608];
}

- (void)_addSubrangesForRegion:(id)a3 purgeState:(int)a4
{
  v6 = a3;
  v7 = [(FPProcess *)self pageSize];
  v8 = [v6 start];
  v9 = [v6 end];
  v10 = [v6 wired];
  if ([v6 ownedExclusivelyByParentProcess])
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  else
  {
    v11 = v8 & -v7;
    v12 = ((v7 + v9 - 1) & -v7) - v11;
    if (a4 == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2048;
    }

    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3010000000;
    v26 = 0;
    v27 = 0;
    v25[3] = &unk_297E43A25;
    v14 = v12 / v7;
    v26 = [v6 offset];
    v27 = 0;
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v24[3] = 0;
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = sub_297E311C8;
    v16[3] = &unk_29EE84AF0;
    v21 = 8;
    v22 = v13;
    v18 = v24;
    v19 = v25;
    v23 = v10;
    v15 = v6;
    v17 = v15;
    v20 = v7;
    sub_297E30808(self, v11, v14, v16);

    _Block_object_dispose(v24, 8);
    _Block_object_dispose(v25, 8);
  }
}

- (BOOL)_populateTask
{
  v2 = *MEMORY[0x29EDCA6B0];
  [(FPProcess *)self pid];
  v3 = task_read_for_pid();
  if (v3)
  {
    mach_error("task_read_for_pid", v3);
  }

  return v3 == 0;
}

- (void)_setIdleExitStatusFromDirtyFlags:(unsigned int)a3
{
  if ((a3 & 4) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 & 1) == 0)
  {
    v3 = 1;
  }

  self->super._idleExitStatus = v3;
}

- (void)_gatherProcessState
{
  v10 = *MEMORY[0x29EDCA608];
  if ([(FPUserProcess *)self _isAlive])
  {
    flags = 0;
    v3 = [(FPProcess *)self pid];
    objc_opt_self();
    *buf = 0;
    v8 = 0;
    v9 = 0;
    if ((memorystatus_control() & 0x80000000) != 0)
    {
      dirty = proc_get_dirty(v3, &flags);
      if (os_variant_has_internal_content() && dirty && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = dirty;
        _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Unable to fetch process info: %d", buf, 8u);
      }
    }

    else
    {
      [(FPUserProcess *)self _setPriority:*&buf[4]];
      flags = [FPUserProcess _dirtyFlagsFromEntryState:HIDWORD(v9)];
    }

    [(FPUserProcess *)self _setIdleExitStatusFromDirtyFlags:flags];
  }

  v5 = *MEMORY[0x29EDCA608];
}

+ (unsigned)_dirtyFlagsFromEntryState:(unsigned int)a3
{
  if ((a3 & 0x20) != 0)
  {
    v3 = 5;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3 | (a3 >> 3) & 2;
  if ((a3 & 8) != 0)
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
    v3 = sub_297E3B408();
    if (v3)
    {
      v4 = v3;
      for (i = 0; i != 5; ++i)
      {
        if (sub_297E3B4DC(i, v4) < 0)
        {
          v6 = 0;
        }

        else
        {
          v6 = sub_297E3B4DC(i, v4);
        }

        self->_ledgers[i] = v6;
      }

      free(v4);
    }

    else
    {

      sub_297E2FECC(self, @"Unable to retrieve ledger entry info");
    }
  }
}

- (void)_gatherSharedCacheFromDyldSnapshot:(dyld_process_snapshot_s *)a3
{
  v4 = [FPSharedCache sharedCacheForDyldSnapshot:a3];
  sharedCache = self->super._sharedCache;
  self->super._sharedCache = v4;

  MEMORY[0x2A1C71028]();
}

- (void)_gatherImageData
{
  v10 = 0;
  task = self->_task;
  if (dyld_process_create_for_task())
  {
    v10 = 0;
    v4 = dyld_process_snapshot_create_for_process();
    dyld_process_dispose();
    if (v4)
    {
      [(FPUserProcess *)self _gatherSharedCacheFromDyldSnapshot:v4];
      v8[0] = 0;
      v8[1] = v8;
      v8[2] = 0x2020000000;
      v9 = 0;
      v6[0] = 0;
      v6[1] = v6;
      v6[2] = 0x3032000000;
      v6[3] = sub_297E313BC;
      v6[4] = sub_297E313CC;
      v7 = objc_alloc_init(MEMORY[0x29EDB8E20]);
      v5 = MEMORY[0x29EDCA5F8];
      dyld_process_snapshot_for_each_image();
      dyld_process_snapshot_dispose();
      [(NSMutableArray *)self->_images sortUsingComparator:&unk_2A1E8F9D0, v5, 3221225472, sub_297E324B8, &unk_29EE84B68, self, v6, v8];
      _Block_object_dispose(v6, 8);

      _Block_object_dispose(v8, 8);
    }
  }

  else
  {
    sub_297E30E28(self, v10, @"dyld_process_create_for_task");
  }
}

- (id)auxData
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v4 = [(FPProcess *)self priority];
  if (os_variant_has_internal_content() && (v4 & 0x80000000) == 0)
  {
    v5 = [[FPAuxData alloc] initWithValue:v4 shouldAggregate:0];
    [(FPAuxData *)v5 setFormatter:&unk_2A1E8F9F0];
    [v3 setObject:v5 forKeyedSubscript:@"jetsam priority"];
  }

  v6 = [(FPProcess *)self idleExitStatus];
  if (os_variant_has_internal_content() && v6)
  {
    v7 = [[FPAuxData alloc] initWithValue:v6 shouldAggregate:0];
    [(FPAuxData *)v7 setFormatter:&unk_2A1E8FA10];
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
    v12 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"neural_peak"];
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

- (id)extendedInfoForRegionType:(int)a3 at:(unint64_t)a4 extendedInfoProvider:(id)a5
{
  v67 = *MEMORY[0x29EDCA608];
  v8 = a5;
  v9 = v8;
  if (a3 != 100)
  {
    if (a3 != 88 || !self)
    {
      v16 = 0;
      goto LABEL_38;
    }

    v10 = v8;
    v11 = [v10 ioSurfaceExtendedInfoDetailsAtAddress:a4 for:{-[FPProcess pid](self, "pid")}];

    if (!v11)
    {
      v16 = 0;
LABEL_22:

      goto LABEL_38;
    }

    v12 = [v11 objectForKeyedSubscript:0x2A1E91DD0];
    v13 = [v12 unsignedIntValue];

    v14 = [v11 objectForKeyedSubscript:0x2A1E90E30];
    v15 = [v14 unsignedIntValue];

    if ((v15 & 0x80000000) != 0)
    {
      if (__maskrune(HIBYTE(v15), 0x800uLL))
      {
        goto LABEL_7;
      }
    }

    else if ((*(MEMORY[0x29EDCA600] + 4 * HIBYTE(v15) + 60) & 0x800) != 0)
    {
LABEL_7:
      __str[0] = HIBYTE(v15);
      __str[1] = BYTE2(v15);
      __str[2] = BYTE1(v15);
      __str[3] = v15;
      __str[4] = 0;
LABEL_19:
      v29 = objc_alloc(MEMORY[0x29EDBA050]);
      v30 = [v11 objectForKeyedSubscript:0x2A1E90DF0];
      v31 = [v30 unsignedIntValue];
      v32 = [v11 objectForKeyedSubscript:0x2A1E90E10];
      v16 = [v29 initWithFormat:@"SID: %#x  %ux%u (%s)", v13, v31, objc_msgSend(v32, "unsignedIntValue"), __str];

      v33 = [v11 objectForKeyedSubscript:0x2A1E90DD0];
      if ([v33 length])
      {
        [v16 appendFormat:@"  '%@'", v33];
      }

      goto LABEL_22;
    }

    snprintf(__str, 5uLL, "%4d", v15);
    goto LABEL_19;
  }

  v17 = v8;
  if (self)
  {
    v65 = 0;
    v18 = [v17 ioAccelMemoryInfoDetailsAtAddress:a4 for:-[FPProcess pid](self error:{"pid"), &v65}];
    v19 = v65;
    v20 = v19;
    if (v19)
    {
      v21 = [v19 localizedDescription];
      [(FPProcess *)self _addGlobalError:v21];
    }

    if (v18)
    {
      v57 = v20;
      v59 = v9;
      v22 = [v18 objectForKeyedSubscript:0x2A1E8FE10];
      v23 = [v18 objectForKeyedSubscript:0x2A1E90EB0];
      v24 = [v18 objectForKeyedSubscript:0x2A1E90E90];
      v25 = [v18 objectForKeyedSubscript:0x2A1E90DB0];
      v26 = [v18 objectForKeyedSubscript:0x2A1E90ED0];
      v60 = [v18 objectForKeyedSubscript:0x2A1E90EF0];
      v27 = [v18 objectForKeyedSubscript:0x2A1E90E50];
      if ([v25 unsignedLongLongValue])
      {
        v28 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%llu", objc_msgSend(v25, "unsignedLongLongValue")];
      }

      else
      {
        v28 = @"-";
      }

      v56 = v25;
      v54 = v28;
      v34 = v24;
      if ([v26 BOOLValue])
      {
        v35 = @"Wired";
      }

      else
      {
        v36 = [v60 BOOLValue];
        v35 = @"Normal";
        if (v36)
        {
          v35 = @"Purgeable";
        }
      }

      v53 = v35;
      v55 = v26;
      v58 = v17;
      v37 = [MEMORY[0x29EDBA050] string];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v38 = v27;
      v39 = [v38 countByEnumeratingWithState:&v61 objects:__str count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v62;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v62 != v41)
            {
              objc_enumerationMutation(v38);
            }

            [v37 appendString:*(*(&v61 + 1) + 8 * i)];
          }

          v40 = [v38 countByEnumeratingWithState:&v61 objects:__str count:16];
        }

        while (v40);
      }

      v52 = MEMORY[0x29EDBA0F8];
      v49 = v22;
      [v22 unsignedLongLongValue];
      v43 = NSLocalizedFileSizeDescription();
      v50 = [v43 UTF8String];
      [v23 unsignedLongLongValue];
      v44 = NSLocalizedFileSizeDescription();
      v48 = [v44 UTF8String];
      [v34 unsignedLongLongValue];
      NSLocalizedFileSizeDescription();
      v45 = v51 = v23;
      v16 = [v52 stringWithFormat:@"Size:%s Resident:%s Dirty:%s IOSurfaceID:%s State:%s %s", v50, v48, objc_msgSend(v45, "UTF8String"), -[__CFString UTF8String](v54, "UTF8String"), -[__CFString UTF8String](v53, "UTF8String"), objc_msgSend(v37, "UTF8String")];

      v17 = v58;
      v9 = v59;
      v20 = v57;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_38:
  v46 = *MEMORY[0x29EDCA608];

  return v16;
}

- (void)addLedgerData:(unint64_t *)a3 count:(unint64_t)a4
{
  v4 = 5;
  if (a4 < 5)
  {
    v4 = a4;
  }

  memcpy(self->_ledgers, a3, 8 * v4);
}

@end