@interface RBJetsamPropertyManager
+ (id)testJetsamProperties;
+ (id)unmanagedJetsamProperties;
+ (int)testTaskLimitForPid:(int)a3;
+ (uint64_t)_taskLimit;
- (BOOL)_isNotValidProperties:(_BOOL8)a1;
- (RBJetsamPropertyManager)initWithEntitlementManager:(id)a3;
- (RBJetsamPropertyManager)initWithEntitlementManager:(id)a3 properties:(id)a4;
- (__CFString)_jetsamTargetType;
- (id)_encodedValue:(uint64_t)a1;
- (id)_jetsamPropertiesForAngelProcess:(uint64_t)a1 identity:(uint64_t)a2 bundleProperties:(void *)a3;
- (id)_jetsamPropertiesForAppProcess:(uint64_t)a1 identity:(uint64_t)a2 bundleProperties:(uint64_t)a3 isPlatformBinary:(uint64_t)a4;
- (id)_jetsamPropertiesForDaemonProcess:(uint64_t)a1 identity:(uint64_t)a2 bundleProperties:(void *)a3;
- (id)_jetsamPropertiesForExtensionProcess:(void *)a3 identity:(void *)a4 bundleProperties:;
- (id)_jetsamPropertiesForProcess:(void *)a3 identifier:(void *)a4 properties:(void *)a5 global:;
- (id)_jetsamPropertiesForServiceProcess:(uint64_t)a1 identity:(uint64_t)a2 bundleProperties:(uint64_t)a3 isPlatformBinary:(uint64_t)a4;
- (id)_jetsamPropertiesWithTaskLimit:(void *)a1;
- (id)_jetsamTryBasePath:(void *)a3 target:(void *)a4 extension:;
- (id)_jetsamTryPath:(void *)a3 target:(void *)a4 extension:;
- (id)_loadJetsamProperties;
- (uint64_t)_taskLimitForProcess:(uint64_t)a1;
- (uint64_t)_unLimitForProcess:(uint64_t)a1;
- (void)_addJetsamValuesForSection:(void *)a3 fromPlist:(void *)a4 toDatabase:;
- (void)_prepareJetsamData:(id *)a1;
@end

@implementation RBJetsamPropertyManager

+ (uint64_t)_taskLimit
{
  objc_opt_self();
  if (_taskLimit_onceToken != -1)
  {
    +[RBJetsamPropertyManager _taskLimit];
  }

  return _taskLimit_taskLimit;
}

void __37__RBJetsamPropertyManager__taskLimit__block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v4 = 4;
  v0 = sysctlbyname("kern.max_task_pmem", &v5, &v4, 0, 0);
  v1 = rbs_jetsam_log();
  v2 = v1;
  if (v0)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __37__RBJetsamPropertyManager__taskLimit__block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = v5;
    _os_log_impl(&dword_262485000, v2, OS_LOG_TYPE_DEFAULT, "Jetsam database _kern_max_task_pmem=%d", buf, 8u);
  }

  _taskLimit_taskLimit = v5;
  v3 = *MEMORY[0x277D85DE8];
}

void __75__RBJetsamPropertyManager__addJetsamValuesForSection_fromPlist_toDatabase___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 hasSuffix:@"MemoryLimit"])
  {
    v4 = *(a1 + 32);
    v5 = RBSNumberForKey();
    if (v5)
    {
      [*(a1 + 40) setValue:v5 forKey:v3];
      v6 = rbs_jetsam_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 48);
        v8 = *(a1 + 56);
        v16 = 138413058;
        v17 = v7;
        v18 = 2112;
        v19 = v3;
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v5;
        _os_log_debug_impl(&dword_262485000, v6, OS_LOG_TYPE_DEBUG, "In %@ Setting %@ for %@ to %@", &v16, 0x2Au);
      }
    }

    else
    {
      v6 = rbs_jetsam_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __75__RBJetsamPropertyManager__addJetsamValuesForSection_fromPlist_toDatabase___block_invoke_cold_1(v3, v6);
      }
    }

