@interface MBDomainManager
+ (id)_readDomainsFromPlist:(id)a3 accountType:(int64_t)a4 volumeMountPoint:(id)a5 error:(id *)a6;
- (BOOL)containsDomainName:(id)a3;
- (BOOL)isSystemDomainName:(id)a3;
- (MBDomainManager)initWithPersona:(id)a3;
- (MBDomainManager)initWithSystemDomains:(id)a3;
- (MBDomainManagerDelegate)delegate;
- (id)_initWithAccountType:(int64_t)a3 volumeMountPoint:(id)a4 plistPath:(id)a5 error:(id *)a6;
- (id)_initWithSystemDomains:(id)a3 versions:(id)a4;
- (id)allDomains;
- (id)domainForName:(id)a3;
- (id)domainForPath:(id)a3 relativePath:(id *)a4;
- (id)initForTestingWithDomains:(id)a3;
- (id)initForTestingWithPersona:(id)a3 systemDomainsPlistAtPath:(id)a4;
- (id)redirectDomain:(id)a3 forRelativePath:(id)a4;
- (void)_removeDomainsNotMatchingRegex:(id)a3;
- (void)addDomain:(id)a3;
- (void)addDomainsToBackUpToDriveWithAppManager:(id)a3;
- (void)addDomainsToBackUpToiCloudWithAppManager:(id)a3 manager:(id)a4 format:(int64_t)a5 account:(id)a6;
- (void)removeDomains:(id)a3;
@end

@implementation MBDomainManager

- (id)_initWithSystemDomains:(id)a3 versions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = MBDomainManager;
  v8 = [(MBDomainManager *)&v27 init];
  if (v8)
  {
    v22 = v7;
    v9 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = [v15 name];
          [(NSMutableDictionary *)v9 setObject:v15 forKeyedSubscript:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v12);
    }

    v17 = [(NSMutableDictionary *)v9 copy];
    systemDomainsByName = v8->_systemDomainsByName;
    v8->_systemDomainsByName = v17;

    domainsByName = v8->_domainsByName;
    v8->_domainsByName = v9;
    v20 = v9;

    objc_storeStrong(&v8->_systemDomainsVersions, a4);
    v7 = v22;
  }

  return v8;
}

- (MBDomainManager)initWithSystemDomains:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(MBDomainManager *)self _initWithSystemDomains:v4 versions:v5];

  return v6;
}

