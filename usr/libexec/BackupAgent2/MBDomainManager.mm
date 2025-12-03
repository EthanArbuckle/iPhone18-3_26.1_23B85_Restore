@interface MBDomainManager
+ (id)_readDomainsFromPlist:(id)plist accountType:(int64_t)type volumeMountPoint:(id)point error:(id *)error;
- (BOOL)containsDomainName:(id)name;
- (BOOL)isSystemDomainName:(id)name;
- (MBDomainManager)initWithPersona:(id)persona;
- (MBDomainManager)initWithSystemDomains:(id)domains;
- (MBDomainManagerDelegate)delegate;
- (id)_initWithAccountType:(int64_t)type volumeMountPoint:(id)point plistPath:(id)path error:(id *)error;
- (id)_initWithSystemDomains:(id)domains versions:(id)versions;
- (id)allDomains;
- (id)domainForName:(id)name;
- (id)domainForPath:(id)path relativePath:(id *)relativePath;
- (id)initForTestingWithDomains:(id)domains;
- (id)initForTestingWithPersona:(id)persona systemDomainsPlistAtPath:(id)path;
- (id)redirectDomain:(id)domain forRelativePath:(id)path;
- (void)_removeDomainsNotMatchingRegex:(id)regex;
- (void)addDomain:(id)domain;
- (void)addDomainsToBackUpToDriveWithAppManager:(id)manager;
- (void)addDomainsToBackUpToiCloudWithAppManager:(id)manager manager:(id)a4 format:(int64_t)format account:(id)account;
- (void)removeDomains:(id)domains;
@end

@implementation MBDomainManager

- (id)_initWithSystemDomains:(id)domains versions:(id)versions
{
  domainsCopy = domains;
  versionsCopy = versions;
  v27.receiver = self;
  v27.super_class = MBDomainManager;
  v8 = [(MBDomainManager *)&v27 init];
  if (v8)
  {
    v22 = versionsCopy;
    v9 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = domainsCopy;
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
          name = [v15 name];
          [(NSMutableDictionary *)v9 setObject:v15 forKeyedSubscript:name];
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

    objc_storeStrong(&v8->_systemDomainsVersions, versions);
    versionsCopy = v22;
  }

  return v8;
}

- (MBDomainManager)initWithSystemDomains:(id)domains
{
  domainsCopy = domains;
  v5 = objc_opt_new();
  v6 = [(MBDomainManager *)self _initWithSystemDomains:domainsCopy versions:v5];

  return v6;
}

- (id)initForTestingWithDomains:(id)domains
{
  domainsCopy = domains;
  v5 = objc_opt_new();
  v6 = [(MBDomainManager *)self _initWithSystemDomains:&__NSArray0__struct versions:v5];

  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = domainsCopy;
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
          name = [v12 name];
          [v13 setObject:v12 forKeyedSubscript:name];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

+ (id)_readDomainsFromPlist:(id)plist accountType:(int64_t)type volumeMountPoint:(id)point error:(id *)error
{
  plistCopy = plist;
  pointCopy = point;
  v11 = 0;
  if (type <= 1)
  {
    if (type != 1)
    {
      if (!type)
      {
        sub_1000A0AB0();
      }

      goto LABEL_9;
    }

LABEL_6:
    v11 = @"SystemDomains";
    goto LABEL_9;
  }

  if (type == 2)
  {
    v11 = @"DataSeparatedDomains";
    goto LABEL_9;
  }

  if (type == 3)
  {
    goto LABEL_6;
  }

LABEL_9:
  v12 = [plistCopy objectForKeyedSubscript:v11];
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
          v21 = [MBDomain nonContainerizedDomainWithName:v19 plist:v20 accountType:type volumeMountPoint:pointCopy];
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

    if (error)
    {
      [MBError errorWithCode:1 format:@"%@ value is not a dictionary", v11];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)_initWithAccountType:(int64_t)type volumeMountPoint:(id)point plistPath:(id)path error:(id *)error
{
  pointCopy = point;
  pathCopy = path;
  if (!error)
  {
    sub_1000A0ADC();
  }

  v12 = pathCopy;
  v13 = objc_autoreleasePoolPush();
  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v35 = v12;
    v36 = 2048;
    typeCopy = type;
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
    v24 = [objc_opt_class() _readDomainsFromPlist:v16 accountType:type volumeMountPoint:pointCopy error:&v32];
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
      typeCopy = v17;
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
      typeCopy = v17;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to load the system domains at %{public}@: %{public}@", buf, 0x16u);
      _MBLog();
    }

    v30 = v17;
    selfCopy = 0;
    *error = v17;
  }

  else
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544386;
      v35 = v12;
      v36 = 2048;
      typeCopy = *&v21;
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

    selfCopy = self;
  }

  return selfCopy;
}

