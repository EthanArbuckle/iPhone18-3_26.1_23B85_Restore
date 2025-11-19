id getRegionData(void *a1, unint64_t *a2, void *a3, int *a4, __int16 a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = v9;
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  memset(v28, 0, sizeof(v28));
  v27 = 9999;
  if (!a4)
  {
    a4 = &v27;
  }

  v11 = *a2;
  v12 = [v9 memoryCache];
  v13 = [v12 machVMRegionRecurseSubmapInfo64onAddress:a2 size:a3 nestingDepth:a4 info:v28];

  if (v13)
  {
    if (v13 != 1)
    {
      mach_error("vm_region", v13);
    }

LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  if ((a5 & 0x1000) == 0 && *a2 < v11)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *a2;
      v15 = *a4;
      *buf = 134218496;
      v32 = v11;
      v33 = 2048;
      v34 = v14;
      v35 = 1024;
      v36 = v15;
      _os_log_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VM region enumeration wrapped around - requested address was %#llx, returned address %#llx, nestingDepth %u\n", buf, 0x1Cu);
    }

    goto LABEL_10;
  }

  v19 = objc_opt_new();
  v16 = v19;
  *(v19 + 8) = *a2;
  *(v19 + 16) = *a3;
  *(v19 + 24) = *&v28[0];
  *(v19 + 49) = BYTE14(v29);
  *(v19 + 128) = *a4;
  v20 = *(v19 + 132) & 0xFE;
  if (v30[0])
  {
    ++v20;
  }

  *(v19 + 132) = v20;
  *(v19 + 132) = *(v19 + 132) & 0xEF | (16 * (LOWORD(v30[3]) != 0));
  *(v19 + 132) = *(v19 + 132) & 0xDF | (16 * BYTE2(v30[3])) & 0x20;
  *(v19 + 132) = *(v19 + 132) & 0xBF | ((BYTE2(v30[3]) & 1) << 6);
  *(v19 + 132) = (32 * BYTE2(v30[3])) & 0x80 | *(v19 + 132) & 0x7F;
  *(v19 + 50) = HIBYTE(v29);
  *(v19 + 56) = 0;
  v21 = DWORD1(v28[1]);
  *(v19 + 96) = DWORD2(v29);
  *(v19 + 104) = v21;
  *(v19 + 112) = v30[2];
  *(v19 + 120) = *(v28 + 12);
  *(v19 + 224) = *&v30[5];
  v22 = [v10 memoryCache];
  v23 = [v22 machVMPurgableControlWithAddress:*a2 control:1 state:v16 + 52];

  if (v23)
  {
    *(v16 + 52) = 3;
  }

  *(v16 + 232) = [v10 isExclave];
  if (*(v16 + 232) == 1)
  {
    v24 = [v10 memoryCache];
    v25 = *(v16 + 8);
    [VMUTaskMemoryCache getExclaveVMFlagsForAddress:v24 exclaveVMFlags:?];

    v26 = *(v16 + 104);
    if (v26 <= 6 && ((1 << v26) & 0x72) != 0)
    {
      *(v16 + 236) |= 0x10000u;
    }
  }

LABEL_11:

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

uint64_t recordRegions(void *a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v301 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v247 = a3;
  v243 = a4;
  v244 = a5;
  v241 = a6;
  v248 = v11;
  v12 = [v11 memoryCache];
  v13 = [v12 startPeeking];

  if (v13)
  {
    v14 = v13;
    v15 = *MEMORY[0x1E69E9848];
    v16 = [v11 pid];
    v261 = v14;
    v17 = mach_error_string(v14);
    fprintf(v15, "*** Can't suspend task %d: %s\n", v16, v17);
    goto LABEL_379;
  }

  v253 = +[VMUDebugTimer sharedTimerIfCreated];
  if ([v11 isCore])
  {
    v18 = [v11 createSymbolicatorWithFlags:0 andNotification:0];
    v20 = v19;
  }

  else
  {
    v21 = v11;
    v18 = [v21 createSymbolicatorWithFlags:CSSymbolicatorGetFlagsForNoSymbolOrSourceInfoData() | 0x20100000 andNotification:0];
    v20 = v22;

    v23 = getprogname();
    if (!strcmp(v23, "ReportCrash"))
    {
      CSSymbolicatorGetSymbolOwnerWithNameAtTime();
      if (CSIsNull())
      {
        CSSymbolicatorGetSymbolOwnerWithNameAtTime();
      }

      if ((CSIsNull() & 1) == 0)
      {
        CSRelease();
        v20 = 0;
        v18 = 0;
      }
    }
  }

  v24 = v253;
  v265 = v18;
  if ((a7 & 0x10000) != 0)
  {
    v234 = collectPhysFootprint();
    setCollectPhysFootprint(1);
  }

  else
  {
    v234 = 0;
  }

  obj = v20;
  if (v253)
  {
    if ([v253 signpostID])
    {
      v25 = [v253 logHandle];
      v26 = [v253 signpostID];
      if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v27 = v26;
        if (os_signpost_enabled(v25))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v25, OS_SIGNPOST_INTERVAL_END, v27, "recordRegions", "", buf, 2u);
        }
      }

      v24 = v253;
    }

    [v24 endEvent:"recordRegions"];
    [v253 startWithCategory:"recordRegions" message:"gather VM region data"];
    v28 = [v253 logHandle];
    v29 = [v253 signpostID];
    if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v29, "recordRegions", "gather VM region data", buf, 2u);
    }
  }

  else
  {
    [0 endEvent:"recordRegions"];
    [0 startWithCategory:"recordRegions" message:"gather VM region data"];
  }

  if ([v11 taskType] == 2)
  {
    v30 = [v11 memoryCache];
    v31 = v247;
    v32 = v30;
    [v32 memoryRegions];
    *buf = MEMORY[0x1E69E9820];
    v289 = 3221225472;
    v290 = __listKernelCoreRegions_block_invoke;
    v291 = &unk_1E8278F40;
    v33 = v31;
    v292 = v33;
    enumerate_mapped_memory_core_file_dumped_regions();
    *&v297 = MEMORY[0x1E69E9820];
    *(&v297 + 1) = 3221225472;
    *&v298 = __listKernelCoreRegions_block_invoke_2;
    *(&v298 + 1) = &unk_1E8278938;
    v34 = v33;
    *&v299 = v34;
    CSSymbolicatorForeachSegmentAtTime();
    *&v284 = 0;
    CSSymbolicatorGetAOutSymbolOwner();
    CSSymbolOwnerGetSymbolWithName();
    Range = CSSymbolGetRange();
    [v32 peekAtAddress:Range size:v36 returnsBuf:&v284];

    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 3221225472;
    *&v294 = __listKernelCoreRegions_block_invoke_3;
    *(&v294 + 1) = &unk_1E8278F68;
    v37 = v34;
    *&v295 = v37;
    v38 = _Block_copy(&aBlock);
    v39 = v38;
    if (v284)
    {
      v40 = (v38 + 16);
      (*(v38 + 2))(v38, @"MALLOC", *v284, *(v284 + 8), 0, 0);
      (*v40)(v39, @"Zalloc read-only", *(v284 + 16), *(v284 + 24), 0, 1);
      (*v40)(v39, @"MALLOC metadata", *(v284 + 32), *(v284 + 40), 4, 0);
      (*v40)(v39, @"Zalloc bits", *(v284 + 48), *(v284 + 56), 4, 0);
      (*v40)(v39, @"PGZ", *(v284 + 80), *(v284 + 88), 0, 0);
    }
  }

  else if (a2)
  {
    v41 = v11;
    v256 = v247;
    if (*MEMORY[0x1E69E9AA0] >= *MEMORY[0x1E69E9AB8])
    {
      v42 = *MEMORY[0x1E69E9AB8];
    }

    else
    {
      v42 = *MEMORY[0x1E69E9AA0];
    }

    if ([v41 isTranslated])
    {
      v43 = -4096;
    }

    else
    {
      v43 = ~v42;
    }

    if ((v43 & a2) != 0)
    {
      v44 = (v43 & a2) - 1;
    }

    else
    {
      v44 = 0;
    }

    *buf = a2;
    *&v297 = 0;
    v45 = getRegionData(v41, buf, &v297, 0, a7);
    v46 = v45;
    if (v45)
    {
      v47 = *buf;
      v262 = v45;
      if (v47 <= a2)
      {
        v52 = *buf;
        *buf += v297;
        getRegionData(v41, buf, &v297, 0, a7);
        v44 = v52 - 1;
        v262 = v249 = v262;
      }

      else
      {
        v249 = 0;
      }
    }

    else
    {
      v249 = 0;
      v262 = 0;
    }

    *buf = v44;
    v53 = getRegionData(v41, buf, &v297, 0, a7);

    if (*buf > v44 || (v54 = v53, (v55 = v54) == 0))
    {
      v56 = 0;
      v54 = 0;
      v57 = 0;
      v58 = 50;
      v59 = v44;
      while (1)
      {
        *buf = v57;
        v55 = getRegionData(v41, buf, &v297, 0, a7);

        if (v55 && *buf < v44)
        {
          v60 = v55;

          v54 = v60;
        }

        if ((v56 & v43) >= (v59 & v43))
        {
          break;
        }

        if (!v55 || (v61 = v297 + *buf, v297 + *buf >= v44))
        {
          v61 = v56;
          v59 = v57;
        }

        if (!v58)
        {

          v54 = 0;
          goto LABEL_60;
        }

        v57 = v61 + ((v59 - v61) >> 1);
        --v58;
        v53 = v55;
        v56 = v61;
      }

      if (!v54)
      {
        goto LABEL_60;
      }
    }

    [v256 addObject:v54];
LABEL_60:
    v62 = v262;
    if (v249)
    {
      [v256 addObject:v249];
      v62 = v262;
    }

    if (v62)
    {
      [v256 addObject:?];
      v62 = v262;
    }
  }

  else
  {
    v48 = v11;
    v49 = v247;
    v50 = &v297;
    *&v297 = 0;
    *(&v297 + 1) = &v297;
    *&v298 = 0x2020000000;
    BYTE8(v298) = 0;
    if ((a7 & 0x400) != 0)
    {
      v63 = dispatch_get_global_queue(2, 0);
      v51 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v63);
      v64 = dispatch_time(0, 10000000000);
      dispatch_source_set_timer(v51, v64, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
      *buf = MEMORY[0x1E69E9820];
      v289 = 3221225472;
      v290 = __listAllRegions_block_invoke;
      v291 = &unk_1E8278260;
      v292 = &v297;
      dispatch_source_set_event_handler(v51, buf);
      dispatch_resume(v51);

      v50 = *(&v297 + 1);
    }

    else
    {
      v51 = 0;
    }

    recursivelyListAllRegions(v48, v49, a7, 0, -1, 0, v50 + 24);
    if (*(*(&v297 + 1) + 24) == 1)
    {
      [v49 removeAllObjects];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *&aBlock = 0xA04000100;
        _os_log_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VM region enumeration timed out after %u seconds - not returning any regions\n", &aBlock, 8u);
      }
    }

    if (v51)
    {
      dispatch_source_cancel(v51);
    }

    _Block_object_dispose(&v297, 8);
  }

  if ([v247 count])
  {
    context = objc_autoreleasePoolPush();
    if (v253)
    {
      if ([v253 signpostID])
      {
        v65 = [v253 logHandle];
        v66 = [v253 signpostID];
        if (v66 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v65, OS_SIGNPOST_INTERVAL_END, v66, "recordRegions", "", buf, 2u);
        }
      }

      [v253 endEvent:"recordRegions"];
      [v253 startWithCategory:"recordRegions" message:"markMachOLibraries"];
      v67 = [v253 logHandle];
      v68 = [v253 signpostID];
      if (v68 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v67))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, v67, OS_SIGNPOST_INTERVAL_BEGIN, v68, "recordRegions", "markMachOLibraries", buf, 2u);
      }
    }

    else
    {
      [0 endEvent:"recordRegions"];
      [0 startWithCategory:"recordRegions" message:"markMachOLibraries"];
    }

    markMachOLibraries(v248, v265, obj, v247, a2, a7);
    CSRelease();
    if (v253)
    {
      if ([v253 signpostID])
      {
        v69 = [v253 logHandle];
        v70 = [v253 signpostID];
        if (v70 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v69))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v69, OS_SIGNPOST_INTERVAL_END, v70, "recordRegions", "", buf, 2u);
        }
      }

      [v253 endEvent:"recordRegions"];
      [v253 startWithCategory:"recordRegions" message:"markMallocAreas"];
      v71 = [v253 logHandle];
      v72 = [v253 signpostID];
      if (v72 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, v71, OS_SIGNPOST_INTERVAL_BEGIN, v72, "recordRegions", "markMallocAreas", buf, 2u);
      }

      markMallocAreas(v248, v247, v244, a2, a7, v253);
      if ([v253 signpostID])
      {
        v73 = [v253 logHandle];
        v74 = [v253 signpostID];
        if (v74 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v73, OS_SIGNPOST_INTERVAL_END, v74, "recordRegions", "", buf, 2u);
        }
      }

      [v253 endEvent:"recordRegions"];
      [v253 startWithCategory:"recordRegions" message:"markStacks"];
      v75 = [v253 logHandle];
      v76 = [v253 signpostID];
      if (v76 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, v75, OS_SIGNPOST_INTERVAL_BEGIN, v76, "recordRegions", "markStacks", buf, 2u);
      }

      markStacks(v247, v243);
      if ([v253 signpostID])
      {
        v77 = [v253 logHandle];
        v78 = [v253 signpostID];
        if (v78 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v77, OS_SIGNPOST_INTERVAL_END, v78, "recordRegions", "", buf, 2u);
        }
      }

      [v253 endEvent:"recordRegions"];
      [v253 startWithCategory:"recordRegions" message:"markIOSurfaces"];
      v79 = [v253 logHandle];
      v80 = [v253 signpostID];
      if (v80 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v79))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, v79, OS_SIGNPOST_INTERVAL_BEGIN, v80, "recordRegions", "markIOSurfaces", buf, 2u);
      }

      markIOSurfaces(v248, v247, a7);
      if ([v253 signpostID])
      {
        v81 = [v253 logHandle];
        v82 = [v253 signpostID];
        if (v82 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v81, OS_SIGNPOST_INTERVAL_END, v82, "recordRegions", "", buf, 2u);
        }
      }

      [v253 endEvent:"recordRegions"];
      [v253 startWithCategory:"recordRegions" message:"markOthers"];
      v83 = [v253 logHandle];
      v84 = [v253 signpostID];
      if (v84 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v83))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, v83, OS_SIGNPOST_INTERVAL_BEGIN, v84, "recordRegions", "markOthers", buf, 2u);
      }
    }

    else
    {
      [0 endEvent:"recordRegions"];
      [0 startWithCategory:"recordRegions" message:"markMallocAreas"];
      markMallocAreas(v248, v247, v244, a2, a7, 0);
      [0 endEvent:"recordRegions"];
      [0 startWithCategory:"recordRegions" message:"markStacks"];
      markStacks(v247, v243);
      [0 endEvent:"recordRegions"];
      [0 startWithCategory:"recordRegions" message:"markIOSurfaces"];
      markIOSurfaces(v248, v247, a7);
      [0 endEvent:"recordRegions"];
      [0 startWithCategory:"recordRegions" message:"markOthers"];
    }

    v263 = v248;
    v85 = v247;
    v86 = [[VMUAttributeGraphRegionIdentifier alloc] initWithTask:v263 identifyOldRegions:(a7 & 0x100) == 0];
    v250 = v86;
    if (v86)
    {
      v257 = [(VMUAttributeGraphRegionIdentifier *)v86 attributeGraphVMRegionBaseAddress];
    }

    else
    {
      v257 = 0;
    }

    v296 = 0u;
    v295 = 0u;
    v294 = 0u;
    aBlock = 0u;
    obja = v85;
    v87 = [obja countByEnumeratingWithState:&aBlock objects:&v297 count:16];
    if (v87)
    {
      v266 = 0;
      v88 = *v294;
      do
      {
        v89 = 0;
        do
        {
          if (*v294 != v88)
          {
            objc_enumerationMutation(obja);
          }

          v90 = *(*(&aBlock + 1) + 8 * v89);
          if (!*(v90 + 32))
          {
            v91 = objc_autoreleasePoolPush();
            if (*(v90 + 132))
            {
              v94 = *(v90 + 32);
              *(v90 + 32) = @"Submap";

              if (*(v90 + 50) == 5)
              {
                v95 = @"machine-wide VM submap";
              }

              else
              {
                v95 = @"process-only VM submap";
              }

              objc_storeStrong((v90 + 40), v95);
            }

            else
            {
              if ([v90 isSanitizer])
              {
                goto LABEL_132;
              }

              if ([v263 rangeIsInSharedCache:{*(v90 + 8), *(v90 + 16)}])
              {
                if (([v90 isUnsharedPmap] & 1) != 0 || (v98 = *(v90 + 24), (v98 & 2) != 0))
                {
                  objc_storeStrong((v90 + 32), VMUunusedSharedLibDataLabel);
                  if (!*(v90 + 40))
                  {
                    objc_storeStrong((v90 + 40), VMUunusedSharedLibDataPath);
                  }

                  *(v90 + 132) |= 4u;
                }

                else
                {
                  v99 = *(v90 + 104);
                  if (v99)
                  {
                    v100 = VMUidentifyRegionTypeFromUserTag(*(v90 + 232), v99, *(v90 + 50), v98);
                    v101 = *(v90 + 32);
                    *(v90 + 32) = v100;
                  }

                  else
                  {
                    objc_storeStrong((v90 + 32), VMUunusedSharedLibTextLabel[0]);
                    if (!*(v90 + 40))
                    {
                      objc_storeStrong((v90 + 40), VMUunusedSharedLibTextPath);
                    }
                  }
                }
              }

              else if (*(v90 + 49) == 1)
              {
                v102 = *(v90 + 32);
                *(v90 + 32) = @"mapped file";

                v103 = *(v90 + 40);
                *(v90 + 40) = 0;

                if ((a7 & 0x40000) == 0)
                {
                  v104 = [v263 memoryCache];
                  v105 = [v104 procRegionFileNameForAddress:*(v90 + 8) buffer:buf bufferSize:1024];

                  if (v105 >= 1)
                  {
                    buf[v105] = 0;
                    v106 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buf];
                    v107 = v106;
                    if ((a7 & 0x1000000) == 0)
                    {
                      v108 = VMUSanitizePath(v106);

                      v107 = v108;
                    }

                    v109 = *(v90 + 40);
                    *(v90 + 40) = v107;
                  }
                }

                if (!*(v90 + 40))
                {
                  v110 = [(__CFString *)kVMUUnknownMappedFileNamePrefix[0] stringByAppendingFormat:@"%lx", *(v90 + 112)];
                  v111 = *(v90 + 40);
                  *(v90 + 40) = v110;
                }
              }

              else if ([v90 isNullRegion])
              {
                if (v266)
                {
                  objc_storeStrong((v90 + 32), VMUGPUCarveoutRegionLabel);
                }

                else
                {
                  objc_storeStrong((v90 + 32), VMUcommpageRegionLabel);
                }

                objc_storeStrong((v90 + 40), VMUreservedVMaddressSpaceString);
                v266 = 1;
              }

              else if ([v90 isOwnedUnmappedMemory])
              {
                objc_storeStrong((v90 + 32), VMUOwnedUnmappedMemoryRegionLabel);
                v112 = *(v90 + 40);
                *(v90 + 40) = @"owned physical footprint (unmapped)";
              }

              else
              {
                v113 = *(v90 + 8);
                if (!*(v90 + 104) && v257 && v113 == v257)
                {
                  v114 = *(v90 + 32);
                  *(v90 + 32) = @"AttributeGraph Data";
                }

                else if ([(VMUAttributeGraphRegionIdentifier *)v250 regionIsOldAttributeGraphVMRegionMapping:v113])
                {
                  v115 = *(v90 + 32);
                  *(v90 + 32) = @"AttributeGraph Data (old mapping)";
                }

                else
                {
LABEL_132:
                  v92 = VMUidentifyRegionTypeFromUserTag(*(v90 + 232), *(v90 + 104), *(v90 + 50), *(v90 + 24));
                  v93 = *(v90 + 32);
                  *(v90 + 32) = v92;
                }
              }
            }

            if (!*(v90 + 40))
            {
              if (*(v90 + 24) && *(v90 + 50) == 3)
              {
                v96 = VMUreservedVMaddressSpaceString;
                v97 = *(v90 + 40);
              }

              else
              {
                v97 = 0;
                v96 = &stru_1F461F9C8;
              }

              *(v90 + 40) = v96;
            }

            objc_autoreleasePoolPop(v91);
          }

          ++v89;
        }

        while (v87 != v89);
        v116 = [obja countByEnumeratingWithState:&aBlock objects:&v297 count:16];
        v87 = v116;
      }

      while (v116);
    }

    if ([v263 taskType] == 2)
    {
      if (v253)
      {
        if ([v253 signpostID])
        {
          v117 = [v253 logHandle];
          v118 = [v253 signpostID];
          if (v118 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v117))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, v117, OS_SIGNPOST_INTERVAL_END, v118, "recordRegions", "", buf, 2u);
          }
        }

        [v253 endEvent:"recordRegions"];
        [v253 startWithCategory:"recordRegions" message:"fixupCoreRegions"];
        v119 = [v253 logHandle];
        v120 = [v253 signpostID];
        if (v120 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v119))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v119, OS_SIGNPOST_INTERVAL_BEGIN, v120, "recordRegions", "fixupCoreRegions", buf, 2u);
        }
      }

      else
      {
        [0 endEvent:"recordRegions"];
        [0 startWithCategory:"recordRegions" message:"fixupCoreRegions"];
      }

      v121 = obja;
      v297 = 0u;
      v298 = 0u;
      v299 = 0u;
      v300 = 0u;
      v122 = [v121 countByEnumeratingWithState:&v297 objects:buf count:16];
      if (v122)
      {
        v123 = 0;
        v124 = &OBJC_IVAR___VMUVMRegion_user_tag;
        v267 = *v298;
        while (1)
        {
          v125 = 0;
          v126 = v123;
          v258 = v122;
          do
          {
            if (*v298 != v267)
            {
              objc_enumerationMutation(v121);
            }

            v127 = *(*(&v297 + 1) + 8 * v125);
            v128 = *(v127 + 32);
            v129 = v128;
            v130 = *(v127 + 132);
            if ((v130 & 2) != 0)
            {
              if ([v128 hasSuffix:@"DATA"])
              {
                goto LABEL_201;
              }

              v130 = *(v127 + 132);
            }

            if ((v130 & 2) == 0)
            {
              if (*(v127 + *v124))
              {
                goto LABEL_204;
              }

LABEL_201:
              *(v127 + 24) |= 2u;
              *(v127 + 28) |= 2u;
              if ((*(v127 + 132) & 2) == 0)
              {
                goto LABEL_204;
              }
            }

            if ([v129 hasSuffix:@"DATA_CONST"])
            {
              *(v127 + 28) |= 2u;
            }

LABEL_204:
            if ((*(v127 + 132) & 2) != 0 && [v129 hasSuffix:@"TEXT_EXEC"])
            {
              *(v127 + 24) |= 4u;
              *(v127 + 28) |= 4u;
            }

            if ([*(v127 + 40) isEqualToString:VMUunusedButDirtySharedLibDataPath])
            {
              if (v126 && (*(v126 + 132) & 2) != 0)
              {
                v132 = v124;
                v133 = v121;
                v134 = MEMORY[0x1E696AEC0];
                v135 = VMUunusedSharedLibLabelOrPathPrefix;
                v136 = v126[4];
                v137 = v134;
                v121 = v133;
                v124 = v132;
                v122 = v258;
                v138 = [v137 stringWithFormat:@"%@%@", v135, v136];
                v139 = *(v127 + 32);
                *(v127 + 32) = v138;

                v140 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", VMUunusedButDirtySharedLibPrefix, v136];
                v141 = *(v127 + 40);
                *(v127 + 40) = v140;

                *(v127 + 132) |= 4u;
                *(v127 + 24) = *(v126 + 6);
                *(v127 + 28) = *(v126 + 7);
              }

              else
              {
                v131 = *(v127 + 40);
                *(v127 + 40) = 0;

                *(v127 + 132) &= ~2u;
              }
            }

            if ([v127 isUntaggedRegion])
            {
              v142 = *(v127 + 32);
              *(v127 + 32) = @"Unknown core region";
            }

            v123 = v127;

            ++v125;
            v126 = v123;
          }

          while (v122 != v125);
          v122 = [v121 countByEnumeratingWithState:&v297 objects:buf count:16];
          if (!v122)
          {

            break;
          }
        }
      }
    }

    if (v253)
    {
      if ([v253 signpostID])
      {
        v143 = [v253 logHandle];
        v144 = [v253 signpostID];
        if (v144 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v143))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v143, OS_SIGNPOST_INTERVAL_END, v144, "recordRegions", "", buf, 2u);
        }
      }

      [v253 endEvent:"recordRegions"];
      [v253 startWithCategory:"recordRegions" message:"coalesceIdenticalRegions"];
      v145 = [v253 logHandle];
      v146 = [v253 signpostID];
      if (v146 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v145))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, v145, OS_SIGNPOST_INTERVAL_BEGIN, v146, "recordRegions", "coalesceIdenticalRegions", buf, 2u);
      }

      coalesceIdenticalRegions(obja, a7);
      if ([v253 signpostID])
      {
        v147 = [v253 logHandle];
        v148 = [v253 signpostID];
        if (v148 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v147))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v147, OS_SIGNPOST_INTERVAL_END, v148, "recordRegions", "", buf, 2u);
        }
      }

      [v253 endEvent:"recordRegions"];
      [v253 startWithCategory:"recordRegions" message:"collectVMpageStatistics"];
      v149 = [v253 logHandle];
      v150 = [v253 signpostID];
      if (v150 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v149))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, v149, OS_SIGNPOST_INTERVAL_BEGIN, v150, "recordRegions", "collectVMpageStatistics", buf, 2u);
      }
    }

    else
    {
      [0 endEvent:"recordRegions"];
      [0 startWithCategory:"recordRegions" message:"coalesceIdenticalRegions"];
      coalesceIdenticalRegions(obja, a7);
      [0 endEvent:"recordRegions"];
      [0 startWithCategory:"recordRegions" message:"collectVMpageStatistics"];
    }

    v240 = v263;
    v151 = obja;
    table = v244;
    objb = v151;
    v251 = [v151 count];
    v239 = VMUGetFlagsForAllVMRegionStatistics() & a7;
    if (v239)
    {
      v268 = malloc_type_calloc(0x400uLL, 4uLL, 0x100004052888210uLL);
      v235 = objc_opt_new();
    }

    else
    {
      v235 = 0;
      v268 = 0;
    }

    if (v251)
    {
      v232 = 0;
      v236 = 0;
      v152 = 0;
      v237 = 1024;
      v238 = 0;
      while (1)
      {
        v153 = [objb objectAtIndex:v152];
        v154 = v153;
        if ((*(v153 + 132) & 1) != 0 || *(v153 + 50) == 3)
        {
          goto LABEL_322;
        }

        if ((a7 & 0x10000) != 0)
        {
          v155 = [v240 rangeIsInSharedCache:{*(v153 + 8), *(v153 + 16)}] ^ 1;
          if ((v236 & 1) == v155)
          {
            v156 = v155 | v236;
            setCollectPhysFootprint((v155 | v236) & 1);
            v236 = v156 ^ 1;
          }
        }

        *(v154 + 20) = 0;
        *(v154 + 21) = 0;
        *(v154 + 22) = 0;
        *(v154 + 23) = 0;
        *(v154 + 12) = 0;
        *(v154 + 8) = 0;
        *(v154 + 9) = 0;
        *(v154 + 10) = 0;
        *(v154 + 11) = 0;
        if (!v239)
        {
          goto LABEL_318;
        }

        if (*MEMORY[0x1E69E9AB0] >= *MEMORY[0x1E69E9AC8])
        {
          v157 = *MEMORY[0x1E69E9AC8];
        }

        else
        {
          v157 = *MEMORY[0x1E69E9AB0];
        }

        if (*MEMORY[0x1E69E9AA0] >= *MEMORY[0x1E69E9AB8])
        {
          v158 = *MEMORY[0x1E69E9AB8];
        }

        else
        {
          v158 = *MEMORY[0x1E69E9AA0];
        }

        v159 = *(v154 + 1);
        v160 = v159 & ~v158;
        v245 = v158;
        v161 = (v159 + v158 + *(v154 + 2)) & ~v158;
        v162 = (v161 - v160) / v157;
        v163 = v162;
        v259 = v162;
        v264 = v157;
        if (v162 > v237)
        {
          free(v268);
          v268 = malloc_type_malloc(4 * v162, 0x100004052888210uLL);
          v237 = v162;
        }

        *buf = v162;
        v164 = v160;
        v165 = v268;
        if (v160 == v238)
        {
          *v268 = v232;
          v165 = v268 + 1;
          v164 = v264 + v238;
          v163 = v259 - 1;
          *buf = v259 - 1;
        }

        if (!v163)
        {
          goto LABEL_263;
        }

        v166 = [v240 memoryCache];
        v167 = [v166 machVMPageRangeQueryWithAddress:v164 size:v161 - v164 dispositions:v165 dispositionsCount:buf];

        if (!v167)
        {
          break;
        }

        mach_error("collectVMpageStatistics: error in mach_vm_page_range_query", v167);
LABEL_322:

        if (++v152 >= v251)
        {
          goto LABEL_323;
        }
      }

      if (*(v154 + 2) + *(v154 + 1) < v161)
      {
        v238 = v161 - v264;
        v232 = v268[v259 - 1];
      }

LABEL_263:
      if (v264 <= v161 - v160)
      {
        v168 = 0;
        v169 = 0;
        do
        {
          if (v169)
          {
            v170 = [objb objectAtIndex:++v152];

            v154 = v170;
          }

          v171 = *(v154 + 1);
          if (v160 <= v171)
          {
            v172 = *(v154 + 1);
          }

          else
          {
            v172 = v160;
          }

          v160 += v264;
          if (v160 >= *(v154 + 2) + v171)
          {
            v173 = *(v154 + 2) + v171;
          }

          else
          {
            v173 = v160;
          }

          v174 = v268[v168];
          if ((v174 & 0x18) == 0 || ![*(v154 + 4) hasPrefix:VMUunusedSharedLibLabelPrefix])
          {
            v169 = 0;
            goto LABEL_297;
          }

          v175 = VMUunusedButDirtySharedLibDataPath;
          v176 = *(v154 + 5);
          if (v176)
          {
            if (([v176 hasPrefix:VMUunusedSharedLibPathPrefix] & 1) == 0 && (objc_msgSend(*(v154 + 5), "hasPrefix:", VMUunusedButDirtyPrefix) & 1) == 0)
            {
              v177 = [v235 objectForKeyedSubscript:*(v154 + 5)];

              v175 = v177;
              if (!v177)
              {
                v175 = [VMUunusedButDirtyPrefix stringByAppendingString:*(v154 + 5)];
                [v235 setObject:v175 forKeyedSubscript:*(v154 + 5)];
              }
            }
          }

          v178 = *(v154 + 1);
          if ((v172 & v245) == 0 && v172 > v178)
          {
            v183 = [v154 breakAtLength:v172 - v178];
            v182 = v183;
            if (!v183)
            {
              goto LABEL_295;
            }

            *(v183 + 132) |= 8u;
            objc_storeStrong((v183 + 40), v175);
            [objb insertObject:v182 atIndex:++v152];
            v182 = v182;

            v169 = 0;
            ++v251;
            v154 = v182;
          }

          else if ((v173 & v245) != 0 || v173 >= *(v154 + 2) + v178)
          {
            v154[132] |= 8u;
            v181 = v175;
            v169 = 0;
            v182 = *(v154 + 5);
            *(v154 + 5) = v181;
          }

          else
          {
            v184 = [v154 breakAtLength:v173 - v178];
            v182 = v184;
            if (!v184)
            {
LABEL_295:
              v169 = 0;
              goto LABEL_296;
            }

            v154[132] |= 8u;
            objc_storeStrong(v154 + 5, v175);
            [objb insertObject:v182 atIndex:v152 + 1];
            ++v251;
            v169 = 1;
          }

LABEL_296:

LABEL_297:
          v185 = v173 - v172;
          if (v174)
          {
            *(v154 + 20) += v185;
            ++*(v154 + 8);
            v186 = v259;
            if ((v174 & 8) != 0)
            {
              v187 = &OBJC_IVAR___VMUVMRegion_dirty_size;
              v188 = &OBJC_IVAR___VMUVMRegion_pages_dirtied;
              goto LABEL_302;
            }
          }

          else
          {
            v186 = v259;
            if ((v174 & 0x10) != 0)
            {
              v187 = &OBJC_IVAR___VMUVMRegion_swapped_out_size;
              v188 = &OBJC_IVAR___VMUVMRegion_pages_swapped_out;
LABEL_302:
              *&v154[*v187] += v185;
              ++*&v154[*v188];
            }
          }

          if ((v174 & 0x20) != 0)
          {
            *(v154 + 21) += v185;
            ++*(v154 + 9);
          }

          if ((v174 & 0x800) != 0)
          {
            *(v154 + 27) += v185;
          }

          ++v168;
        }

        while (v168 < v186);
      }

      if ((a7 & 0x10) != 0)
      {
        v189 = *(v154 + 20);
        if (*(v154 + 2) < v189)
        {
          v189 = *(v154 + 2);
        }

        v190 = *(v154 + 13);
        switch(v190)
        {
          case 2:
            v191 = &OBJC_IVAR___VMUVMRegion_purgable_empty_size;
            v189 = *(v154 + 2);
            goto LABEL_317;
          case 1:
            v191 = &OBJC_IVAR___VMUVMRegion_purgable_vol_size;
            goto LABEL_317;
          case 0:
            v191 = &OBJC_IVAR___VMUVMRegion_purgable_non_vol_size;
LABEL_317:
            *&v154[*v191] += v189;
            break;
        }
      }

LABEL_318:
      if ((a7 & 0x100) == 0 && *(v154 + 37) != -1)
      {
        v192 = NSMapGet(table, *(v154 + 5));
        if (v192)
        {
          addMallocRegionPageStatistics(v154, v192);
          ++v192[7];
        }
      }

      goto LABEL_322;
    }

