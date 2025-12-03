@interface SoftwareLibraryLookupOperation
- (NSArray)softwareLibraryItems;
- (SoftwareLibraryLookupOperation)initWithBundleIdentifiers:(id)identifiers;
- (SoftwareLibraryLookupOperation)initWithItemIdentifiers:(id)identifiers;
- (id)_newSoftwareLibraryItemWithApplicationRecord:(id)record;
- (id)_newSoftwareLibraryItemWithContainerPath:(id)path;
- (void)_loadFromBundleIdentifiers;
- (void)_loadFromItemIdentifiers;
- (void)run;
@end

@implementation SoftwareLibraryLookupOperation

- (void)run
{
  if (self->_itemIDs)
  {
    [(SoftwareLibraryLookupOperation *)self _loadFromItemIdentifiers];
  }

  else
  {
    [(SoftwareLibraryLookupOperation *)self _loadFromBundleIdentifiers];
  }

  [(SoftwareLibraryLookupOperation *)self setSuccess:1];
}

- (void)_loadFromItemIdentifiers
{
  v23 = objc_alloc_init(NSMutableArray);
  selfCopy = self;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_itemIDs;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v29;
    while (1)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        v8 = v5;
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 integerValue])
        {
          context = objc_autoreleasePoolPush();
          v10 = [LSApplicationRecord alloc];
          unsignedLongLongValue = [v9 unsignedLongLongValue];
          v27 = v5;
          v12 = [v10 initWithStoreItemIdentifier:unsignedLongLongValue error:&v27];
          v5 = v27;

          if (v12)
          {
            v13 = [(SoftwareLibraryLookupOperation *)selfCopy _newSoftwareLibraryItemWithApplicationRecord:v12];
            if (v13)
            {
              [v23 addObject:v13];
            }

            goto LABEL_22;
          }

          v13 = +[SSLogConfig sharedDaemonConfig];
          if (!v13)
          {
            v13 = +[SSLogConfig sharedConfig];
          }

          shouldLog = [v13 shouldLog];
          if ([v13 shouldLogToDisk])
          {
            shouldLog |= 2u;
          }

          oSLogObject = [v13 OSLogObject];
          if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
          {
            shouldLog &= 2u;
          }

          if (shouldLog)
          {
            v16 = objc_opt_class();
            v32 = 138543874;
            v33 = v16;
            v34 = 2114;
            v35 = v9;
            v36 = 2114;
            v37 = v5;
            v17 = v16;
            LODWORD(v22) = 32;
            v21 = &v32;
            v18 = _os_log_send_and_compose_impl();

            if (v18)
            {
              oSLogObject = [NSString stringWithCString:v18 encoding:4, &v32, v22];
              free(v18);
              v21 = oSLogObject;
              SSFileLog();
              goto LABEL_21;
            }
          }

          else
          {
LABEL_21:
          }

LABEL_22:

          objc_autoreleasePoolPop(context);
          continue;
        }
      }

      v4 = [(NSArray *)obj countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (!v4)
      {
        goto LABEL_27;
      }
    }
  }

  v5 = 0;
LABEL_27:

  [(SoftwareLibraryLookupOperation *)selfCopy lock];
  v19 = [v23 copy];
  softwareLibraryItems = selfCopy->_softwareLibraryItems;
  selfCopy->_softwareLibraryItems = v19;

  [(SoftwareLibraryLookupOperation *)selfCopy unlock];
}

- (NSArray)softwareLibraryItems
{
  [(SoftwareLibraryLookupOperation *)self lock];
  v3 = self->_softwareLibraryItems;
  [(SoftwareLibraryLookupOperation *)self unlock];

  return v3;
}

- (SoftwareLibraryLookupOperation)initWithBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v17 = 138543362;
    v18 = objc_opt_class();
    v9 = v18;
    LODWORD(v15) = 12;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_12;
    }

    oSLogObject = [NSString stringWithCString:v10 encoding:4, &v17, v15];
    free(v10);
    SSFileLog();
  }