LABEL_11:
    goto LABEL_12;
  }

  if ([v3 isEqualToString:@"FreezerEligible"])
  {
    v9 = *(a1 + 32);
    v10 = RBSBoolForKey();
    v11 = *(a1 + 40);
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    [v11 setValue:v12 forKey:v3];

    v5 = rbs_jetsam_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      v16 = 138413058;
      v17 = v13;
      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v14;
      v22 = 1024;
      LODWORD(v23) = v10;
      _os_log_debug_impl(&dword_262485000, v5, OS_LOG_TYPE_DEBUG, "In %@ Setting %@ for %@ to %hhd", &v16, 0x26u);
    }

    goto LABEL_11;
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
}

- (RBJetsamPropertyManager)initWithEntitlementManager:(id)a3 properties:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RBJetsamPropertyManager;
  v9 = [(RBJetsamPropertyManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entitlementManager, a3);
    [(RBJetsamPropertyManager *)&v10->super.isa _prepareJetsamData:v8];
  }

  return v10;
}

+ (int)testTaskLimitForPid:(int)a3
{
  v3 = memorystatus_control();
  if (v3 <= 0)
  {
    v4 = rbs_jetsam_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[RBJetsamPropertyManager testTaskLimitForPid:];
    }

    return +[RBJetsamPropertyManager _taskLimit];
  }

  return v3;
}

+ (id)testJetsamProperties
{
  v2 = +[RBJetsamPropertyManager _taskLimit];
  v3 = +[RBJetsamPropertyManager _taskLimit];
  v4 = MEMORY[0x277CBEC10];

  return [RBJetsamProperties jetsamPropertiesForProperties:&unk_28751B090 globalProperties:v4 taskLimit:v2 unLimit:v3];
}

+ (id)unmanagedJetsamProperties
{
  v2 = +[RBJetsamPropertyManager _taskLimit];
  v3 = +[RBJetsamPropertyManager _taskLimit];
  v4 = MEMORY[0x277CBEC10];

  return [RBJetsamProperties jetsamPropertiesForProperties:&unk_28751B0B8 globalProperties:v4 taskLimit:v2 unLimit:v3];
}

- (__CFString)_jetsamTargetType
{
  v31 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_4_3();
    v6 = sysctlbyname(v1, v2, v3, v4, v5);
    if (v6)
    {
      v7 = rbs_jetsam_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v17 = *__error();
        v18 = __error();
        v19 = strerror(*v18);
        *buf = 67109890;
        v23 = v6;
        v24 = 2048;
        v25 = 16;
        v26 = 1024;
        v27 = v17;
        v28 = 2080;
        v29 = v19;
        _os_log_error_impl(&dword_262485000, v7, OS_LOG_TYPE_ERROR, "SyscallError: getJetsamPriorityBandFromSystem getJetsamPropertyInfo sysctlbyname, try 1 -> %d, %zu, %d (%s)", buf, 0x22u);
      }
    }

    if (v6)
    {
      goto LABEL_7;
    }

    if (*__error() == 12)
    {
      OUTLINED_FUNCTION_4_3();
      v14 = sysctlbyname(v9, v10, v11, v12, v13);
      if (v14)
      {
        v15 = v14;
        v16 = rbs_jetsam_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109376;
          v23 = v15;
          v24 = 2048;
          v25 = 16;
          _os_log_error_impl(&dword_262485000, v16, OS_LOG_TYPE_ERROR, "SyscallError: getJetsamPriorityBandFromSystem getJetsamPropertyInfo sysctlbyname, try 2 -> %d, %zu", buf, 0x12u);
        }

LABEL_7:
        v8 = &stru_287507640;
        goto LABEL_14;
      }
    }

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v30];
  }

  else
  {
    v8 = 0;
  }