LABEL_323:
    if (v268)
    {
      free(v268);
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    CSRelease();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VMURegionIdentifier did not detect any regions in the target task", buf, 2u);
    }
  }

  v193 = [v248 memoryCache];
  v261 = [v193 stopPeeking];

  if (!a2)
  {
    v252 = v248;
    v255 = v247;
    v260 = v241;
    if ([v255 count])
    {
      v194 = v255;
      if (v260)
      {
        v195 = [v260 objectForKeyedSubscript:@"page_table"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v196 = [v195 unsignedLongLongValue];
          if (v196)
          {
            v197 = [v194 lastObject];
            v198 = v197;
            if (v197)
            {
              v199 = *(v197 + 16) + *(v197 + 8);
              if (!__CFADD__(v199, v196))
              {
                v200 = objc_alloc_init(VMUVMRegion);
                v200->range.location = v199;
                v200->range.length = v196;
                v200->resident_size = v196;
                v200->dirty_size = v196;
                v200->user_tag = -2;
                type = v200->type;
                v200->type = @"page table in kernel";

                path = v200->path;
                v200->path = @"charged to process physical footprint";

                v200->prot = 3;
                v200->maxProt = 3;
                v200->share_mode = 2;
                v200->purgeable = 3;
                [v194 addObject:v200];
              }
            }
          }
        }
      }

      objc = VMUGatherOwnedVmObjects(v252);
      if (objc && [objc count])
      {
        v286 = 0u;
        v287 = 0u;
        v284 = 0u;
        v285 = 0u;
        v203 = [v194 reverseObjectEnumerator];
        v204 = [v203 countByEnumeratingWithState:&v284 objects:buf count:16];
        if (v204)
        {
          v205 = *v285;
LABEL_340:
          v206 = 0;
          while (1)
          {
            if (*v285 != v205)
            {
              objc_enumerationMutation(v203);
            }

            v207 = *(*(&v284 + 1) + 8 * v206);
            if ([v207 isOwnedUnmappedMemory])
            {
              break;
            }

            if (v204 == ++v206)
            {
              v204 = [v203 countByEnumeratingWithState:&v284 objects:buf count:16];
              if (v204)
              {
                goto LABEL_340;
              }

              goto LABEL_369;
            }
          }

          v246 = v207;

          if (!v246)
          {
            goto LABEL_370;
          }

          v282 = 0u;
          v283 = 0u;
          v280 = 0u;
          v281 = 0u;
          v269 = v194;
          v208 = 0;
          v209 = [v269 countByEnumeratingWithState:&v280 objects:&v297 count:16];
          if (v209)
          {
            v210 = *v281;
            do
            {
              for (i = 0; i != v209; ++i)
              {
                if (*v281 != v210)
                {
                  objc_enumerationMutation(v269);
                }

                v212 = *(*(&v280 + 1) + 8 * i);
                v213 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v212[28]];
                v214 = [objc objectForKeyedSubscript:v213];
                v215 = v214;
                if (v214)
                {
                  *&v296 = 0;
                  v295 = 0u;
                  v294 = 0u;
                  aBlock = 0u;
                  [v214 getBytes:&aBlock length:56];
                  [objc removeObjectForKey:v213];
                  *&v276 = 0;
                  *&v274[0] = 0;
                  VMUFootprintForVmObject(&aBlock, &v276, v274);
                  v212[23] = v276;
                  v216 = *&v274[0];
                  v212[22] = *&v274[0];
                  v217 = v276;
                  v218 = VMUVMLedgerNameForTag((v296 >> 1) & 7);
                  if (v218)
                  {
                    v219 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ (%@)", v212[4], v218];
                    v220 = v212[4];
                    v212[4] = v219;
                  }

                  v208 += v216 + v217;
                }
              }

              v209 = [v269 countByEnumeratingWithState:&v280 objects:&v297 count:16];
            }

            while (v209);
          }

          adjustOwnedMemoryRegionFootprint(v246, v208);
          if (v246[23] + v246[22])
          {
            v278 = 0u;
            v279 = 0u;
            v276 = 0u;
            v277 = 0u;
            v221 = [objc objectEnumerator];
            v222 = 0;
            v223 = [v221 countByEnumeratingWithState:&v276 objects:&aBlock count:16];
            if (v223)
            {
              v224 = *v277;
              do
              {
                for (j = 0; j != v223; ++j)
                {
                  if (*v277 != v224)
                  {
                    objc_enumerationMutation(v221);
                  }

                  v226 = *(*(&v276 + 1) + 8 * j);
                  v275 = 0;
                  memset(v274, 0, sizeof(v274));
                  [v226 getBytes:v274 length:56];
                  v222 += *(&v274[0] + 1);
                }

                v223 = [v221 countByEnumeratingWithState:&v276 objects:&aBlock count:16];
              }

              while (v223);
            }

            v203 = v246;
            v246[2] = v222;
            v246[20] = 0;
          }

          else
          {
            [v269 removeObject:?];
            v203 = v246;
          }
        }

LABEL_369:
      }

LABEL_370:
    }
  }

  setCollectPhysFootprint(v234);
  if (v253 && [v253 signpostID])
  {
    v227 = [v253 logHandle];
    v228 = [v253 signpostID];
    if (v228 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v227))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, v227, OS_SIGNPOST_INTERVAL_END, v228, "recordRegions", "", buf, 2u);
    }
  }

  [v253 endEvent:"recordRegions"];

LABEL_379:
  v229 = *MEMORY[0x1E69E9840];
  return v261;
}

void recursivelyListAllRegions(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, _BYTE *a7)
{
  v13 = a1;
  v14 = a2;
  v22 = a4;
  if ((*a7 & 1) == 0)
  {
    while (1)
    {
      v21 = 0;
      v20 = a6;
      v15 = getRegionData(v13, &v22, &v21, &v20, a3);
      v16 = v15;
      if (!v15)
      {
        break;
      }

      if (!VMURangeContainsRange(a4, a5, *(v15 + 8), *(v15 + 16)) || v20 != a6)
      {
        break;
      }

      v18 = [v16 isNullRegion];
      if ((a3 & 0x20) != 0 || (v18 & 1) == 0)
      {
        if (![v13 isCore] || (v19 = objc_msgSend(v16, "isOwnedUnmappedMemory"), (a3 & 0x10000) != 0) || (v19 & 1) == 0)
        {
          [v14 addObject:v16];
        }
      }

      if ([v16 isSubmap])
      {
        recursivelyListAllRegions(v13, v14, a3, v16[1], v16[2], (a6 + 1), a7);
      }

      v22 += v21;

      if (*a7)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_19:
}

void setTypeAndPath(void *a1, void *a2, unint64_t a3, uint64_t a4, void *a5, void *a6, int a7, char a8)
{
  v34 = a1;
  v14 = a2;
  v38 = a5;
  obj = a6;
  v33 = a6;
  v39 = 0;
  RegionForAddress = findRegionForAddress(v14, a3, &v39);
  v16 = [v14 count];
  v17 = v39;
  if (RegionForAddress < v16)
  {
    v18 = v16;
    if (a7)
    {
      v19 = 2;
    }

    else
    {
      v19 = 0;
    }

    v35 = v19;
    while (1)
    {
      v20 = [v14 objectAtIndex:RegionForAddress];

      if ((*(v20 + 132) & 1) == 0)
      {
        break;
      }

LABEL_32:
      ++RegionForAddress;
      v17 = v20;
      if (RegionForAddress >= v18)
      {
        goto LABEL_35;
      }
    }

    if (*(v20 + 8) > *MEMORY[0x1E69E9AC8] + a4 + a3)
    {
      goto LABEL_35;
    }

    v21 = objc_autoreleasePoolPush();
    if (!VMURangeIntersectsRange(*(v20 + 8), *(v20 + 16), a3, a4))
    {
LABEL_31:
      objc_autoreleasePoolPop(v21);
      goto LABEL_32;
    }

    v22 = *(v20 + 8);
    if (a3 > v22)
    {
      v23 = [v20 breakAtLength:a3 - v22];
      if (v23)
      {
        [v14 insertObject:v23 atIndex:++RegionForAddress];
        v24 = v23;

        ++v18;
        v20 = v24;
      }

      v22 = *(v20 + 8);
    }

    v25 = *(v20 + 16);
    if (a4 + a3 >= v25 + v22)
    {
      a3 += v25;
      a4 -= v25;
    }

    else if (*MEMORY[0x1E69E9AC8] <= 0x1000uLL || ([v34 rangeIsInSharedCache:{a3, a4}] & 1) != 0 || !*(v20 + 49) || (objc_msgSend(v38, "isEqualToString:", @"__LINKEDIT") & 1) == 0)
    {
      v26 = [v20 breakAtLength:a4];
      if (v26)
      {
        [v14 insertObject:v26 atIndex:RegionForAddress + 1];
        ++v18;
      }
    }

    *(v20 + 132) = *(v20 + 132) & 0xFD | v35;
    if ((a8 & 1) == 0 && (*(v20 + 24) & 2) != 0)
    {
      *(v20 + 132) |= 4u;
    }

    v27 = *(v20 + 32);
    if (v27)
    {
      [v27 rangeOfString:v38];
      if (v28)
      {
LABEL_30:
        objc_storeStrong((v20 + 40), obj);
        goto LABEL_31;
      }

      v29 = *(v20 + 32);
      v30 = [v29 stringByAppendingPathComponent:v38];
      v31 = *(v20 + 32);
      *(v20 + 32) = v30;
    }

    else
    {
      v32 = v38;
      v29 = *(v20 + 32);
      *(v20 + 32) = v32;
    }

    goto LABEL_30;
  }

  v20 = v39;
LABEL_35:
}

id VMUSanitizePath(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (VMUSanitizePath::onceToken == -1)
  {
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    goto LABEL_7;
  }

  VMUSanitizePath_cold_1();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = [VMUSanitizePath::cachedSanitizedPaths objectForKey:v2];
  if (!v3)
  {
    v4 = [v2 copy];
    v3 = [v2 copy];
    [VMUSanitizePath::cachedSanitizedPaths setObject:v3 forKey:v4];
  }

LABEL_7:

  return v3;
}

unint64_t findRegionForAddress(void *a1, unint64_t a2, void **a3)
{
  v5 = a1;
  v6 = 0;
  v7 = 0;
  v8 = [v5 count] - 1;
  while (1)
  {
    v9 = v6;
    v10 = v7 + ((v8 - v7) >> 1);
    v6 = [v5 objectAtIndex:v10];

    if (v6[1] > a2)
    {
      if (!v10)
      {
        goto LABEL_9;
      }

      v8 = v10 - 1;
      goto LABEL_8;
    }

    if (v6[2] + v6[1] > a2)
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_9;
    }

    v7 = v10 + 1;
LABEL_8:
    if (v7 > v8)
    {
LABEL_9:
      v11 = 0;
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_11;
    }
  }

  v11 = v6;
LABEL_11:
  v12 = *a3;
  *a3 = v11;

  return v10;
}

BOOL VMURangeIntersectsRange(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 >= a3)
  {
    return a3 + a4 > a1;
  }

  else
  {
    return a1 + a2 > a3;
  }
}