- (id)initForTestingWithDomains:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(MBDomainManager *)self _initWithSystemDomains:&__NSArray0__struct versions:v5];

  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = v6[3];
          v14 = [v12 name];
          [v13 setObject:v12 forKeyedSubscript:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

+ (id)_readDomainsFromPlist:(id)a3 accountType:(int64_t)a4 volumeMountPoint:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = 0;
  if (a4 <= 1)
  {
    if (a4 != 1)
    {
      if (!a4)
      {
        sub_1000A0AB0();
      }

      goto LABEL_9;
    }

LABEL_6:
    v11 = @"SystemDomains";
    goto LABEL_9;
  }

  if (a4 == 2)
  {
    v11 = @"DataSeparatedDomains";
    goto LABEL_9;
  }

  if (a4 == 3)
  {
    goto LABEL_6;
  }

LABEL_9:
  v12 = [v9 objectForKeyedSubscript:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = v12;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          v20 = [v14 objectForKeyedSubscript:v19];
          v21 = [MBDomain nonContainerizedDomainWithName:v19 plist:v20 accountType:a4 volumeMountPoint:v10];
          if (v21)
          {
            [v13 addObject:v21];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v16);
    }

    v12 = v24;
  }

  else
  {
    v22 = MBGetDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v31 = v11;
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Domain plist value for key %@ is not a dictionary: %{public}@", buf, 0x16u);
      _MBLog();
    }

    if (a6)
    {
      [MBError errorWithCode:1 format:@"%@ value is not a dictionary", v11];
      *a6 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)_initWithAccountType:(int64_t)a3 volumeMountPoint:(id)a4 plistPath:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  if (!a6)
  {
    sub_1000A0ADC();
  }

  v12 = v11;
  v13 = objc_autoreleasePoolPush();
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v35 = v12;
    v36 = 2048;
    v37 = a3;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Loading system domains from %{public}@ %ld", buf, 0x16u);
    _MBLog();
  }

  v15 = [NSURL fileURLWithPath:v12 isDirectory:0];
  v33 = 0;
  v16 = [NSDictionary dictionaryWithContentsOfURL:v15 error:&v33];
  v17 = v33;
  if (v16)
  {
    [MBDomain doubleFromStringValueForKey:@"MinSupportedVersion" plist:v16];
    v19 = v18;
    [MBDomain doubleFromStringValueForKey:@"Version" plist:v16];
    v21 = v20;
    [MBDomain doubleFromStringValueForKey:@"MaxSupportedVersion" plist:v16];
    v23 = v22;
    v32 = v17;
    v24 = [objc_opt_class() _readDomainsFromPlist:v16 accountType:a3 volumeMountPoint:v10 error:&v32];
    v25 = v17;
    v17 = v32;
  }

  else
  {
    v25 = MBGetDefaultLog();
    v23 = -1.0;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v35 = v12;
      v36 = 2114;
      v37 = v17;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to load the system domains plist at %{public}@: %{public}@", buf, 0x16u);
      _MBLog();
    }

    v24 = 0;
    v21 = -1.0;
    v19 = -1.0;
  }

  objc_autoreleasePoolPop(v13);
  v26 = MBGetDefaultLog();
  v27 = v26;
  if (!v24 || v17)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v35 = v12;
      v36 = 2114;
      v37 = v17;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to load the system domains at %{public}@: %{public}@", buf, 0x16u);
      _MBLog();
    }

    v30 = v17;
    v29 = 0;
    *a6 = v17;
  }

  else
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544386;
      v35 = v12;
      v36 = 2048;
      v37 = *&v21;
      v38 = 2048;
      v39 = v19;
      v40 = 2048;
      v41 = v23;
      v42 = 2114;
      v43 = v24;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Loaded system domains from %{public}@ (%.1f,%.1f,%.1f): %{public}@", buf, 0x34u);
      _MBLog();
    }

    v28 = [[MBSystemDomainsVersions alloc] initWithVersion:v21 minSupportedVersion:v19 maxSupportedVersion:v23];
    self = [(MBDomainManager *)self _initWithSystemDomains:v24 versions:v28];

    v29 = self;
  }

  return v29;
}

- (MBDomainManager)initWithPersona:(id)a3
{
  v4 = a3;
  v5 = sub_100091778();
  v6 = [v4 accountType];
  v7 = [v4 volumeMountPoint];
  v11 = 0;
  v8 = [(MBDomainManager *)self _initWithAccountType:v6 volumeMountPoint:v7 plistPath:v5 error:&v11];
  v9 = v11;

  if (!v8)
  {
    if ([MBError isTooManyOpenFilesError:v9])
    {
      sub_1000104D8();
    }

    objc_exception_throw([[MBException alloc] initWithCode:11 format:{@"Failed to load system domains from %@: %@", v5, v9}]);
  }

  return v8;
}

- (id)initForTestingWithPersona:(id)a3 systemDomainsPlistAtPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 accountType];
  v9 = [v6 volumeMountPoint];
  v13 = 0;
  v10 = [(MBDomainManager *)self _initWithAccountType:v8 volumeMountPoint:v9 plistPath:v7 error:&v13];
  v11 = v13;

  if (!v10)
  {
    objc_exception_throw([[MBException alloc] initWithCode:11 format:{@"Failed to load system domains from %@: %@", v7, v11}]);
  }

  return v10;
}

- (BOOL)isSystemDomainName:(id)a3
{
  v4 = a3;
  v5 = [(MBDomainManager *)self systemDomainsByName];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (id)allDomains
{
  v2 = [(NSMutableDictionary *)self->_domainsByName allValues];
  v3 = [v2 sortedArrayUsingSelector:"compare:"];

  return v3;
}

- (BOOL)containsDomainName:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_domainsByName objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)domainForName:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_1000A0B08(a2, self);
  }

  v6 = [(NSMutableDictionary *)self->_domainsByName objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [MBDomain containerIDWithName:v5];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = WeakRetained;
    if (WeakRetained)
    {
      v11 = [WeakRetained domainForName:v5 containerID:v8 domainManager:self];
    }

    else
    {
      if (!v8)
      {
        objc_exception_throw([[MBException alloc] initWithCode:11 format:{@"Unknown domain: %@", v5}]);
      }

      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Creating domain for uninstalled container %@", buf, 0xCu);
        v15 = v8;
        _MBLog();
      }

      v11 = [MBDomain uninstalledDomainWithName:v5];
    }

    v13 = v11;
    [(NSMutableDictionary *)self->_domainsByName setObject:v11 forKeyedSubscript:v5, v15];
    v7 = v13;
  }

  return v7;
}