LABEL_14:
  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_jetsamTryPath:(void *)a3 target:(void *)a4 extension:
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v10 = [[v6 alloc] initWithFormat:@"%@.%@.%@", v9, v8, v7];

    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v10];
    if (v11)
    {
      v12 = rbs_jetsam_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&dword_262485000, v12, OS_LOG_TYPE_DEFAULT, "Loaded jetsamproperties from %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_jetsamTryBasePath:(void *)a3 target:(void *)a4 extension:
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = [(RBJetsamPropertyManager *)a1 _jetsamTryPath:v7 target:a3 extension:v8];
    if (!v9)
    {
      v9 = [(RBJetsamPropertyManager *)a1 _jetsamTryPath:v7 target:@"NonUI" extension:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_loadJetsamProperties
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [(RBJetsamPropertyManager *)a1 _jetsamTargetType];
    is_darwinos = os_variant_is_darwinos();
    v4 = @"plist";
    if (is_darwinos)
    {
      v4 = @"darwin.plist";
    }

    v5 = v4;
    if (os_variant_has_internal_content() && ([(RBJetsamPropertyManager *)a1 _jetsamTryBasePath:v2 target:v5 extension:?], (v6 = objc_claimAutoreleasedReturnValue()) != 0) || ([(RBJetsamPropertyManager *)a1 _jetsamTryBasePath:v2 target:v5 extension:?], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
    }

    else
    {
      v10 = rbs_jetsam_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        has_internal_content = os_variant_has_internal_content();
        v12 = @"/AppleInternal/Library/LaunchDaemons/com.apple.jetsamproperties";
        if (!has_internal_content)
        {
          v12 = @"/System/Library/LaunchDaemons/com.apple.jetsamproperties";
        }

        v13 = v12;
        v14 = 138412802;
        v15 = v13;
        v16 = 2112;
        v17 = v2;
        v18 = 2112;
        v19 = v5;
        _os_log_error_impl(&dword_262485000, v10, OS_LOG_TYPE_ERROR, "Can't find jetsamproperties ('%@' | '%@' | '%@')", &v14, 0x20u);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_isNotValidProperties:(_BOOL8)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v4 count]))
    {
      objc_opt_class();
      a1 = (objc_opt_isKindOfClass() & 1) != 0 && [v4 unsignedLongLongValue] == 0;
    }

    else
    {
      a1 = 1;
    }
  }

  return a1;
}