__CFString *getBinarySegmentName()
{
  Name = CSRegionGetName();
  if (!strcmp(Name, "MACH_HEADER"))
  {
    v1 = @"__TEXT";
  }

  else
  {
    v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:Name length:&strchr(Name encoding:{32)[-Name], 4}];
  }

  return v1;
}

void __markMachOLibraries_block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  Range = CSRegionGetRange();
  v5 = v4;
  if (VMURangeIntersectsRange(Range, v4, *(a1 + 80), *(a1 + 88)))
  {
    v6 = getBinarySegmentName();
    v7 = v6;
    if ((*(a1 + 120) & 1) != 0 || *(a1 + 121) == 1)
    {
      if ([v6 isEqualToString:@"__LINKEDIT"])
      {
        v8 = *(*(a1 + 64) + 8);
        if (*(v8 + 24))
        {
LABEL_17:

          goto LABEL_18;
        }

        *(v8 + 24) = 1;
        if (*(a1 + 121))
        {
          v9 = @"kernelcache combined __LINKEDIT";
        }

        else
        {
          v9 = @"dyld shared cache combined __LINKEDIT";
        }

        goto LABEL_13;
      }

      if (*(a1 + 122) == 1)
      {
        v10 = *(a1 + 32);
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Range];
        [v10 addObject:v11];
LABEL_16:

        goto LABEL_17;
      }
    }

    v9 = *(*(*(a1 + 72) + 8) + 40);
    if (!v9)
    {
      v12 = getSanitizedPathForSymbolOwner(*(a1 + 96), *(a1 + 104), *(a1 + 112));
      v13 = *(*(a1 + 72) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v9 = *(*(*(a1 + 72) + 8) + 40);
    }

LABEL_13:
    v11 = v9;
    v15 = [*(a1 + 40) member:v7];
    if (!v15)
    {
      [*(a1 + 40) addObject:v7];
      v15 = v7;
    }

    setTypeAndPath(*(a1 + 48), *(a1 + 56), Range, v5, v15, v11, 1, 1);

    goto LABEL_16;
  }

LABEL_18:

  objc_autoreleasePoolPop(v2);
}

void __markMachOLibraries_block_invoke_4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  Range = CSRegionGetRange();
  v5 = v4;
  if (VMURangeIntersectsRange(Range, v4, *(a1 + 72), *(a1 + 80)))
  {
    v6 = getBinarySegmentName();
    if (([v6 isEqualToString:@"__LINKEDIT"] & 1) == 0)
    {
      v7 = *(a1 + 32);
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Range];
      v9 = [v7 containsObject:v8];

      if ((v9 & 1) == 0)
      {
        v10 = [VMUunusedSharedLibLabelOrPathPrefix stringByAppendingString:v6];

        v6 = v10;
      }

      v11 = [*(a1 + 40) member:v6];
      if (!v11)
      {
        [*(a1 + 40) addObject:v6];
        v11 = v6;
      }

      v12 = *(*(*(a1 + 64) + 8) + 40);
      if (!v12)
      {
        v13 = getSanitizedPathForSymbolOwner(*(a1 + 88), *(a1 + 96), *(a1 + 104));
        v14 = *(*(a1 + 64) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        v12 = *(*(*(a1 + 64) + 8) + 40);
      }

      v16 = v12;
      if ((v9 & 1) == 0)
      {
        v17 = [VMUunusedSharedLibLabelOrPathPrefix stringByAppendingString:*(*(*(a1 + 64) + 8) + 40)];

        v16 = v17;
      }

      setTypeAndPath(*(a1 + 48), *(a1 + 56), Range, v5, v11, v16, v9, v9);
    }
  }

  objc_autoreleasePoolPop(v2);
}

BOOL collectPhysFootprint()
{
  v2 = 0;
  v1 = 4;
  return (!sysctlbyname("vm.self_region_footprint", &v2, &v1, 0, 0) || *__error() == 2) && v2 != 0;
}

void __markMachOLibraries_block_invoke_3(uint64_t a1)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__7;
  v12[4] = __Block_byref_object_dispose__7;
  v13 = 0;
  v10 = *(a1 + 64);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = *(a1 + 80);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v8 = v7;
  v9 = v6;
  CSSymbolOwnerForeachSegment();

  _Block_object_dispose(v12, 8);
}

void markMachOLibraries(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, __int16 a6)
{
  v26 = a1;
  v9 = a4;
  v10 = [v9 objectAtIndexedSubscript:0];
  [v10 range];

  v11 = [v9 lastObject];
  [v11 range];

  v12 = objc_opt_new();
  v24 = objc_opt_new();
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  CSSymbolicatorIsKernelSymbolicator();
  if ((a6 & 0x400) == 0 && (!a5 || [v26 addressIsInSharedCache:a5]))
  {
    CSSymbolicatorCreateForTaskSharedCache();
  }

  CSIsNull();
  v29 = v12;
  v30 = v24;
  v31 = v26;
  v32 = v9;
  CSSymbolicatorForeachSymbolOwnerAtTime();
  v28 = v29;
  v25 = v30;
  v27 = v31;
  v13 = v32;
  CSSymbolicatorForeachSymbolOwnerAtTime();
  CSRelease();
  v14 = [v13 count];
  if (v14)
  {
    for (i = 0; i < v14; ++i)
    {
      v16 = [v13 objectAtIndexedSubscript:i];
      v17 = v16[1];
      if ((v17 & 0xFFF) == 0)
      {
        v18 = v16[2];
        v19 = v18 & 0xFFF;
        if ((v18 & 0xFFF) != 0)
        {
          if (i == v14 - 1)
          {
            v16[2] = (v18 & 0xFFFFFFFFFFFFF000) + 4096;
          }

          else
          {
            v20 = [v13 objectAtIndexedSubscript:i + 1];
            v21 = v20;
            v22 = v20[1];
            if ((v22 ^ (v18 + v17)) >= 0x1000)
            {
              v16[2] = v16[2] - v19 + 4096;
            }

            else if (!v20[4])
            {
              if (v20[2] + v22 <= (v16[1] + v16[2] + 4096 - v19))
              {
                [v16 addInfoFromRegion:v20];
                [v13 removeObjectAtIndex:i + 1];
                --v14;
              }

              else
              {
                v23 = [v20 breakAtLength:?];
                if (v23)
                {
                  [v16 addInfoFromRegion:v21];
                  [v13 replaceObjectAtIndex:i + 1 withObject:v23];
                }
              }
            }
          }
        }
      }
    }
  }

  _Block_object_dispose(v33, 8);
}

void __markMachOLibraries_block_invoke(uint64_t a1)
{
  CSSymbolOwnerIsDyldSharedCache();
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__7;
  v15[4] = __Block_byref_object_dispose__7;
  v16 = 0;
  v11 = *(a1 + 72);
  v13 = *(a1 + 96);
  v10 = *(a1 + 64);
  v14 = *(a1 + 97);
  v2 = *(a1 + 32);
  v12 = *(a1 + 88);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v8 = v7;
  v9 = v6;
  CSSymbolOwnerForeachSegment();

  _Block_object_dispose(v15, 8);
}

int *setCollectPhysFootprint(int a1)
{
  v4 = a1;
  result = sysctlbyname("vm.self_region_footprint", 0, 0, &v4, 4uLL);
  if (result)
  {
    result = __error();
    if (*result != 2)
    {
      v2 = *MEMORY[0x1E69E9848];
      v3 = __error();
      return fprintf(v2, "Error setting sysctl: %s. %d.\n", "vm.self_region_footprint", *v3);
    }
  }

  return result;
}

void coalesceIdenticalRegions(void *a1, char a2)
{
  v8 = a1;
  if ((a2 & 0x80) == 0)
  {
    v3 = [v8 count];
    if (v3 >= 2)
    {
      v4 = v3;
      v5 = 1;
      do
      {
        v6 = [v8 objectAtIndex:v5 - 1];
        v7 = [v8 objectAtIndex:v5];
        if (shouldProbablyCoalesceRegions(v6, v7) && ([v6 hasSameInfoAsRegion:v7] & 1) != 0)
        {
          [v6 addInfoFromRegion:v7];
          [v8 removeObjectAtIndex:v5];
          --v4;
        }

        else
        {
          ++v5;
        }
      }

      while (v5 < v4);
    }
  }
}

uint64_t sameString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqualToString:v4];
    }
  }

  return v6;
}

BOOL shouldProbablyCoalesceRegions(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = *(v3 + 2) + *(v3 + 1) == *(v4 + 1) && sameString(*(v3 + 4), *(v4 + 4)) && (!*(v3 + 4) && !*(v4 + 4) || (sameString(*(v3 + 5), *(v4 + 5)) & 1) != 0 || (sameString(0, *(v4 + 5)) & 1) != 0);

  return v5;
}

id VMUGatherOwnedVmObjects(void *a1)
{
  v1 = a1;
  v16 = 0;
  v2 = [v1 memoryCache];
  v3 = [(VMUTaskMemoryCache *)v2 getOwnedVMObjectsIntoBuffer:&v16 byteCount:?];

  v4 = 0;
  if (!v3)
  {
    v5 = v16;
    if (v16)
    {
      v6 = 0;
      v15 = 0;
      do
      {
        v5 += 896;
        v6 = malloc_type_realloc(v6, v5, 0xE64E48BAuLL);
        v15 = v5;
        v7 = [v1 memoryCache];
        v8 = [(VMUTaskMemoryCache *)v7 getOwnedVMObjectsIntoBuffer:v6 byteCount:&v15];

        if (v8)
        {
          v4 = 0;
          goto LABEL_12;
        }
      }

      while (v5 == v15);
      v4 = objc_opt_new();
      if (v15)
      {
        if (v15 > 7)
        {
          if (v15 - 8 >= 56 * *v6)
          {
            if (*v6)
            {
              v10 = 0;
              v11 = (v6 + 1);
              do
              {
                v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v11 length:56];
                v13 = *v11;
                v11 += 7;
                v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v13];
                [v4 setObject:v12 forKeyedSubscript:v14];

                ++v10;
              }

              while (v10 < *v6);
            }
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            VMUGatherOwnedVmObjects_cold_1();
          }
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          VMUGatherOwnedVmObjects_cold_2();
        }
      }

LABEL_12:
      free(v6);
    }

    else
    {
      v4 = objc_opt_new();
    }
  }

  return v4;
}

void copySamplingResultToCallstack(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a3 + 20);
  *(a1 + 40) = v6;
  if (v6)
  {
    v7 = 8 * v6;
    v8 = malloc_type_malloc(8 * v6, 0x100004000313F17uLL);
    *(a1 + 24) = v8;
    memcpy(v8, *a3, v7);
    if ((sampling_context_get_options() & 0x80) != 0)
    {
      v9 = malloc_type_malloc(v7, 0x100004000313F17uLL);
      *(a1 + 32) = v9;
      memcpy(v9, *(a3 + 8), v7);
    }
  }

  *(a1 + 4) = a2;
  *(a1 + 16) = *(a3 + 32);
  v10 = *(a1 + 48);
  *(a1 + 48) = *(a3 + 48);

  *(a1 + 44) = *(a3 + 24);
}

uint64_t VMUTaskIsSelf()
{
  IsSelf_portOfCachedResult = VMUTaskIsSelf_portOfCachedResult();
  if (*IsSelf_portOfCachedResult == v1)
  {
    IsSelf_cachedResult = VMUTaskIsSelf_cachedResult();
  }

  else
  {
    *IsSelf_portOfCachedResult = v1;
    mach_task_is_self(v1);
    IsSelf_cachedResult = VMUTaskIsSelf_cachedResult();
    *IsSelf_cachedResult = v3;
  }

  return *IsSelf_cachedResult;
}

void adjustOwnedMemoryRegionFootprint(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = v3[23];
  if (v5 >= a2)
  {
    v3[23] = v5 - a2;
  }

  else
  {
    v6 = a2 - v5;
    v3[23] = 0;
    v7 = v3[22];
    if (v7 >= v6)
    {
      v3[22] = v7 - v6;
    }

    else
    {
      v3[22] = 0;
      v8 = getprogname();
      if (strcmp(v8, "xctest") && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        adjustOwnedMemoryRegionFootprint_cold_1(v6 - v7);
      }
    }
  }
}

void adjustOwnedMemoryRegionFootprint_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Footprint changed while analyzing – attempting to adjust more owned unmapped physical footprint than is present in the process by %llu bytes", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void markMallocAreas(void *a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v70 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a6;
  if ((a5 & 0x400) == 0)
  {
    if ([v11 taskType] == 2)
    {
      v15 = malloc_type_calloc(1uLL, 0x50uLL, 0x10000404247E4FDuLL);
      NSMapInsertKnownAbsent(v13, @"zalloc (no zone)", v15);
    }

    else
    {
      v16 = [v12 objectAtIndexedSubscript:0];
      v17 = [v16 range];

      v18 = [v12 lastObject];
      v46 = v13;
      v19 = [v18 range];
      v21 = v20;

      v22 = (v21 - v17 + v19);
      v23 = " Aborting";
      if ([v11 isCore])
      {
        v24 = 0;
      }

      else
      {
        v25 = [v11 taskPort];
        v24 = v25 == *MEMORY[0x1E69E9A60];
        if (v25 == *MEMORY[0x1E69E9A60])
        {
          v23 = "";
        }
      }

      v54[0] = v12;
      v54[1] = v17;
      v54[2] = v22;
      v54[3] = a4;
      v55 = v24;
      *(&v55 + 1) = (a5 & 0x800000) != 0;
      v56 = v23;
      v57 = 0x7FFFFFFFFFFFFFFFLL;
      v59 = 0;
      v60 = 0;
      v58 = 0;
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __markMallocAreas_block_invoke;
      v51[3] = &unk_1E8279030;
      v26 = v54[0];
      v52 = v26;
      v53 = (a5 & 0x800000) != 0;
      VMUTask_foreach_malloc_zone(v11, v51);
      v13 = v46;
      if (v14 && [v14 signpostID])
      {
        v27 = [v14 logHandle];
        v28 = [v14 signpostID];
        if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v27, OS_SIGNPOST_INTERVAL_END, v28, "recordRegions", "", buf, 2u);
        }
      }

      [v14 endEvent:"recordRegions"];
      [v14 startWithCategory:"recordRegions" message:"marking malloc VM regions"];
      if (v14)
      {
        v29 = [v14 logHandle];
        v30 = [v14 signpostID];
        if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v30, "recordRegions", "marking malloc VM regions", buf, 2u);
        }
      }

      v31 = v11;
      *buf = MEMORY[0x1E69E9820];
      v62 = 3221225472;
      v63 = ___markRegionsForMallocZones_block_invoke;
      v64 = &unk_1E82790D0;
      v65 = v31;
      v66 = v54;
      LOBYTE(v67) = BYTE1(v55);
      v32 = v31;
      withPeekFunctionForVMUTask(v32, buf);

      if ((a5 & 0x100) == 0)
      {
        if (v14 && [v14 signpostID])
        {
          v33 = [v14 logHandle];
          v34 = [v14 signpostID];
          if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, v33, OS_SIGNPOST_INTERVAL_END, v34, "recordRegions", "", buf, 2u);
          }
        }

        [v14 endEvent:"recordRegions"];
        [v14 startWithCategory:"recordRegions" message:"marking malloc allocations in VM regions"];
        if (v14)
        {
          v35 = [v14 logHandle];
          v36 = [v14 signpostID];
          if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C679D000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v36, "recordRegions", "marking malloc allocations in VM regions", buf, 2u);
          }
        }

        v37 = v32;
        v38 = v46;
        *buf = MEMORY[0x1E69E9820];
        v62 = 3221225472;
        v63 = ___getRegionMallocStatistics_block_invoke;
        v64 = &unk_1E8279148;
        v65 = v37;
        v66 = v38;
        v67 = v54;
        v68 = BYTE1(v55);
        v39 = v38;
        v40 = v37;
        withPeekFunctionForVMUTask(v40, buf);
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v41 = v26;
      v42 = [v41 countByEnumeratingWithState:&v47 objects:v69 count:16];
      if (v42)
      {
        v43 = *v48;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v48 != v43)
            {
              objc_enumerationMutation(v41);
            }

            setTypeIfMallocRegion(*(*(&v47 + 1) + 8 * i));
          }

          v42 = [v41 countByEnumeratingWithState:&v47 objects:v69 count:16];
        }

        while (v42);
      }

      __destructor_8_s0_s56_s64_sb72(v54);
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

void sub_1C67A4F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  __destructor_8_s0_s56_s64_sb72(va);
  _Unwind_Resume(a1);
}

