@interface SoftwareLibraryLookupOperation
- (NSArray)softwareLibraryItems;
- (SoftwareLibraryLookupOperation)initWithBundleIdentifiers:(id)a3;
- (SoftwareLibraryLookupOperation)initWithItemIdentifiers:(id)a3;
- (id)_newSoftwareLibraryItemWithApplicationRecord:(id)a3;
- (id)_newSoftwareLibraryItemWithContainerPath:(id)a3;
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
  v24 = self;
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
          v11 = [v9 unsignedLongLongValue];
          v27 = v5;
          v12 = [v10 initWithStoreItemIdentifier:v11 error:&v27];
          v5 = v27;

          if (v12)
          {
            v13 = [(SoftwareLibraryLookupOperation *)v24 _newSoftwareLibraryItemWithApplicationRecord:v12];
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

          v14 = [v13 shouldLog];
          if ([v13 shouldLogToDisk])
          {
            v14 |= 2u;
          }

          v15 = [v13 OSLogObject];
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v14 &= 2u;
          }

          if (v14)
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
              v15 = [NSString stringWithCString:v18 encoding:4, &v32, v22];
              free(v18);
              v21 = v15;
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

  [(SoftwareLibraryLookupOperation *)v24 lock];
  v19 = [v23 copy];
  softwareLibraryItems = v24->_softwareLibraryItems;
  v24->_softwareLibraryItems = v19;

  [(SoftwareLibraryLookupOperation *)v24 unlock];
}

- (NSArray)softwareLibraryItems
{
  [(SoftwareLibraryLookupOperation *)self lock];
  v3 = self->_softwareLibraryItems;
  [(SoftwareLibraryLookupOperation *)self unlock];

  return v3;
}

- (SoftwareLibraryLookupOperation)initWithBundleIdentifiers:(id)a3
{
  v4 = a3;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
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

    v8 = [NSString stringWithCString:v10 encoding:4, &v17, v15];
    free(v10);
    SSFileLog();
  }

LABEL_12:
  v16.receiver = self;
  v16.super_class = SoftwareLibraryLookupOperation;
  v11 = [(SoftwareLibraryLookupOperation *)&v16 init];
  if (v11)
  {
    v12 = [v4 copy];
    bundleIDs = v11->_bundleIDs;
    v11->_bundleIDs = v12;
  }

  return v11;
}

- (SoftwareLibraryLookupOperation)initWithItemIdentifiers:(id)a3
{
  v4 = a3;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
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

    v8 = [NSString stringWithCString:v10 encoding:4, &v17, v15];
    free(v10);
    SSFileLog();
  }

LABEL_12:
  v16.receiver = self;
  v16.super_class = SoftwareLibraryLookupOperation;
  v11 = [(SoftwareLibraryLookupOperation *)&v16 init];
  if (v11)
  {
    v12 = [v4 copy];
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
  v62 = self;
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
        v14 = [(SoftwareLibraryLookupOperation *)v62 _newSoftwareLibraryItemWithApplicationRecord:v12];
        if (v14)
        {
          goto LABEL_8;
        }

        goto LABEL_29;
      }

      v15 = [v4[412] sharedDaemonConfig];
      if (!v15)
      {
        v15 = [v4[412] sharedConfig];
      }

      v16 = [v15 shouldLog];
      if ([v15 shouldLogToDisk])
      {
        v17 = v16 | 2;
      }

      else
      {
        v17 = v16;
      }

      v18 = [v15 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
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

        v18 = [NSString stringWithCString:v22 encoding:4, &v77, v57];
        free(v22);
        v56 = v18;
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
        v14 = [v4[412] sharedDaemonConfig];
        if (!v14)
        {
          v14 = [v4[412] sharedConfig];
        }

        v28 = [v14 shouldLog];
        if ([v14 shouldLogToDisk])
        {
          v28 |= 2u;
        }

        v29 = [v14 OSLogObject];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = v28;
        }

        else
        {
          v30 = v28 & 2;
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
            v29 = [NSString stringWithCString:v12 encoding:4, &v77, v57];
            free(v12);
            v56 = v29;
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

      v24 = [v12 applicationState];
      v25 = [v24 isInstalled];

      if (v25)
      {
        v14 = objc_alloc_init(SSSoftwareLibraryItem);
        [v14 setPlaceholder:{objc_msgSend(v12, "isPlaceholder")}];
        v26 = [v12 bundleIdentifier];
        [v14 _setValue:v26 forProperty:v59];

        v27 = [v12 bundleVersion];
        [v14 _setValue:v27 forProperty:v58];

        v13 = v7;
        v5 = &kCFTypeDictionaryValueCallBacks_ptr;
        if (!v14)
        {
          goto LABEL_29;
        }

LABEL_8:
        [v60 addObject:{v14, v56}];
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

  v34 = v62;
  if (![(NSArray *)v62->_bundleIDs count])
  {
    v35 = [v4[412] sharedDaemonConfig];
    if (!v35)
    {
      v35 = [v4[412] sharedConfig];
    }

    v36 = [v35 shouldLog];
    if ([v35 shouldLogToDisk])
    {
      v37 = v36 | 2;
    }

    else
    {
      v37 = v36;
    }

    v38 = [v35 OSLogObject];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
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
        v38 = [NSString stringWithCString:v42 encoding:4, &v77, v57];
        free(v42);
        v56 = v38;
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
      v51 = [v50 iTunesMetadata];
      if ([v51 storeItemIdentifier])
      {
        v52 = [v50 applicationState];
        if ([v52 isInstalled])
        {

          goto LABEL_73;
        }

        v53 = [v50 isPlaceholder];

        if (v53)
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
          v34 = v62;
          v64[4] = v62;
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

- (id)_newSoftwareLibraryItemWithApplicationRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleContainerURL];
  v6 = [v5 path];

  v7 = [(SoftwareLibraryLookupOperation *)self _newSoftwareLibraryItemWithContainerPath:v6];
  v8 = [v4 iTunesMetadata];
  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 storeItemIdentifier]);

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

  [v7 setBeta:{objc_msgSend(v4, "isBeta")}];
  [v7 setPlaceholder:{objc_msgSend(v4, "isPlaceholder")}];
  [v7 setProfileValidated:{objc_msgSend(v4, "isProfileValidated")}];
  [v7 setLaunchProhibited:{objc_msgSend(v4, "isLaunchProhibited")}];
  v10 = [v4 bundleIdentifier];
  [v7 _setValue:v10 forProperty:SSSoftwareLibraryItemBundleIdentifier];

  v11 = [v4 bundleVersion];
  [v7 _setValue:v11 forProperty:SSSoftwareLibraryItemBundleVersion];

  v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 applicationDSID]);
  [v7 _setValue:v12 forProperty:SSSoftwareLibraryItemPropertyITunesAccountIdentifier];

  v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 applicationFamilyID]);
  [v7 _setValue:v13 forProperty:SSSoftwareLibraryItemPropertyFamilyAccountIdentifier];

  return v7;
}

- (id)_newSoftwareLibraryItemWithContainerPath:(id)a3
{
  v3 = [a3 stringByAppendingPathComponent:@"iTunesMetadata.plist"];
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