- (id)domainForPath:(id)a3 relativePath:(id *)a4
{
  v6 = a3;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = [(NSMutableDictionary *)self->_domainsByName objectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    v33 = v7;
    v34 = v6;
    v31 = *v36;
    while (2)
    {
      v11 = 0;
      v32 = v9;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        v13 = [v12 rootPath];
        v14 = [v13 mb_stringByAppendingSlash];
        v15 = [v6 hasPrefix:v14];

        if (v15)
        {
          v16 = [v12 rootPath];
          v17 = [v6 substringFromIndex:{objc_msgSend(v16, "length") + 1}];

          v18 = [v17 pathComponents];
          if ([v18 count])
          {
            v19 = 1;
            while (1)
            {
              v20 = [v18 subarrayWithRange:{0, v19}];
              v21 = [NSString pathWithComponents:v20];

              v22 = [v12 relativePathsToRestore];
              if ([v22 containsObject:v21])
              {
                break;
              }

              v23 = [v12 relativePathsToRestoreOnlyFromService];
              v24 = [v23 containsObject:v21];

              if (v24)
              {
                goto LABEL_18;
              }

              if (++v19 > [v18 count])
              {
                goto LABEL_12;
              }
            }

LABEL_18:
            v26 = MBGetDefaultLog();
            v6 = v34;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              v27 = [v12 name];
              *buf = 138412802;
              v40 = v34;
              v41 = 2112;
              v42 = v27;
              v43 = 2112;
              v44 = v17;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Domain for path %@: domain=%@, relativePath=%@", buf, 0x20u);

              v30 = [v12 name];
              _MBLog();
            }

            if (a4)
            {
              v28 = v17;
              *a4 = v17;
            }

            v25 = v12;

            v7 = v33;
            goto LABEL_23;
          }

LABEL_12:

          v7 = v33;
          v6 = v34;
          v10 = v31;
          v9 = v32;
        }

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [v7 countByEnumeratingWithState:&v35 objects:v45 count:16];
      v25 = 0;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v25 = 0;
  }

LABEL_23:

  return v25;
}

- (id)redirectDomain:(id)a3 forRelativePath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v7 relativePathDomainRedirects];
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if ([v8 hasPrefix:v14])
        {
          v16 = [v7 relativePathDomainRedirects];
          v17 = [v16 objectForKeyedSubscript:v14];

          v18 = MBGetDefaultLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = [v7 name];
            *buf = 138412802;
            v27 = v19;
            v28 = 2112;
            v29 = v17;
            v30 = 2112;
            v31 = v8;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Redirecting from %@ to %@: %@", buf, 0x20u);

            v21 = [v7 name];
            _MBLog();
          }

          v15 = [(MBDomainManager *)self domainForName:v17];
          if (!v15)
          {
            sub_1000A0B7C(a2, self, v17);
          }

          goto LABEL_15;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = v7;
LABEL_15:

  return v15;
}

- (void)addDomain:(id)a3
{
  v7 = a3;
  v5 = [v7 name];
  v6 = [(NSMutableDictionary *)self->_domainsByName objectForKeyedSubscript:v5];

  if (v6)
  {
    sub_1000A0BF0(a2, self, v5);
  }

  [(NSMutableDictionary *)self->_domainsByName setObject:v7 forKeyedSubscript:v5];
}

