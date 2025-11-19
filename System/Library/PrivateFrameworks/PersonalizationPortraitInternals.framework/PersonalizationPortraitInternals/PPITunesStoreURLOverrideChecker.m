@interface PPITunesStoreURLOverrideChecker
- (PPITunesStoreURLOverrideChecker)init;
- (PPITunesStoreURLOverrideChecker)initWithPlistPaths:(id)a3 isAppAvailableToOpenURLBlock:(id)a4;
- (PPITunesStoreURLOverrideChecker)initWithPropertyList:(id)a3 isAppAvailableToOpenURLBlock:(id)a4;
- (id)_compiledPattern:(uint64_t)a1;
- (id)overrideForURL:(id)a3;
@end

@implementation PPITunesStoreURLOverrideChecker

- (PPITunesStoreURLOverrideChecker)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.MobileCoreServices"];
  v4 = [v3 pathForResource:@"iTunesStoreURLPatterns" ofType:@"plist"];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [&unk_284785328 arrayByAddingObject:v4];
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v6 = &unk_284785328;
  }

  v7 = [(PPITunesStoreURLOverrideChecker *)self initWithPlistPaths:v6 isAppAvailableToOpenURLBlock:&__block_literal_global_11518];

  return v7;
}

- (id)overrideForURL:(id)a3
{
  v91 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v4 resolvingAgainstBaseURL:1];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  failedHosts = self->_failedHosts;
  v10 = [v8 host];
  LOBYTE(failedHosts) = [(NSMutableSet *)failedHosts containsObject:v10];

  if (failedHosts)
  {
    v11 = 0;
    goto LABEL_109;
  }

  v12 = [(NSDictionary *)self->_propertyList objectForKeyedSubscript:@"p2-url-resolution"];
  objc_opt_class();
  v86 = v12;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_107;
  }

  context = objc_autoreleasePoolPush();
  v82 = objc_opt_new();
  v87 = objc_opt_new();
  v77 = objc_opt_new();
  v80 = objc_opt_new();
  v13 = [v8 scheme];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_284759D38;
  }

  v88 = v15;

  v16 = [v8 host];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_284759D38;
  }

  v83 = v18;

  v19 = v8;
  location = [v19 rangeOfPath];
  length = v21;
  v75 = v8;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277CCA890] currentHandler];
    v64 = self;
    v65 = v19;
    v67 = v66 = v4;
    v94.location = 0x7FFFFFFFFFFFFFFFLL;
    v94.length = length;
    v68 = NSStringFromRange(v94);
    [v67 handleFailureInMethod:sel__pathAndQueryForURLComponents_ object:v64 file:@"PPITunesStoreURLOverrideChecker.m" lineNumber:122 description:{@"-[NSURLComponents pathRange] should never return an NSNotFound range, but got %@", v68}];

    v4 = v66;
    v19 = v65;
    self = v64;
  }

  v23 = [v19 rangeOfQuery];
  if (v23 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v95.location = v23;
    v95.length = v24;
    v93.location = location;
    v93.length = length;
    v25 = NSUnionRange(v93, v95);
    location = v25.location;
    length = v25.length;
  }

  v26 = [v19 string];
  v27 = [v26 substringWithRange:{location, length}];

  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = &stru_284759D38;
  }

  v76 = v28;

  v29 = v86;
  v30 = [v86 count];
  if (!v30)
  {
    goto LABEL_102;
  }

  v31 = v30;
  v71 = v19;
  v84 = self;
  v32 = 0;
  v33 = 1;
  v34 = 0x277CBE000uLL;
  v79 = 1;
  v85 = v30;
  while (1)
  {
    v35 = [v29 objectAtIndexedSubscript:v32];
    v36 = *(v34 + 2752);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v37 = pp_default_log_handle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v90 = v35;
        _os_log_fault_impl(&dword_23224A000, v37, OS_LOG_TYPE_FAULT, "expected NSDictionary, got %@", buf, 0xCu);
      }

      goto LABEL_37;
    }

    v37 = [v35 objectForKeyedSubscript:@"scheme-mapping"];
    v38 = *(v34 + 2752);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v40 = pp_default_log_handle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v90 = v37;
        _os_log_fault_impl(&dword_23224A000, v40, OS_LOG_TYPE_FAULT, "expected NSDictionary, got %@", buf, 0xCu);
      }

      v34 = 0x277CBE000;
      goto LABEL_37;
    }

    v39 = [v37 objectForKeyedSubscript:v88];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v39)
      {
        v41 = pp_default_log_handle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v90 = v39;
          _os_log_fault_impl(&dword_23224A000, v41, OS_LOG_TYPE_FAULT, "expected NSString, got %@", buf, 0xCu);
        }

        v34 = 0x277CBE000;
      }

      goto LABEL_36;
    }

    if (([(NSMutableSet *)v84->_failedSchemes containsObject:v39]& 1) == 0)
    {
      break;
    }

    v79 = 0;
LABEL_36:

LABEL_37:
LABEL_38:
    v33 = ++v32 < v31;
    if (v32 == v31)
    {
      if ((v79 & 1) == 0)
      {
LABEL_105:
        v33 = 0;
        goto LABEL_106;
      }

      self = v84;
LABEL_102:
      if ([(NSMutableSet *)self->_failedHosts count]>= 0x40)
      {
        [(NSMutableSet *)self->_failedHosts removeAllObjects];
      }

      [(NSMutableSet *)self->_failedHosts addObject:v83];
      goto LABEL_105;
    }
  }

  v42 = [v35 objectForKeyedSubscript:@"host-patterns"];
  objc_opt_class();
  v78 = v39;
  v81 = v42;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v50 = pp_default_log_handle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v90 = v81;
      _os_log_fault_impl(&dword_23224A000, v50, OS_LOG_TYPE_FAULT, "expected NSArray, got %@", buf, 0xCu);
    }

    v51 = 1;
    goto LABEL_97;
  }

  v43 = [v42 count];
  if (!v43)
  {
    v51 = 1;
    goto LABEL_98;
  }

  v44 = v42;
  v45 = v43;
  v46 = 0;
  v72 = v4;
  while (2)
  {
    v47 = [v44 objectAtIndexedSubscript:v46];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v48 = pp_default_log_handle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v90 = v47;
        _os_log_fault_impl(&dword_23224A000, v48, OS_LOG_TYPE_FAULT, "expected NSString, got %@", buf, 0xCu);
      }

      goto LABEL_56;
    }

    if (![v47 length])
    {
      goto LABEL_63;
    }

    if ([v87 containsObject:v47])
    {
      goto LABEL_57;
    }

    if ([v82 containsObject:v47])
    {
      goto LABEL_63;
    }

    v48 = [(PPITunesStoreURLOverrideChecker *)v84 _compiledPattern:v47];
    if (!v48)
    {
      v49 = pp_default_log_handle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v90 = v47;
        _os_log_fault_impl(&dword_23224A000, v49, OS_LOG_TYPE_FAULT, "failed to compile pattern: %@", buf, 0xCu);
      }

      v4 = v72;
      goto LABEL_55;
    }

    v44 = v81;
    if ([v48 rangeOfFirstMatchInString:v83 options:0 range:0, [(__CFString *)v83 length]]== 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_55:
      [v87 addObject:v47];
LABEL_56:

      v31 = v85;
LABEL_57:

      if (v45 == ++v46)
      {
        v51 = 1;
        v29 = v86;
        v34 = 0x277CBE000;
        goto LABEL_98;
      }

      continue;
    }

    break;
  }

  [v82 addObject:v47];

  v79 = 0;
  v31 = v85;
LABEL_63:

  v50 = [v35 objectForKeyedSubscript:@"path-patterns"];
  objc_opt_class();
  v29 = v86;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v57 = pp_default_log_handle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v90 = v50;
      _os_log_fault_impl(&dword_23224A000, v57, OS_LOG_TYPE_FAULT, "expected NSArray, got %@", buf, 0xCu);
    }

    v51 = 1;
    goto LABEL_95;
  }

  v69 = [v50 count];
  if (!v69)
  {
    v51 = 1;
    goto LABEL_96;
  }

  v70 = 0;
  v52 = 0;
  v53 = v69;
  while (2)
  {
    v54 = [v50 objectAtIndexedSubscript:v52];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v55 = pp_default_log_handle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v90 = v54;
        _os_log_fault_impl(&dword_23224A000, v55, OS_LOG_TYPE_FAULT, "expected NSString, got %@", buf, 0xCu);
      }

      goto LABEL_73;
    }

    if (![v54 length])
    {
      goto LABEL_70;
    }

    if (([v80 containsObject:v54] & 1) == 0)
    {
      if ([v77 containsObject:v54])
      {
LABEL_70:
        v70 = 1;
        goto LABEL_74;
      }

      v55 = [(PPITunesStoreURLOverrideChecker *)v84 _compiledPattern:v54];
      if (v55)
      {
        v53 = v69;
        if ([v55 rangeOfFirstMatchInString:v76 options:0 range:0, [(__CFString *)v76 length]]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          [v77 addObject:v54];
          v70 = 1;
          goto LABEL_73;
        }
      }

      else
      {
        v56 = pp_default_log_handle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v90 = v54;
          _os_log_fault_impl(&dword_23224A000, v56, OS_LOG_TYPE_FAULT, "failed to compile pattern: %@", buf, 0xCu);
        }

        v4 = v72;
      }

      [v80 addObject:v54];
LABEL_73:

      v29 = v86;
    }