void VMUTask_foreach_malloc_zone(void *a1, void *a2)
{
  v3 = a1;
  v96 = a2;
  v4 = getenv("SYMBOLICATION_LOG_ZONE_INTROSPECTION_LOOKUP");
  if (v4 && !strcmp(v4, "YES"))
  {
    logZoneIntrospectionLookup = 1;
  }

  v5 = v3;
  v107 = 0;
  v6 = [v5 isExclave];
  FlagsForNListOnlyData = 0;
  if ((v6 & 1) == 0)
  {
    FlagsForNListOnlyData = CSSymbolicatorGetFlagsForNListOnlyData();
  }

  v8 = [v5 createSymbolicatorWithFlags:FlagsForNListOnlyData andNotification:0];
  v10 = v9;
  if (!CSIsNull())
  {
    v108[0] = 0;
    aBlock[0] = 0;
    malloc_zones_array_address_and_count = task_get_malloc_zones_array_address_and_count(v5, v8, v10, v108, &v107, aBlock);
    v14 = aBlock[0];
    if (malloc_zones_array_address_and_count)
    {
      v11 = v107;
      if (v107)
      {
        v115[0] = 0;
        v15 = [v5 memoryCache];
        v16 = v108[0];
        v17 = [v15 peekAtAddress:v108[0] size:8 * v11 returnsBuf:v115];

        if (!v17)
        {
          v12 = malloc_type_malloc(8 * v11, 0x100004000313F17uLL);
          v18 = 0;
          do
          {
            v19 = *(v115[0] + v18 * 8);
            v12[v18++] = [VMUTask stripExtraPointerBits:v5];
          }

          while (v11 != v18);
          goto LABEL_17;
        }

        NSLog(&cfstr_TaskMallocGetA_2.isa, v17, v16);
        CSRelease();
      }

      else
      {
        CSRelease();
        NSLog(&cfstr_TaskMallocGetA_1.isa);
        v11 = 0;
      }

      v12 = 0;
    }

    else
    {
      CSRelease();
      NSLog(&cfstr_TaskMallocGetA_0.isa, v14);
      v12 = 0;
      v11 = v107;
    }

LABEL_17:

    goto LABEL_18;
  }

  NSLog(&cfstr_TaskMallocGetA.isa);
  v11 = 0;
  v12 = 0;
LABEL_18:

  if ((CSIsNull() & 1) == 0 && v12 && v11)
  {
    v20 = 0;
    v21 = 0x1E696A000uLL;
    v97 = v12;
    v98 = v5;
    while (1)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v12[v20];
      v106 = 0;
      v24 = [v5 memoryCache];
      v25 = [v24 peekAtAddress:v23 size:200 returnsBuf:&v106];

      v26 = v106;
      if (!v25 && v106 != 0)
      {
        break;
      }

      NSLog(&cfstr_SymbolicationC_1.isa, v23, v25);
LABEL_122:
      objc_autoreleasePoolPop(v22);
      if (++v20 >= v11)
      {
        goto LABEL_126;
      }
    }

    v102 = v22;
    v28 = v5;
    v29 = v28;
    if (*(v26 + 72) && (v30 = -[VMUTask stripExtraPointerBits:](v28), [v29 memoryCache], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "peekStringAtAddress:", v30), v31, v32))
    {
      [*(v21 + 3776) stringWithFormat:@"%s_0x%qx", v32, v23];
    }

    else
    {
      [*(v21 + 3776) stringWithFormat:@"unnamed_zone_0x%qx", v23, v90];
    }
    v33 = ;

    v105 = [*(v21 + 3776) stringWithFormat:@"preparing to enumerate %@\n", v33];
    VMUSetCrashReporterInfo(v105);
    v34 = v106;
    v35 = v29;
    v36 = v33;
    v124 = 0;
    v125 = &v124;
    v126 = 0x2020000000;
    v127 = 0;
    v120 = 0;
    v121 = &v120;
    v122 = 0x2020000000;
    v123 = 0;
    if (remoteZoneIntrospection_onceToken != -1)
    {
      VMUTask_foreach_malloc_zone_cold_1();
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __remoteZoneIntrospection_block_invoke_2;
    aBlock[3] = &unk_1E8279C28;
    v37 = v35;
    v118 = v37;
    v38 = v36;
    v119 = v38;
    v39 = _Block_copy(aBlock);
    v115[0] = MEMORY[0x1E69E9820];
    v115[1] = 3221225472;
    v115[2] = __remoteZoneIntrospection_block_invoke_3;
    v115[3] = &unk_1E8279C50;
    v40 = v39;
    v116 = v40;
    v41 = _Block_copy(v115);
    v113[0] = MEMORY[0x1E69E9820];
    v113[1] = 3221225472;
    v113[2] = __remoteZoneIntrospection_block_invoke_4;
    v113[3] = &unk_1E8279C50;
    v101 = v40;
    v114 = v101;
    v104 = _Block_copy(v113);
    v108[0] = MEMORY[0x1E69E9820];
    v108[1] = 3221225472;
    v108[2] = __remoteZoneIntrospection_block_invoke_5;
    v108[3] = &unk_1E8279C78;
    v103 = v41;
    v110 = v103;
    v42 = v38;
    v109 = v42;
    v111 = &v120;
    v112 = &v124;
    v43 = _Block_copy(v108);
    if ([v37 isExclave])
    {
      if (remoteZoneIntrospection_exclaveIntrospectionDetailsToken != -1)
      {
        VMUTask_foreach_malloc_zone_cold_2();
      }

      v44 = v105;
      v45 = &remoteZoneIntrospection_exclaveIntrospectionDetails;
      if ((remoteZoneIntrospection_getExclaveIntrospectionSucceeded & 1) == 0)
      {
        v43[2](v43, @"Failed to find xzm zone introspection structure");
        v46 = 0;
        v44 = v105;
LABEL_117:

        _Block_object_dispose(&v120, 8);
        _Block_object_dispose(&v124, 8);

        v87 = v44;
        v12 = v97;
        if (v46)
        {
          VMUSetCrashReporterInfo(v87);
          v108[0] = 0;
          LODWORD(aBlock[0]) = 0;
          v88 = *MEMORY[0x1E69E9A60];
          malloc_get_all_zones();
          v89 = v96[2](v96, v23, v46, v42);
          if (v89)
          {
            NSLog(&cfstr_SymbolicationC_2.isa, v42, v89);
          }

          VMUClearCrashReporterInfo();
          unregister_new_local_zones();
        }

        v11 = v107;
        v5 = v98;
        v21 = 0x1E696A000;
        v22 = v102;
        goto LABEL_122;
      }

LABEL_116:
      v46 = *v45;
      goto LABEL_117;
    }

    v47 = *(v34 + 96);
    v48 = [VMUTask ptrauthStripDataPointer:v37];
    CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
    CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
    if (CFUUIDBytes)
    {
      cf2 = CFUUIDCreateFromUUIDBytes(0, *CFUUIDBytes);
    }

    else
    {
      cf2 = 0;
    }

    v50 = remoteZoneIntrospection_analysisProcessLibmallocAddr;
    if (v50 == CSSymbolOwnerGetBaseAddress() && remoteZoneIntrospection_analysisProcessLibmallocUUID && cf2 && CFEqual(remoteZoneIntrospection_analysisProcessLibmallocUUID, cf2) && *MEMORY[0x1E69E9B60])
    {
      v51 = 0;
      while (1)
      {
        v52 = *(*MEMORY[0x1E69E9B68] + 8 * v51);
        if (*(v52 + 96))
        {
          v53 = *(v52 + 96);
        }

        if ([VMUTask ptrauthStripDataPointer:v37]== v48)
        {
          break;
        }

        if (++v51 >= *MEMORY[0x1E69E9B60])
        {
          goto LABEL_52;
        }
      }

      v125[3] = v48;
      v58 = "";
      goto LABEL_97;
    }

LABEL_52:
    __s1 = CSSymbolOwnerGetPath();
    if (!CSSymbolOwnerGetName())
    {
      v43[2](v43, @"couldn't get framework name associated with the malloc zone");
      v58 = "";
      goto LABEL_97;
    }

    v54 = *MEMORY[0x1E69E9A60];
    CSSymbolicatorGetFlagsForNListOnlyData();
    CSSymbolicatorCreateWithTaskFlagsAndNotification();
    SymbolOwnerWithNameAtTime = CSSymbolicatorGetSymbolOwnerWithNameAtTime();
    v99 = v56;
    if ((CSIsNull() & 1) == 0)
    {
      if (logZoneIntrospectionLookup == 1)
      {
        v59 = [v42 UTF8String];
        Path = CSSymbolOwnerGetPath();
        NSLog(&cfstr_ZoneSUsingAnal.isa, v59, Path, __s1);
      }

LABEL_73:
      if (CSIsNull())
      {
        v58 = "";
        goto LABEL_97;
      }

      v67 = CSSymbolOwnerGetPath();
      __patha = 0;
      if (__s1)
      {
        v68 = v67;
        if (v67)
        {
          if (!strcmp(__s1, v67))
          {
            __patha = 0;
          }

          else
          {
            v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s in analysis process, for %s in target process", v68, __s1];
            __s1 = [v69 UTF8String];
            __patha = v69;
          }
        }
      }

      CSSymbolOwnerGetSymbolWithAddress();
      if (!CSSymbolGetMangledName())
      {
        v43[2](v43, @"couldn't get introspect structure symbol name from %s");
        goto LABEL_95;
      }

      CSSymbolOwnerGetSymbolWithMangledName();
      if (CSIsNull())
      {
        v90 = __s1;
        v43[2](v43, @"couldn't find introspect structure symbol %s in %s");
        goto LABEL_95;
      }

      Range = CSSymbolGetRange();
      v71 = Range;
      if (Range)
      {
        if (*Range)
        {
          v72 = *Range;
          v92 = [VMUTask ptrauthStripFunctionPointer:v37];
          CSSymbolOwnerGetSymbolWithAddress();
          if (((CSSymbolIsFunction() & 1) != 0 || CSSymbolIsDeduplicated()) && CSSymbolGetRange() == v92)
          {
            if (v103[2]())
            {
              _warnIfIntrospectionSymbolOwnersDiffer(v37, SymbolOwnerWithNameAtTime, v99, cf2);
            }

            v125[3] = v71;
            v58 = " -- loaded from target process";
            goto LABEL_96;
          }

          v90 = v92;
          v43[2](v43, @"introspect structure %s for the malloc zone has invalid enumerator function address %#llx in %s");
LABEL_95:
          v58 = "";
LABEL_96:

LABEL_97:
          v74 = v125[3];
          v44 = v105;
          if (!v74)
          {
            goto LABEL_111;
          }

          if (*v74)
          {
            v75 = *v74;
          }

          CSSymbolOwnerGetSymbolWithAddress();
          Name = CSSymbolGetName();
          if (Name)
          {
            v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
          }

          else
          {
            v77 = @"<no symbol>";
          }

          v78 = [MEMORY[0x1E696AEC0] stringWithUTF8String:CSSymbolOwnerGetPath()];
          v79 = VMUSanitizePath(v78);

          v80 = -[__CFString rangeOfString:](v77, "rangeOfString:", @"(");
          if (v81)
          {
            v82 = [(__CFString *)v77 substringToIndex:v80];

            v77 = v82;
          }

          v83 = [v42 rangeOfString:@"_0x"];
          if (v83 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v84 = v42;
          }

          else
          {
            v84 = [v42 substringToIndex:v83];
          }

          v85 = v84;
          v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"enumerating %@ by calling %@ in %@%s\n", v84, v77, v79, v58];
          v86 = v44;
          if (logZoneIntrospectionLookup == 1)
          {
            NSLog(&stru_1F4621848.isa, v44);
          }

          if (!v125[3])
          {
LABEL_111:
            if ((v121[3] & 1) == 0)
            {
              v43[2](v43, @"unknown");
            }
          }

          CSRelease();
          if (cf2)
          {
            CFRelease(cf2);
          }

          v45 = v125 + 3;
          goto LABEL_116;
        }

        v73 = @"introspect structure %s for the malloc zone has no enumerator function in %s";
      }

      else
      {
        v73 = @"couldn't get address of introspect structure symbol %s in %s";
      }

      v90 = __s1;
      v43[2](v43, v73);
      goto LABEL_95;
    }

    if ((v104[2]() & 1) == 0)
    {
      *(v121 + 24) = 1;
      goto LABEL_73;
    }

    v91 = v42;
    __path = CSSymbolOwnerGetPath();
    CSSymbolOwnerGetName();
    v57 = isSafeToLoadLibrary(__path);
    if (v57)
    {
      SymbolOwnerWithNameAtTime = 0;
      v99 = 0;
    }

    else
    {
      if (dlopen(__path, 389))
      {
        if (logZoneIntrospectionLookup == 1)
        {
          NSLog(&cfstr_LoadedSForIntr.isa, __path, v91);
        }

        CSRelease();
        v61 = *MEMORY[0x1E69E9A60];
        CSSymbolicatorGetFlagsForNListOnlyData();
        CSSymbolicatorCreateWithTaskFlagsAndNotification();
        v62 = CSSymbolicatorGetSymbolOwnerWithNameAtTime();
        v99 = v63;
        SymbolOwnerWithNameAtTime = v62;
        if (!CSIsNull())
        {
          v57 = 0;
          goto LABEL_70;
        }

        v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"couldn't create symbolicator for %s", __path];
        v64 = v99;
      }

      else
      {
        v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", dlerror()];
        v64 = 0;
        SymbolOwnerWithNameAtTime = 0;
      }

      v99 = v64;
      if (!v57)
      {
LABEL_70:

        v66 = v57;
        if (CSIsNull())
        {
          v43[2](v43, @"%@");
        }

        goto LABEL_73;
      }
    }

    v65 = v57;

    goto LABEL_70;
  }

LABEL_126:
  if (v12)
  {
    free(v12);
  }

  if ((CSIsNull() & 1) == 0)
  {
    CSRelease();
  }
}

void sub_1C67A5E2C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

BOOL task_get_malloc_zones_array_address_and_count(void *a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, void *a6)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a1;
  *a4 = 0;
  *a5 = 0;
  if ([v9 isExclaveCore])
  {
    CSSymbolicatorGetSymbolOwner();
    if (CSIsNull())
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"expected 1 binary in ExclaveCore target, but found %zu", CSSymbolicatorGetSymbolOwnerCountAtTime()];
      if (a6)
      {
        v11 = 0;
        goto LABEL_13;
      }

LABEL_18:
      v11 = 0;
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  if (!CSIsNull())
  {
    goto LABEL_11;
  }

  v24 = a6;
  v12 = [v9 processDescription];
  v13 = [v12 valueForEnvVar:@"DYLD_IMAGE_SUFFIX"];
  v14 = [v13 UTF8String];

  if (v14)
  {
    snprintf(__str, 0x7FuLL, "libsystem_malloc%s.dylib", v14);
    CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  }

  a6 = v24;
  if (!CSIsNull())
  {
LABEL_11:
    CSSymbolOwnerGetSymbolWithMangledName();
    Range = CSSymbolGetRange();
    CSSymbolOwnerGetSymbolWithMangledName();
    v16 = CSSymbolGetRange();
    *__str = 0;
    v17 = [v9 memoryCache];
    v18 = [v17 peekAtAddress:v16 size:4 returnsBuf:__str];

    if (!v18)
    {
      v19 = **__str;
      *a5 = **__str;
      if (!v19)
      {
        v11 = 1;
        goto LABEL_21;
      }

      v25 = 0;
      v20 = [v9 memoryCache];
      v21 = [v20 peekAtAddress:Range size:8 returnsBuf:&v25];

      v11 = v21 == 0;
      if (!v21)
      {
        *a4 = *v25;
        goto LABEL_21;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error %d reading zones_address at %qx", v21, Range];
      if (!a6)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error %d reading num_zones at %qx", v18, v16];
    v11 = 0;
    if (a6)
    {
LABEL_13:
      *a6 = v10;
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (!v24)
  {
    goto LABEL_18;
  }

  v11 = 0;
  *v24 = @"couldn't find libsystem_malloc dylib in target task";
LABEL_21:

  v22 = *MEMORY[0x1E69E9840];
  return v11;
}

id VMUidentifyRegionTypeFromUserTag(int a1, unsigned __int8 a2, int a3, int a4)
{
  if (a1)
  {
    VMUExclaveRegionTypeDescriptionForTagShareProtAndPager(a2);
  }

  else
  {
    VMURegionTypeDescriptionForTagShareProtAndPager(a2, a3, a4, 0);
  }
  v6 = ;
  if (a3 == 3 && a4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v6, VMUreservedLabelSuffix];

    v6 = v7;
  }

  return v6;
}

__CFString *VMURegionTypeDescriptionForTagShareProtAndPager(uint64_t a1, int a2, int a3, int a4)
{
  if (a1 != 30)
  {
    if (a1 == 1)
    {
      v7 = @"MALLOC metadata";
      if (a2 == 3)
      {
        v7 = @"MALLOC";
      }

      if (a3)
      {
        v8 = v7;
      }

      else
      {
        v8 = @"MALLOC guard page";
      }

      goto LABEL_23;
    }

    if (a1)
    {
      v8 = vmRegionLabels[a1];
      if (!v8)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Memory Tag %d", a1];
      }

      goto LABEL_23;
    }

    if (a4 == 1)
    {
      v6 = VMUmappedFileLabel[0];
    }

    else
    {
      if (a2 == 5)
      {
        v8 = @"shared memory";
        goto LABEL_23;
      }

      v6 = VMUuntaggedRegionLabel;
    }

    v8 = v6;
LABEL_23:

    return v8;
  }

  if (a3)
  {
    v8 = @"Stack";
  }

  else
  {
    v8 = @"Stack Guard";
  }

  return v8;
}

id VMUVMLedgerNameForTag(unint64_t a1)
{
  if (a1 > 5)
  {
    v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"VM ledger tag %llu", a1];
  }

  else
  {
    v1 = gVMLedgerNames[a1];
  }

  return v1;
}

uint64_t VMUFootprintForVmObject(uint64_t result, void *a2, void *a3)
{
  v3 = *(result + 48);
  if (v3)
  {
    v6 = 0;
    *a2 = 0;
  }

  else
  {
    v4 = (v3 >> 4) & 3;
    if (v4 == 3 || v4 == 0)
    {
      *a2 = *(result + 16) - *(result + 32);
      v6 = *(result + 40);
    }

    else
    {
      v6 = 0;
      *a2 = *(result + 24);
    }
  }

  *a3 = v6;
  return result;
}

void cumulateLibraries(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ((*(v14 + 48) & 1) == 0 && [*(v14 + 32) isEqual:v9] && *(v14 + 50) == 1)
        {
          *a3 += *(v14 + 16);
          *a4 += *(v14 + 160);
          *a5 += *(v14 + 16) - *(v14 + 160);
          *(v14 + 48) = 1;
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t memorySizeString(unint64_t a1)
{
  if (a1)
  {
    v1 = vcvtd_n_f64_u64(a1, 0xAuLL);
    if (v1 >= 4.0)
    {
      if (v1 >= 10000.0)
      {
        v3 = v1 * 0.0009765625;
        if (v3 >= 1000.0)
        {
          v4 = v3 * 0.0009765625;
          if (v4 >= 1000.0)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1fT", v4 * 0.0009765625];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1fG", *&v4];
          }
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1fM", *&v3];
        }
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0fK", *&v1];
      }
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", a1];
    }
    v2 = ;
  }

  else
  {
    v2 = @"0K";
  }

  v5 = [(__CFString *)v2 UTF8String];

  return v5;
}

void appendTextLine(void *a1, __int16 a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v23 = a1;
  [v23 appendFormat:@"%-*s", a4, a5];
  v21 = 8;
  if (a3)
  {
    v22 = 10;
  }

  else
  {
    v22 = 8;
  }

  if (a3)
  {
    v21 = 10;
  }

  [v23 appendFormat:@" %*s", v21, a6];
  if ((a2 & 4) != 0)
  {
    [v23 appendFormat:@" %*s", v22, a7];
    if ((a2 & 8) == 0)
    {
LABEL_8:
      if ((a2 & 0x800) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((a2 & 8) == 0)
  {
    goto LABEL_8;
  }

  [v23 appendFormat:@" %*s", v22, a8];
  if ((a2 & 0x800) == 0)
  {
LABEL_9:
    if ((a2 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_16:
  [v23 appendFormat:@" %*s", v22, a9];
  if ((a2 & 0x10) != 0)
  {
LABEL_10:
    [v23 appendFormat:@" %*s %*s %*s", v22, a10, v22, a11, v22, a12];
  }

LABEL_11:
  [v23 appendFormat:@" %8s", a13];
  [v23 appendFormat:@" %s", a14];
  [v23 appendString:@"\n"];
}

void appendStatsLine(void *a1, __int16 a2, unsigned int a3, char a4, unsigned int a5, uint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unsigned int a14, uint64_t a15)
{
  v31 = a1;
  context = objc_autoreleasePoolPush();
  v19 = pageCountString(a7, a3, a4);
  v20 = pageCountString(a8, a3, a4);
  v21 = pageCountString(a9, a3, a4);
  v22 = pageCountString(a10, a3, a4);
  v23 = pageCountString(a11, a3, a4);
  v24 = pageCountString(a12, a3, a4);
  v25 = pageCountString(a13, a3, a4);
  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%8u", a14];
  appendTextLine(v31, a2, a3 > 1, a5, a6, v19, v20, v21, v22, v23, v24, v25, [v26 UTF8String], a15);

  objc_autoreleasePoolPop(context);
}

uint64_t pageCountString(unint64_t a1, unsigned int a2, char a3)
{
  if (a2 < 2)
  {

    return memorySizeString(a1);
  }

  else
  {
    if (a3)
    {
      if (a1 % a2)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f", a1 / a2];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu   ", a1 / a2];
      }
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", a1 / a2];
    }
    v4 = ;
    v5 = [v4 UTF8String];

    return v5;
  }
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);

  return [(VMUTask *)a1 useExtraPointerStripping];
}

void VMUSetCrashReporterInfo(void *a1)
{
  v2 = a1;
  if (v2)
  {
    os_unfair_lock_lock(&crashreporterInfoLock);
    objc_storeStrong(&gVMUCrashLogMessage, a1);
    qword_1EDC0C770 = [gVMUCrashLogMessage UTF8String];
    os_unfair_lock_unlock(&crashreporterInfoLock);
  }

  else
  {
    VMUClearCrashReporterInfo();
  }
}

void __remoteZoneIntrospection_block_invoke()
{
  v0 = *MEMORY[0x1E69E9A60];
  CSSymbolicatorGetFlagsForNListOnlyData();
  CSSymbolicatorCreateWithTaskFlagsAndNotification();
  CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
  if (CFUUIDBytes)
  {
    remoteZoneIntrospection_analysisProcessLibmallocUUID = CFUUIDCreateFromUUIDBytes(0, *CFUUIDBytes);
  }

  remoteZoneIntrospection_analysisProcessLibmallocAddr = CSSymbolOwnerGetBaseAddress();
  CSRelease();
  v2 = objc_opt_new();
  v3 = remoteZoneIntrospection_previouslySeenTasksAndZones;
  remoteZoneIntrospection_previouslySeenTasksAndZones = v2;

  v4 = objc_opt_new();
  v5 = remoteZoneIntrospection_previouslySeenTasksAndZonesLock;
  remoteZoneIntrospection_previouslySeenTasksAndZonesLock = v4;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_0_3@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 & v1;
  if (v3)
  {
    return a1;
  }

  else
  {
    return v4;
  }
}

uint64_t __markMallocAreas_block_invoke(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v12 = 0;
  findRegionForAddress(*(a1 + 32), a2, &v12);
  v7 = v12;
  if (v12)
  {
    if (!v12[5])
    {
      v8 = [v6 stringByAppendingString:@" zone structure"];
      v9 = v7[5];
      v7[5] = v8;

      if (*(a1 + 40) == 1)
      {
        v10 = [v7 description];
        printf("Setting region name in %s based on malloc zone structure address for  %s\n", "markMallocAreas_block_invoke", [v10 UTF8String]);
      }
    }
  }

  return 0;
}

void VMUClearCrashReporterInfo()
{
  if (gVMUCrashLogMessage)
  {
    os_unfair_lock_lock(&crashreporterInfoLock);
    qword_1EDC0C770 = 0;
    v0 = gVMUCrashLogMessage;
    gVMUCrashLogMessage = 0;

    os_unfair_lock_unlock(&crashreporterInfoLock);
  }
}

void withPeekFunctionForVMUTask(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 memoryCache];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __withPeekFunctionForVMUTask_block_invoke;
  v9[3] = &unk_1E82776C0;
  v10 = v3;
  v11 = v5;
  v6 = v5;
  v7 = v3;
  v8 = _Block_copy(v9);
  _withPeekTransformerFunctionForMemoryReader(v8, v4);
}

void _withPeekTransformerFunctionForMemoryReader(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (_withPeekTransformerFunctionForMemoryReader_s_onceToken != -1)
  {
    _withPeekTransformerFunctionForMemoryReader_cold_1();
  }

  v5 = _withPeekTransformerFunctionForMemoryReader_s_peekingTransformerGuard;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___withPeekTransformerFunctionForMemoryReader_block_invoke_2;
  v8[3] = &unk_1E8277670;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_sync(v5, v8);
}

void ___withPeekTransformerFunctionForMemoryReader_block_invoke()
{
  v0 = dispatch_queue_create("task peeking transformer guard queue", 0);
  v1 = _withPeekTransformerFunctionForMemoryReader_s_peekingTransformerGuard;
  _withPeekTransformerFunctionForMemoryReader_s_peekingTransformerGuard = v0;
}

void ___withPeekTransformerFunctionForMemoryReader_block_invoke_2(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 32));
  v3 = s_peekBlock;
  s_peekBlock = v2;

  (*(*(a1 + 40) + 16))();
  v4 = s_peekBlock;
  s_peekBlock = 0;
}