- (MBDomainManager)initWithPersona:(id)persona
{
  personaCopy = persona;
  v5 = sub_100091778();
  accountType = [personaCopy accountType];
  volumeMountPoint = [personaCopy volumeMountPoint];
  v11 = 0;
  v8 = [(MBDomainManager *)self _initWithAccountType:accountType volumeMountPoint:volumeMountPoint plistPath:v5 error:&v11];
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

- (id)initForTestingWithPersona:(id)persona systemDomainsPlistAtPath:(id)path
{
  personaCopy = persona;
  pathCopy = path;
  accountType = [personaCopy accountType];
  volumeMountPoint = [personaCopy volumeMountPoint];
  v13 = 0;
  v10 = [(MBDomainManager *)self _initWithAccountType:accountType volumeMountPoint:volumeMountPoint plistPath:pathCopy error:&v13];
  v11 = v13;

  if (!v10)
  {
    objc_exception_throw([[MBException alloc] initWithCode:11 format:{@"Failed to load system domains from %@: %@", pathCopy, v11}]);
  }

  return v10;
}

- (BOOL)isSystemDomainName:(id)name
{
  nameCopy = name;
  systemDomainsByName = [(MBDomainManager *)self systemDomainsByName];
  v6 = [systemDomainsByName objectForKeyedSubscript:nameCopy];

  return v6 != 0;
}

- (id)allDomains
{
  allValues = [(NSMutableDictionary *)self->_domainsByName allValues];
  v3 = [allValues sortedArrayUsingSelector:"compare:"];

  return v3;
}

- (BOOL)containsDomainName:(id)name
{
  v3 = [(NSMutableDictionary *)self->_domainsByName objectForKeyedSubscript:name];
  v4 = v3 != 0;

  return v4;
}

- (id)domainForName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    sub_1000A0B08(a2, self);
  }

  v6 = [(NSMutableDictionary *)self->_domainsByName objectForKeyedSubscript:nameCopy];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [MBDomain containerIDWithName:nameCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = WeakRetained;
    if (WeakRetained)
    {
      v11 = [WeakRetained domainForName:nameCopy containerID:v8 domainManager:self];
    }

    else
    {
      if (!v8)
      {
        objc_exception_throw([[MBException alloc] initWithCode:11 format:{@"Unknown domain: %@", nameCopy}]);
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

      v11 = [MBDomain uninstalledDomainWithName:nameCopy];
    }

    v13 = v11;
    [(NSMutableDictionary *)self->_domainsByName setObject:v11 forKeyedSubscript:nameCopy, v15];
    v7 = v13;
  }

  return v7;
}