LABEL_74:

    if (v53 != ++v52)
    {
      continue;
    }

    break;
  }

  if (v70)
  {
    v58 = v78;
    if (([(NSMutableSet *)v84->_supportedSchemes containsObject:v78]& 1) != 0)
    {
      goto LABEL_90;
    }

    v57 = objc_opt_new();
    [v57 setScheme:v78];
    isAppAvailableToOpenURLBlock = v84->_isAppAvailableToOpenURLBlock;
    v60 = [v57 URL];
    LODWORD(isAppAvailableToOpenURLBlock) = isAppAvailableToOpenURLBlock[2](isAppAvailableToOpenURLBlock, v60);

    if (isAppAvailableToOpenURLBlock)
    {
      v58 = v78;
      [(NSMutableSet *)v84->_supportedSchemes addObject:v78];

      v29 = v86;
LABEL_90:
      v57 = [v71 copy];
      v61 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v58];
      [v57 setScheme:v61];

      v73 = [v57 URL];
      v51 = 0;
    }

    else
    {
      [(NSMutableSet *)v84->_failedSchemes addObject:v78];
      v51 = 1;
      v29 = v86;
    }

    v31 = v85;
LABEL_95:
  }

  else
  {
    v51 = 1;
    v31 = v85;
  }

LABEL_96:
  v34 = 0x277CBE000;
LABEL_97:

LABEL_98:
  if (v51)
  {
    goto LABEL_38;
  }

LABEL_106:

  objc_autoreleasePoolPop(context);
  v8 = v75;
  v11 = v73;
  if (!v33)
  {
LABEL_107:
    v11 = 0;
  }

LABEL_109:
  v62 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_compiledPattern:(uint64_t)a1
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 24) objectForKeyedSubscript:v3];
    if (!v4)
    {
      v9 = 0;
      v4 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:v3 options:1 error:&v9];
      v5 = v9;
      if (v4)
      {
        if ([*(a1 + 24) count] >= 0x10)
        {
          [*(a1 + 24) removeAllObjects];
        }

        [*(a1 + 24) setObject:v4 forKeyedSubscript:v3];
      }

      else
      {
        v6 = pp_default_log_handle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v11 = v3;
          v12 = 2112;
          v13 = v5;
          _os_log_fault_impl(&dword_23224A000, v6, OS_LOG_TYPE_FAULT, "failed to compile pattern %@: %@", buf, 0x16u);
        }

        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (PPITunesStoreURLOverrideChecker)initWithPropertyList:(id)a3 isAppAvailableToOpenURLBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = PPITunesStoreURLOverrideChecker;
  v9 = [(PPITunesStoreURLOverrideChecker *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_propertyList, a3);
    v11 = [v8 copy];
    isAppAvailableToOpenURLBlock = v10->_isAppAvailableToOpenURLBlock;
    v10->_isAppAvailableToOpenURLBlock = v11;

    v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:16];
    compiledPatterns = v10->_compiledPatterns;
    v10->_compiledPatterns = v13;

    v15 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
    supportedSchemes = v10->_supportedSchemes;
    v10->_supportedSchemes = v15;

    v17 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:4];
    failedSchemes = v10->_failedSchemes;
    v10->_failedSchemes = v17;

    v19 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:64];
    failedHosts = v10->_failedHosts;
    v10->_failedHosts = v19;
  }

  return v10;
}

- (PPITunesStoreURLOverrideChecker)initWithPlistPaths:(id)a3 isAppAvailableToOpenURLBlock:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    v9 = 0x277D42000uLL;
LABEL_3:
    v10 = 0;
    v28 = v7;
    while (1)
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v31 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      v13 = [v11 stringByExpandingTildeInPath];
      v14 = *(v9 + 1504);
      v30 = 0;
      v15 = [v14 dictionaryWithPath:v13 error:&v30];
      v16 = v30;
      if (!v15)
      {
        v17 = v8;
        v18 = v9;
        v19 = objc_autoreleasePoolPush();
        v20 = pp_default_log_handle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v36 = v16;
          v37 = 2112;
          v38 = v13;
          _os_log_error_impl(&dword_23224A000, v20, OS_LOG_TYPE_ERROR, "got error %@ while creating lazy plist context for path %@", buf, 0x16u);
        }

        v15 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v13];
        if (!v15)
        {
          v21 = objc_autoreleasePoolPush();
          v22 = pp_default_log_handle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v36 = v13;
            _os_log_error_impl(&dword_23224A000, v22, OS_LOG_TYPE_ERROR, "failed to load plist at path %@ using Foundation fallback", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v21);
        }

        objc_autoreleasePoolPop(v19);
        v9 = v18;
        v8 = v17;
        v7 = v28;
      }

      objc_autoreleasePoolPop(v12);
      if (v15)
      {
        break;
      }

      if (v7 == ++v10)
      {
        v7 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v15 = MEMORY[0x277CBEC10];
  }

  v23 = [(PPITunesStoreURLOverrideChecker *)self initWithPropertyList:v15 isAppAvailableToOpenURLBlock:v26];
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t __39__PPITunesStoreURLOverrideChecker_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CC1E80];
  v3 = a2;
  v4 = [v2 defaultWorkspace];
  v5 = [v4 isApplicationAvailableToOpenURL:v3 error:0];

  return v5;
}

@end