@interface FPKernelProcess
- (FPKernelProcess)initWithBsdInfo:(proc_bsdinfo *)info;
- (id)auxData;
- (void)gatherData:(unint64_t)data extendedInfoProvider:(id)provider;
@end

@implementation FPKernelProcess

- (FPKernelProcess)initWithBsdInfo:(proc_bsdinfo *)info
{
  v10.receiver = self;
  v10.super_class = FPKernelProcess;
  v3 = [(FPProcess *)&v10 initWithBsdInfo:info];
  v4 = v3;
  if (v3)
  {
    v3->super._idleExitStatus = 1;
    v5 = +[NSMutableDictionary dictionary];
    mapsAuxData = v4->_mapsAuxData;
    v4->_mapsAuxData = v5;

    v7 = +[NSMutableDictionary dictionary];
    otherAuxData = v4->_otherAuxData;
    v4->_otherAuxData = v7;

    v4->_bootCarveoutSize = 0;
  }

  return v4;
}

- (void)gatherData:(unint64_t)data extendedInfoProvider:(id)provider
{
  names = 0;
  info = 0;
  memory_info = 0;
  *infoCnt = 0;
  memory_infoCnt = 0;
  v5 = mach_host_self();
  v6 = mach_memory_info(v5, &names, &infoCnt[1], &info, infoCnt, &memory_info, &memory_infoCnt);
  if (v6)
  {
    v7 = v6;
    v8 = __stderrp;
    displayString = [(FPProcess *)self displayString];
    selfCopy = self;
    uTF8String = [displayString UTF8String];
    v12 = mach_error_string(v7);
    fprintf(v8, "%s: mach_memory_info: %s\n", uTF8String, v12);

    displayString2 = [(FPProcess *)selfCopy displayString];
    v14 = [NSString stringWithFormat:@"%@: %s", displayString2, mach_error_string(v7)];

    [(NSMutableArray *)selfCopy->super._errors addObject:v14];
    goto LABEL_66;
  }

  v15 = +[NSMutableArray array];
  v16 = names;
  v17 = info;
  v18 = infoCnt[1];
  v19 = v15;
  selfCopy2 = self;
  if (self && v18)
  {
    p_mzi_collectable = &v17->mzi_collectable;
    v21 = 0x200000000;
    do
    {
      v22 = objc_alloc_init(FPMemoryMultiRegion);
      v23 = strnstr(v16->mzn_name, "kalloc", 0x50uLL);
      v24 = [NSString alloc];
      if (v23)
      {
        v25 = [v24 initWithFormat:@"kalloc.%llu", *(p_mzi_collectable - 4)];
        [(FPMemoryRegion *)v22 setName:v25];

        [(FPMemoryMultiRegion *)v22 setAuxDataName:@"kalloc"];
      }

      else
      {
        v26 = [v24 initWithFormat:@"%.*s", 80, v16];
        [(FPMemoryRegion *)v22 setName:v26];
      }

      name = [(FPMemoryRegion *)v22 name];

      if (!name)
      {
        [(FPMemoryRegion *)v22 setName:@"unknown"];
      }

      v28 = *(p_mzi_collectable - 6);
      v29 = *p_mzi_collectable >> 1;
      [(FPMemoryRegion *)v22 setDirtySize:v28 - v29];
      [(FPMemoryRegion *)v22 setReclaimableSize:v29];
      if (v22)
      {
        v22->super._size = v28;
        v22->super._object_id = v21;
      }

      [(FPMemoryMultiRegion *)v22 setTotalRegions:v28 / *(p_mzi_collectable - 4)];
      [(FPMemoryMultiRegion *)v22 setRegionSize:*(p_mzi_collectable - 4)];
      [v19 addObject:v22];

      ++v21;
      p_mzi_collectable += 8;
      ++v16;
      --v18;
    }

    while (v18);
  }

  v30 = vm_deallocate(mach_task_self_, info, infoCnt[0] << 6);
  if (v30)
  {
    v31 = v30;
    v32 = __stderrp;
    displayString3 = [(FPProcess *)selfCopy2 displayString];
    uTF8String2 = [displayString3 UTF8String];
    v35 = mach_error_string(v31);
    fprintf(v32, "%s: vm_deallocate: %s\n", uTF8String2, v35);
  }

  v36 = memory_info;
  v94 = memory_infoCnt;
  v92 = names;
  v91 = infoCnt[1];
  v93 = v19;
  p_isa = &selfCopy2->super.super.isa;
  if (selfCopy2)
  {
    objc_opt_self();
    CSSymbolicatorGetFlagsForNListOnlyData();
    v38 = CSSymbolicatorCreateWithMachKernelFlagsAndNotification();
    v96 = v39;
    v97 = v38;
    objc_opt_self();
    v40 = OSKextCopyLoadedKextInfo();
    objc_opt_self();
    v41 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v40 count]);
    v42 = [NSString stringWithUTF8String:"OSBundleLoadTag"];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    objectEnumerator = [v40 objectEnumerator];
    v44 = [objectEnumerator countByEnumeratingWithState:&v103 objects:v107 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v104;
      do
      {
        for (i = 0; i != v45; i = i + 1)
        {
          if (*v104 != v46)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v48 = *(*(&v103 + 1) + 8 * i);
          v49 = [v48 objectForKeyedSubscript:v42];
          [v41 setObject:v48 forKeyedSubscript:v49];
        }

        v45 = [objectEnumerator countByEnumeratingWithState:&v103 objects:v107 count:16];
      }

      while (v45);
    }

    v50 = v94;
    p_isa = &selfCopy2->super.super.isa;
    if (v94)
    {
      v51 = 0;
      v52 = &_mh_execute_header;
      while (1)
      {
        flags = v36->flags;
        v54 = v36->flags & 0x9FF;
        if (v54 == 3)
        {
          v55 = 48;
        }

        else
        {
          v55 = 16;
        }

        v56 = *(&v36->flags + v55);
        if (!(v36->site | v56))
        {
          goto LABEL_40;
        }

        if (v54 != 3)
        {
          break;
        }

        v57 = sub_100009ED0(FPKernelProcess, v36, v41, v97, v96, 0, 0);
        v58 = [[FPAuxData alloc] initWithValue:v56 shouldAggregate:0];
        [p_isa[12] setObject:v58 forKeyedSubscript:v57];

LABEL_32:
LABEL_40:
        ++v51;
        v52 = (v52 + 1);
        ++v36;
        if (v50 == v51)
        {
          goto LABEL_58;
        }
      }

      if ((flags & 0x1000) != 0)
      {
        goto LABEL_40;
      }

      v59 = objc_alloc_init(FPMemoryRegion);
      v60 = v59;
      if ((flags & 0x900) == 0x100 && (v36->flags & 0x200) == 0 && v36->site != 24)
      {
        [(FPMemoryRegion *)v59 setDirtySize:v56];
        [(FPMemoryRegion *)v60 setCleanSize:0];
        if (v60)
        {
          goto LABEL_45;
        }

        goto LABEL_57;
      }

      [(FPMemoryRegion *)v59 setCleanSize:v56];
      [(FPMemoryRegion *)v60 setDirtySize:0];
      if ((v36->flags & 0x200) != 0)
      {
        v61 = v60;
        v62 = @"(hidden)";
      }

      else
      {
        if (v36->site != 24)
        {
          goto LABEL_44;
        }

        v61 = v60;
        v62 = @"(user wired)";
      }

      [(FPMemoryRegion *)v61 setDetailedName:v62];
LABEL_44:
      if (v60)
      {
LABEL_45:
        *(v60 + 8) = *(v60 + 8) & 0xFE | BYTE1(flags) & 1;
        [(FPMemoryRegion *)v60 setSwappedSize:0];
        [(FPMemoryRegion *)v60 setReclaimableSize:0];
        v60->_user_tag = v51;
        v60->_size = v56;
        v60->_object_id = v52;
LABEL_46:
        v57 = v60;
        v63 = v41;
        objc_opt_self();
        flags_low = LOBYTE(v36->flags);
        v65 = sub_100009ED0(FPKernelProcess, v36, v63, v97, v96, v92, v91);

        if (v65)
        {
          [(FPMemoryRegion *)v57 setName:v65];
          if (flags_low == 2)
          {
            site = v36->site;
            CSSymbolicatorGetSourceInfoWithAddressAtTime();
            if ((CSIsNull() & 1) == 0)
            {
              Path = CSSourceInfoGetPath();
              if (Path)
              {
                v68 = [NSString stringWithFormat:@"(%s:%d)", Path, CSSourceInfoGetLineNumber()];
                [(FPMemoryRegion *)v57 setDetailedName:v68];
              }
            }
          }

          [v93 addObject:v57];
        }

        else
        {
        }

        v50 = v94;
        p_isa = &selfCopy2->super.super.isa;
        if (flags == 3 && v36->site == 10)
        {
          selfCopy2->_bootCarveoutSize = v56;
        }

        goto LABEL_32;
      }

LABEL_57:
      [0 setSwappedSize:0];
      [0 setReclaimableSize:0];
      goto LABEL_46;
    }