- (id)domainForPath:(id)path relativePath:(id *)relativePath
{
  pathCopy = path;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_domainsByName objectEnumerator];
  v8 = [objectEnumerator countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    v33 = objectEnumerator;
    v34 = pathCopy;
    v31 = *v36;
    while (2)
    {
      v11 = 0;
      v32 = v9;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        rootPath = [v12 rootPath];
        mb_stringByAppendingSlash = [rootPath mb_stringByAppendingSlash];
        v15 = [pathCopy hasPrefix:mb_stringByAppendingSlash];

        if (v15)
        {
          rootPath2 = [v12 rootPath];
          v17 = [pathCopy substringFromIndex:{objc_msgSend(rootPath2, "length") + 1}];

          pathComponents = [v17 pathComponents];
          if ([pathComponents count])
          {
            v19 = 1;
            while (1)
            {
              v20 = [pathComponents subarrayWithRange:{0, v19}];
              v21 = [NSString pathWithComponents:v20];

              relativePathsToRestore = [v12 relativePathsToRestore];
              if ([relativePathsToRestore containsObject:v21])
              {
                break;
              }

              relativePathsToRestoreOnlyFromService = [v12 relativePathsToRestoreOnlyFromService];
              v24 = [relativePathsToRestoreOnlyFromService containsObject:v21];

              if (v24)
              {
                goto LABEL_18;
              }

              if (++v19 > [pathComponents count])
              {
                goto LABEL_12;
              }
            }

LABEL_18:
            v26 = MBGetDefaultLog();
            pathCopy = v34;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              name = [v12 name];
              *buf = 138412802;
              v40 = v34;
              v41 = 2112;
              v42 = name;
              v43 = 2112;
              v44 = v17;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Domain for path %@: domain=%@, relativePath=%@", buf, 0x20u);

              name2 = [v12 name];
              _MBLog();
            }

            if (relativePath)
            {
              v28 = v17;
              *relativePath = v17;
            }

            v25 = v12;

            objectEnumerator = v33;
            goto LABEL_23;
          }

LABEL_12:

          objectEnumerator = v33;
          pathCopy = v34;
          v10 = v31;
          v9 = v32;
        }

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [objectEnumerator countByEnumeratingWithState:&v35 objects:v45 count:16];
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

- (id)redirectDomain:(id)domain forRelativePath:(id)path
{
  domainCopy = domain;
  pathCopy = path;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  relativePathDomainRedirects = [domainCopy relativePathDomainRedirects];
  v10 = [relativePathDomainRedirects countByEnumeratingWithState:&v22 objects:v32 count:16];
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
          objc_enumerationMutation(relativePathDomainRedirects);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if ([pathCopy hasPrefix:v14])
        {
          relativePathDomainRedirects2 = [domainCopy relativePathDomainRedirects];
          v17 = [relativePathDomainRedirects2 objectForKeyedSubscript:v14];

          v18 = MBGetDefaultLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            name = [domainCopy name];
            *buf = 138412802;
            v27 = name;
            v28 = 2112;
            v29 = v17;
            v30 = 2112;
            v31 = pathCopy;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Redirecting from %@ to %@: %@", buf, 0x20u);

            name2 = [domainCopy name];
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

      v11 = [relativePathDomainRedirects countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = domainCopy;
LABEL_15:

  return v15;
}

- (void)addDomain:(id)domain
{
  domainCopy = domain;
  name = [domainCopy name];
  v6 = [(NSMutableDictionary *)self->_domainsByName objectForKeyedSubscript:name];

  if (v6)
  {
    sub_1000A0BF0(a2, self, name);
  }

  [(NSMutableDictionary *)self->_domainsByName setObject:domainCopy forKeyedSubscript:name];
}

- (void)removeDomains:(id)domains
{
  domainsCopy = domains;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [domainsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(domainsCopy);
        }

        [(NSMutableDictionary *)self->_domainsByName setObject:0 forKeyedSubscript:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [domainsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_removeDomainsNotMatchingRegex:(id)regex
{
  regexCopy = regex;
  if ([regexCopy length])
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = regexCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing domains not matching regex (%@)", buf, 0xCu);
      v15 = regexCopy;
      _MBLog();
    }

    v21 = 0;
    v6 = [[NSRegularExpression alloc] initWithPattern:regexCopy options:0 error:&v21];
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
                v25 = regexCopy;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removing domain %@ not matching regex (%@)", buf, 0x16u);
                v15 = v13;
                v16 = regexCopy;
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

- (void)addDomainsToBackUpToiCloudWithAppManager:(id)manager manager:(id)a4 format:(int64_t)format account:(id)account
{
  managerCopy = manager;
  v10 = a4;
  accountCopy = account;
  persona = [accountCopy persona];
  v71 = accountCopy;
  v72 = v10;
  v74 = [v10 allRestrictedDomainNames:managerCopy account:accountCopy];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v73 = managerCopy;
  obj = [managerCopy allApps];
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
        containers = [v13 containers];
        v15 = [containers countByEnumeratingWithState:&v97 objects:v112 count:16];
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
                objc_enumerationMutation(containers);
              }

              v19 = *(*(&v97 + 1) + 8 * j);
              v20 = objc_autoreleasePoolPush();
              domain = [v19 domain];
              name = [domain name];
              v23 = [(MBDomainManager *)self containsDomainName:name];

              if ((v23 & 1) == 0)
              {
                [(MBDomainManager *)self addDomain:domain];
              }

              objc_autoreleasePoolPop(v20);
            }

            v16 = [containers countByEnumeratingWithState:&v97 objects:v112 count:16];
          }

          while (v16);
        }

        v24 = v82;
        if (([v82 isSystemApp] & 1) == 0)
        {
          context = objc_autoreleasePoolPush();
          appPlaceholderArchiveDirectory = [persona appPlaceholderArchiveDirectory];
          personaIdentifier = [persona personaIdentifier];
          bundleID = [v82 bundleID];
          v28 = [MBDomain placeholderNameWithAppID:bundleID];

          v29 = [v74 containsObject:v28];
          if (v29)
          {
            v30 = MBGetDefaultLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v109 = v28;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Not creating placeholder for restricted domain: %@", buf, 0xCu);
              identifier2 = v28;
              _MBLog();
            }

            v31 = 0;
          }

          else
          {
            v96 = 0;
            v30 = [v82 archivePlaceholderDomainWithPersonaIdentifier:personaIdentifier intoDirectory:appPlaceholderArchiveDirectory error:&v96];
            v31 = v96;
            if (v30 && MBSnapshotFormatContainsManifests())
            {
              name2 = [v30 name];
              v33 = [(MBDomainManager *)self containsDomainName:name2];

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
              identifier = [v24 identifier];
              *buf = 138412546;
              v109 = identifier;
              v110 = 2112;
              v111 = v31;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Placeholder: Failed to archive placeholder for: %@ %@", buf, 0x16u);

              identifier2 = [v24 identifier];
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
  allPlugins = [v73 allPlugins];
  v83 = [allPlugins countByEnumeratingWithState:&v92 objects:v107 count:16];
  if (v83)
  {
    v81 = *v93;
    do
    {
      for (k = 0; k != v83; k = k + 1)
      {
        if (*v93 != v81)
        {
          objc_enumerationMutation(allPlugins);
        }

        v38 = *(*(&v92 + 1) + 8 * k);
        v39 = objc_autoreleasePoolPush();
        domain2 = [v38 domain];
        name3 = [domain2 name];
        v42 = [(MBDomainManager *)self containsDomainName:name3];

        if ((v42 & 1) == 0)
        {
          [(MBDomainManager *)self addDomain:domain2];
        }

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        allAppGroupContainers = [v38 allAppGroupContainers];
        v44 = [allAppGroupContainers countByEnumeratingWithState:&v88 objects:v106 count:16];
        if (v44)
        {
          v45 = v44;
          domain3 = 0;
          v47 = *v89;
          do
          {
            v48 = 0;
            v49 = domain3;
            do
            {
              if (*v89 != v47)
              {
                objc_enumerationMutation(allAppGroupContainers);
              }

              domain3 = [*(*(&v88 + 1) + 8 * v48) domain];

              name4 = [domain3 name];
              v51 = [(MBDomainManager *)self containsDomainName:name4];

              if ((v51 & 1) == 0)
              {
                [(MBDomainManager *)self addDomain:domain3];
              }

              v48 = v48 + 1;
              v49 = domain3;
            }

            while (v45 != v48);
            v45 = [allAppGroupContainers countByEnumeratingWithState:&v88 objects:v106 count:16];
          }

          while (v45);
        }

        objc_autoreleasePoolPop(v39);
      }

      v83 = [allPlugins countByEnumeratingWithState:&v92 objects:v107 count:16];
    }

    while (v83);
  }

  if ([persona isPersonalPersona])
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    allSystemContainers = [v73 allSystemContainers];
    v53 = [allSystemContainers countByEnumeratingWithState:&v84 objects:v105 count:16];
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
            objc_enumerationMutation(allSystemContainers);
          }

          domain4 = [*(*(&v84 + 1) + 8 * m) domain];
          name5 = [domain4 name];
          v59 = [(MBDomainManager *)self containsDomainName:name5];

          if ((v59 & 1) == 0)
          {
            [(MBDomainManager *)self addDomain:domain4];
          }
        }

        v54 = [allSystemContainers countByEnumeratingWithState:&v84 objects:v105 count:16];
      }

      while (v54);
    }
  }

  v60 = [v73 allDisabledDomainNamesForPersona:{persona, identifier2}];
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
    domainsToBackUpRegex = [v65 domainsToBackUpRegex];
    [(MBDomainManager *)self _removeDomainsNotMatchingRegex:domainsToBackUpRegex];
  }
}