- (void)removeDomains:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(NSMutableDictionary *)self->_domainsByName setObject:0 forKeyedSubscript:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_removeDomainsNotMatchingRegex:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing domains not matching regex (%@)", buf, 0xCu);
      v15 = v4;
      _MBLog();
    }

    v21 = 0;
    v6 = [[NSRegularExpression alloc] initWithPattern:v4 options:0 error:&v21];
    v7 = v21;
    if (v7)
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v23 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to compile regex: %@", buf, 0xCu);
        _MBLog();
      }
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = [(NSMutableDictionary *)self->_domainsByName copy];
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v26 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v17 + 1) + 8 * i);
            if (![v6 numberOfMatchesInString:v13 options:0 range:{0, objc_msgSend(v13, "length", v15, v16)}])
            {
              v14 = MBGetDefaultLog();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v23 = v13;
                v24 = 2112;
                v25 = v4;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removing domain %@ not matching regex (%@)", buf, 0x16u);
                v15 = v13;
                v16 = v4;
                _MBLog();
              }

              [(NSMutableDictionary *)self->_domainsByName setObject:0 forKeyedSubscript:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v26 count:16];
        }

        while (v10);
        v7 = 0;
      }
    }
  }
}

- (void)addDomainsToBackUpToiCloudWithAppManager:(id)a3 manager:(id)a4 format:(int64_t)a5 account:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v75 = [v11 persona];
  v71 = v11;
  v72 = v10;
  v74 = [v10 allRestrictedDomainNames:v9 account:v11];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v73 = v9;
  obj = [v9 allApps];
  v80 = [obj countByEnumeratingWithState:&v101 objects:v113 count:16];
  if (v80)
  {
    v78 = *v102;
    do
    {
      for (i = 0; i != v80; i = i + 1)
      {
        if (*v102 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v101 + 1) + 8 * i);
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v82 = v13;
        v14 = [v13 containers];
        v15 = [v14 countByEnumeratingWithState:&v97 objects:v112 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v98;
          do
          {
            for (j = 0; j != v16; j = j + 1)
            {
              if (*v98 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v97 + 1) + 8 * j);
              v20 = objc_autoreleasePoolPush();
              v21 = [v19 domain];
              v22 = [v21 name];
              v23 = [(MBDomainManager *)self containsDomainName:v22];

              if ((v23 & 1) == 0)
              {
                [(MBDomainManager *)self addDomain:v21];
              }

              objc_autoreleasePoolPop(v20);
            }

            v16 = [v14 countByEnumeratingWithState:&v97 objects:v112 count:16];
          }

          while (v16);
        }

        v24 = v82;
        if (([v82 isSystemApp] & 1) == 0)
        {
          context = objc_autoreleasePoolPush();
          v25 = [v75 appPlaceholderArchiveDirectory];
          v26 = [v75 personaIdentifier];
          v27 = [v82 bundleID];
          v28 = [MBDomain placeholderNameWithAppID:v27];

          v29 = [v74 containsObject:v28];
          if (v29)
          {
            v30 = MBGetDefaultLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v109 = v28;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Not creating placeholder for restricted domain: %@", buf, 0xCu);
              v67 = v28;
              _MBLog();
            }

            v31 = 0;
          }

          else
          {
            v96 = 0;
            v30 = [v82 archivePlaceholderDomainWithPersonaIdentifier:v26 intoDirectory:v25 error:&v96];
            v31 = v96;
            if (v30 && MBSnapshotFormatContainsManifests())
            {
              v32 = [v30 name];
              v33 = [(MBDomainManager *)self containsDomainName:v32];

              if ((v33 & 1) == 0)
              {
                [(MBDomainManager *)self addDomain:v30];
              }

              v24 = v82;
            }
          }

          objc_autoreleasePoolPop(context);
          if (v31)
          {
            v34 = v29;
          }

          else
          {
            v34 = 1;
          }

          if ((v34 & 1) == 0)
          {
            v35 = MBGetDefaultLog();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v36 = [v24 identifier];
              *buf = 138412546;
              v109 = v36;
              v110 = 2112;
              v111 = v31;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Placeholder: Failed to archive placeholder for: %@ %@", buf, 0x16u);

              v67 = [v24 identifier];
              v70 = v31;
              _MBLog();
            }
          }
        }
      }

      v80 = [obj countByEnumeratingWithState:&v101 objects:v113 count:16];
    }

    while (v80);
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v79 = [v73 allPlugins];
  v83 = [v79 countByEnumeratingWithState:&v92 objects:v107 count:16];
  if (v83)
  {
    v81 = *v93;
    do
    {
      for (k = 0; k != v83; k = k + 1)
      {
        if (*v93 != v81)
        {
          objc_enumerationMutation(v79);
        }

        v38 = *(*(&v92 + 1) + 8 * k);
        v39 = objc_autoreleasePoolPush();
        v40 = [v38 domain];
        v41 = [v40 name];
        v42 = [(MBDomainManager *)self containsDomainName:v41];

        if ((v42 & 1) == 0)
        {
          [(MBDomainManager *)self addDomain:v40];
        }

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v43 = [v38 allAppGroupContainers];
        v44 = [v43 countByEnumeratingWithState:&v88 objects:v106 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = 0;
          v47 = *v89;
          do
          {
            v48 = 0;
            v49 = v46;
            do
            {
              if (*v89 != v47)
              {
                objc_enumerationMutation(v43);
              }

              v46 = [*(*(&v88 + 1) + 8 * v48) domain];

              v50 = [v46 name];
              v51 = [(MBDomainManager *)self containsDomainName:v50];

              if ((v51 & 1) == 0)
              {
                [(MBDomainManager *)self addDomain:v46];
              }

              v48 = v48 + 1;
              v49 = v46;
            }

            while (v45 != v48);
            v45 = [v43 countByEnumeratingWithState:&v88 objects:v106 count:16];
          }

          while (v45);
        }

        objc_autoreleasePoolPop(v39);
      }

      v83 = [v79 countByEnumeratingWithState:&v92 objects:v107 count:16];
    }

    while (v83);
  }

  if ([v75 isPersonalPersona])
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v52 = [v73 allSystemContainers];
    v53 = [v52 countByEnumeratingWithState:&v84 objects:v105 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v85;
      do
      {
        for (m = 0; m != v54; m = m + 1)
        {
          if (*v85 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = [*(*(&v84 + 1) + 8 * m) domain];
          v58 = [v57 name];
          v59 = [(MBDomainManager *)self containsDomainName:v58];

          if ((v59 & 1) == 0)
          {
            [(MBDomainManager *)self addDomain:v57];
          }
        }

        v54 = [v52 countByEnumeratingWithState:&v84 objects:v105 count:16];
      }

      while (v54);
    }
  }

  v60 = [v73 allDisabledDomainNamesForPersona:{v75, v67}];
  [(MBDomainManager *)self removeDomains:v60];
  v61 = MBGetDefaultLog();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    v62 = MBStringWithSet();
    *buf = 138412290;
    v109 = v62;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Disabled domains: %@", buf, 0xCu);

    v68 = MBStringWithSet();
    _MBLog();
  }

  [(MBDomainManager *)self removeDomains:v74];
  v63 = MBGetDefaultLog();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    v64 = MBStringWithSet();
    *buf = 138412290;
    v109 = v64;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Restricted domains: %@", buf, 0xCu);

    v69 = MBStringWithSet();
    _MBLog();
  }

  if (MBIsInternalInstall())
  {
    v65 = +[MBBehaviorOptions sharedOptions];
    v66 = [v65 domainsToBackUpRegex];
    [(MBDomainManager *)self _removeDomainsNotMatchingRegex:v66];
  }
}