LABEL_58:
    CSRelease();
  }

  v14 = v93;

  v69 = vm_deallocate(mach_task_self_, names, 80 * infoCnt[1]);
  if (v69)
  {
    v70 = v69;
    v71 = __stderrp;
    displayString4 = [p_isa displayString];
    uTF8String3 = [displayString4 UTF8String];
    v74 = mach_error_string(v70);
    v89 = uTF8String3;
    p_isa = &selfCopy2->super.super.isa;
    fprintf(v71, "%s: vm_deallocate: %s\n", v89, v74);
  }

  v75 = vm_deallocate(mach_task_self_, memory_info, 176 * memory_infoCnt);
  if (v75)
  {
    v76 = v75;
    v77 = __stderrp;
    displayString5 = [p_isa displayString];
    uTF8String4 = [displayString5 UTF8String];
    v80 = mach_error_string(v76);
    v90 = uTF8String4;
    p_isa = &selfCopy2->super.super.isa;
    fprintf(v77, "%s: vm_deallocate: %s\n", v90, v80);
  }

  [p_isa setMemoryRegions:v93];
  if (p_isa)
  {
    [p_isa pid];
    v81 = sub_10001B844();
    if (v81)
    {
      v82 = v81;
      v83 = [FPAuxData alloc];
      v84 = sub_10001B918(1u, v82);
      v85 = [(FPAuxData *)v83 initWithValue:v84 & ~(v84 >> 63) shouldAggregate:0];
      [p_isa[13] setObject:v85 forKeyedSubscript:@"billed footprint"];

      v86 = [FPAuxData alloc];
      v87 = sub_10001B918(2u, v82);
      v88 = [(FPAuxData *)v86 initWithValue:v87 & ~(v87 >> 63) shouldAggregate:0];
      [p_isa[13] setObject:v88 forKeyedSubscript:@"billed footprint peak"];

      free(v82);
    }
  }

LABEL_66:
}

- (id)auxData
{
  mapsAuxData = self->_mapsAuxData;
  v7 = @"Maps";
  v8 = mapsAuxData;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  if ([(NSMutableDictionary *)self->_otherAuxData count])
  {
    v5 = [v4 fp_mergeWithData:self->_otherAuxData forceAggregate:1];

    v4 = v5;
  }

  return v4;
}

@end