- (void)_prepareJetsamData:(id *)a1
{
  v124 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v101 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v100 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v3)
    {
      v11 = RBSDictionaryForKey();

      if (v11)
      {
        v15 = OUTLINED_FUNCTION_2_6();
        [(RBJetsamPropertyManager *)v15 _addJetsamValuesForSection:v16 fromPlist:v17 toDatabase:v4];
        v18 = [v4 objectForKeyedSubscript:@"Global"];
        v19 = a1[7];
        a1[7] = v18;

        if ([(RBJetsamPropertyManager *)a1 _isNotValidProperties:?])
        {
          v20 = a1[7];
          a1[7] = &unk_28751B040;
        }

        v21 = OUTLINED_FUNCTION_2_6();
        [(RBJetsamPropertyManager *)v21 _addJetsamValuesForSection:v22 fromPlist:v23 toDatabase:v5];
        v24 = [v5 objectForKeyedSubscript:@"Global"];
        v25 = a1[9];
        a1[9] = v24;

        if ([(RBJetsamPropertyManager *)a1 _isNotValidProperties:?])
        {
          v26 = a1[9];
          a1[9] = &unk_28751B040;
        }

        v27 = OUTLINED_FUNCTION_2_6();
        [(RBJetsamPropertyManager *)v27 _addJetsamValuesForSection:v28 fromPlist:v29 toDatabase:v6];
        v30 = [v6 objectForKeyedSubscript:@"Global"];
        v31 = a1[11];
        a1[11] = v30;

        if ([(RBJetsamPropertyManager *)a1 _isNotValidProperties:?])
        {
          v32 = a1[11];
          a1[11] = &unk_28751B040;
        }

        v33 = OUTLINED_FUNCTION_2_6();
        [(RBJetsamPropertyManager *)v33 _addJetsamValuesForSection:v34 fromPlist:v35 toDatabase:v101];
        v36 = [v101 objectForKeyedSubscript:@"Global"];
        v37 = a1[3];
        a1[3] = v36;

        if ([(RBJetsamPropertyManager *)a1 _isNotValidProperties:?])
        {
          v38 = a1[3];
          a1[3] = &unk_28751B040;
        }

        v39 = OUTLINED_FUNCTION_2_6();
        [(RBJetsamPropertyManager *)v39 _addJetsamValuesForSection:v40 fromPlist:v41 toDatabase:v100];
        v42 = [v100 objectForKeyedSubscript:@"Global"];
        v43 = a1[5];
        a1[5] = v42;

        if ([(RBJetsamPropertyManager *)a1 _isNotValidProperties:?])
        {
          v44 = a1[5];
          a1[5] = &unk_28751B040;
        }

        v45 = OUTLINED_FUNCTION_2_6();
        [(RBJetsamPropertyManager *)v45 _addJetsamValuesForSection:v46 fromPlist:v47 toDatabase:v7];
        v48 = [v7 objectForKeyedSubscript:@"Global"];
        v49 = a1[13];
        a1[13] = v48;

        if ([(RBJetsamPropertyManager *)a1 _isNotValidProperties:?])
        {
          v50 = a1[13];
          a1[13] = &unk_28751B040;
        }

        v51 = OUTLINED_FUNCTION_2_6();
        [(RBJetsamPropertyManager *)v51 _addJetsamValuesForSection:v52 fromPlist:v53 toDatabase:v8];
        v54 = [v8 objectForKeyedSubscript:@"Global"];
        v55 = a1[15];
        a1[15] = v54;

        if ([(RBJetsamPropertyManager *)a1 _isNotValidProperties:?])
        {
          v56 = a1[15];
          a1[15] = &unk_28751B040;
        }

        v57 = OUTLINED_FUNCTION_2_6();
        [(RBJetsamPropertyManager *)v57 _addJetsamValuesForSection:v58 fromPlist:v59 toDatabase:v9];
        v60 = [v9 objectForKeyedSubscript:@"Global"];
        v61 = a1[19];
        a1[19] = v60;

        if ([(RBJetsamPropertyManager *)a1 _isNotValidProperties:?])
        {
          v62 = a1[19];
          a1[19] = &unk_28751B040;
        }

        v63 = OUTLINED_FUNCTION_2_6();
        [(RBJetsamPropertyManager *)v63 _addJetsamValuesForSection:v64 fromPlist:v65 toDatabase:v10];
        v66 = [v10 objectForKeyedSubscript:@"Global"];
        v67 = a1[17];
        a1[17] = v66;

        if ([(RBJetsamPropertyManager *)a1 _isNotValidProperties:?])
        {
          v68 = a1[17];
          a1[17] = &unk_28751B040;
        }

        v69 = [v101 copy];
        v70 = a1[2];
        a1[2] = v69;

        v71 = [v100 copy];
        v72 = a1[4];
        a1[4] = v71;

        v73 = [v4 copy];
        v74 = a1[6];
        a1[6] = v73;

        v75 = [v5 copy];
        v76 = a1[8];
        a1[8] = v75;

        v77 = [v6 copy];
        v78 = a1[10];
        a1[10] = v77;

        v79 = [v7 copy];
        v80 = a1[12];
        a1[12] = v79;

        v81 = [v8 copy];
        v82 = a1[14];
        a1[14] = v81;

        v83 = [v9 copy];
        v84 = a1[18];
        a1[18] = v83;

        v85 = [v10 copy];
        v86 = a1[16];
        a1[16] = v85;

        v12 = rbs_jetsam_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v99 = [a1[2] count];
          v98 = [a1[4] count];
          v97 = [a1[6] count];
          v96 = [a1[8] count];
          v95 = [a1[10] count];
          v94 = [a1[12] count];
          v93 = [a1[14] count];
          v92 = [a1[18] count];
          v91 = [a1[16] count];
          v89 = [a1[2] count];
          v90 = [a1[4] count] + v89;
          [a1[6] count];
          [a1[8] count];
          OUTLINED_FUNCTION_7_2();
          [a1[10] count];
          [a1[12] count];
          [a1[14] count];
          OUTLINED_FUNCTION_7_2();
          v88 = [a1[18] count];
          v87 = [a1[16] count];
          *buf = 134220544;
          v103 = v99;
          v104 = 2048;
          v105 = v98;
          v106 = 2048;
          v107 = v97;
          v108 = 2048;
          v109 = v96;
          v110 = 2048;
          v111 = v95;
          v112 = 2048;
          v113 = v94;
          v114 = 2048;
          v115 = v93;
          v116 = 2048;
          v117 = 0;
          v118 = 2048;
          v119 = v92;
          v120 = 2048;
          v121 = v91;
          v122 = 2048;
          v123 = v90 + v88 + v87;
          _os_log_impl(&dword_262485000, v12, OS_LOG_TYPE_DEFAULT, "Jetsam Properties Loaded x:%lu xs:%lu e:%lu ei:%lu ee:%lu a:%lu as:%lu ai:%lu g:%lu d:%lu T:%lu", buf, 0x70u);
        }

        goto LABEL_8;
      }

      v12 = rbs_jetsam_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v13 = "Jetsam database parse error !(Version4)";