- (void)addDomainsToBackUpToDriveWithAppManager:(id)a3
{
  v28 = a3;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Creating container domains", buf, 2u);
    _MBLog();
  }

  v5 = [v28 allRestrictedDomainNames];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = [v28 allContainers];
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = [v11 domain];
        v13 = [v12 name];
        v14 = [v5 containsObject:v13];

        if (v14)
        {
          v15 = MBGetDefaultLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [v11 identifier];
            *buf = 138412290;
            v39 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Not backing up restricted app: %@", buf, 0xCu);

            v27 = [v11 identifier];
            _MBLog();
          }
        }

        else
        {
          v15 = [v11 domain];
          [(MBDomainManager *)self addDomain:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = [v28 allSystemContainers];
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v29 + 1) + 8 * j) domain];
        v23 = [v22 name];
        v24 = [(MBDomainManager *)self containsDomainName:v23];

        if ((v24 & 1) == 0)
        {
          [(MBDomainManager *)self addDomain:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v19);
  }

  if (MBIsInternalInstall())
  {
    v25 = +[MBBehaviorOptions sharedOptions];
    v26 = [v25 domainsToBackUpRegex];
    [(MBDomainManager *)self _removeDomainsNotMatchingRegex:v26];
  }
}

- (MBDomainManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end