void ___markRegionsForMallocZones_block_invoke(uint64_t a1, uint64_t a2)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___markRegionsForMallocZones_block_invoke_2;
  v5[3] = &unk_1E82790A8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v11;
  v8 = v4;
  v10 = *(a1 + 48);
  v6 = v3;
  v9 = a2;
  VMUTask_foreach_malloc_zone(v6, v5);

  _Block_object_dispose(v11, 8);
}

uint64_t ___markRegionsForMallocZones_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t (**a3)(void, void, void, void, void, void), void *a4)
{
  v8 = a4;
  v9 = *(a1 + 48);
  ++*(*(*(a1 + 40) + 8) + 24);
  v37 = 0;
  v38 = &v37;
  v39 = 0x3010000000;
  v40 = &unk_1C6872315;
  v41 = xmmword_1C6858410;
  v10 = *(v9 + 56);
  *(v9 + 48) = 0x7FFFFFFFFFFFFFFFLL;
  *(v9 + 56) = 0;

  objc_storeStrong((*(a1 + 48) + 64), a4);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___markRegionsForMallocZones_block_invoke_3;
  aBlock[3] = &unk_1E8279058;
  v36 = *(a1 + 48);
  v34 = &v37;
  v11 = v8;
  v12 = *(a1 + 40);
  v33 = v11;
  v35 = v12;
  v13 = _Block_copy(aBlock);
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = ___markRegionsForMallocZones_block_invoke_4;
  v25 = &unk_1E8279080;
  v30 = *(a1 + 48);
  v28 = &v37;
  v14 = v13;
  v27 = v14;
  v15 = v11;
  v16 = *(a1 + 40);
  v26 = v15;
  v29 = v16;
  v31 = *(a1 + 64);
  v17 = _Block_copy(&v22);
  v18 = *(a1 + 48);
  v19 = *(v18 + 72);
  *(v18 + 72) = v17;

  v20 = VMUCallMallocEnumeratorWithAttributeGraphWorkaround([*(a1 + 32) taskPort], *(a1 + 48), 6, a2, *(a1 + 56), _mallocEnumerationHandler, a3, v15);
  if (v38[4] != 0x7FFFFFFFFFFFFFFFLL)
  {
    (*(v14 + 2))(v14, @"Range remaining after enumeration");
  }

  _Block_object_dispose(&v37, 8);
  return v20;
}

uint64_t VMUCallMallocEnumeratorWithAttributeGraphWorkaround(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (**a7)(void, void, void, void, void, void), void *a8)
{
  v11 = a3;
  if ((a3 & 3) != 0)
  {
    v16 = a7;
    if ([a8 hasPrefix:@"AttributeGraph_0x"])
    {
      v11 = v11 | 0x100;
    }

    else
    {
      v11 = v11;
    }

    a7 = v16;
  }

  v14 = *a7;

  return v14(a1, a2, v11, a4, a5, a6);
}

uint64_t _task_peek_transformer_function(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (!a3)
  {
    v5 = 0;
    v6 = 0;
    if (!a4)
    {
      return v6;
    }

    goto LABEL_6;
  }

  v5 = (*(s_peekBlock + 16))();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  if (a4)
  {
LABEL_6:
    *a4 = v5;
  }

  return v6;
}

uint64_t __withPeekFunctionForVMUTask_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if ([*(a1 + 40) peekAtAddress:-[VMUTask stripExtraPointerBits:](*(a1 + 32)) size:a3 returnsBuf:&v4])
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void _mallocEnumerationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a5)
  {
    v6 = 0;
    v7 = a5;
    do
    {
      v8 = (a4 + 16 * v6);
      v9 = *v8;
      v10 = v8[1];
      v11 = *v8 + v10;
      if (__CFADD__(*v8, v10))
      {
        NSLog(&cfstr_ErrorInEnumera.isa, *(a2 + 64), v9, v11, v10, *(a2 + 40));
        if ((*(a2 + 32) & 1) == 0)
        {
LABEL_23:
          abort();
        }
      }

      v12 = v9;
      if (*(a2 + 24))
      {
        if (!VMURangeIntersectsRange(v9, v10, *(a2 + 8), *(a2 + 16)))
        {
          goto LABEL_21;
        }

        if (v9 <= *(a2 + 8))
        {
          v12 = *(a2 + 8);
        }

        else
        {
          v12 = v9;
        }
      }

      (*(*(a2 + 72) + 16))();
      if (v12 < v11)
      {
        while (1)
        {
          v13 = *(a2 + 56);
          if (!v13 || v12 - *(v13 + 8) >= *(v13 + 16))
          {
            *(a2 + 48) = findRegionForAddress(*a2, v12, (a2 + 56));
            if (!*(a2 + 56))
            {
              break;
            }
          }

          (*(*(a2 + 72) + 16))();
          v12 = *(*(a2 + 56) + 16) + *(*(a2 + 56) + 8);
          if (v12 >= v11)
          {
            goto LABEL_21;
          }

          v14 = *(a2 + 48) + 1;
          *(a2 + 48) = v14;
          if (v14 >= [*a2 count])
          {
            v15 = 0;
          }

          else
          {
            v15 = [*a2 objectAtIndexedSubscript:*(a2 + 48)];
          }

          v16 = *(a2 + 56);
          *(a2 + 56) = v15;
        }

        v17 = *(a2 + 64);
        v18 = VMURangeDescription(v9, v10);
        NSLog(&cfstr_ErrorInEnumera_0.isa, v17, v18, *(a2 + 40));

        if ((*(a2 + 32) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

LABEL_21:
      ++v6;
    }

    while (v6 != v7);
  }
}

void ___markRegionsForMallocZones_block_invoke_4(uint64_t a1, id a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = *(*(a1 + 64) + 56);
  v10 = v9;
  if (a5 != 1)
  {
    if (a5)
    {
      ___markRegionsForMallocZones_block_invoke_4_cold_2();
    }

    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    if (v12 && (*(v11 + 32) + v12) != a2)
    {
      v13 = *(*(a1 + 40) + 16);
      v25 = v9;
LABEL_28:
      v13();
LABEL_29:
      v10 = v25;
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  v14 = v9[5];
  v25 = v10;
  if (!v14)
  {
    v16 = 0;
LABEL_14:
    v22 = v16;
    objc_storeStrong(v25 + 5, *(a1 + 32));
    *(v25 + 37) = *(*(*(a1 + 56) + 8) + 24);
    *(*(*(a1 + 48) + 8) + 32) = xmmword_1C6858410;
    if ([v25 isUntaggedRegion])
    {
      [v25 setAsMallocRegion];
      objc_storeStrong(v25 + 4, VMUmallocOtherRegionLabel);
      if (*(a1 + 72) == 1)
      {
        v23 = [v25 description];
        printf("ISSUE:  Region user_tag should already be set; setting to VM_MEMORY_MALLOC in %s based on enumeration range for  %s\n", "_markRegionsForMallocZones_block_invoke_4", [v23 UTF8String]);
      }
    }

    if (*(a1 + 72) == 1 && ([v22 isEqualToString:v25[5]] & 1) == 0)
    {
      v24 = [v25 description];
      printf("Setting region name in %s based on enumeration range for  %s\n", "_markRegionsForMallocZones_block_invoke_4", [v24 UTF8String]);

      if (v22)
      {
        printf("    Old region name was %s\n", [v22 UTF8String]);
      }
    }

    goto LABEL_29;
  }

  v15 = [v14 hasSuffix:@" zone structure"];
  v10 = v25;
  v16 = v25[5];
  if (v15)
  {
    goto LABEL_14;
  }

  if (v16 != *(a1 + 32))
  {
    v17 = v25[1];
    v18 = v17 + v25[2];
    if (a2 + a3 < v18)
    {
      v18 = a2 + a3;
    }

    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 32);
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = v18 - a2;
      *(v19 + 32) = a2;
    }

    else
    {
      if (a2 > v17)
      {
        v17 = a2;
      }

      if ((*(v19 + 40) + v20) != v17)
      {
        ___markRegionsForMallocZones_block_invoke_4_cold_1();
      }

      v21 = v18 - v20;
    }

    *(v19 + 40) = v21;
    if ((*(*(*(a1 + 48) + 8) + 40) + *(*(*(a1 + 48) + 8) + 32)) == v25[1] + v25[2])
    {
      v13 = *(*(a1 + 40) + 16);
      goto LABEL_28;
    }
  }

LABEL_30:
}

void setTypeIfMallocRegion(void *a1)
{
  v1 = a1;
  if (!v1[6])
  {
    goto LABEL_26;
  }

  if (*(v1 + 17))
  {
    goto LABEL_3;
  }

  if (*(v1 + 232) == 1)
  {
    if (*(v1 + 238))
    {
      v2 = @"MALLOC (empty)";
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v3 = v1[26] - 2;
    if (v3 > 0xB)
    {
LABEL_3:
      v2 = 0;
      goto LABEL_10;
    }

    v2 = off_1E8279268[v3];
  }

LABEL_10:
  v10 = v1;
  if (v1[36])
  {
    v4 = objc_autoreleasePoolPush();
    v2 = VMUidentifyRegionTypeFromUserTag(v10[232], *(v10 + 26), v10[50], *(v10 + 6));
    if ([v10 isUntaggedRegion])
    {
      [v10 setAsMallocRegion];
      v5 = VMUmallocOtherRegionLabel;

      v2 = v5;
    }

    v6 = v10;
    if (!*(v10 + 6) || v10[50] == 3)
    {
      goto LABEL_22;
    }

    if (*(v10 + 36) != 4 && (v10[232] & 1) == 0 && *(v10 + 26) == 1)
    {
      if ([(__CFString *)v2 isEqualToString:@"MALLOC metadata"])
      {

        v2 = @"MALLOC";
      }

      v6 = v10;
    }

    if (*(v6 + 17))
    {
      goto LABEL_22;
    }

    v7 = *(v6 + 36);
    if (v7 == 4)
    {
      v8 = @"metadata";
    }

    else
    {
      if ((v7 & 2) == 0)
      {
LABEL_22:
        objc_autoreleasePoolPop(v4);
        goto LABEL_23;
      }

      v8 = @"(empty)";
    }

    if (([(__CFString *)v2 hasSuffix:v8]& 1) == 0)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v2, v8];

      v2 = v9;
    }

    goto LABEL_22;
  }

LABEL_23:
  if (v2)
  {
    objc_storeStrong(v10 + 4, v2);
  }

  v1 = v10;
LABEL_26:
}

void __destructor_8_s0_s56_s64_sb72(uint64_t a1)
{
  v2 = *(a1 + 72);
}

void markStacks(void *a1, void *a2)
{
  v25 = a1;
  v3 = a2;
  v4 = [v25 count];
  v5 = [v3 threadCount];
  if (v5)
  {
    LODWORD(v6) = v5;
    do
    {
      v6 = (v6 - 1);
      v7 = [v3 stackPointerForThreadNum:v6];
      v26 = 0;
      RegionForAddress = findRegionForAddress(v25, v7, &v26);
      v9 = v26;
      if (v26)
      {
        v10 = RegionForAddress;
        while (!*(v9 + 32))
        {
          if (*(v9 + 24))
          {
            break;
          }

          if (*(v9 + 50) != 3)
          {
            break;
          }

          if (![v9 isStack])
          {
            break;
          }

          if (++v10 >= v4)
          {
            break;
          }

          v11 = [v25 objectAtIndex:v10];

          v9 = v11;
          if (!v11)
          {
            goto LABEL_13;
          }
        }

        if (!*(v9 + 32) && *(v9 + 24) && [v9 isStack])
        {
          v12 = *(v9 + 32);
          *(v9 + 32) = @"Stack";

          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"thread %d", v6];
          v14 = *(v9 + 40);
          *(v9 + 40) = v13;

          if (v10 + 1 < v4)
          {
            v15 = [v25 objectAtIndex:?];
            if (!*(v15 + 32) && [v9 isStack] && *(v9 + 16) + *(v9 + 8) == *(v15 + 8) && objc_msgSend(v9, "hasSameInfoAsRegion:", v15))
            {
              objc_storeStrong((v15 + 32), *(v9 + 32));
              objc_storeStrong((v15 + 40), *(v9 + 40));
            }
          }

          if (v10 >= 2)
          {
            v16 = v10 - 1;
            while (1)
            {
              v17 = [v25 objectAtIndex:v16];
              v18 = v16 + 1;
              v19 = [v25 objectAtIndex:v16 + 1];
              v20 = v19;
              if (*(v17 + 32) || *(v17 + 16) + *(v17 + 8) != *(v19 + 8) || ![v17 isStack])
              {
                break;
              }

              v21 = *(v17 + 24);
              if (v21 == 3)
              {
                objc_storeStrong((v17 + 32), *(v9 + 32));
                objc_storeStrong((v17 + 40), *(v9 + 40));
              }

              else if (!v21)
              {
                v22 = *(v17 + 32);
                *(v17 + 32) = @"STACK GUARD";

                v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"stack guard for thread %d", v6];
                v24 = *(v17 + 40);
                *(v17 + 40) = v23;

                break;
              }

              v16 = v18 - 2;
              if (v18 == 2)
              {
                goto LABEL_13;
              }
            }
          }
        }
      }

LABEL_13:
    }

    while (v6);
  }
}

void markIOSurfaces(void *a1, void *a2, __int16 a3)
{
  v117 = *MEMORY[0x1E69E9840];
  v81 = a1;
  v5 = a2;
  if ((a3 & 0x400) != 0)
  {
    goto LABEL_69;
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v71 = v5;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v108 objects:v116 count:16];
  if (!v7)
  {
LABEL_10:

    goto LABEL_68;
  }

  v8 = v7;
  v9 = *v109;
LABEL_4:
  v10 = 0;
  while (1)
  {
    if (*v109 != v9)
    {
      objc_enumerationMutation(v6);
    }

    if ([*(*(&v108 + 1) + 8 * v10) isIOSurface])
    {
      break;
    }

    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v108 objects:v116 count:16];
      if (!v8)
      {
        goto LABEL_10;
      }

      goto LABEL_4;
    }
  }

  context = objc_autoreleasePoolPush();
  v11 = [v81 ioSurfaceDescriptions];
  if (!v11)
  {
    goto LABEL_67;
  }

  v68 = v6;
  v12 = v11;
  v13 = objc_opt_new();
  v83 = objc_opt_new();
  v82 = objc_opt_new();
  v80 = objc_opt_new();
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v69 = v12;
  obj = v12;
  v14 = 0x1E696A000uLL;
  v84 = v13;
  v74 = [obj countByEnumeratingWithState:&v104 objects:v115 count:16];
  if (!v74)
  {
    goto LABEL_37;
  }

  v72 = *v105;
  do
  {
    v15 = 0;
    do
    {
      if (*v105 != v72)
      {
        objc_enumerationMutation(obj);
      }

      v78 = v15;
      v16 = *(*(&v104 + 1) + 8 * v15);
      v89 = [v81 pid];
      v87 = [v16 integerValue];
      v17 = v16;
      v18 = [obj objectForKeyedSubscript:v16];
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v85 = v18;
      v19 = [v18 countByEnumeratingWithState:&v100 objects:v114 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v101;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v101 != v21)
            {
              objc_enumerationMutation(v85);
            }

            v23 = *(*(&v100 + 1) + 8 * i);
            v24 = [v23 surfaceID];
            v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v24];
            v26 = [v13 objectForKeyedSubscript:v25];

            if (!v26)
            {
              v26 = objc_opt_new();
              v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v24];
              [v13 setObject:v26 forKeyedSubscript:v27];
            }

            [v26 addObject:v17];
            if (v89 == v87)
            {
              v28 = [v23 pixelFormat];
              v29 = v28;
              v30 = HIBYTE(v28);
              if ((v28 & 0x80000000) != 0)
              {
                if (!__maskrune(HIBYTE(v28), 0x800uLL))
                {
                  goto LABEL_29;
                }

LABEL_27:
                __str[0] = v30;
                __str[1] = BYTE2(v29);
                __str[2] = BYTE1(v29);
                __str[3] = v29;
                __str[4] = 0;
              }

              else
              {
                if ((*(MEMORY[0x1E69E9830] + 4 * v30 + 60) & 0x800) != 0)
                {
                  goto LABEL_27;
                }

LABEL_29:
                snprintf(__str, 5uLL, "%4d", v29);
              }

              v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v24];
              v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v23, "virtualAddress")}];
              [v82 setObject:v31 forKeyedSubscript:v32];

              v33 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"SurfaceID: %#x  %llux%llu (%s) %s", v24, objc_msgSend(v23, "width"), objc_msgSend(v23, "height"), __str, VMUMemorySizeString(objc_msgSend(v23, "allocationSize"))];
              v34 = [v23 name];
              v35 = [v34 length];

              if (v35)
              {
                v36 = [v23 name];
                [v33 appendFormat:@"  '%@'", v36];
              }

              v14 = 0x1E696A000uLL;
              v37 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v23, "virtualAddress")}];
              [v83 setObject:v33 forKeyedSubscript:v37];

              v13 = v84;
            }
          }

          v20 = [v85 countByEnumeratingWithState:&v100 objects:v114 count:16];
        }

        while (v20);
      }

      v15 = v78 + 1;
    }

    while (v78 + 1 != v74);
    v74 = [obj countByEnumeratingWithState:&v104 objects:v115 count:16];
  }

  while (v74);
LABEL_37:

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v38 = v68;
  v39 = [v38 countByEnumeratingWithState:&v95 objects:v113 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v96;
    v73 = *v96;
    v75 = v38;
    do
    {
      v42 = 0;
      obja = v40;
      do
      {
        if (*v96 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v95 + 1) + 8 * v42);
        if ([v43 isIOSurface])
        {
          v90 = v42;
          v44 = [*(v14 + 3480) numberWithUnsignedLongLong:v43[1]];
          [v83 objectForKeyedSubscript:v44];
          v46 = v45 = v43;

          v88 = v45;
          v47 = [*(v14 + 3480) numberWithUnsignedLongLong:v45[1]];
          v48 = [v82 objectForKeyedSubscript:v47];

          v86 = v48;
          v49 = [v84 objectForKeyedSubscript:v48];
          if ([v49 count] >= 2)
          {
            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v79 = v49;
            v50 = v49;
            v51 = [v50 countByEnumeratingWithState:&v91 objects:v112 count:16];
            if (v51)
            {
              v52 = v51;
              v53 = 0;
              v54 = *v92;
              do
              {
                for (j = 0; j != v52; ++j)
                {
                  if (*v92 != v54)
                  {
                    objc_enumerationMutation(v50);
                  }

                  v56 = [*(*(&v91 + 1) + 8 * j) intValue];
                  v57 = [v81 pid];
                  if (v56)
                  {
                    v58 = v56 == v57;
                  }

                  else
                  {
                    v58 = 1;
                  }

                  if (!v58)
                  {
                    if ((v53 & 1) == 0)
                    {
                      [v46 appendString:{@", shared with"}];
                    }

                    v59 = [*(v14 + 3480) numberWithInt:v56];
                    v60 = [v80 objectForKeyedSubscript:v59];

                    if (!v60)
                    {
                      v61 = [[VMUProcInfo alloc] initWithPid:v56];
                      v62 = [(VMUProcInfo *)v61 name];
                      v63 = v62;
                      v64 = @"<unknown>";
                      if (v62)
                      {
                        v64 = v62;
                      }

                      v60 = v64;

                      v65 = [MEMORY[0x1E696AD98] numberWithInt:v56];
                      [v80 setObject:v60 forKeyedSubscript:v65];
                    }

                    [v46 appendFormat:@" %s[%u]", -[__CFString UTF8String](v60, "UTF8String"), v56];

                    v53 = 1;
                    v14 = 0x1E696A000;
                  }
                }

                v52 = [v50 countByEnumeratingWithState:&v91 objects:v112 count:16];
              }

              while (v52);
            }

            v41 = v73;
            v38 = v75;
            v40 = obja;
            v49 = v79;
          }

          v66 = v88[5];
          v88[5] = v46;

          v42 = v90;
        }

        ++v42;
      }

      while (v42 != v40);
      v40 = [v38 countByEnumeratingWithState:&v95 objects:v113 count:16];
    }

    while (v40);
  }

  v11 = v69;
LABEL_67:

  objc_autoreleasePoolPop(context);
LABEL_68:
  v5 = v71;
LABEL_69:

  v67 = *MEMORY[0x1E69E9840];
}

BOOL task_exists(void *a1)
{
  v1 = a1;
  if ([v1 isCore])
  {
    v2 = 1;
  }

  else
  {
    v7 = 0;
    *task_info_out = 0u;
    v6 = 0u;
    task_info_outCnt = 10;
    v2 = [v1 taskPort] && objc_msgSend(v1, "taskPort") != -1 && task_info(objc_msgSend(v1, "taskPort"), 0x12u, task_info_out, &task_info_outCnt) == 0;
  }

  return v2;
}