- (void)addDomainsToBackUpToDriveWithAppManager:(id)manager
{
  managerCopy = manager;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Creating container domains", buf, 2u);
    _MBLog();
  }

  allRestrictedDomainNames = [managerCopy allRestrictedDomainNames];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  allContainers = [managerCopy allContainers];
  v7 = [allContainers countByEnumeratingWithState:&v33 objects:v40 count:16];
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
          objc_enumerationMutation(allContainers);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        domain = [v11 domain];
        name = [domain name];
        v14 = [allRestrictedDomainNames containsObject:name];

        if (v14)
        {
          domain2 = MBGetDefaultLog();
          if (os_log_type_enabled(domain2, OS_LOG_TYPE_INFO))
          {
            identifier = [v11 identifier];
            *buf = 138412290;
            v39 = identifier;
            _os_log_impl(&_mh_execute_header, domain2, OS_LOG_TYPE_INFO, "Not backing up restricted app: %@", buf, 0xCu);

            identifier2 = [v11 identifier];
            _MBLog();
          }
        }

        else
        {
          domain2 = [v11 domain];
          [(MBDomainManager *)self addDomain:domain2];
        }
      }

      v8 = [allContainers countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  allSystemContainers = [managerCopy allSystemContainers];
  v18 = [allSystemContainers countByEnumeratingWithState:&v29 objects:v37 count:16];
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
          objc_enumerationMutation(allSystemContainers);
        }

        domain3 = [*(*(&v29 + 1) + 8 * j) domain];
        name2 = [domain3 name];
        v24 = [(MBDomainManager *)self containsDomainName:name2];

        if ((v24 & 1) == 0)
        {
          [(MBDomainManager *)self addDomain:domain3];
        }
      }

      v19 = [allSystemContainers countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v19);
  }

  if (MBIsInternalInstall())
  {
    v25 = +[MBBehaviorOptions sharedOptions];
    domainsToBackUpRegex = [v25 domainsToBackUpRegex];
    [(MBDomainManager *)self _removeDomainsNotMatchingRegex:domainsToBackUpRegex];
  }
}

- (MBDomainManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end