LABEL_12:
  v16.receiver = self;
  v16.super_class = SoftwareLibraryLookupOperation;
  v11 = [(SoftwareLibraryLookupOperation *)&v16 init];
  if (v11)
  {
    v12 = [identifiersCopy copy];
    bundleIDs = v11->_bundleIDs;
    v11->_bundleIDs = v12;
  }

  return v11;
}

- (SoftwareLibraryLookupOperation)initWithItemIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v17 = 138543362;
    v18 = objc_opt_class();
    v9 = v18;
    LODWORD(v15) = 12;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_12;
    }

    oSLogObject = [NSString stringWithCString:v10 encoding:4, &v17, v15];
    free(v10);
    SSFileLog();
  }

LABEL_12:
  v16.receiver = self;
  v16.super_class = SoftwareLibraryLookupOperation;
  v11 = [(SoftwareLibraryLookupOperation *)&v16 init];
  if (v11)
  {
    v12 = [identifiersCopy copy];
    itemIDs = v11->_itemIDs;
    v11->_itemIDs = v12;
  }

  return v11;
}

- (void)_loadFromBundleIdentifiers
{
  v60 = objc_alloc_init(NSMutableArray);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  selfCopy = self;
  obj = self->_bundleIDs;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v72 objects:v83 count:16];
  v4 = &CFDictionaryGetValue_ptr;
  v5 = &kCFTypeDictionaryValueCallBacks_ptr;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_49;
  }

  v6 = v3;
  v7 = 0;
  v63 = *v73;
  v58 = SSSoftwareLibraryItemBundleVersion;
  v59 = SSSoftwareLibraryItemBundleIdentifier;
  do
  {
    v8 = 0;
    do
    {
      if (*v73 != v63)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v72 + 1) + 8 * v8);
      v10 = objc_autoreleasePoolPush();
      v11 = objc_alloc(v5[17]);
      v71 = v7;
      v12 = [v11 initWithBundleIdentifier:v9 allowPlaceholder:1 error:&v71];
      v13 = v71;

      if (v12)
      {
        sharedDaemonConfig2 = [(SoftwareLibraryLookupOperation *)selfCopy _newSoftwareLibraryItemWithApplicationRecord:v12];
        if (sharedDaemonConfig2)
        {
          goto LABEL_8;
        }

        goto LABEL_29;
      }

      sharedDaemonConfig = [v4[412] sharedDaemonConfig];
      if (!sharedDaemonConfig)
      {
        sharedDaemonConfig = [v4[412] sharedConfig];
      }

      shouldLog = [sharedDaemonConfig shouldLog];
      if ([sharedDaemonConfig shouldLogToDisk])
      {
        v17 = shouldLog | 2;
      }

      else
      {
        v17 = shouldLog;
      }

      oSLogObject = [sharedDaemonConfig OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v19 = v17;
      }

      else
      {
        v19 = v17 & 2;
      }

      if (v19)
      {
        v20 = objc_opt_class();
        v77 = 138543874;
        v78 = v20;
        v79 = 2114;
        v80 = v9;
        v81 = 2114;
        v82 = v13;
        v21 = v20;
        LODWORD(v57) = 32;
        v56 = &v77;
        v4 = &CFDictionaryGetValue_ptr;
        v22 = _os_log_send_and_compose_impl();

        v5 = &kCFTypeDictionaryValueCallBacks_ptr;
        if (!v22)
        {
          goto LABEL_23;
        }

        oSLogObject = [NSString stringWithCString:v22 encoding:4, &v77, v57];
        free(v22);
        v56 = oSLogObject;
        SSFileLog();
      }

      else
      {
        v5 = &kCFTypeDictionaryValueCallBacks_ptr;
      }