void sub_1C67A964C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VMUProcessDescription;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_1C67A9908()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C67A9940()
{
  v1 = sub_1C684F8F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C67A9A1C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C67A9AB4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C67A9AFC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C67A9B54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t _determine_pthread_offsets(uint64_t (*a1)())
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = gPthreadOffsets;
  gPthreadOffsets = v2;

  v4 = pthread_self();
  v5 = 0;
  while (1)
  {
    v6 = *(&v4->__sig + v5);
    if (v6 == _determine_pthread_offsets)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithLong:v5];
      [gPthreadOffsets setObject:v7 forKeyedSubscript:@"StartRoutineOffsetKey"];

      v6 = *(&v4->__sig + v5);
    }

    if (v6 == a1)
    {
      break;
    }

    if (++v5 == 8184)
    {
      goto LABEL_8;
    }
  }

  v8 = [MEMORY[0x1E696AD98] numberWithLong:v5];
  [gPthreadOffsets setObject:v8 forKeyedSubscript:@"StartRoutineArgumentOffsetKey"];

LABEL_8:
  *thread_info_out = 0;
  v18 = 0;
  v19 = 0;
  thread_info_outCnt = 6;
  v9 = MEMORY[0x1C695E790]();
  thread_info(v9, 4u, thread_info_out, &thread_info_outCnt);
  v10 = v18;
  v11 = v18 - v4;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v18 - v4];
  [gPthreadOffsets setObject:v12 forKeyedSubscript:@"FirstTLSslotKey"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v11 + 4088];
  [gPthreadOffsets setObject:v13 forKeyedSubscript:@"LastTLSslotKey"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:((v10 + *MEMORY[0x1E69E9AC8] + 4087) & -*MEMORY[0x1E69E9AC8]) - v4];
  [gPthreadOffsets setObject:v14 forKeyedSubscript:@"RegionEndOffsetKey"];

  return 0;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C67ACA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _debugSwiftAsyncPrintfIsEnabled()
{
  if (_debugSwiftAsyncPrintfIsEnabled_onceToken != -1)
  {
    _debugSwiftAsyncPrintfIsEnabled_cold_1();
  }

  return _debugSwiftAsyncPrintfIsEnabled_enabled;
}

const char *___debugSwiftAsyncPrintfIsEnabled_block_invoke()
{
  result = getenv("SYMBOLICATION_DEBUG_SWIFT_ASYNC");
  if (result)
  {
    v1 = result;
    result = strcmp(result, "YES");
    if (!result || *v1 == 49 && !v1[1])
    {
      _debugSwiftAsyncPrintfIsEnabled_enabled = 1;
    }
  }

  return result;
}

uint64_t _debugSwiftAsyncPrintf(int a1, char *a2, ...)
{
  va_start(va, a2);
  if (a1)
  {
    v3 = a1;
    v4 = MEMORY[0x1E69E9848];
    do
    {
      fwrite("  ", 2uLL, 1uLL, *v4);
      --v3;
    }

    while (v3);
  }

  return vfprintf(*MEMORY[0x1E69E9848], a2, va);
}

void sub_1C67B4A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C67B4D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1C67B6450(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_1C67B8468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Block_object_dispose(&STACK[0x2B8], 8);
  _Block_object_dispose(&STACK[0x2E8], 8);
  _Unwind_Resume(a1);
}

void sub_1C67BAC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t ___unmapRegion_block_invoke(uint64_t a1)
{
  v14 = 0;
  v15 = 0;
  result = [*(a1 + 32) unmapAddress:*(**(a1 + 48) + 8) size:*(*(a1 + 48) + 40) >> 1 returnedAddress:&v15 returnedSize:&v14];
  if (result)
  {
    v3 = *(a1 + 48);
    result = fprintf(*MEMORY[0x1E69E9848], "Failed to deallocate mapped region %#llx-%#llx[%llu] with local addresses %p-%p[%llu]\n", *(*v3 + 8), *(*v3 + 16) + *(*v3 + 8), *(*v3 + 16), *(v3 + 48), (*(v3 + 48) + (*(v3 + 40) >> 1)), *(v3 + 40) >> 1);
LABEL_3:
    v4 = *(a1 + 48);
    v5 = v4[5] & 1;
    v4[6] = 0;
    v4[7] = 0;
    v4[5] = v5;
    return result;
  }

  if (!v15)
  {
    goto LABEL_3;
  }

  result = [*(a1 + 40) flushRemoteMirrorMemoryCache];
  v6 = *(a1 + 48);
  for (i = *(a1 + 56); v6 > i; v6 -= 8)
  {
    if (v15 >= *(*v6 + 8))
    {
      break;
    }
  }

  v8 = v14;
  if (v14)
  {
    v9 = v6 + 5;
    do
    {
      v10 = *v9 & 1;
      v9[1] = 0;
      v9[2] = 0;
      *v9 = v10;
      v11 = *(*(v9 - 5) + 16);
      v9 += 8;
      v12 = v8 >= v11;
      v8 -= v11;
      v13 = v8 != 0 && v12;
      if (!v12)
      {
        v8 = 0;
      }
    }

    while (v13);
  }

  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C67C2BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C67C2E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1C67C46A4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_1C67C61F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Unwind_Resume(a1);
}