LABEL_31:
        _os_log_fault_impl(&dword_262485000, v12, OS_LOG_TYPE_FAULT, v13, buf, 2u);
      }
    }

    else
    {
      v12 = rbs_jetsam_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v13 = "Unable to load jetsam database!";
        goto LABEL_31;
      }
    }

    v11 = 0;
LABEL_8:

    v3 = v11;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_addJetsamValuesForSection:(void *)a3 fromPlist:(void *)a4 toDatabase:
{
  v41 = *MEMORY[0x277D85DE8];
  v28 = a2;
  v7 = a3;
  v26 = a1;
  v27 = a4;
  if (a1)
  {
    if (!v7)
    {
      v22 = [MEMORY[0x277CCA890] currentHandler];
      [v22 handleFailureInMethod:sel__addJetsamValuesForSection_fromPlist_toDatabase_ object:a1 file:@"RBJetsamPropertyManager.m" lineNumber:413 description:{@"Invalid parameter not satisfying: %@", @"plist != nil"}];
    }

    if (!v27)
    {
      v23 = [MEMORY[0x277CCA890] currentHandler];
      [v23 handleFailureInMethod:sel__addJetsamValuesForSection_fromPlist_toDatabase_ object:a1 file:@"RBJetsamPropertyManager.m" lineNumber:414 description:{@"Invalid parameter not satisfying: %@", @"database != nil"}];
    }

    v8 = RBSDictionaryForKey();
    if ([v8 count])
    {
      v9 = RBSDictionaryForKey();
      if ([v9 count])
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v11)
        {
          v12 = v11;
          v24 = v9;
          v25 = v8;
          v13 = *v35;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v35 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v34 + 1) + 8 * i);
              v16 = RBSDictionaryForKey();
              if (v16)
              {
                v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
                v29[0] = MEMORY[0x277D85DD0];
                v29[1] = 3221225472;
                v29[2] = __75__RBJetsamPropertyManager__addJetsamValuesForSection_fromPlist_toDatabase___block_invoke;
                v29[3] = &unk_279B336B8;
                v18 = v16;
                v30 = v18;
                v19 = v17;
                v31 = v19;
                v32 = v28;
                v33 = v15;
                [v18 enumerateKeysAndObjectsUsingBlock:v29];
                if ([v19 count])
                {
                  v20 = [(RBJetsamPropertyManager *)v26 _encodedValue:v19];
                  [v27 setValue:v20 forKey:v15];
                }
              }

              else
              {
                v19 = rbs_jetsam_log();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v40 = v15;
                  _os_log_error_impl(&dword_262485000, v19, OS_LOG_TYPE_ERROR, "Jetsam database entry for %@ not a dictionary, skipping", buf, 0xCu);
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
          }

          while (v12);
          v8 = v25;
          v9 = v24;
        }
      }

      else
      {
        v10 = rbs_jetsam_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_262485000, v10, OS_LOG_TYPE_ERROR, "Jetsam database parse error !(Override)", buf, 2u);
        }
      }
    }

    else
    {
      v9 = rbs_jetsam_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = v28;
        _os_log_error_impl(&dword_262485000, v9, OS_LOG_TYPE_ERROR, "Jetsam database parse error: no section found for %@", buf, 0xCu);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_encodedValue:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 count];
    v6 = [v4 valueForKey:@"ActiveHardMemoryLimit"];
    OUTLINED_FUNCTION_5_2();
    v8 = v5 - v7;
    v9 = [v4 valueForKey:@"ActiveSoftMemoryLimit"];
    OUTLINED_FUNCTION_5_2();
    v11 = v8 - v10;
    v12 = [v4 valueForKey:@"InactiveHardMemoryLimit"];
    OUTLINED_FUNCTION_5_2();
    v14 = v11 - v13;
    v15 = [v4 valueForKey:@"InactiveSoftMemoryLimit"];
    OUTLINED_FUNCTION_5_2();
    if (v14 == v16)
    {
      if (!v6 || v9)
      {
        if (v6 || !v9)
        {
          v17 = 0;
          if (v6 && v9)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v17 = (([v9 unsignedLongLongValue] & 0x3FFFFFFF) << 32) | 0x8000000000000000;
        }
      }

      else
      {
        v17 = ([v6 unsignedLongLongValue] << 32) | 0xC000000000000000;
      }

      if (v12 && !v15)
      {
        v18 = 3221225472;
        v19 = v12;
LABEL_15:
        v20 = [v19 unsignedLongLongValue] & 0x3FFFFFFF | v18;
LABEL_16:
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20 | v17];
LABEL_23:
        v22 = v21;

        goto LABEL_24;
      }

      if (!v12 && v15)
      {
        v18 = 0x80000000;
        v19 = v15;
        goto LABEL_15;
      }

      v20 = 0;
      if (!v12 || !v15)
      {
        goto LABEL_16;
      }
    }

