@interface RBXPCBundleProperties
- (RBXPCBundleProperties)initWithPID:(int)a3;
- (id)bundleInfoValuesForKeys:(id)a3;
- (uint64_t)_bundleMatchesProcessWithExecutablePath:(void *)a3 bundleExecutablePath:;
@end

@implementation RBXPCBundleProperties

- (RBXPCBundleProperties)initWithPID:(int)a3
{
  v4 = [(RBXPCBundleProperties *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_pid = a3;
    v6 = RBSExecutablePathForPID();
    executablePath = v5->_executablePath;
    v5->_executablePath = v6;

    v8 = objc_opt_new();
    groupIdentifiers = v5->_groupIdentifiers;
    v5->_groupIdentifiers = v8;

    v10 = v5->_executablePath;
    if (v10)
    {
      [(NSString *)v10 UTF8String];
      v11 = xpc_bundle_create();
      executable_path = xpc_bundle_get_executable_path();
      if (executable_path)
      {
        executable_path = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:executable_path];
      }

      if (v11 && ([(RBXPCBundleProperties *)&v5->_executablePath initWithPID:v5, executable_path]& 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = 0;
      executable_path = 0;
    }

    v5->_canFetchBundle = 0;
    v13 = RBSBundleIDForPID();
    identifier = v5->_identifier;
    v5->_identifier = v13;

    v5->_preferredJetsamBand = -1;
LABEL_10:
  }

  return v5;
}

- (id)bundleInfoValuesForKeys:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v34 = a3;
  if ([v34 count])
  {
    if (self->_canFetchBundle)
    {
      v4 = self;
      objc_sync_enter(v4);
      if (!v4->_plistValues)
      {
        v5 = objc_alloc_init(MEMORY[0x277CBEA78]);
        plistValues = v4->_plistValues;
        v4->_plistValues = v5;

        [(NSCache *)v4->_plistValues setCountLimit:20];
      }

      v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v7 = [MEMORY[0x277CBEB98] setWithArray:v34];
      v36 = [v7 mutableCopy];
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = v7;
      v8 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v8)
      {
        v9 = *v43;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v43 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v42 + 1) + 8 * i);
            v12 = [(NSCache *)v4->_plistValues objectForKey:v11];
            if (v12)
            {
              v13 = [MEMORY[0x277CBEB68] null];
              v14 = v12 == v13;

              if (!v14)
              {
                [v37 setObject:v12 forKey:v11];
              }

              [v36 removeObject:v11];
            }
          }

          v8 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v8);
      }

      if ([v36 count])
      {
        pid = v4->_pid;
        v16 = RBSExecutablePathForPID();
        v33 = v16;
        if (v16 && (v17 = v16, [v33 UTF8String], (v18 = xpc_bundle_create()) != 0))
        {
          v32 = v18;
          v19 = xpc_bundle_get_info_dictionary();
          if (v19)
          {
            v20 = _CFXPCCreateCFObjectFromXPCObject();
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v32 = 0;
          v20 = 0;
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v22 = v36;
        v23 = [v22 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v23)
        {
          v24 = *v39;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v39 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v26 = *(*(&v38 + 1) + 8 * j);
              v27 = [v20 objectForKey:{v26, v32}];
              v28 = v4->_plistValues;
              if (v27)
              {
                [(NSCache *)v4->_plistValues setObject:v27 forKey:v26];
                [v37 setObject:v27 forKey:v26];
              }

              else
              {
                v29 = [MEMORY[0x277CBEB68] null];
                [(NSCache *)v28 setObject:v29 forKey:v26];
              }
            }

            v23 = [v22 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v23);
        }
      }

      objc_sync_exit(v4);
    }

    else
    {
      v4 = rbs_general_log();
      if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_INFO))
      {
        v21 = self->_pid;
        *buf = 67109120;
        v49 = v21;
        _os_log_impl(&dword_262485000, &v4->super, OS_LOG_TYPE_INFO, "Bundle info cannot be fetched for process %d", buf, 8u);
      }

      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v37;
}

- (uint64_t)_bundleMatchesProcessWithExecutablePath:(void *)a3 bundleExecutablePath:
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = a3;
    v5 = [a2 stringByStandardizingPath];
    v6 = [v4 stringByStandardizingPath];

    if ([v5 isEqual:v6])
    {
      v7 = 1;
    }

    else
    {
      v7 = realpath_DARWIN_EXTSN([v6 UTF8String], 0);
      if (v7)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
        free(v7);
        v9 = rbs_general_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138543618;
          v13 = v5;
          v14 = 2114;
          v15 = v8;
          _os_log_impl(&dword_262485000, v9, OS_LOG_TYPE_DEFAULT, "_bundleMatchesProcessWithExecutablePath using realpath and comparing %{public}@ and %{public}@", &v12, 0x16u);
        }

        if (v5 == v8)
        {
          v7 = 1;
        }

        else
        {
          v7 = 0;
          if (v5 && v8)
          {
            v7 = [v5 isEqualToString:v8];
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (uint64_t)initWithPID:(void *)a3 .cold.1(void **a1, uint64_t a2, void *a3)
{
  v4 = [(RBXPCBundleProperties *)a2 _bundleMatchesProcessWithExecutablePath:a3 bundleExecutablePath:?];
  result = 1;
  if (v4)
  {
    *(a2 + 24) = 1;
    v6 = xpc_bundle_get_info_dictionary();
    if (v6)
    {
      v7 = _CFXPCCreateCFObjectFromXPCObject();
      string = xpc_dictionary_get_string(v6, [*MEMORY[0x277CBED38] UTF8String]);
      if (string)
      {
        v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string];
        v10 = *(a2 + 48);
        *(a2 + 48) = v9;
      }
    }

    else
    {
      v7 = 0;
    }

    property = xpc_bundle_get_property();
    if (property)
    {
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:property];
      v13 = *(a2 + 56);
      *(a2 + 56) = v12;
    }

    v14 = RBSExtensionPointFromBundleDict();
    v15 = *(a2 + 72);
    *(a2 + 72) = v14;

    *(a2 + 32) = *(a2 + 72) != 0;
    v16 = [v7 objectForKeyedSubscript:@"UIBackgroundModes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
      if ([v17 containsObject:@"fetch"])
      {
        v18 = 1;
      }

      else
      {
        v18 = [v17 containsObject:@"remote-notification"];
      }

      *(a2 + 26) = v18;
      if ([v17 containsObject:@"voip"])
      {
        v19 = 1;
      }

      else
      {
        v19 = [v17 containsObject:@"push-to-talk"];
      }

      *(a2 + 30) = v19;
      *(a2 + 29) = [v17 containsObject:@"unboundedTaskCompletion"];
      *(a2 + 27) = [v17 containsObject:@"network-authentication"];
      *(a2 + 28) = [v17 containsObject:@"audio"];
      *(a2 + 31) = [v17 containsObject:@"continuous"];
    }

    v20 = [v7 objectForKeyedSubscript:@"SBPreferredPriorityBand"];
    if ([v20 isEqualToString:@"PriorityBandSuspended"])
    {
      *(a2 + 36) = 0;
    }

    else
    {
      if (![v20 isEqualToString:@"PriorityBandMail"])
      {
        v21 = 0;
        *(a2 + 36) = -1;
        goto LABEL_22;
      }

      *(a2 + 36) = 40;
    }

    v21 = 1;
LABEL_22:
    *(a2 + 25) = v21;

    return 0;
  }

  return result;
}

@end