void sub_1C67C8240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t ___unmapRegion_block_invoke_0(uint64_t a1)
{
  v14 = 0;
  v15 = 0;
  result = [*(a1 + 32) unmapAddress:*(**(a1 + 40) + 8) size:*(*(a1 + 40) + 40) >> 1 returnedAddress:&v15 returnedSize:&v14];
  if (result)
  {
    v3 = *(a1 + 40);
    result = fprintf(*MEMORY[0x1E69E9848], "Failed to deallocate mapped region %#llx-%#llx[%llu] with local addresses %p-%p[%llu]\n", *(*v3 + 8), *(*v3 + 16) + *(*v3 + 8), *(*v3 + 16), *(v3 + 48), (*(v3 + 48) + (*(v3 + 40) >> 1)), *(v3 + 40) >> 1);
LABEL_3:
    v4 = *(a1 + 40);
    v5 = v4[5] & 1;
    v4[6] = 0;
    v4[7] = 0;
    v4[5] = v5;
    return result;
  }

  if (!v15)
  {
    goto LABEL_3;
  }

  v6 = *(a1 + 40);
  for (i = *(a1 + 48); v6 > i; v6 -= 8)
  {
    if (v15 >= *(*v6 + 8))
    {
      break;
    }
  }

  v8 = v14;
  if (v14)
  {
    v9 = v6 + 5;
    do
    {
      v10 = *v9 & 1;
      v9[1] = 0;
      v9[2] = 0;
      *v9 = v10;
      v11 = *(*(v9 - 5) + 16);
      v9 += 8;
      v12 = v8 >= v11;
      v8 -= v11;
      v13 = v8 != 0 && v12;
      if (!v12)
      {
        v8 = 0;
      }
    }

    while (v13);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  result = a15;
  v16 = *(a15 + 16);
  return result;
}

unint64_t VMUUnionRange(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (result >= a3)
  {
    return a3;
  }

  return result;
}

unint64_t VMUIntersectionRange(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 > result || result >= a3 + a4)
  {
    if (a3 < result + a2)
    {
      v4 = a3;
    }

    else
    {
      v4 = 0;
    }

    if (result <= a3)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL VMURangeIntersectsOrAbutsRange(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 >= a3)
  {
    return a3 + a4 >= a1;
  }

  else
  {
    return a1 + a2 >= a3;
  }
}

void sub_1C67C91C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VMUSymbolStore;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1C67C975C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *_uuidStringForOwner@<X0>(_CSTypeRef a1@<0:X0, 8:X1>, _BYTE *a2@<X8>)
{
  v7[5] = *MEMORY[0x1E69E9840];
  CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
  if (!CFUUIDBytes || (v4 = v7, (MEMORY[0x1C695DE30](CFUUIDBytes, v7, 40) & 1) == 0))
  {
    v4 = "<null-uuid>";
  }

  result = std::string::basic_string[abi:ne200100]<0>(a2, v4);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C67C9978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  v30 = v29;

  _Block_object_dispose(&a22, 8);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1C67C9B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va1);
  if (*(v4 - 49) < 0)
  {
    operator delete(*(v4 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t _sparsifySymbolOwner(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v3 = *(a3 + 16);
  if (v3)
  {
    do
    {
      v4 = v3[2];
      v13 = 0uLL;
      *&v13 = CSSymbolOwnerGetSymbolWithAddress();
      *(&v13 + 1) = v5;
      if ((CSIsNull() & 1) == 0)
      {
        std::vector<_CSTypeRef>::push_back[abi:ne200100](&v14, &v13);
      }

      v3 = *v3;
    }

    while (v3);
    v6 = v14;
    v7 = v15;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v11 = 0;
  v12 = 0;
  __p = 0;
  std::vector<_CSTypeRef>::__init_with_size[abi:ne200100]<_CSTypeRef*,_CSTypeRef*>(&__p, v6, v7, (v7 - v6) >> 4);
  SparseDataWithBlock = CSSymbolOwnerCreateSparseDataWithBlock();
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  return SparseDataWithBlock;
}

void sub_1C67C9C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  v16 = *(v14 - 56);
  if (v16)
  {
    *(v14 - 48) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<_CSTypeRef>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<_CSTypeRef>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<_CSTypeRef>::allocate_at_least[abi:ne200100](a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_1C67C9EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C67C9FEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va1);
  if (*(v2 - 49) < 0)
  {
    operator delete(*(v2 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_1C67CA79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C67CA8B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C67CAA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v20 - 33) < 0)
  {
    operator delete(*(v20 - 56));
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_ea8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_ea8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_1C67CB088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46)
{
  _Block_object_dispose(&a41, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C67CB388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1C67CB52C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E8277588, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

BOOL ___ZL20_sparsifySymbolOwner10_CSTypeRefNSt3__113unordered_setIyNS0_4hashIyEENS0_8equal_toIyEENS0_9allocatorIyEEEE_block_invoke(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v3 = *(a1 + 32);
  v4 = (*(a1 + 40) - v3) >> 4;
  if (v4 > a2)
  {
    *a3 = *(v3 + 16 * a2);
  }

  return v4 <= a2;
}

uint64_t __copy_helper_block_ea8_32c52_ZTSNSt3__16vectorI10_CSTypeRefNS_9allocatorIS1_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = a1 + 32;
  *(v2 + 16) = 0;
  return std::vector<_CSTypeRef>::__init_with_size[abi:ne200100]<_CSTypeRef*,_CSTypeRef*>(v2, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
}

void __destroy_helper_block_ea8_32c52_ZTSNSt3__16vectorI10_CSTypeRefNS_9allocatorIS1_EEEE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

uint64_t std::vector<_CSTypeRef>::__init_with_size[abi:ne200100]<_CSTypeRef*,_CSTypeRef*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<_CSTypeRef>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C67CB884(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<_CSTypeRef>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<_CSTypeRef>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<_CSTypeRef>::__throw_length_error[abi:ne200100]();
}

void std::allocator<_CSTypeRef>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long &>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1C67CC0EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_set<unsigned long long>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_set<unsigned long long>>,0>(uint64_t a1)
{
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t std::unordered_set<unsigned long long>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1C67CCE08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<unsigned long long>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_set<unsigned long long>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

id _removeReturnValueFromCPlusPlusSymbolName(void *a1)
{
  v1 = a1;
  if ([v1 containsString:@"::"])
  {
    v2 = [v1 stringByReplacingOccurrencesOfString:@"__1::" withString:&stru_1F461F9C8];

    if (([v2 hasPrefix:@"invocation function "] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"operator ") & 1) != 0 || (v3 = _lengthOfSubclauseInCPlusPlusSymbolName(v2, 0, 0, 1)) == 0)
    {
      v1 = v2;
    }

    else
    {
      v1 = [v2 substringFromIndex:v3];
    }
  }

  v4 = v1;

  return v1;
}

id _removeStdArgumentsFromCPlusPlusSymbolName(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 containsString:@"std::"])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v2 = [&unk_1F4638A58 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v16;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v16 != v4)
          {
            objc_enumerationMutation(&unk_1F4638A58);
          }

          v6 = *(*(&v15 + 1) + 8 * i);
          v7 = [v1 rangeOfString:v6];
          if (v7 != 0x7FFFFFFFFFFFFFFFLL)
          {
            for (j = v7; j != 0x7FFFFFFFFFFFFFFFLL; j = [v1 rangeOfString:v6])
            {
              v9 = _lengthOfSubclauseInCPlusPlusSymbolName(v1, j, 1, 0);
              if (v9)
              {
                v10 = [v1 substringWithRange:{j, v9}];
                v11 = [v1 stringByReplacingOccurrencesOfString:v10 withString:&stru_1F461F9C8];

                v1 = v11;
              }
            }
          }
        }

        v3 = [&unk_1F4638A58 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v3);
    }
  }

  v12 = v1;

  v13 = *MEMORY[0x1E69E9840];
  return v1;
}

void _printCPlusPlusNameSimplification(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (_printCPlusPlusNameSimplification_onceToken != -1)
  {
    _printCPlusPlusNameSimplification_cold_1();
  }

  if (_printCPlusPlusNameSimplification_printCPlusPlusNameSimplification == 1 && ([v5 isEqualToString:v3] & 1) == 0)
  {
    v4 = MEMORY[0x1E69E9848];
    fprintf(*MEMORY[0x1E69E9848], "ORIGINAL: %s\n", [v5 UTF8String]);
    fprintf(*v4, " SIMPLER: %s\n", [v3 UTF8String]);
    fputc(10, *v4);
  }
}

id VMUSimplifyCPlusPlusSymbolName(void *a1)
{
  v1 = a1;
  v2 = _removeReturnValueFromCPlusPlusSymbolName(v1);
  v3 = _removeStdArgumentsFromCPlusPlusSymbolName(v2);

  _printCPlusPlusNameSimplification(v1, v3);

  return v3;
}

unint64_t _lengthOfSubclauseInCPlusPlusSymbolName(void *a1, unint64_t a2, int a3, char a4)
{
  v7 = a1;
  if ([v7 length] <= a2)
  {
LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

  v8 = 0;
  v9 = 0;
  v10 = a3 ^ 1;
  v11 = a2;
  while (1)
  {
    v12 = [v7 characterAtIndex:v11];
    if (v9)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10;
    }

    if (v13 == 1 && v12 == 32)
    {
      v9 = 0;
      v8 = v11 + 1;
      goto LABEL_16;
    }

    if (!v9 && v12 == 40)
    {
      goto LABEL_17;
    }

    if (v12 != 62)
    {
      if (v12 == 60)
      {
        v14 = v8;
        if (v8)
        {
          goto LABEL_28;
        }

        ++v9;
      }

      goto LABEL_16;
    }

    if (!--v9)
    {
      break;
    }

LABEL_16:
    if (++v11 >= [v7 length])
    {
      goto LABEL_17;
    }
  }

  v14 = v11 + 1;
  if (v11 + 1 < [v7 length] && objc_msgSend(v7, "characterAtIndex:", v11 + 1) == 38)
  {
    v14 = v11 + 2;
  }

  if (v14 < [v7 length] && objc_msgSend(v7, "characterAtIndex:", v14) == 32)
  {
    ++v14;
LABEL_28:
    v15 = v14 - a2;
    goto LABEL_20;
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_17:
  if (!v8)
  {
    goto LABEL_19;
  }

  v15 = v8 - a2;
LABEL_20:

  return v15;
}

char *___printCPlusPlusNameSimplification_block_invoke()
{
  result = getenv("DT_PRINT_NAME_SIMPLIFICATION");
  if (result)
  {
    if ((*result | 0x20) != 0x6E)
    {
      _printCPlusPlusNameSimplification_printCPlusPlusNameSimplification = 1;
    }
  }

  return result;
}

void sub_1C67D1898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Block_object_dispose((v31 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C67D2C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t _parseAllocationSizeBound(const char **__endptr)
{
  v2 = 10;
  result = strtoll(*__endptr, __endptr, 10);
  v4 = **__endptr & 0xDF;
  if (v4 != 75)
  {
    if (v4 != 77)
    {
      return result;
    }

    v2 = 20;
  }

  result <<= v2;
  ++*__endptr;
  return result;
}

void __VMUSanitizePath_block_invoke()
{
  v0 = getprogname();
  if (strcmp(v0, "ReportCrash"))
  {
    v1 = objc_opt_new();
    v2 = VMUSanitizePath::cachedSanitizedPaths;
    VMUSanitizePath::cachedSanitizedPaths = v1;
  }
}

void sub_1C67D501C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  _Block_object_dispose(&a19, 8);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v28 - 136), 8);
  v30 = *(v28 - 88);
  if (v30)
  {
    *(v28 - 80) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__3(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__3(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 __Block_byref_object_copy__17(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__18(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_1C67D5DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id obj, uint64_t a13, void *a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1C67D6B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  small_objc_portable_task_crash_info_t::~small_objc_portable_task_crash_info_t(va);
  _Unwind_Resume(a1);
}

void sub_1C67D6E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C67D73AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

uint64_t _compareBinaryImageDicts(objc_object *a1, objc_object *a2, void *a3)
{
  v4 = a2;
  v5 = [(objc_object *)a1 objectForKey:@"StartAddress"];
  v6 = [v5 unsignedLongLongValue];

  v7 = [(objc_object *)v4 objectForKey:@"StartAddress"];
  v8 = [v7 unsignedLongLongValue];

  v9 = 1;
  if (v6 <= v8)
  {
    v9 = -1;
  }

  if (v6 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

void sub_1C67D8D18(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C67D8F14(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1C67D9390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, uint64_t a25, void *a26, int a27, uint64_t a28, void *a29, void *a30)
{
  if (v30)
  {
  }

  if (v36)
  {
  }

  if (v32)
  {
  }

  if (*(v37 - 104))
  {
  }

  if (a25)
  {
  }

  if (a27)
  {
  }

  if (a28)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1C67D9608(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void std::allocator<_CSBinaryRelocationInformation>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator<_CSBinaryImageInformation>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

id VMUOptionParserError(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = a2;
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v10 arguments:&a9];
    v12 = v11;
    if (v11)
    {
      v17 = *MEMORY[0x1E696A578];
      v18[0] = v11;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VMUOptionParserDomain" code:a1 userInfo:{v13, &a9}];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

void _arrayFreeValue(int a1, void *a2)
{
  if (a2)
  {
    free(a2);
  }
}

void VMUOptionParserRegisterFlag(void *a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a5;
  if (!v10)
  {
    goto LABEL_16;
  }

  if (a2)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 0;
    if (a4)
    {
      goto LABEL_5;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v11 = 0;
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", a3];
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_5:
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
LABEL_9:
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __VMUOptionParserRegisterFlag_block_invoke;
  v14[3] = &unk_1E8278238;
  v15 = v10;
  [v9 registerOptionWithLongName:v11 shortName:v12 argumentKind:0 argumentName:0 optionDescription:v13 handler:v14];
  if (a4)
  {
  }

  if (a3)
  {
  }

  if (a2)
  {
  }

LABEL_16:
}

void VMUOptionParserRegisterFlagInternal(void *a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a5;
  if (!v10)
  {
    goto LABEL_16;
  }

  if (a2)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 0;
    if (a4)
    {
      goto LABEL_5;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v11 = 0;
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", a3];
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_5:
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
LABEL_9:
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __VMUOptionParserRegisterFlagInternal_block_invoke;
  v14[3] = &unk_1E8278238;
  v15 = v10;
  [v9 registerOptionWithLongName:v11 shortName:v12 argumentKind:0 argumentName:0 optionDescription:v13 flags:1 handler:v14];
  if (a4)
  {
  }

  if (a3)
  {
  }

  if (a2)
  {
  }

LABEL_16:
}

uint64_t vmu_swift_reflection_createReflectionContextWithDataLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __vmu_swift_reflection_createReflectionContextWithDataLayout_block_invoke;
  block[3] = &unk_1E8278260;
  block[4] = &v15;
  if (vmu_swift_reflection_createReflectionContextWithDataLayout_onceToken != -1)
  {
    dispatch_once(&vmu_swift_reflection_createReflectionContextWithDataLayout_onceToken, block);
  }

  if (*(v16 + 24) == 1)
  {
    ReflectionContextWithDataLayout = createReflectionContextWithDataLayout(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    ReflectionContextWithDataLayout = 0;
  }

  _Block_object_dispose(&v15, 8);
  return ReflectionContextWithDataLayout;
}

void sub_1C67DB3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__vmu_swift_reflection_createReflectionContextWithDataLayout_block_invoke(uint64_t a1)
{
  result = dlopen("/usr/lib/swift/libswiftRemoteMirror.dylib", 1);
  if (!result)
  {
    goto LABEL_28;
  }

  v3 = result;
  result = dlsym(result, "swift_reflection_classIsSwiftMask");
  classIsSwiftMask = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_createReflectionContextWithDataLayout");
  createReflectionContextWithDataLayout = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_destroyReflectionContext");
  destroyReflectionContext = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_addImage");
  addImage = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_typeRefForMangledTypeName");
  typeRefForMangledTypeName = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_typeRefForMetadata");
  typeRefForMetadata = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_ownsObject");
  ownsObject = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_ownsAddress");
  ownsAddress = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_metadataForObject");
  metadataForObject = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_copyDemangledNameForTypeRef");
  copyDemangledNameForTypeRef = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_asyncTaskSlabPointer");
  asyncTaskSlabPointer = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_asyncTaskSlabAllocations");
  asyncTaskSlabAllocations = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_infoForTypeRef");
  infoForTypeRef = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_childOfTypeRef");
  childOfTypeRef = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_infoForMetadata");
  infoForMetadata = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_childOfMetadata");
  childOfMetadata = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_infoForInstance");
  infoForInstance = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_childOfInstance");
  childOfInstance = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_projectEnumValue");
  projectEnumValue = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_metadataNominalTypeDescriptor");
  metadataNominalTypeDescriptor = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_dumpTypeRef");
  dumpTypeRef = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_dumpInfoForTypeRef");
  dumpInfoForTypeRef = result;
  if (!result)
  {
    goto LABEL_28;
  }

  result = dlsym(v3, "swift_reflection_dumpInfoForMetadata");
  dumpInfoForMetadata = result;
  if (result && (result = dlsym(v3, "swift_reflection_dumpInfoForInstance"), (dumpInfoForInstance = result) != 0) && (result = dlsym(v3, "swift_reflection_projectExistential"), (projectExistential = result) != 0))
  {
    result = dlsym(v3, "swift_reflection_typeRefForInstance");
    typeRefForInstance = result;
    v4 = result != 0;
  }

  else
  {
LABEL_28:
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

uint64_t vmu_swift_reflection_destroyReflectionContext(uint64_t result)
{
  if (result)
  {
    return destroyReflectionContext();
  }

  return result;
}

BOOL vmu_swift_reflection_addImage(_BOOL8 result)
{
  if (result)
  {
    return addImage() != 0;
  }

  return result;
}

uint64_t vmu_swift_reflection_typeRefForMetadata(uint64_t result)
{
  if (result)
  {
    return typeRefForMetadata();
  }

  return result;
}

BOOL vmu_swift_reflection_ownsObject(_BOOL8 result)
{
  if (result)
  {
    return ownsObject() != 0;
  }

  return result;
}

uint64_t vmu_swift_reflection_metadataForObject(uint64_t a1, uint64_t a2)
{
  if (!a1 || !ownsObject())
  {
    return 0;
  }

  v4 = metadataForObject;

  return v4(a1, a2);
}

char *vmu_swift_reflection_copyDemangledNameForTypeRef(char *a1)
{
  if (a1)
  {
    a1 = copyDemangledNameForTypeRef();
    if (a1)
    {
      a1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:a1 length:strlen(a1) encoding:4 freeWhenDone:1];
    }

    v1 = vars8;
  }

  return a1;
}

uint64_t vmu_swift_reflection_infoForTypeRef@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    return infoForTypeRef();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t vmu_swift_reflection_childOfTypeRef@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    return childOfTypeRef();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t vmu_swift_reflection_infoForMetadata@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    return infoForMetadata();
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t vmu_swift_reflection_childOfMetadata@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    return childOfMetadata();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t vmu_swift_reflection_infoForInstance@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result && (v5 = result, result = ownsObject(), result))
  {
    v6 = infoForInstance;

    return v6(v5, a2);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t vmu_swift_reflection_childOfInstance@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (result && (v7 = result, result = ownsObject(), result))
  {
    v8 = childOfInstance;

    return v8(v7, a2, a3);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  return result;
}

uint64_t vmu_swift_reflection_setClassIsSwiftMask(uint64_t result)
{
  if (classIsSwiftMask)
  {
    *classIsSwiftMask = result;
  }

  return result;
}

BOOL vmu_swift_reflection_projectEnumValue(_BOOL8 result)
{
  if (result)
  {
    return projectEnumValue() != 0;
  }

  return result;
}

const char *vmu_swift_reflection_asyncTaskSlabPointer(uint64_t a1)
{
  if (a1)
  {
    return asyncTaskSlabPointer();
  }

  else
  {
    return "swift_reflection_asyncTaskSlabAllocations unavailable on bridgeOS";
  }
}

uint64_t vmu_swift_reflection_asyncTaskSlabAllocations@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    return asyncTaskSlabAllocations();
  }

  a2[2] = 0;
  a2[3] = 0;
  *a2 = "swift_reflection_asyncTaskSlabAllocations unavailable on bridgeOS";
  a2[1] = 0;
  return result;
}

BOOL vmu_swift_reflection_ownsAddress(_BOOL8 result)
{
  if (result)
  {
    return ownsAddress() != 0;
  }

  return result;
}

uint64_t vmu_swift_reflection_typeRefForMangledTypeName(uint64_t result)
{
  if (result)
  {
    return typeRefForMangledTypeName();
  }

  return result;
}

uint64_t vmu_swift_reflection_metadataNominalTypeDescriptor(uint64_t result)
{
  if (result)
  {
    return metadataNominalTypeDescriptor();
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,unsigned int &,unsigned int &>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t **std::__hash_table<std::__hash_value_type<NSString * {__strong},unsigned int>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringHashFunctor,NSStringEqualsFunctor,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringEqualsFunctor,NSStringHashFunctor,true>,std::allocator<std::__hash_value_type<NSString * {__strong},unsigned int>>>::__emplace_unique_key_args<NSString * {__strong},NSString * {__strong}&,unsigned int &>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if ((NSStringEqualsFunctor::operator()(a1, v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1C67DCE0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},unsigned int>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<NSString * {__strong},unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<NSString * {__strong},unsigned int>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t NSStringEqualsFunctor::operator()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4 == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 isEqualToString:v5];
  }

  return v6;
}

uint64_t **std::__hash_table<std::__hash_value_type<NSString * {__strong},unsigned int>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringHashFunctor,NSStringEqualsFunctor,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringEqualsFunctor,NSStringHashFunctor,true>,std::allocator<std::__hash_value_type<NSString * {__strong},unsigned int>>>::find<NSString * {__strong}>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (NSStringEqualsFunctor::operator()(a1, i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E8277590, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<NSString * {__strong},unsigned int>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringHashFunctor,NSStringEqualsFunctor,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringEqualsFunctor,NSStringHashFunctor,true>,std::allocator<std::__hash_value_type<NSString * {__strong},unsigned int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<NSString * {__strong},unsigned int>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringHashFunctor,NSStringEqualsFunctor,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringEqualsFunctor,NSStringHashFunctor,true>,std::allocator<std::__hash_value_type<NSString * {__strong},unsigned int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<NSString * {__strong},unsigned int>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringHashFunctor,NSStringEqualsFunctor,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},unsigned int>,NSStringEqualsFunctor,NSStringHashFunctor,true>,std::allocator<std::__hash_value_type<NSString * {__strong},unsigned int>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

id _makeStorageFieldClassInfo(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 className];
  v6 = [v5 stringByAppendingString:v3];

  v7 = [v4 binaryPath];
  v8 = [(VMUClassInfo *)VMUMutableClassInfo classInfoWithClassName:v6 binaryPath:v7 type:16];

  v9 = [v4 displayName];

  v10 = [v9 stringByAppendingString:v3];

  [v8 setDisplayName:v10];

  return v8;
}

uint64_t _isSwiftRootClass(void *a1)
{
  v1 = a1;
  v2 = [v1 superclassInfo];
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v4 = [v1 className];
    if ([v4 isEqualToString:@"SwiftObject"])
    {
      v3 = 1;
    }

    else
    {
      v5 = [v1 className];
      v3 = [v5 isEqualToString:@"_TtCs12_SwiftObject"];
    }
  }

  return v3;
}

void determineOSClassInstanceSize(void *a1, int a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 className];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __determineOSClassInstanceSize_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "determineOSClassInstanceSize";
  if (determineOSClassInstanceSize_onceToken != -1)
  {
    dispatch_once(&determineOSClassInstanceSize_onceToken, block);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __determineOSClassInstanceSize_block_invoke_3;
  aBlock[3] = &unk_1E8278548;
  v5 = v3;
  v35 = v5;
  v6 = _Block_copy(aBlock);
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __determineOSClassInstanceSize_block_invoke_4;
  v32[3] = &unk_1E8278570;
  v7 = v5;
  v33 = v7;
  v8 = _Block_copy(v32);
  if (([v4 isEqualToString:@"Protocol"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"__IncompleteProtocol"))
  {
    v6[2](v6, determineOSClassInstanceSize_globalProtocol);
    goto LABEL_6;
  }

  if ([v4 hasPrefix:@"OS_"] && objc_msgSend(v7, "instanceSize") <= 8)
  {
    if ([v4 hasPrefix:@"OS_xpc_"])
    {
      if ([v4 isEqualToString:@"OS_xpc_activity"])
      {
        [v7 setInstanceSize:32];
        v10 = v8[2];
        v11 = @"identifier";
LABEL_17:
        v10(v8, 24, v11);
        goto LABEL_62;
      }

      if ([v4 isEqualToString:@"OS_xpc_array"])
      {
        v13 = xpc_array_create(0, 0);
        v6[2](v6, v13);

        v10 = v8[2];
        v11 = @"_arr";
        goto LABEL_17;
      }

      if ([v4 isEqualToString:@"OS_xpc_connection"])
      {
        [v7 setInstanceSize:global_xpc_connection_size];
        goto LABEL_62;
      }

      if ([v4 isEqualToString:@"OS_xpc_data"])
      {
        v15 = xpc_data_create(0, 0);
LABEL_31:
        v16 = v15;
        v6[2](v6, v15);

        (v8[2])(v8, 32, @"_buff");
        goto LABEL_62;
      }

      if ([v4 isEqualToString:@"OS_xpc_date"])
      {
        v12 = xpc_date_create(0);
      }

      else
      {
        if ([v4 isEqualToString:@"OS_xpc_dictionary"])
        {
          v17 = xpc_dictionary_create(0, 0, 0);
          v6[2](v6, v17);

          if ([v7 instanceSize] <= 0x57)
          {
            determineOSClassInstanceSize_cold_1();
          }

          v31 = _makeStorageFieldClassInfo(v7, @" (Storage)");
          v30 = objc_opt_new();
          v18 = [v7 pointerSize];
          if (v18 <= 0x38)
          {
            v19 = v18;
            v20 = 0;
            v21 = 32;
            v29 = 0x38 / v18;
            do
            {
              v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_table[%u]", v20];
              v23 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:v22 type:@"^@" scan:2 offset:v21 size:v19];
              [(VMUFieldInfo *)v23 setDestinationLayout:v31];
              [v30 addObject:v23];

              v20 = (v20 + 1);
              v21 = (v21 + v19);
            }

            while (v20 < v29);
          }

          v24 = v30;
          [v7 addFields:v30];
          v25 = global_xpcDictionaryStorageClassInfo;
          global_xpcDictionaryStorageClassInfo = v31;

          goto LABEL_61;
        }

        if ([v4 isEqualToString:@"OS_xpc_double"])
        {
          v12 = xpc_double_create(0.0);
        }

        else if ([v4 isEqualToString:@"OS_xpc_fd"])
        {
          v12 = xpc_fd_create(1);
        }

        else if ([v4 isEqualToString:@"OS_xpc_int64"])
        {
          v12 = xpc_int64_create(0);
        }

        else if ([v4 isEqualToString:@"OS_xpc_pointer"])
        {
          v12 = xpc_pointer_create();
        }

        else
        {
          if ([v4 isEqualToString:@"OS_xpc_string"])
          {
            v15 = xpc_string_create("determineOSClassInstanceSize");
            goto LABEL_31;
          }

          if ([v4 isEqualToString:@"OS_xpc_uint64"])
          {
            v12 = xpc_uint64_create(0);
          }

          else
          {
            if (![v4 isEqualToString:@"OS_xpc_uuid"])
            {
LABEL_62:
              v26 = [v7 superclassInfo];
              v27 = [v26 className];
              if ([v27 hasPrefix:@"OS_"] && (objc_msgSend(v27, "isEqualToString:", @"OS_object") & 1) == 0)
              {
                if ([v26 instanceSize] == 8)
                {
                  determineOSClassInstanceSize(v26, (a2 + 1));
                }

                v28 = [v26 instanceSize];
                if (v28 > [v7 instanceSize])
                {
                  [v7 setInstanceSize:{objc_msgSend(v26, "instanceSize")}];
                  [v7 setSuperclassOffset:{objc_msgSend(v26, "instanceSize")}];
                }
              }

              goto LABEL_6;
            }

            *uuid = 0;
            v38 = 0;
            v12 = xpc_uuid_create(uuid);
          }
        }
      }

LABEL_60:
      v24 = v12;
      v6[2](v6, v12);
LABEL_61:

      goto LABEL_62;
    }

    if ([v4 hasPrefix:@"OS_dispatch_"])
    {
      if ([v4 isEqualToString:@"OS_dispatch_data"])
      {
        v12 = dispatch_data_create("determineOSClassInstanceSize", 8uLL, 0, 0);
        goto LABEL_60;
      }

      if ([v4 isEqualToString:@"OS_dispatch_group"])
      {
        v12 = dispatch_group_create();
        goto LABEL_60;
      }

      if (![v4 isEqualToString:@"OS_dispatch_mach"])
      {
        if ([v4 isEqualToString:@"OS_dispatch_mach_msg"])
        {
          v12 = dispatch_mach_msg_create();
        }

        else if ([v4 isEqualToString:@"OS_dispatch_queue"])
        {
          v12 = dispatch_queue_create("determineOSClassInstanceSize", 0);
        }

        else
        {
          if (![v4 isEqualToString:@"OS_dispatch_semaphore"])
          {
            if (![v4 isEqualToString:@"OS_dispatch_source"])
            {
              goto LABEL_62;
            }

            v24 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, 0);
            v6[2](v6, v24);
            dispatch_source_set_event_handler(v24, &__block_literal_global_838);
            dispatch_activate(v24);
            dispatch_source_cancel(v24);
            goto LABEL_61;
          }

          v12 = dispatch_semaphore_create(0);
        }

        goto LABEL_60;
      }

      v14 = determineOSClassInstanceSize_globalDispatchMach;
    }

    else
    {
      if (![v4 isEqualToString:@"OS_os_log"])
      {
        if ([v4 isEqualToString:@"OS_os_transaction"])
        {
          v12 = os_transaction_create();
        }

        else if ([v4 isEqualToString:@"OS_nw_array"])
        {
          v12 = MEMORY[0x1C695EE00]();
        }

        else
        {
          if (![v4 isEqualToString:@"OS_nw_frame"])
          {
            goto LABEL_62;
          }

          v12 = nw_frame_create();
        }

        goto LABEL_60;
      }

      v14 = determineOSClassInstanceSize_globalLog;
    }

    v6[2](v6, v14);
    goto LABEL_62;
  }

LABEL_6:

  v9 = *MEMORY[0x1E69E9840];
}

void _variantForCFBasicHash(void *a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 firstFieldWithName:@"_callbacks"];
  v3 = v2;
  if (v2)
  {
    [v2 setScanType:0];
  }

  v4 = [v1 firstFieldWithName:@"_bits"];
  if (v4)
  {
    v5 = [v1 firstFieldWithName:@"_keys"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 ivarName];
      v8 = _destinationLayoutStorageVariant(v1, 48, v7, 2, @"Key");

      v19[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [v1 replaceField:v6 withFields:v9];

      v10 = [v6 ivarName];
      v11 = _destinationLayoutStorageVariant(v1, 48, v10, 4, @"Key");

      [v1 addVariant:v11 forField:v8 withEvaluator:&__block_literal_global_873];
    }

    v12 = [v1 firstFieldWithName:@"_values"];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 ivarName];
      v15 = _destinationLayoutStorageVariant(v1, 40, v14, 2, @"Value");

      v18 = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
      [v1 replaceField:v13 withFields:v16];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

VMUMutableFieldInfo *_destinationLayoutStorageVariant(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = MEMORY[0x1E696AEC0];
  if (a4 == 4)
  {
    v10 = "Weak ";
  }

  else
  {
    v10 = "";
  }

  v11 = a5;
  v12 = a3;
  v13 = a1;
  v14 = [v11 length];
  v15 = " ";
  if (!v14)
  {
    v15 = "";
  }

  v16 = [v9 stringWithFormat:@" (%s%@%sStorage)", v10, v11, v15];

  v17 = _makeStorageFieldClassInfo(v13, v16);
  [v17 setDefaultScanType:a4];
  v18 = [VMUMutableFieldInfo alloc];
  v19 = [v13 pointerSize];

  v20 = [(VMUFieldInfo *)v18 initWithName:v12 type:@"^@" scan:2 offset:a2 size:v19];
  [(VMUFieldInfo *)v20 setDestinationLayout:v17];

  return v20;
}

void _variantForNSSlice(void *a1, void *a2, void *a3)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 firstFieldWithName:v6];
  v9 = [v6 stringByAppendingString:@".items"];
  if (v8)
  {
    v10 = [v8 offset];
    v23 = _destinationLayoutStorageVariant(v5, v10, v9, 2, v7);
    v11 = [VMUMutableFieldInfo alloc];
    v12 = [v6 stringByAppendingString:@".acquisitionProps"];
    v24 = v7;
    v13 = [(VMUFieldInfo *)v11 initWithName:v12 type:@"^{NSSliceExternalAcquisitionProperties}" scan:1 offset:(v10 + 8) size:8];

    v14 = [VMUMutableFieldInfo alloc];
    v15 = [v6 stringByAppendingString:@".personalityProps"];
    v16 = [(VMUFieldInfo *)v14 initWithName:v15 type:@"^{NSSliceExternalPersonalityProperties}" scan:1 offset:(v10 + 16) size:8];

    v17 = [VMUMutableFieldInfo alloc];
    v18 = [v6 stringByAppendingString:@".internalProps"];
    v19 = [(VMUFieldInfo *)v17 initWithName:v18 type:@"^{NSSliceInternalProperties}" scan:1 offset:(v10 + 24) size:8];

    v27[0] = v23;
    v27[1] = v13;
    v27[2] = v16;
    v27[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
    [v5 replaceField:v8 withFields:v20];

    v21 = _destinationLayoutStorageVariant(v5, v10, v9, 4, v24);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = ___variantForNSSlice_block_invoke;
    v25[3] = &__block_descriptor_36_e45_B32__0Q8__VMUTaskMemoryScanner_16____v__QQ_24l;
    v26 = v10;
    [v5 addVariant:v21 forField:v23 withEvaluator:v25];

    v7 = v24;
  }

  v22 = *MEMORY[0x1E69E9840];
}

void ___variantForSwiftClass_block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained pointerSize];

  if ([v3 offset] == v5)
  {
    v6 = [VMUMutableFieldInfo alloc];
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = -[VMUFieldInfo initWithName:type:scan:offset:size:](v6, "initWithName:type:scan:offset:size:", @"_refcounts", @"^v", 5, v5, [v7 pointerSize]);

    v9 = [*(a1 + 32) sideTableLayoutWithScannableOwnerPointer];
    [(VMUFieldInfo *)v8 setDestinationLayout:v9];

    v10 = objc_loadWeakRetained((a1 + 40));
    v13[0] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [v10 replaceField:v3 withFields:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void ___variantForSwiftClass_block_invoke_2(void **a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [v5 offset] + a3;
  if ([v5 scanType] == 4)
  {
    v7 = _createSwiftWeakExactVariant(v5, a1[4], 1);
    v8 = _createSwiftWeakExactVariant(v5, a1[4], 2);
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = ___variantForSwiftClass_block_invoke_3;
    v42[3] = &unk_1E8278400;
    objc_copyWeak(&v46, a1 + 6);
    v43 = a1[4];
    v44 = a1[5];
    objc_copyWeak(&v47, a1 + 7);
    v10 = v5;
    v45 = v10;
    v48 = a3;
    [WeakRetained addVariantRecursively:v7 forField:v10 atOffset:v6 withEvaluator:v42];

    v11 = objc_loadWeakRetained(a1 + 6);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = ___variantForSwiftClass_block_invoke_4;
    v35[3] = &unk_1E8278400;
    objc_copyWeak(&v39, a1 + 6);
    v36 = a1[4];
    v37 = a1[5];
    objc_copyWeak(&v40, a1 + 7);
    v38 = v10;
    v41 = a3;
    [v11 addVariantRecursively:v8 forField:v38 atOffset:v6 withEvaluator:v35];

    objc_destroyWeak(&v40);
    objc_destroyWeak(&v39);

    objc_destroyWeak(&v47);
    objc_destroyWeak(&v46);
  }

  else if ([v5 scanType] == 3)
  {
    v12 = _createSwiftExactUnownedVariant(v5, a1[4]);
    v13 = objc_loadWeakRetained(a1 + 6);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = ___variantForSwiftClass_block_invoke_5;
    v31[3] = &unk_1E8278428;
    objc_copyWeak(&v33, a1 + 6);
    v32 = v5;
    v34 = a3;
    [v13 addVariantRecursively:v12 forField:v32 atOffset:v6 withEvaluator:v31];

    objc_destroyWeak(&v33);
  }

  else if ([v5 kind] == 6)
  {
    v14 = objc_loadWeakRetained(a1 + 6);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___variantForSwiftClass_block_invoke_6;
    v23[3] = &unk_1E8278450;
    objc_copyWeak(&v27, a1 + 6);
    v24 = a1[4];
    v25 = a1[5];
    objc_copyWeak(&v28, a1 + 7);
    v15 = v5;
    v26 = v15;
    v29 = a3;
    v30 = v6;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___variantForSwiftClass_block_invoke_7;
    v16[3] = &unk_1E8278478;
    objc_copyWeak(&v20, a1 + 6);
    v17 = a1[4];
    v18 = a1[5];
    objc_copyWeak(&v21, a1 + 7);
    v19 = v15;
    v22 = a3;
    [v14 addComplexAction:v23 withEvaluator:v16];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&v20);

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v27);
  }
}

void sub_1C67E1310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  objc_destroyWeak((v10 + 64));
  objc_destroyWeak((v10 + 56));
  objc_destroyWeak((v11 + 64));
  objc_destroyWeak(v12);
  _Unwind_Resume(a1);
}

id _createSwiftWeakExactVariant(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [a1 mutableCopy];
  [v6 setScanType:5];
  if (a3 == 1)
  {
    [v5 sideTableLayoutWithScannableOwnerPointer];
  }

  else
  {
    [v5 sideTableLayoutWithUnscannableOwnerPointer];
  }
  v7 = ;

  [v6 setDestinationLayout:v7];

  return v6;
}

BOOL ___variantForSwiftClass_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [WeakRetained pointerSize];
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = objc_loadWeakRetained((a1 + 64));
  v12 = _determineSwiftWeakExactVariant(v8, v9, v10, v11, *(a1 + 48), v6, *(a1 + 72), a2);

  return v12 == 1;
}

uint64_t _determineSwiftWeakExactVariant(unsigned int a1, void *a2, void *a3, void *a4, void *a5, void *a6, unsigned int a7, uint64_t a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  if (!v15 || ![v15 nativeWeakReferencePointerIsSideTable])
  {
    goto LABEL_42;
  }

  if (!v16 || ([v16 nativeWeakReferencePointerIsSideTable] & 1) != 0)
  {
    goto LABEL_12;
  }

  v20 = v19[2];
  if (a1 == 8)
  {
    v21 = v20(v19, a8, 8);
    if (v21)
    {
      v22 = *v21;
      goto LABEL_11;
    }
  }

  else
  {
    v23 = v20(v19, a8, 4);
    if (v23)
    {
      v22 = *v23;
      goto LABEL_11;
    }
  }

  v22 = 0;
LABEL_11:
  v24 = [v17 classInfoForMemory:v22 length:a1 remoteAddress:a8];

  if (v24)
  {
    goto LABEL_42;
  }

LABEL_12:
  v25 = a8 + a7 + [v18 offset];
  v26 = v19[2];
  if (a1 == 8)
  {
    v27 = v26(v19, v25, 8);
    if (!v27)
    {
      goto LABEL_42;
    }

    v28 = *v27;
    if (!*v27)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v29 = v26(v19, v25, 4);
    if (!v29)
    {
      goto LABEL_42;
    }

    v28 = *v29;
    if (!*v29)
    {
      goto LABEL_42;
    }
  }

  v30 = [v17 vmuTask];
  v31 = [v30 isExclaveCore];

  if ((v31 & 1) == 0)
  {
    v32 = [v15 nativeWeakReferenceMarkerMask] & v28;
    if (v32 == [v15 nativeWeakReferenceMarkerValue])
    {
      v28 &= [v15 nativeWeakReferencePointerMask];
      goto LABEL_23;
    }

LABEL_42:
    v41 = 0;
    goto LABEL_43;
  }

LABEL_23:
  v33 = (v19[2])(v19, v28 + 16, 8);
  if (!v33 || (*(v33 + 4) & 1) == 0)
  {
    v34 = v19[2];
    if (a1 == 8)
    {
      v35 = v34(v19, v28, 8);
      if (v35 && *v35)
      {
        v36 = (v19[2])(v19, *v35 + 8, 8);
        if (v36)
        {
          v37 = *v36;
LABEL_36:
          if (v37)
          {
            v42 = v15;
            v43 = [v42 refcountIsSideTableMarkerMask] & v37;
            if (v43 == [v42 refcountIsSideTableMarkerValue])
            {
              v44 = [v42 sideTablePointerMask] & v37;
              v45 = v44 >> [v42 sideTablePointerRightShift];
              v46 = v45 << [v42 sideTablePointerLeftShift];
            }

            else
            {
              v46 = 0;
            }

            if (v46 != v28)
            {
              goto LABEL_42;
            }
          }

          goto LABEL_41;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v38 = v34(v19, v28, 4);
      if (v38)
      {
        v39 = *v38;
        if (v39)
        {
          v40 = (v19[2])(v19, v39 + a1, 4);
          if (v40)
          {
            v37 = *v40;
            goto LABEL_36;
          }

LABEL_35:
          v37 = 0;
          goto LABEL_36;
        }
      }
    }

LABEL_41:
    v41 = 1;
    goto LABEL_43;
  }

  v41 = 2;
LABEL_43:

  return v41;
}

BOOL ___variantForSwiftClass_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [WeakRetained pointerSize];
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = objc_loadWeakRetained((a1 + 64));
  v12 = _determineSwiftWeakExactVariant(v8, v9, v10, v11, *(a1 + 48), v6, *(a1 + 72), a2);

  return v12 == 2;
}

id _createSwiftExactUnownedVariant(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 mutableCopy];
  v5 = [v3 unownedExtraDataLayout];

  [v4 setDestinationLayout:v5];

  return v4;
}

uint64_t ___variantForSwiftClass_block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained pointerSize];
  v8 = *(a1 + 48);
  shouldApplySwiftExactUnownedVariant = _shouldApplySwiftExactUnownedVariant(v7, *(a1 + 32), v5);

  return shouldApplySwiftExactUnownedVariant;
}

uint64_t _shouldApplySwiftExactUnownedVariant(int a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 offset];
  v6 = v5;
  v7 = v6[2];
  if (a1 != 8)
  {
    v10 = v7();
    if (v10)
    {
      LODWORD(v9) = *v10;
      goto LABEL_7;
    }

LABEL_6:
    LOBYTE(v9) = 0;
    goto LABEL_7;
  }

  v8 = v7();
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = *v8;
LABEL_7:

  return v9 & 1;
}

void ___variantForSwiftClass_block_invoke_6(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = objc_loadWeakRetained((a1 + 64));
  v12 = _recursivelyCreateSwiftEnumPayloadVariant(WeakRetained, v9, v10, v11, *(a1 + 48), v7, *(a1 + 72), a3);

  if (v12)
  {
    [v13 replaceFieldRecursively:*(a1 + 48) atOffset:*(a1 + 76) withField:v12];
  }
}

id _recursivelyCreateSwiftEnumPayloadVariant(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7, uint64_t a8)
{
  active = _determineActiveSwiftEnumPayloadCaseIndex(a4, a5);
  if ((active & 0x80000000) != 0 || (v17 = active, v28 = a6, [a5 possibleEnumPayloadFieldArray], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v17 >= v19))
  {
    v23 = 0;
  }

  else
  {
    v20 = [a5 possibleEnumPayloadFieldArray];
    v21 = [v20 objectAtIndexedSubscript:v17];

    v22 = swiftEnumDummyNoPayloadSubField;
    v23 = [a5 mutableCopy];
    [v23 setScanType:0];
    if (v21 != v22)
    {
      v24 = _recursivelyCreateSwiftVariant(a1, a2, a3, a4, v21, v28, [a5 offset] + a7, a8);
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v21;
      }

      [v23 addSubField:v26];
    }
  }

  return v23;
}

uint64_t ___variantForSwiftClass_block_invoke_7(uint64_t a1, const void *a2, void *a3, uint64_t *a4)
{
  v7 = a3;
  v14 = [@"seed" hash];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = objc_loadWeakRetained((a1 + 64));
  v12 = _recursivelyDetermineSwiftEnumPayloadVariantHash(WeakRetained, v9, v10, v11, *(a1 + 48), v7, *(a1 + 72), a2, &v14, 0);

  *a4 = v14;
  return v12;
}

uint64_t _recursivelyDetermineSwiftEnumPayloadVariantHash(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7, const void *a8, void *a9, int a10)
{
  active = _determineActiveSwiftEnumPayloadCaseIndex(a4, a5);
  v17 = [a5 possibleEnumPayloadFieldArray];
  v18 = v17;
  if (active < 0 || active >= [v17 count])
  {
    if (debugSwiftSubfieldIsEnabled())
    {
      v23 = [a5 ivarName];
      v24 = [v23 UTF8String];
      v25 = *[a4 swiftMirror];
      v26 = *[a5 swiftTyperef];
      v27 = vmu_swift_reflection_copyDemangledNameForTypeRef(v25);
      v28 = [v27 UTF8String];
      v29 = [a1 className];
      _debugSwiftAsyncPrintf(a10, "Failed to project enum case for field %s (type %s), of object at %p of class %s. Falling back to conservative scanning.\n", v24, v28, a8, [v29 UTF8String]);

      if (!a10)
      {
        fputc(10, *MEMORY[0x1E69E9848]);
      }
    }

    VMUClassInfoComplexVariantEvaluatorCombineHashes(a9, [@"No-Change" hash]);
    v30 = 0;
  }

  else
  {
    v41 = a6;
    v40 = active;
    v19 = [v18 objectAtIndexedSubscript:?];
    v20 = swiftEnumDummyNoPayloadSubField;
    IsEnabled = debugSwiftSubfieldIsEnabled();
    if (v19 == v20)
    {
      if (IsEnabled)
      {
        v31 = [a5 ivarName];
        v32 = [v31 UTF8String];
        v33 = [a1 className];
        _debugSwiftAsyncPrintf(a10, "Detected no-payload of field %s, of object at %p of class %s. Treating as a non-payload case and not scanning the subfield.\n", v32, a8, [v33 UTF8String]);

        if (!a10)
        {
          fputc(10, *MEMORY[0x1E69E9848]);
        }
      }

      VMUClassInfoComplexVariantEvaluatorCombineHashes(a9, [@"Payload-Empty" hash]);
    }

    else
    {
      if (IsEnabled)
      {
        v39 = [v19 ivarName];
        v38 = [v39 UTF8String];
        v36 = VMUScanTypeScanDescription([v19 scanType]);
        v37 = [a5 ivarName];
        v35 = [v37 UTF8String];
        v22 = [a1 className];
        _debugSwiftAsyncPrintf(a10, "enum payload  %s  scanType %s (may be changed), of field %s, of object at %p of class %s  size %u stride %u\n", v38, v36, v35, a8, [v22 UTF8String], objc_msgSend(v19, "size"), objc_msgSend(v19, "stride"));

        if (!a10)
        {
          fputc(10, *MEMORY[0x1E69E9848]);
        }
      }

      VMUClassInfoComplexVariantEvaluatorCombineHashes(a9, [@"Payload-" hash] + v40);
      _recursivelyDetermineComplexSwiftVariantHash(a1, a2, a3, a4, v19, v41, [a5 offset] + a7, a8, a9, a10 + 1);
    }

    v30 = 1;
  }

  return v30;
}

uint64_t _determineActiveSwiftEnumPayloadCaseIndex(void *a1, void *a2)
{
  [a2 offset];
  v4 = *[a2 swiftTyperef];
  if (vmu_swift_reflection_projectEnumValue(*[a1 swiftMirror]))
  {
    return 0x80000000;
  }

  else
  {
    return 0x80000000;
  }
}

id _recursivelyCreateSwiftVariant(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v16 = [a1 pointerSize];
  if ([a5 scanType] == 4)
  {
    v17 = _determineSwiftWeakExactVariant(v16, a2, a3, a4, a5, a6, a7, a8);
    if (v17)
    {
      v18 = _createSwiftWeakExactVariant(a5, a2, v17);
LABEL_8:
      v20 = v18;
      goto LABEL_19;
    }

LABEL_18:
    v20 = 0;
    goto LABEL_19;
  }

  v19 = [a5 scanType];
  if (v19 == 3)
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = ___recursivelyCreateSwiftVariant_block_invoke_2;
    v36[3] = &__block_descriptor_64_e5_B8__0lu32l8u40l8;
    v36[4] = a5;
    v36[5] = a6;
    v37 = v16;
    v38 = a7;
    v36[6] = a8;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = ___recursivelyCreateSwiftVariant_block_invoke_3;
    v35[3] = &__block_descriptor_48_e26___VMUMutableFieldInfo_8__0lu32l8u40l8;
    v35[4] = a5;
    v35[5] = a2;
    v18 = ___recursivelyCreateSwiftVariant_block_invoke(v19, v36, v35);
    goto LABEL_8;
  }

  if ([a5 kind] == 6)
  {
    v18 = _recursivelyCreateSwiftEnumPayloadVariant(a1, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_8;
  }

  v21 = [a5 subFieldArray];
  v22 = [v21 count];

  if (!v22)
  {
    goto LABEL_18;
  }

  v34 = [a5 offset];
  v23 = [a5 subFieldArray];
  v24 = [v23 count];

  if (!v24)
  {
    goto LABEL_18;
  }

  v32 = a7;
  v33 = a8;
  v20 = 0;
  v25 = 0;
  do
  {
    v26 = [a5 subFieldArray];
    v27 = [v26 objectAtIndexedSubscript:v25];

    v28 = _recursivelyCreateSwiftVariant(a1, a2, a3, a4, v27, a6, (v34 + v32), v33);
    if (v28)
    {
      if (!v20)
      {
        v20 = [a5 mutableCopy];
      }

      [v20 replaceFieldRecursively:v27 atOffset:objc_msgSend(v27 withField:{"offset"), v28}];
    }

    ++v25;
    v29 = [a5 subFieldArray];
    v30 = [v29 count];
  }

  while (v25 < v30);
LABEL_19:

  return v20;
}

id ___recursivelyCreateSwiftVariant_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ((*(a2 + 16))(a2))
  {
    v5 = v4[2](v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t ___recursivelyCreateSwiftVariant_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 60);
  v2 = *(a1 + 48);
  return _shouldApplySwiftExactUnownedVariant(*(a1 + 56), *(a1 + 32), *(a1 + 40));
}

void _recursivelyDetermineComplexSwiftVariantHash(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, unsigned int a7, uint64_t a8, void *a9, int a10)
{
  v38 = *MEMORY[0x1E69E9840];
  v15 = [a5 scanType];
  if (v15 == 3)
  {
    if (_shouldApplySwiftExactUnownedVariant([a1 pointerSize], a5, a6))
    {
      v17 = @"Unowned-Applied";
      goto LABEL_24;
    }

LABEL_12:
    v17 = @"No-Change";
    goto LABEL_24;
  }

  if (v15 == 4)
  {
    v16 = _determineSwiftWeakExactVariant([a1 pointerSize], a2, a3, a4, a5, a6, a7, a8);
    if (v16 == 2)
    {
      v17 = @"Weak-With-Unscannable-Owner-Pointer-Applied";
      goto LABEL_24;
    }

    if (v16 == 1)
    {
      v17 = @"Weak-With-Scannable-Owner-Pointer-Applied";
LABEL_24:
      v28 = [(__CFString *)v17 hash];
      v29 = *MEMORY[0x1E69E9840];

      VMUClassInfoComplexVariantEvaluatorCombineHashes(a9, v28);
      return;
    }

    goto LABEL_12;
  }

  if ([a5 kind] == 6)
  {
    v18 = *MEMORY[0x1E69E9840];

    _recursivelyDetermineSwiftEnumPayloadVariantHash(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    v19 = [a5 subFieldArray];
    v20 = [v19 count];

    if (v20)
    {
      v21 = [a5 offset];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v22 = [a5 subFieldArray];
      v23 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v34;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v34 != v25)
            {
              objc_enumerationMutation(v22);
            }

            _recursivelyDetermineComplexSwiftVariantHash(a1, a2, a3, a4, *(*(&v33 + 1) + 8 * i), a6, v21 + a7, a8, a9, a10 + 1);
          }

          v24 = [v22 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v24);
      }
    }

    v27 = *MEMORY[0x1E69E9840];
  }
}

void __determineOSClassInstanceSize_block_invoke(uint64_t a1)
{
  v2 = objc_allocateProtocol(*(a1 + 32));
  v3 = determineOSClassInstanceSize_globalProtocol;
  determineOSClassInstanceSize_globalProtocol = v2;

  v4 = dispatch_mach_create();
  v5 = determineOSClassInstanceSize_globalDispatchMach;
  determineOSClassInstanceSize_globalDispatchMach = v4;

  v6 = os_log_create("com.apple.Symbolication", *(a1 + 32));
  v7 = determineOSClassInstanceSize_globalLog;
  determineOSClassInstanceSize_globalLog = v6;

  v8 = xpc_connection_create("", 0);
  global_xpc_connection_size = malloc_size(v8);
  xpc_connection_set_event_handler(v8, &__block_literal_global_854);
  xpc_connection_activate(v8);
  xpc_connection_cancel(v8);

  connection = xpc_connection_create(0, 0);
  xpc_connection_set_event_handler(connection, &__block_literal_global_856);
  v9 = xpc_endpoint_create(connection);
  v10 = xpc_connection_create_from_endpoint(v9);
  xpc_connection_set_event_handler(v10, &__block_literal_global_860);
  xpc_connection_activate(connection);
  xpc_connection_activate(v10);
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_string(empty, "key", "value");
  v12 = xpc_connection_send_message_with_reply_sync(v10, empty);
  xpc_connection_cancel(v10);
  xpc_connection_cancel(connection);
}

uint64_t __determineOSClassInstanceSize_block_invoke_3(uint64_t a1, void *ptr)
{
  v3 = malloc_size(ptr);
  v4 = *(a1 + 32);

  return [v4 setInstanceSize:v3];
}

void __determineOSClassInstanceSize_block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = _destinationLayoutStorageVariant(*(a1 + 32), a2, a3, 2, &stru_1F461F9C8);
  v5 = *(a1 + 32);
  v8[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v5 addFields:v6];

  v7 = *MEMORY[0x1E69E9840];
}

void __determineConnectionRequestReplySizes_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 != MEMORY[0x1E69E9E20])
  {
    v5 = v2;
    v3 = MEMORY[0x1C695FA70]() == MEMORY[0x1E69E9E68];
    v2 = v5;
    if (v3)
    {
      v4 = v5;
      xpc_connection_set_event_handler(v4, &__block_literal_global_858);
      xpc_connection_activate(v4);

      v2 = v5;
    }
  }
}

void __determineConnectionRequestReplySizes_block_invoke_3(uint64_t a1, void *a2)
{
  if (a2 != MEMORY[0x1E69E9E20])
  {
    v3 = a2;
    ptr = xpc_dictionary_create_reply(v3);
    v4 = malloc_size(v3);

    global_xpc_received_dictionary_size = v4;
    global_xpc_reply_dictionary_size = malloc_size(ptr);
    xpc_dictionary_send_reply();
  }
}

uint64_t ___variantForCFBasicHash_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 16))(a4, a2, 48);
  if (result)
  {
    return (*(result + 27) & 0x3FF003FF) == 0 && (*(result + 32) & 0x3FF003FF0) == 0;
  }

  return result;
}