LABEL_23:
      if (![v9 hasPrefix:@"com.apple"])
      {
        v12 = 0;
LABEL_29:
        v7 = v13;
        goto LABEL_30;
      }

      v23 = objc_alloc(v5[17]);
      v70 = v13;
      v12 = [v23 initWithBundleIdentifierOfSystemPlaceholder:v9 error:&v70];
      v7 = v70;

      if (!v12)
      {
        sharedDaemonConfig2 = [v4[412] sharedDaemonConfig];
        if (!sharedDaemonConfig2)
        {
          sharedDaemonConfig2 = [v4[412] sharedConfig];
        }

        shouldLog2 = [sharedDaemonConfig2 shouldLog];
        if ([sharedDaemonConfig2 shouldLogToDisk])
        {
          shouldLog2 |= 2u;
        }

        oSLogObject2 = [sharedDaemonConfig2 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          v30 = shouldLog2;
        }

        else
        {
          v30 = shouldLog2 & 2;
        }

        if (v30)
        {
          v31 = objc_opt_class();
          v77 = 138543874;
          v78 = v31;
          v79 = 2114;
          v80 = v9;
          v81 = 2114;
          v82 = v7;
          v32 = v31;
          LODWORD(v57) = 32;
          v56 = &v77;
          v12 = _os_log_send_and_compose_impl();

          if (v12)
          {
            oSLogObject2 = [NSString stringWithCString:v12 encoding:4, &v77, v57];
            free(v12);
            v56 = oSLogObject2;
            SSFileLog();
            v5 = &kCFTypeDictionaryValueCallBacks_ptr;
            v4 = &CFDictionaryGetValue_ptr;
            goto LABEL_44;
          }

          v5 = &kCFTypeDictionaryValueCallBacks_ptr;
          v4 = &CFDictionaryGetValue_ptr;
        }

        else
        {
          v5 = &kCFTypeDictionaryValueCallBacks_ptr;
LABEL_44:

          v12 = 0;
        }

LABEL_9:

        goto LABEL_30;
      }

      applicationState = [v12 applicationState];
      isInstalled = [applicationState isInstalled];

      if (isInstalled)
      {
        sharedDaemonConfig2 = objc_alloc_init(SSSoftwareLibraryItem);
        [sharedDaemonConfig2 setPlaceholder:{objc_msgSend(v12, "isPlaceholder")}];
        bundleIdentifier = [v12 bundleIdentifier];
        [sharedDaemonConfig2 _setValue:bundleIdentifier forProperty:v59];

        bundleVersion = [v12 bundleVersion];
        [sharedDaemonConfig2 _setValue:bundleVersion forProperty:v58];

        v13 = v7;
        v5 = &kCFTypeDictionaryValueCallBacks_ptr;
        if (!sharedDaemonConfig2)
        {
          goto LABEL_29;
        }

LABEL_8:
        [v60 addObject:{sharedDaemonConfig2, v56}];
        v7 = v13;
        goto LABEL_9;
      }

      v5 = &kCFTypeDictionaryValueCallBacks_ptr;
LABEL_30:

      objc_autoreleasePoolPop(v10);
      v8 = v8 + 1;
    }

    while (v6 != v8);
    v33 = [(NSArray *)obj countByEnumeratingWithState:&v72 objects:v83 count:16];
    v6 = v33;
  }

  while (v33);
