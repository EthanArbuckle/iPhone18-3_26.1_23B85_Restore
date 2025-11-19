@interface FPFootprint
+ (BOOL)breakDownPhysFootprint;
+ (id)installCancelHandler:(id)a3;
+ (int)vmRegionInfoFlags;
+ (void)setBreakDownPhysFootprint:(BOOL)a3;
+ (void)setVmRegionInfoFlags:(int)a3;
- (BOOL)gatherData:(unint64_t)a3;
- (FPFootprint)initWithProcesses:(id)a3;
- (void)analyzeData;
- (void)dealloc;
- (void)printOutputVerbose:(BOOL)a3 summarize:(BOOL)a4 noCategories:(BOOL)a5;
@end

@implementation FPFootprint

+ (BOOL)breakDownPhysFootprint
{
  v2 = byte_2A18A6000;
  if (byte_2A18A6000 == 2)
  {
    v5 = 0;
    v4 = 4;
    if (sysctlbyname("vm.self_region_footprint", &v5, &v4, 0, 0) && *__error() != 2)
    {
      perror("Unable to retrieve status of physical footprint data collection");
      v5 = 0;
    }

    v2 = v5 != 0;
    byte_2A18A6000 = v5 != 0;
  }

  return v2 == 1;
}

+ (void)setBreakDownPhysFootprint:(BOOL)a3
{
  v3 = a3;
  if (sysctlbyname("vm.self_region_footprint", 0, 0, &v3, 4uLL) && *__error() != 2)
  {
    perror("Unable to configure physical footprint data collection");
  }

  byte_2A18A6000 = 2;
}

+ (int)vmRegionInfoFlags
{
  v4 = 0;
  v3 = 4;
  if (sysctlbyname("vm.self_region_info_flags", &v4, &v3, 0, 0) && *__error() != 2)
  {
    perror("Unable to retrieve current VM region info flags");
  }

  return v4;
}

+ (void)setVmRegionInfoFlags:(int)a3
{
  v3 = a3;
  if (sysctlbyname("vm.self_region_info_flags", 0, 0, &v3, 4uLL))
  {
    if (*__error() != 2)
    {
      perror("Unable to configure VM region info flags");
    }
  }
}

- (FPFootprint)initWithProcesses:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = FPFootprint;
  v6 = [(FPFootprint *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processes, a3);
    v7->_earlyExit = 0;
    v8 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    outputFormatters = v7->_outputFormatters;
    v7->_outputFormatters = v8;

    v7->_qualityOfService = 17;
    v7->_allPIDsIOSurfaceDescriptionsLock._os_unfair_lock_opaque = 0;
    v7->_allPIDsIOAccelMemoryInfosLock._os_unfair_lock_opaque = 0;
    v7->_memoryObjectMapsInitialized = 0;
  }

  return v7;
}

- (void)dealloc
{
  sub_297E37154(self);
  v3.receiver = self;
  v3.super_class = FPFootprint;
  [(FPFootprint *)&v3 dealloc];
}

+ (id)installCancelHandler:(id)a3
{
  v3 = a3;
  v4 = dispatch_source_create(MEMORY[0x29EDCA5C0], 2uLL, 0, 0);
  dispatch_source_set_event_handler(v4, v3);

  signal(2, 1);
  dispatch_resume(v4);

  return v4;
}

- (BOOL)gatherData:(unint64_t)a3
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x29EDCA580], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, self->_qualityOfService, 0);

  v7 = dispatch_queue_create("com.apple.footprint.gatherdata", v6);
  v8 = [(FPFootprint *)self processes];
  objc_opt_self();
  v9 = [v8 sortedArrayUsingComparator:&unk_2A1E8FA70];

  v10 = +[FPTime now];
  gatherStartTime = self->_gatherStartTime;
  self->_gatherStartTime = v10;

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v12 = [v9 count];
  v19 = MEMORY[0x29EDCA5F8];
  v20 = 3221225472;
  v21 = sub_297E375B8;
  v22 = &unk_29EE854A0;
  v23 = self;
  v25 = &v27;
  v13 = v9;
  v24 = v13;
  v26 = a3;
  dispatch_apply(v12, v7, &v19);
  if (*(v28 + 24) == 1)
  {
    v14 = [v13 lastObject];
    [v14 _addGlobalError:@"Footprint exited early due to SIGINT and did not finish gathering all data"];
  }

  v15 = [FPTime now:v19];
  gatherEndTime = self->_gatherEndTime;
  self->_gatherEndTime = v15;

  v17 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);

  return v17;
}