uint64_t ___variantForNSSlice_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6[2](v6, *(a1 + 32) + a2, 32);
  if (v7 && (v8 = v6[2](v6, *(v7 + 8), 24)) != 0)
  {
    v9 = *(v8 + 1);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_1C67E3344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C67E3494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C67E4184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C67E4E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL memoryExists(vm_map_read_t target_task, mach_vm_address_t a2, mach_vm_size_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = 0uLL;
  do
  {
    nesting_depth = 0;
    v14 = v6;
    v15 = v6;
    *info = v6;
    size = 0;
    address = a2;
    infoCnt = 12;
    while (1)
    {
      if (mach_vm_region_recurse(target_task, &address, &size, &nesting_depth, info, &infoCnt) || !info[0] || address > a2)
      {
        return 0;
      }

      if (!v15)
      {
        break;
      }

      ++nesting_depth;
      address = a2;
    }

    if (size + address <= a2)
    {
      return 0;
    }

    v7 = size + address - a2;
    v8 = v3 > v7;
    v3 -= v7;
    result = !v8;
    v6 = 0uLL;
  }

  while (v8);
  return result;
}

uint64_t task_start_peeking()
{
  mapped_memory_cache_with_label = task_get_mapped_memory_cache_with_label();

  return MEMORY[0x1EEE00F70](mapped_memory_cache_with_label, v1);
}

uint64_t task_stop_peeking()
{
  result = task_lookup_mapped_memory_cache();
  if (result)
  {
    v1 = mapped_memory_resume_target();
    task_release_mapped_memory_cache();
    return v1;
  }

  return result;
}

uint64_t task_peek_to_end_of_region(task_name_t a1, mach_vm_address_t a2, mach_vm_size_t a3, mach_vm_address_t *a4, void *a5)
{
  *a4 = 0;
  if (!a3)
  {
    return 0;
  }

  if (*MEMORY[0x1E69E9AC8] > a2)
  {
    return 1;
  }

  IsSelf_portOfCachedResult = VMUTaskIsSelf_portOfCachedResult();
  if (*IsSelf_portOfCachedResult == a1)
  {
    if ((*VMUTaskIsSelf_cachedResult() & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  *IsSelf_portOfCachedResult = a1;
  mach_task_is_self(a1);
  IsSelf_cachedResult = VMUTaskIsSelf_cachedResult();
  *IsSelf_cachedResult = v17;
  if (v18)
  {
LABEL_12:
    if (HIDWORD(a2) && memoryExists(a1, a2, a3))
    {
      result = 0;
      *a4 = a2;
      return result;
    }

    return 1;
  }

LABEL_5:
  v11 = task_lookup_mapped_memory_cache();
  if (v11)
  {
    node = find_node(v11, a2);
    if (node || (node = map_new_node()) != 0)
    {
      v13 = node;
      v14 = *node;
      *a4 = node[2] + a2 - *node;
      if (a5)
      {
        result = 0;
        *a5 = v14 - a2 + v13[1];
        return result;
      }

      return 0;
    }

    return 0;
  }

  else
  {
    NSLog(&cfstr_ErrorCallingTa_0.isa);
    return 0xFFFFFFFFLL;
  }
}

uint64_t *task_try_peek(uint64_t a1, tree *a2, void *a3)
{
  v5 = task_lookup_mapped_memory_cache();
  if (v5)
  {
    v6 = *MEMORY[0x1E69E9AC8];
    result = find_node(v5, a2);
    if (result || (result = map_new_node()) != 0)
    {
      v8 = result[1];
      v9 = *result;
      *a3 = a2 + result[2] - *result;
      return (v9 - a2 + v8);
    }
  }

  else
  {
    NSLog(&cfstr_ErrorCallingTa.isa);
    return 0;
  }

  return result;
}