LABEL_49:

  v34 = selfCopy;
  if (![(NSArray *)selfCopy->_bundleIDs count])
  {
    sharedDaemonConfig3 = [v4[412] sharedDaemonConfig];
    if (!sharedDaemonConfig3)
    {
      sharedDaemonConfig3 = [v4[412] sharedConfig];
    }

    shouldLog3 = [sharedDaemonConfig3 shouldLog];
    if ([sharedDaemonConfig3 shouldLogToDisk])
    {
      v37 = shouldLog3 | 2;
    }

    else
    {
      v37 = shouldLog3;
    }

    oSLogObject3 = [sharedDaemonConfig3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v39 = v37;
    }

    else
    {
      v39 = v37 & 2;
    }

    if (v39)
    {
      v40 = objc_opt_class();
      v77 = 138543362;
      v78 = v40;
      v41 = v40;
      LODWORD(v57) = 12;
      v56 = &v77;
      v42 = _os_log_send_and_compose_impl();

      v43 = &kCFTypeDictionaryValueCallBacks_ptr;
      if (v42)
      {
        oSLogObject3 = [NSString stringWithCString:v42 encoding:4, &v77, v57];
        free(v42);
        v56 = oSLogObject3;
        SSFileLog();
        goto LABEL_62;
      }
    }

    else
    {
      v43 = &kCFTypeDictionaryValueCallBacks_ptr;
LABEL_62:
    }

    v44 = objc_alloc_init(NSMutableArray);
    v45 = [(CFDictionaryValueCallBacks *)v43[17] enumeratorWithOptions:192];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v46 = [v45 countByEnumeratingWithState:&v66 objects:v76 count:16];
    if (!v46)
    {
      goto LABEL_76;
    }

    v47 = v46;
    v48 = *v67;
    while (2)
    {
      v49 = 0;
LABEL_66:
      if (*v67 != v48)
      {
        objc_enumerationMutation(v45);
      }

      v50 = *(*(&v66 + 1) + 8 * v49);
      iTunesMetadata = [v50 iTunesMetadata];
      if ([iTunesMetadata storeItemIdentifier])
      {
        applicationState2 = [v50 applicationState];
        if ([applicationState2 isInstalled])
        {

          goto LABEL_73;
        }

        isPlaceholder = [v50 isPlaceholder];

        if (isPlaceholder)
        {
LABEL_73:
          [v44 addObject:v50];
        }
      }

      else
      {
      }

      if (v47 == ++v49)
      {
        v47 = [v45 countByEnumeratingWithState:&v66 objects:v76 count:16];
        if (!v47)
        {
LABEL_76:
          v64[0] = _NSConcreteStackBlock;
          v64[1] = 3221225472;
          v64[2] = sub_1001FE054;
          v64[3] = &unk_10032C338;
          v34 = selfCopy;
          v64[4] = selfCopy;
          v65 = v60;
          [v44 enumerateObjectsUsingBlock:v64];

          break;
        }

        continue;
      }

      goto LABEL_66;
    }
  }

  [(SoftwareLibraryLookupOperation *)v34 lock];
  v54 = [v60 copy];
  softwareLibraryItems = v34->_softwareLibraryItems;
  v34->_softwareLibraryItems = v54;

  [(SoftwareLibraryLookupOperation *)v34 unlock];
}

- (id)_newSoftwareLibraryItemWithApplicationRecord:(id)record
{
  recordCopy = record;
  bundleContainerURL = [recordCopy bundleContainerURL];
  path = [bundleContainerURL path];

  v7 = [(SoftwareLibraryLookupOperation *)self _newSoftwareLibraryItemWithContainerPath:path];
  iTunesMetadata = [recordCopy iTunesMetadata];
  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [iTunesMetadata storeItemIdentifier]);

  if (!v7)
  {
    if ([v9 integerValue])
    {
      v7 = objc_alloc_init(SSSoftwareLibraryItem);
      [v7 _setValue:v9 forProperty:SSSoftwareLibraryItemPropertyITunesItemIdentifier];
    }

    else
    {
      v7 = 0;
    }
  }

  [v7 setBeta:{objc_msgSend(recordCopy, "isBeta")}];
  [v7 setPlaceholder:{objc_msgSend(recordCopy, "isPlaceholder")}];
  [v7 setProfileValidated:{objc_msgSend(recordCopy, "isProfileValidated")}];
  [v7 setLaunchProhibited:{objc_msgSend(recordCopy, "isLaunchProhibited")}];
  bundleIdentifier = [recordCopy bundleIdentifier];
  [v7 _setValue:bundleIdentifier forProperty:SSSoftwareLibraryItemBundleIdentifier];

  bundleVersion = [recordCopy bundleVersion];
  [v7 _setValue:bundleVersion forProperty:SSSoftwareLibraryItemBundleVersion];

  v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [recordCopy applicationDSID]);
  [v7 _setValue:v12 forProperty:SSSoftwareLibraryItemPropertyITunesAccountIdentifier];

  v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [recordCopy applicationFamilyID]);
  [v7 _setValue:v13 forProperty:SSSoftwareLibraryItemPropertyFamilyAccountIdentifier];

  return v7;
}

- (id)_newSoftwareLibraryItemWithContainerPath:(id)path
{
  v3 = [path stringByAppendingPathComponent:@"iTunesMetadata.plist"];
  if (v3)
  {
    v4 = [[NSDictionary alloc] initWithContentsOfFile:v3];
    if (v4)
    {
      v5 = [[SSSoftwareLibraryItem alloc] _initWithITunesMetadata:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end