- (void)analyzeData
{
  v109 = *MEMORY[0x29EDCA608];
  if (self->_memoryObjectMapsInitialized)
  {
LABEL_85:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_86;
  }

  v2 = self;
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  pidToFootprint = v2->_pidToFootprint;
  v2->_pidToFootprint = v3;

  v93 = "memory_objects";
  v94 = 224;
  p_memoryObjects = &v2->_memoryObjects;
  os_map_64_init();
  v91 = "text_memory_objects";
  v92 = 224;
  p_textMemoryObjects = &v2->_textMemoryObjects;
  os_map_64_init();
  v89 = "linkedit_memory_objects";
  v90 = 224;
  p_linkeditMemoryObjects = &v2->_linkeditMemoryObjects;
  os_map_64_init();
  v7 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  sharedCacheMemoryObjectsTable = v2->_sharedCacheMemoryObjectsTable;
  v2->_sharedCacheMemoryObjectsTable = v7;

  v2->_memoryObjectMapsInitialized = 1;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v9 = v2->_processes;
  v71 = v2;
  v68 = [(NSArray *)v9 countByEnumeratingWithState:&v85 objects:v103 count:16];
  if (v68)
  {
    v69 = *v86;
    v67 = v9;
    do
    {
      v10 = 0;
      do
      {
        if (*v86 != v69)
        {
          objc_enumerationMutation(v9);
        }

        v11 = *(*(&v85 + 1) + 8 * v10);
        if (!v2->_memoryObjectMapsInitialized)
        {
LABEL_84:
          _os_assert_log();
          _os_crash();
          __break(1u);
          goto LABEL_85;
        }

        v79 = +[FPFootprint breakDownPhysFootprint];
        v12 = [v11 sharedCache];
        v74 = [v12 baseAddress];
        v73 = v12;
        v70 = v10;
        if (v12)
        {
          v13 = v12;
          v14 = v2->_sharedCacheMemoryObjectsTable;
          v15 = [v13 uuid];
          v16 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:v15];

          if (!v16)
          {
            v17 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
            v108[0] = xmmword_29EE854E0;
            os_map_64_init();
            v16 = [MEMORY[0x29EDBA168] valueWithPointer:v17];
            v18 = v2->_sharedCacheMemoryObjectsTable;
            v19 = [v73 uuid];
            [(NSMutableDictionary *)v18 setObject:v16 forKeyedSubscript:v19];
          }

          [v16 pointerValue];

          v12 = v73;
        }

        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        context = v11;
        obj = [v11 memoryRegions];
        v20 = [obj countByEnumeratingWithState:&v104 objects:v108 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v105;
          v77 = *v105;
          do
          {
            v23 = 0;
            v81 = v21;
            do
            {
              if (*v105 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v104 + 1) + 8 * v23);
              if ([(FPMemoryObject *)v24 inSharedCache])
              {
                if (!v12)
                {
                  _os_assert_log();
                  _os_crash();
                  __break(1u);
                  goto LABEL_84;
                }

                if (([(FPMemoryObject *)v24 privateSharedCacheRegion]& 1) != 0)
                {
LABEL_23:
                  [(FPMemoryObject *)v24 setMemoryObject:v24];
                  goto LABEL_40;
                }

                v25 = [(FPMemoryObject *)v24 start]- v74 + 1;
              }

              else
              {
                v25 = [(FPMemoryObject *)v24 object_id];
                [(FPMemoryObject *)v24 segment];
              }

              if ((v25 + 1) <= 1)
              {
                goto LABEL_23;
              }

              if (v79)
              {
                v26 = [(FPMemoryObject *)v24 ownedExclusivelyByParentProcess];
              }

              else
              {
                v26 = 0;
              }

              v27 = os_map_64_find();
              if (!v27)
              {
                if ((v26 & 1) != 0 || [(FPMemoryObject *)v24 eligibleForProcessView])
                {
                  v28 = objc_alloc_init(FPMemoryObject);
                }

                else
                {
                  v28 = v24;
                }

                v27 = v28;
                os_map_64_insert();
              }

              if (v27 != v24)
              {
                v29 = p_linkeditMemoryObjects;
                v30 = [(FPMemoryObject *)v27 ensureMemoryObject];
                v31 = v30;
                if (v30 != v27)
                {
                  v32 = p_memoryObjects;
                  v33 = v30;

                  v27 = v33;
                  v34 = os_map_64_delete();
                  os_map_64_insert();

                  p_memoryObjects = v32;
                }

                sub_297E3398C(v31, v24, context);
                if (v26)
                {
                  -[FPMemoryObject setOwnerPid:](v31, "setOwnerPid:", [context pid]);
                }

                p_linkeditMemoryObjects = v29;
                v12 = v73;
              }

              [(FPMemoryObject *)v24 setMemoryObject:v27];

              v22 = v77;
              v21 = v81;
LABEL_40:
              ++v23;
            }

            while (v21 != v23);
            v21 = [obj countByEnumeratingWithState:&v104 objects:v108 count:16];
          }

          while (v21);
        }

        v2 = v71;
        v10 = v70 + 1;
        v9 = v67;
      }

      while (v70 + 1 != v68);
      v68 = [(NSArray *)v67 countByEnumeratingWithState:&v85 objects:v103 count:16];
    }

    while (v68);
  }

  v35 = objc_autoreleasePoolPush();
  if (!v2->_memoryObjectMapsInitialized)
  {
LABEL_86:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  contexta = v35;
  sub_297E37F6C(p_memoryObjects);
  sub_297E37F6C(p_textMemoryObjects);
  sub_297E37F6C(p_linkeditMemoryObjects);
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v36 = [(NSMutableDictionary *)v2->_sharedCacheMemoryObjectsTable objectEnumerator];
  v37 = [v36 countByEnumeratingWithState:&v104 objects:v108 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v105;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v105 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = sub_297E37F6C([*(*(&v104 + 1) + 8 * i) pointerValue]);
      }

      v38 = [v36 countByEnumeratingWithState:&v104 objects:v108 count:{16, v41}];
    }

    while (v38);
  }

  [(NSMutableDictionary *)v2->_pidToFootprint removeAllObjects];
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v80 = sub_297E39B8C(v2);
  v82 = [v80 countByEnumeratingWithState:&v95 objects:&v104 count:16];
  if (v82)
  {
    v42 = *v96;
    v78 = *v96;
    do
    {
      for (j = 0; j != v82; ++j)
      {
        if (*v96 != v42)
        {
          objc_enumerationMutation(v80);
        }

        v44 = MEMORY[0x29EDBA070];
        v45 = *(*(&v95 + 1) + 8 * j);
        if (+[FPFootprint breakDownPhysFootprint])
        {
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v46 = [v45 memoryRegions];
          v47 = [v46 countByEnumeratingWithState:&v99 objects:v108 count:16];
          if (!v47)
          {
            v49 = 0;
            goto LABEL_80;
          }

          v48 = v47;
          obja = v44;
          v49 = 0;
          v50 = *v100;
          do
          {
            for (k = 0; k != v48; ++k)
            {
              if (*v100 != v50)
              {
                objc_enumerationMutation(v46);
              }

              v52 = *(*(&v99 + 1) + 8 * k);
              v53 = [v52 dirtySize];
              v49 += v53 + [v52 swappedSize];
            }

            v48 = [v46 countByEnumeratingWithState:&v99 objects:v108 count:16];
          }

          while (v48);
          v2 = v71;
        }

        else
        {
          obja = v44;
          v54 = objc_alloc(MEMORY[0x29EDB8E20]);
          v55 = [v45 memoryRegions];
          v46 = [v54 initWithCapacity:{objc_msgSend(v55, "count")}];

          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v56 = [v45 memoryRegions];
          v57 = [v56 countByEnumeratingWithState:&v99 objects:v108 count:16];
          if (v57)
          {
            v58 = v57;
            v49 = 0;
            v59 = *v100;
            do
            {
              for (m = 0; m != v58; ++m)
              {
                if (*v100 != v59)
                {
                  objc_enumerationMutation(v56);
                }

                v61 = [*(*(&v99 + 1) + 8 * m) memoryObject];
                if (([v46 containsObject:v61] & 1) == 0)
                {
                  v62 = [v61 dirtySize];
                  v49 += v62 + [v61 swappedSize];
                  [v46 addObject:v61];
                }
              }

              v58 = [v56 countByEnumeratingWithState:&v99 objects:v108 count:16];
            }

            while (v58);
          }

          else
          {
            v49 = 0;
          }

          v2 = v71;
          v42 = v78;
        }

        v44 = obja;
LABEL_80:

        v63 = [v44 numberWithUnsignedLongLong:v49];
        v64 = v2->_pidToFootprint;
        v65 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(v45, "pid")}];
        [(NSMutableDictionary *)v64 setObject:v63 forKeyedSubscript:v65];
      }

      v82 = [v80 countByEnumeratingWithState:&v95 objects:&v104 count:16];
    }

    while (v82);
  }

  objc_autoreleasePoolPop(contexta);
  v66 = *MEMORY[0x29EDCA608];
}