LABEL_22:
    v21 = [v4 copy];
    goto LABEL_23;
  }

  v22 = 0;
LABEL_24:

  return v22;
}

- (RBJetsamPropertyManager)initWithEntitlementManager:(id)a3
{
  v4 = a3;
  v5 = [(RBJetsamPropertyManager *)self _loadJetsamProperties];
  v6 = [(RBJetsamPropertyManager *)self initWithEntitlementManager:v4 properties:v5];

  return v6;
}

- (uint64_t)_taskLimitForProcess:(uint64_t)a1
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_4_3();
    v1 = memorystatus_control();
    if (v1 <= 0)
    {
      v2 = rbs_jetsam_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v5 = *__error();
        v6 = __error();
        strerror(*v6);
        OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_1_8(&dword_262485000, v7, v8, "memorystatus_control error: MEMORYSTATUS_CMD_CONVERT_MEMLIMIT_MB(-1) returned %d %d (%s)", v9, v10, v11, v12, v13);
      }

      v1 = +[RBJetsamPropertyManager _taskLimit];
    }
  }

  else
  {
    v1 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

- (uint64_t)_unLimitForProcess:(uint64_t)a1
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    OUTLINED_FUNCTION_4_3();
    v1 = memorystatus_control();
    if (v1 <= 0)
    {
      v2 = rbs_jetsam_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v5 = *__error();
        v6 = __error();
        strerror(*v6);
        OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_1_8(&dword_262485000, v7, v8, "memorystatus_control error: MEMORYSTATUS_CMD_CONVERT_MEMLIMIT_MB(0) returned %d %d (%s)", v9, v10, v11, v12, v13);
      }

      v1 = +[RBJetsamPropertyManager _taskLimit];
    }
  }

  else
  {
    v1 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

- (id)_jetsamPropertiesForProcess:(void *)a3 identifier:(void *)a4 properties:(void *)a5 global:
{
  if (a1)
  {
    v8 = a5;
    v9 = a4;
    v10 = a3;
    v11 = [RBJetsamPropertyManager _taskLimitForProcess:a1];
    v12 = [RBJetsamPropertyManager _unLimitForProcess:a1];
    v13 = [v9 valueForKey:v10];

    v14 = [v13 copy];
    v15 = [RBJetsamProperties jetsamPropertiesForProperties:v14 globalProperties:v8 taskLimit:v11 unLimit:v12];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_jetsamPropertiesForAppProcess:(uint64_t)a1 identity:(uint64_t)a2 bundleProperties:(uint64_t)a3 isPlatformBinary:(uint64_t)a4
{
  if (a1)
  {
    v6 = [OUTLINED_FUNCTION_6_2(a1 a2];
    v7 = [*(v4 + 112) valueForKey:v6];

    if (v7)
    {
      v9 = 120;
    }

    else
    {
      v8 = [*(v4 + 96) valueForKey:v6];

      v9 = 104;
      v10 = 104;
      if (v5)
      {
        v10 = 120;
      }

      if (!v8)
      {
        v9 = v10;
      }
    }

    v11 = OUTLINED_FUNCTION_3_2(v9);
    v16 = [(RBJetsamPropertyManager *)v11 _jetsamPropertiesForProcess:v12 identifier:v13 properties:v14 global:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_jetsamPropertiesForDaemonProcess:(uint64_t)a1 identity:(uint64_t)a2 bundleProperties:(void *)a3
{
  if (a1)
  {
    v5 = [a3 consistentLaunchdJobLabel];
    v6 = [(RBJetsamPropertyManager *)a1 _jetsamPropertiesForProcess:a2 identifier:v5 properties:*(a1 + 128) global:*(a1 + 136)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_jetsamPropertiesForAngelProcess:(uint64_t)a1 identity:(uint64_t)a2 bundleProperties:(void *)a3
{
  if (a1)
  {
    v5 = [a3 consistentLaunchdJobLabel];
    v6 = [(RBJetsamPropertyManager *)a1 _jetsamPropertiesForProcess:a2 identifier:v5 properties:*(a1 + 144) global:*(a1 + 152)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_jetsamPropertiesForExtensionProcess:(void *)a3 identity:(void *)a4 bundleProperties:
{
  v7 = a4;
  if (a1)
  {
    v8 = [a3 isExternal];
    v9 = [v7 extensionPointIdentifier];
    v10 = 48;
    if (v8)
    {
      v10 = 80;
    }

    v11 = 56;
    if (v8)
    {
      v11 = 88;
    }

    v12 = [(RBJetsamPropertyManager *)a1 _jetsamPropertiesForProcess:a2 identifier:v9 properties:*(a1 + v10) global:*(a1 + v11)];

    v13 = [v7 bundleIdentifier];
    v14 = [(RBJetsamPropertyManager *)a1 _jetsamPropertiesForProcess:a2 identifier:v13 properties:*(a1 + 64) global:*(a1 + 72)];

    v15 = *(a1 + 64);
    v16 = [v7 bundleIdentifier];
    v17 = [v15 objectForKey:v16];

    if (v17)
    {
      [v12 overrideMemoryLimitCategoriesWithProperties:v14];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_jetsamPropertiesForServiceProcess:(uint64_t)a1 identity:(uint64_t)a2 bundleProperties:(uint64_t)a3 isPlatformBinary:(uint64_t)a4
{
  if (a1)
  {
    v6 = [OUTLINED_FUNCTION_6_2(a1 a2];
    v7 = [*(v4 + 32) valueForKey:v6];

    if (v7)
    {
      v9 = 40;
    }

    else
    {
      v8 = [*(v4 + 16) valueForKey:v6];

      v9 = 24;
      v10 = 24;
      if (v5)
      {
        v10 = 40;
      }

      if (!v8)
      {
        v9 = v10;
      }
    }

    v11 = OUTLINED_FUNCTION_3_2(v9);
    v16 = [(RBJetsamPropertyManager *)v11 _jetsamPropertiesForProcess:v12 identifier:v13 properties:v14 global:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_jetsamPropertiesWithTaskLimit:(void *)a1
{
  if (a1)
  {
    a1 = [RBJetsamProperties jetsamPropertiesForProperties:&unk_28751B068 globalProperties:MEMORY[0x277CBEC10] taskLimit:a2 unLimit:a2];
    v2 = vars8;
  }

  return a1;
}

void __37__RBJetsamPropertyManager__taskLimit__block_invoke_cold_1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_8(&dword_262485000, v2, v3, "SyscallError: kern.max_task_pmem %d %d (%s)", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __75__RBJetsamPropertyManager__addJetsamValuesForSection_fromPlist_toDatabase___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Jetsam database entry for %@ not a number, skipping", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)jetsamPropertiesForProcess:(uint64_t)a1 identity:(NSObject *)a2 bundleProperties:isPlatformBinary:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_262485000, a2, OS_LOG_TYPE_DEBUG, "Unknown process type for %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)testTaskLimitForPid:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_8(&dword_262485000, v2, v3, "memorystatus_control error: MEMORYSTATUS_CMD_CONVERT_MEMLIMIT_MB(-1) returned %d %d (%s)", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

@end