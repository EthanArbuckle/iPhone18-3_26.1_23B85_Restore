@interface BRDiskCheckerCountDocumentsOperation
- (BRDiskCheckerCountDocumentsOperation)initWithFileURL:(id)a3;
- (unsigned)_getRecursiveChildItemCountAtURL:(id)a3 keysToFetch:(id)a4 filteringPredicate:(id)a5 outError:(id *)a6;
- (void)main;
@end

@implementation BRDiskCheckerCountDocumentsOperation

- (BRDiskCheckerCountDocumentsOperation)initWithFileURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRDiskCheckerCountDocumentsOperation;
  v6 = [(BRDiskCheckerCountDocumentsOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootURL, a3);
  }

  return v7;
}

- (unsigned)_getRecursiveChildItemCountAtURL:(id)a3 keysToFetch:(id)a4 filteringPredicate:(id)a5 outError:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v55 = a5;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = sub_100006ED4;
  v73 = sub_100006EE4;
  v74 = 0;
  v11 = +[NSFileManager defaultManager];
  v63 = _NSConcreteStackBlock;
  v64 = 3221225472;
  v65 = sub_100006EEC;
  v66 = &unk_100010560;
  v67 = v9;
  v68 = &v69;
  v52 = v67;
  v53 = v11;
  v57 = v10;
  v12 = [v11 enumeratorAtURL:? includingPropertiesForKeys:? options:? errorHandler:?];
  if (a6)
  {
    *a6 = v70[5];
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v59 objects:v81 count:16];
  if (!v14)
  {
    v54 = 0;
    goto LABEL_43;
  }

  v54 = 0;
  v56 = *v60;
  do
  {
    v15 = 0;
    do
    {
      if (*v60 != v56)
      {
        objc_enumerationMutation(v13);
      }

      v16 = *(*(&v59 + 1) + 8 * v15);
      v58 = 0;
      v17 = [v16 resourceValuesForKeys:v57 error:&v58];
      v18 = v58;
      if (!v17)
      {
        v19 = brc_bread_crumbs();
        v20 = brc_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v16 path];
          v22 = [v21 fp_obfuscatedPath];
          *buf = 138412802;
          v76 = v22;
          v77 = 2112;
          v78 = v18;
          v79 = 2112;
          v80 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] Can't get resource values at %@ - %@%@", buf, 0x20u);
        }
      }

      if ([v16 br_wouldBeExcludedFromSync])
      {
        v23 = brc_bread_crumbs();
        v24 = brc_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v42 = [v16 path];
          v43 = [v42 fp_obfuscatedPath];
          *buf = 138412546;
          v76 = v43;
          v77 = 2112;
          v78 = v23;
          _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] not counting item at url %@ because it's excluded from sync%@", buf, 0x16u);
        }

        v25 = [v17 objectForKeyedSubscript:NSURLIsDirectoryKey];
        if (([v25 BOOLValue] & 1) == 0)
        {
LABEL_32:
          v36 = [v17 objectForKeyedSubscript:NSURLIsPackageKey];
          v37 = [v36 BOOLValue];

          if ((v37 & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

LABEL_21:

LABEL_33:
        [v13 skipDescendants];
        goto LABEL_34;
      }

      v26 = [v17 objectForKeyedSubscript:NSURLUbiquitousSharedItemCurrentUserRoleKey];
      v27 = [v26 isEqualToString:NSURLUbiquitousSharedItemRoleParticipant];

      if (v27)
      {
        v28 = brc_bread_crumbs();
        v29 = brc_default_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v44 = [v16 path];
          v45 = [v44 fp_obfuscatedPath];
          *buf = 138412546;
          v76 = v45;
          v77 = 2112;
          v78 = v28;
          _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "[DEBUG] not counting item at url %@ because it is shared to me%@", buf, 0x16u);
        }

        v25 = [v17 objectForKeyedSubscript:NSURLIsDirectoryKey];
        if (([v25 BOOLValue] & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_21;
      }

      v30 = [v17 objectForKeyedSubscript:NSURLIsPackageKey];
      if ([v30 BOOLValue])
      {
        goto LABEL_25;
      }

      v31 = [v17 objectForKeyedSubscript:NSURLIsRegularFileKey];
      if ([v31 BOOLValue])
      {

LABEL_25:
        goto LABEL_26;
      }

      v38 = [v17 objectForKeyedSubscript:NSURLIsSymbolicLinkKey];
      v39 = [v38 BOOLValue];

      if ((v39 & 1) == 0)
      {
        v40 = brc_bread_crumbs();
        v41 = brc_default_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v48 = [v16 path];
          v49 = [v48 fp_obfuscatedPath];
          *buf = 138412546;
          v76 = v49;
          v77 = 2112;
          v78 = v40;
          _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "[DEBUG] not counting item at url %@ because it's not a file, package, or symlink%@", buf, 0x16u);
        }

        goto LABEL_34;
      }

LABEL_26:
      if (v55 && (v55[2](v55, v16) & 1) == 0)
      {
        goto LABEL_33;
      }

      v32 = brc_bread_crumbs();
      v33 = brc_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v46 = [v16 path];
        v47 = [v46 fp_obfuscatedPath];
        *buf = 138412546;
        v76 = v47;
        v77 = 2112;
        v78 = v32;
        _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "[DEBUG] counting item at url %@%@", buf, 0x16u);
      }

      v34 = [v17 objectForKeyedSubscript:NSURLIsPackageKey];
      v35 = [v34 BOOLValue];

      ++v54;
      if (v35)
      {
        goto LABEL_33;
      }

LABEL_34:

      v15 = v15 + 1;
    }

    while (v14 != v15);
    v50 = [v13 countByEnumeratingWithState:&v59 objects:v81 count:16];
    v14 = v50;
  }

  while (v50);
LABEL_43:

  _Block_object_dispose(&v69, 8);
  return v54;
}

- (void)main
{
  v3 = self->_rootURL;
  v20 = 0;
  v19 = 0;
  v4 = [(NSURL *)v3 getResourceValue:&v20 forKey:NSURLUbiquitousItemIsSharedKey error:&v19];
  v5 = v20;
  v6 = v19;
  if ((v4 & 1) == 0)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      v16 = [(NSURL *)v3 path];
      v17 = [v16 fp_obfuscatedPath];
      *buf = 138412802;
      v22 = v17;
      v23 = 2112;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, 0x90u, "[ERROR] Failed to determine if the root at %@ is shared - %@%@", buf, 0x20u);
    }
  }

  v9 = [v5 BOOLValue];
  v10 = [NSMutableArray arrayWithObjects:NSURLIsPackageKey, NSURLIsRegularFileKey, NSURLIsSymbolicLinkKey, 0];
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    [v10 addObject:NSURLUbiquitousSharedItemCurrentUserRoleKey];
  }

  v18 = v6;
  v12 = [(BRDiskCheckerCountDocumentsOperation *)self _getRecursiveChildItemCountAtURL:v3 keysToFetch:v11 filteringPredicate:0 outError:&v18];
  v13 = v18;

  countFolderShareItemsCompletionBlock = self->_countFolderShareItemsCompletionBlock;
  if (countFolderShareItemsCompletionBlock)
  {
    v15 = [NSNumber numberWithUnsignedInt:v12];
    countFolderShareItemsCompletionBlock[2](countFolderShareItemsCompletionBlock, v15, v13);
  }
}

@end