- (void)printOutputVerbose:(BOOL)a3 summarize:(BOOL)a4 noCategories:(BOOL)a5
{
  v206 = a5;
  v214 = a4;
  v5 = a3;
  v355 = *MEMORY[0x29EDCA608];
  v7 = sub_297E39B8C(self);
  v8 = v7;
  if (self)
  {
    *&v352 = MEMORY[0x29EDCA5F8];
    *(&v352 + 1) = 3221225472;
    *&v353 = sub_297E3A2BC;
    *(&v353 + 1) = &unk_29EE85540;
    *&v354 = self;
    v215 = [v7 sortedArrayUsingComparator:&v352];
  }

  else
  {
    v215 = 0;
  }

  v289 = 0u;
  v290 = 0u;
  v287 = 0u;
  v288 = 0u;
  v219 = self;
  v9 = self->_outputFormatters;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v287 objects:v334 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v288;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v288 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v287 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v14 startAtTime:v219->_gatherStartTime];
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v287 objects:v334 count:16];
    }

    while (v11);
  }

  p_isa = &v219->super.isa;
  if (v5)
  {
    v16 = v215;
    if (v219)
    {
      v235 = objc_opt_new();
      v343 = 0u;
      v344 = 0u;
      v345 = 0u;
      v346 = 0u;
      v17 = v219->_outputFormatters;
      v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v343 objects:&v352 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v344;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v344 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v343 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v235 addObject:v22];
            }
          }

          v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v343 objects:&v352 count:16];
        }

        while (v19);
      }

      if ([v235 count])
      {
        v342 = 0u;
        v341 = 0u;
        v340 = 0u;
        v339 = 0u;
        context = v16;
        obj = v16;
        v23 = [obj countByEnumeratingWithState:&v339 objects:v351 count:16];
        if (v23)
        {
          v24 = v23;
          v232 = *v340;
          do
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v340 != v232)
              {
                objc_enumerationMutation(obj);
              }

              v26 = *(*(&v339 + 1) + 8 * k);
              v335 = 0u;
              v336 = 0u;
              v337 = 0u;
              v338 = 0u;
              v27 = v235;
              v28 = [v27 countByEnumeratingWithState:&v335 objects:&v347 count:16];
              if (v28)
              {
                v29 = v28;
                v30 = *v336;
                do
                {
                  for (m = 0; m != v29; ++m)
                  {
                    if (*v336 != v30)
                    {
                      objc_enumerationMutation(v27);
                    }

                    v32 = *(*(&v335 + 1) + 8 * m);
                    v33 = objc_autoreleasePoolPush();
                    v34 = [v26 memoryRegions];
                    [v32 printVmmapLikeOutputForProcess:v26 regions:v34];

                    objc_autoreleasePoolPop(v33);
                  }

                  v29 = [v27 countByEnumeratingWithState:&v335 objects:&v347 count:16];
                }

                while (v29);
              }
            }

            v24 = [obj countByEnumeratingWithState:&v339 objects:v351 count:16];
          }

          while (v24);
        }

        v16 = context;
      }

      p_isa = &v219->super.isa;
    }
  }

  v210 = objc_opt_new();
  v209 = objc_opt_new();
  v202 = 0;
  if ([v215 count] >= 2 && !v206)
  {
    if (p_isa)
    {
      v35 = objc_alloc_init(MEMORY[0x29EDB8E00]);
      v347 = 0u;
      v348 = 0u;
      v349 = 0u;
      v350 = 0u;
      v36 = p_isa[1];
      v37 = [v36 countByEnumeratingWithState:&v347 objects:&v352 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v348;
        do
        {
          for (n = 0; n != v38; ++n)
          {
            if (*v348 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v347 + 1) + 8 * n);
            v42 = [v41 sharedCache];
            if (v42)
            {
              v43 = [v35 objectForKeyedSubscript:v42];
              if (!v43)
              {
                v43 = [[FPProcessGroupMinimal alloc] initUniqueProcessGroup];
                [v35 setObject:v43 forKeyedSubscript:v42];
              }

              [v43 addProcess:v41];
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v347 objects:&v352 count:16];
        }

        while (v38);
      }

      v202 = [objc_alloc(MEMORY[0x29EDB8E00]) initWithCapacity:{objc_msgSend(v35, "count")}];
      v343 = 0u;
      v344 = 0u;
      v345 = 0u;
      v346 = 0u;
      v44 = v35;
      v45 = [v44 countByEnumeratingWithState:&v343 objects:v351 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v344;
        do
        {
          for (ii = 0; ii != v46; ++ii)
          {
            if (*v344 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v343 + 1) + 8 * ii);
            v50 = [v44 objectForKeyedSubscript:v49];
            v51 = sub_297E3BA18(v50);
            [v202 setObject:v51 forKeyedSubscript:v49];
          }

          v46 = [v44 countByEnumeratingWithState:&v343 objects:v351 count:16];
        }

        while (v46);
      }
    }

    else
    {
      v202 = 0;
    }

    p_isa = &v219->super.isa;
  }

  if (v206)
  {
    v233 = 0;
  }

  else
  {
    contexta = v202;
    if (p_isa)
    {
      v52 = [MEMORY[0x29EDB8E00] dictionary];
      v53 = sub_297E39B8C(p_isa);
      v236 = [objc_alloc(MEMORY[0x29EDB8E20]) initWithCapacity:{objc_msgSend(v53, "count")}];
      v318 = 0u;
      v319 = 0u;
      v320 = 0u;
      v321 = 0u;
      v54 = v53;
      v55 = [v54 countByEnumeratingWithState:&v318 objects:&v352 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v319;
        do
        {
          for (jj = 0; jj != v56; ++jj)
          {
            if (*v319 != v57)
            {
              objc_enumerationMutation(v54);
            }

            v59 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(*(*(&v318 + 1) + 8 * jj), "pid")}];
            [v236 addObject:v59];
          }

          v56 = [v54 countByEnumeratingWithState:&v318 objects:&v352 count:16];
        }

        while (v56);
      }

      v212 = v54;

      v317 = 0u;
      v316 = 0u;
      v315 = 0u;
      v314 = 0u;
      obja = v219->_processes;
      v60 = [(NSArray *)obja countByEnumeratingWithState:&v314 objects:v351 count:16];
      if (v60)
      {
        v61 = v60;
        v234 = *v315;
        do
        {
          for (kk = 0; kk != v61; ++kk)
          {
            if (*v315 != v234)
            {
              objc_enumerationMutation(obja);
            }

            v63 = *(*(&v314 + 1) + 8 * kk);
            v64 = [v63 hiddenFromDisplay];
            v65 = [v63 sharedCache];
            if (v65)
            {
              v66 = contexta;
              v67 = [contexta objectForKeyedSubscript:v65];
            }

            else
            {
              v67 = 0;
              v66 = contexta;
            }

            v68 = [v63 memoryRegions];
            v307[0] = MEMORY[0x29EDCA5F8];
            v307[1] = 3221225472;
            v307[2] = sub_297E3A0E8;
            v307[3] = &unk_29EE854F8;
            v313 = v64;
            v308 = v236;
            v309 = v66;
            v310 = v67;
            v311 = v52;
            v312 = v63;
            v69 = v67;
            [v68 fp_enumerateObjectsWithBatchSize:256 usingBlock:v307];
          }

          v61 = [(NSArray *)obja countByEnumeratingWithState:&v314 objects:v351 count:16];
        }

        while (v61);
      }

      v70 = [objc_alloc(MEMORY[0x29EDB8E20]) initWithCapacity:{3 * objc_msgSend(v236, "count")}];
      v303 = 0u;
      v304 = 0u;
      v305 = 0u;
      v306 = 0u;
      v71 = [v52 allKeys];
      v72 = [v71 countByEnumeratingWithState:&v303 objects:&v347 count:16];
      if (v72)
      {
        v73 = v72;
        v74 = *v304;
        do
        {
          for (mm = 0; mm != v73; ++mm)
          {
            if (*v304 != v74)
            {
              objc_enumerationMutation(v71);
            }

            v76 = *(*(&v303 + 1) + 8 * mm);
            v77 = [v52 objectForKeyedSubscript:v76];
            v78 = [v70 member:v77];
            if (!v78)
            {
              v78 = sub_297E3BA18(v77);
              [v70 addObject:v78];
            }

            [v52 setObject:v78 forKeyedSubscript:v76];
          }

          v73 = [v71 countByEnumeratingWithState:&v303 objects:&v347 count:16];
        }

        while (v73);
      }

      v302 = 0u;
      v301 = 0u;
      v300 = 0u;
      v299 = 0u;
      v79 = v52;
      v80 = [v79 countByEnumeratingWithState:&v299 objects:&v343 count:16];
      if (v80)
      {
        v81 = v80;
        v82 = *v300;
        do
        {
          for (nn = 0; nn != v81; ++nn)
          {
            if (*v300 != v82)
            {
              objc_enumerationMutation(v79);
            }

            v84 = *(*(&v299 + 1) + 8 * nn);
            v85 = [v79 objectForKeyedSubscript:v84];
            v86 = [v84 nonretainedObjectValue];
            sub_297E3BC44(v85, v86);
          }

          v81 = [v79 countByEnumeratingWithState:&v299 objects:&v343 count:16];
        }

        while (v81);
      }

      v233 = [MEMORY[0x29EDB8E00] dictionary];
      v295 = 0u;
      v296 = 0u;
      v297 = 0u;
      v298 = 0u;
      v217 = v70;
      objb = [v217 countByEnumeratingWithState:&v295 objects:&v339 count:16];
      if (objb)
      {
        v220 = *v296;
        do
        {
          for (i1 = 0; i1 != objb; i1 = i1 + 1)
          {
            if (*v296 != v220)
            {
              objc_enumerationMutation(v217);
            }

            v88 = *(*(&v295 + 1) + 8 * i1);
            v89 = [v88 processes];
            v90 = [v89 count];

            v294 = 0u;
            v293 = 0u;
            v291 = 0u;
            v292 = 0u;
            v91 = [v88 processes];
            v92 = [v91 countByEnumeratingWithState:&v291 objects:&v335 count:16];
            if (v92)
            {
              v93 = v92;
              v94 = *v292;
              do
              {
                for (i2 = 0; i2 != v93; ++i2)
                {
                  if (*v292 != v94)
                  {
                    objc_enumerationMutation(v91);
                  }

                  v96 = *(*(&v291 + 1) + 8 * i2);
                  v97 = [v96 asNumber];
                  v98 = [v233 objectForKeyedSubscript:v97];

                  if (!v98)
                  {
                    v98 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
                    v99 = [v96 asNumber];
                    [v233 setObject:v98 forKeyedSubscript:v99];
                  }

                  if (v90 == 1)
                  {
                    [v98 insertObject:v88 atIndex:0];
                  }

                  else
                  {
                    [v98 addObject:v88];
                  }
                }

                v93 = [v91 countByEnumeratingWithState:&v291 objects:&v335 count:16];
              }

              while (v93);
            }
          }

          objb = [v217 countByEnumeratingWithState:&v295 objects:&v339 count:16];
        }

        while (objb);
      }
    }

    else
    {
      v233 = 0;
    }

    p_isa = &v219->super.isa;
    sub_297E37154(v219);
  }

  v201 = objc_autoreleasePoolPush();
  v283 = 0u;
  v284 = 0u;
  v285 = 0u;
  v286 = 0u;
  v100 = p_isa[18];
  v101 = [v100 countByEnumeratingWithState:&v283 objects:v333 count:16];
  if (v101)
  {
    v102 = v101;
    v103 = *v284;
    do
    {
      for (i3 = 0; i3 != v102; ++i3)
      {
        if (*v284 != v103)
        {
          objc_enumerationMutation(v100);
        }

        v105 = *(*(&v283 + 1) + 8 * i3);
        v106 = objc_autoreleasePoolPush();
        if (objc_opt_respondsToSelector())
        {
          [v105 printHeader];
        }

        objc_autoreleasePoolPop(v106);
      }

      v102 = [v100 countByEnumeratingWithState:&v283 objects:v333 count:16];
    }

    while (v102);
  }

  v281 = 0u;
  v282 = 0u;
  v279 = 0u;
  v280 = 0u;
  v203 = v215;
  v207 = [v203 countByEnumeratingWithState:&v279 objects:v332 count:16];
  if (v207)
  {
    v205 = *v280;
    v208 = MEMORY[0x29EDB8EA0];
    v107 = v219;
    do
    {
      v108 = 0;
      do
      {
        if (*v280 != v205)
        {
          objc_enumerationMutation(v203);
        }

        v213 = v108;
        v109 = *(*(&v279 + 1) + 8 * v108);
        v110 = [v109 errors];
        v237 = [v110 count];

        v111 = [v109 warnings];
        v112 = [v111 count];

        if (v112)
        {
          [v209 addObject:v109];
        }

        if (v237)
        {
          [v210 addObject:v109];
        }

        else
        {
          v113 = [v109 auxData];
          v114 = v113;
          if (v113)
          {
            v115 = [v113 fp_mergeWithData:v208];

            v208 = v115;
          }
        }

        pidToFootprint = v107->_pidToFootprint;
        v117 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(v109, "pid")}];
        v118 = [(NSMutableDictionary *)pidToFootprint objectForKeyedSubscript:v117];

        v277 = 0u;
        v278 = 0u;
        v275 = 0u;
        v276 = 0u;
        v119 = v107->_outputFormatters;
        v120 = [(NSMutableArray *)v119 countByEnumeratingWithState:&v275 objects:v331 count:16];
        if (v120)
        {
          v121 = v120;
          v122 = *v276;
          do
          {
            for (i4 = 0; i4 != v121; ++i4)
            {
              if (*v276 != v122)
              {
                objc_enumerationMutation(v119);
              }

              v124 = *(*(&v275 + 1) + 8 * i4);
              v125 = objc_autoreleasePoolPush();
              [v124 printProcessHeader:v109];
              if (!v237)
              {
                [v124 printProcessTotal:v118 forProcess:v109];
              }

              [v124 endProcessHeader:v109];
              objc_autoreleasePoolPop(v125);
            }

            v121 = [(NSMutableArray *)v119 countByEnumeratingWithState:&v275 objects:v331 count:16];
          }

          while (v121);
        }

        v211 = v118;

        v126 = v219;
        if (!v206)
        {
          v127 = [v109 asNumber];
          v128 = [v233 objectForKeyedSubscript:v127];

          v204 = v128;
          if (v128)
          {
            v269 = 0uLL;
            v270 = 0uLL;
            v267 = 0uLL;
            v268 = 0uLL;
            v216 = v128;
            v221 = [v216 countByEnumeratingWithState:&v267 objects:v329 count:16];
            if (v221)
            {
              v218 = *v268;
              do
              {
                v129 = 0;
                do
                {
                  if (*v268 != v218)
                  {
                    objc_enumerationMutation(v216);
                  }

                  objc = v129;
                  v130 = *(*(&v267 + 1) + 8 * v129);
                  v131 = sub_297E3BD78(v130);
                  v353 = 0u;
                  v354 = 0u;
                  v352 = 0u;
                  v351[0] = 0;
                  if (!v131)
                  {
                    if (v130)
                    {
                      v132 = v130[4];
                    }

                    else
                    {
                      v132 = 0;
                    }

                    v133 = v132;
                    v134 = objc_autoreleasePoolPush();
                    v135 = [v133 objectEnumerator];
                    v131 = sub_297E39C10(v219, v135, v109, v351, v214);

                    objc_autoreleasePoolPop(v134);
                    if (!v351[0])
                    {
                      v136 = [v130 processes];
                      v137 = [v136 count];

                      if (v137 >= 0x1A)
                      {
                        v138 = [v130 processes];
                        sub_297E3BCEC(v130, v131, [v138 count] - 1);
                      }
                    }
                  }

                  if (!v237)
                  {
                    sub_297E380A4(FPFootprint, v131, &v352);
                  }

                  contextb = objc_autoreleasePoolPush();
                  v263 = 0u;
                  v264 = 0u;
                  v265 = 0u;
                  v266 = 0u;
                  v139 = v219->_outputFormatters;
                  v140 = [(NSMutableArray *)v139 countByEnumeratingWithState:&v263 objects:v328 count:16];
                  if (v140)
                  {
                    v141 = v140;
                    v142 = *v264;
                    do
                    {
                      for (i5 = 0; i5 != v141; ++i5)
                      {
                        if (*v264 != v142)
                        {
                          objc_enumerationMutation(v139);
                        }

                        v144 = *(*(&v263 + 1) + 8 * i5);
                        v145 = [v130 processes];
                        v146 = [v145 count];

                        if (v146 == 1)
                        {
                          [v144 printProcessCategories:v131 total:&v352 forProcess:v109];
                        }

                        else
                        {
                          [v144 printSharedCategories:v131 sharedWith:v130 forProcess:v109 hasProcessView:v351[0] == 2 total:&v352];
                        }
                      }

                      v141 = [(NSMutableArray *)v139 countByEnumeratingWithState:&v263 objects:v328 count:16];
                    }

                    while (v141);
                  }

                  objc_autoreleasePoolPop(contextb);
                  v129 = objc + 1;
                }

                while (objc + 1 != v221);
                v147 = [v216 countByEnumeratingWithState:&v267 objects:v329 count:16];
                v221 = v147;
              }

              while (v147);
            }
          }

          else
          {
            v353 = 0uLL;
            v354 = 0uLL;
            v352 = 0uLL;
            v271 = 0uLL;
            v272 = 0uLL;
            v273 = 0uLL;
            v274 = 0uLL;
            v148 = v219->_outputFormatters;
            v149 = [(NSMutableArray *)v148 countByEnumeratingWithState:&v271 objects:v330 count:16];
            if (v149)
            {
              v150 = v149;
              v151 = *v272;
              do
              {
                for (i6 = 0; i6 != v150; ++i6)
                {
                  if (*v272 != v151)
                  {
                    objc_enumerationMutation(v148);
                  }

                  [*(*(&v271 + 1) + 8 * i6) printProcessCategories:MEMORY[0x29EDB8EA0] total:&v352 forProcess:v109];
                }

                v150 = [(NSMutableArray *)v148 countByEnumeratingWithState:&v271 objects:v330 count:16];
              }

              while (v150);
            }
          }

          v126 = v219;
        }

        v153 = objc_autoreleasePoolPush();
        v259 = 0u;
        v260 = 0u;
        v261 = 0u;
        v262 = 0u;
        v154 = v126->_outputFormatters;
        v155 = [(NSMutableArray *)v154 countByEnumeratingWithState:&v259 objects:v327 count:16];
        if (v155)
        {
          v156 = v155;
          v157 = *v260;
          do
          {
            for (i7 = 0; i7 != v156; ++i7)
            {
              if (*v260 != v157)
              {
                objc_enumerationMutation(v154);
              }

              v159 = *(*(&v259 + 1) + 8 * i7);
              v160 = [v109 auxData];
              [v159 printProcessAuxData:v160 forProcess:v109];
            }

            v156 = [(NSMutableArray *)v154 countByEnumeratingWithState:&v259 objects:v327 count:16];
          }

          while (v156);
        }

        objc_autoreleasePoolPop(v153);
        v108 = v213 + 1;
        v107 = v219;
      }

      while (v213 + 1 != v207);
      v207 = [v203 countByEnumeratingWithState:&v279 objects:v332 count:16];
    }

    while (v207);
  }

  else
  {
    v208 = MEMORY[0x29EDB8EA0];
  }

  objc_autoreleasePoolPop(v201);
  contextc = objc_autoreleasePoolPush();
  v255 = 0u;
  v256 = 0u;
  v257 = 0u;
  v258 = 0u;
  v238 = v202;
  v161 = [v238 countByEnumeratingWithState:&v255 objects:v326 count:16];
  if (v161)
  {
    v162 = v161;
    objd = *v256;
    do
    {
      v163 = 0;
      do
      {
        if (*v256 != objd)
        {
          objc_enumerationMutation(v238);
        }

        v164 = *(*(&v255 + 1) + 8 * v163);
        v165 = [v238 objectForKeyedSubscript:v164];
        v166 = v165;
        if (v165)
        {
          v167 = *(v165 + 32);
        }

        else
        {
          v167 = 0;
        }

        v168 = v167;
        v169 = objc_autoreleasePoolPush();
        v170 = [v168 objectEnumerator];
        v171 = sub_297E39C10(v219, v170, 0, 0, v214);

        objc_autoreleasePoolPop(v169);
        v353 = 0u;
        v354 = 0u;
        v352 = 0u;
        sub_297E380A4(FPFootprint, v171, &v352);
        v253 = 0u;
        v254 = 0u;
        v251 = 0u;
        v252 = 0u;
        v172 = v219->_outputFormatters;
        v173 = [(NSMutableArray *)v172 countByEnumeratingWithState:&v251 objects:v325 count:16];
        if (v173)
        {
          v174 = v173;
          v175 = *v252;
          do
          {
            for (i8 = 0; i8 != v174; ++i8)
            {
              if (*v252 != v175)
              {
                objc_enumerationMutation(v172);
              }

              [*(*(&v251 + 1) + 8 * i8) printSharedCache:v164 categories:v171 sharedWith:v166 total:&v352];
            }

            v174 = [(NSMutableArray *)v172 countByEnumeratingWithState:&v251 objects:v325 count:16];
          }

          while (v174);
        }

        ++v163;
      }

      while (v163 != v162);
      v177 = [v238 countByEnumeratingWithState:&v255 objects:v326 count:16];
      v162 = v177;
    }

    while (v177);
  }

  objc_autoreleasePoolPop(contextc);
  v178 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v247 = 0u;
  v248 = 0u;
  v249 = 0u;
  v250 = 0u;
  v179 = v203;
  v180 = [v179 countByEnumeratingWithState:&v247 objects:v324 count:16];
  if (v180)
  {
    v181 = v180;
    v182 = *v248;
    do
    {
      for (i9 = 0; i9 != v181; ++i9)
      {
        if (*v248 != v182)
        {
          objc_enumerationMutation(v179);
        }

        v184 = [*(*(&v247 + 1) + 8 * i9) globalErrors];
        [v178 addObjectsFromArray:v184];
      }

      v181 = [v179 countByEnumeratingWithState:&v247 objects:v324 count:16];
    }

    while (v181);
  }

  v185 = objc_autoreleasePoolPush();
  v243 = 0u;
  v244 = 0u;
  v245 = 0u;
  v246 = 0u;
  v186 = v219->_outputFormatters;
  v187 = [(NSMutableArray *)v186 countByEnumeratingWithState:&v243 objects:v323 count:16];
  if (v187)
  {
    v188 = v187;
    v189 = *v244;
    do
    {
      for (i10 = 0; i10 != v188; ++i10)
      {
        if (*v244 != v189)
        {
          objc_enumerationMutation(v186);
        }

        [*(*(&v243 + 1) + 8 * i10) printProcessesWithWarnings:v209 processesWithErrors:v210 globalErrors:v178];
      }

      v188 = [(NSMutableArray *)v186 countByEnumeratingWithState:&v243 objects:v323 count:16];
    }

    while (v188);
  }

  objc_autoreleasePoolPop(v185);
  v353 = 0u;
  v354 = 0u;
  v352 = 0u;
  obje = sub_297E39E48(v219, v214);
  sub_297E380A4(FPFootprint, obje, &v352);
  if ([v178 count])
  {
    v191 = 1;
  }

  else
  {
    v191 = [v210 count] != 0;
  }

  v241 = 0u;
  v242 = 0u;
  v239 = 0u;
  v240 = 0u;
  v192 = v219->_outputFormatters;
  v193 = [(NSMutableArray *)v192 countByEnumeratingWithState:&v239 objects:v322 count:16];
  if (v193)
  {
    v194 = v193;
    v195 = *v240;
    if (v206)
    {
      v196 = 0;
    }

    else
    {
      v196 = obje;
    }

    do
    {
      for (i11 = 0; i11 != v194; ++i11)
      {
        if (*v240 != v195)
        {
          objc_enumerationMutation(v192);
        }

        v198 = *(*(&v239 + 1) + 8 * i11);
        v199 = objc_autoreleasePoolPush();
        [v198 printSummaryCategories:v196 total:&v352 hadErrors:v191];
        [v198 printGlobalAuxData:v208];
        [v198 endAtTime:v219->_gatherEndTime];
        objc_autoreleasePoolPop(v199);
      }

      v194 = [(NSMutableArray *)v192 countByEnumeratingWithState:&v239 objects:v322 count:16];
    }

    while (v194);
  }

  v200 = *MEMORY[0x29EDCA608];
}

@end