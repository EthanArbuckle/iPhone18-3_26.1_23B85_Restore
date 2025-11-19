@interface BRBundleService
- (id)_findURLForBundleID:(id)a3;
- (void)_extractMetadataForContainerID:(id)a3 bundleID:(id)a4 minimumBundleVersion:(id)a5 reply:(id)a6;
- (void)extractMetadataForContainerID:(id)a3 bundleID:(id)a4 minimumBundleVersion:(id)a5 reply:(id)a6;
@end

@implementation BRBundleService

- (void)_extractMetadataForContainerID:(id)a3 bundleID:(id)a4 minimumBundleVersion:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] can't extract container metadata with no container ID%@", buf, 0xCu);
    }

    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      sub_100002178();
    }

    v18 = @"containerID";
    goto LABEL_13;
  }

  if ([v10 isEqualToString:BRUbiquitousDefaultContainerID])
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] can't extract metadata for the default container; nobody should specify this container in its Info.plist%@", buf, 0xCu);
    }

    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v44 = [NSError brc_errorInvalidParameter:@"containerID" value:v10];
      *buf = 138413314;
      v58 = self;
      v59 = 2112;
      v60 = 0;
      v61 = 2112;
      v62 = 0;
      v63 = 2112;
      v64 = v44;
      v65 = 2112;
      v66 = v16;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@, %@, %@)%@", buf, 0x34u);
    }

    v18 = @"containerID";
    v19 = v10;
    goto LABEL_14;
  }

  if (([v10 isEqualToString:BRPassbookContainerID] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"com.apple.TextInput"))
  {
    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_1000020D0(self, v25, v26);
    }

    (*(v13 + 2))(v13, &__NSDictionary0__struct, 0, 0);
    goto LABEL_20;
  }

  if (!v11)
  {
    v40 = brc_bread_crumbs();
    v41 = brc_default_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v58 = v40;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[WARNING] can't extract container metadata with no bundle ID%@", buf, 0xCu);
    }

    v42 = brc_bread_crumbs();
    v43 = brc_default_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      sub_100002028();
    }

    v18 = @"bundleID";
LABEL_13:
    v19 = 0;
LABEL_14:
    v24 = [NSError brc_errorInvalidParameter:v18 value:v19];
    (*(v13 + 2))(v13, 0, 0, v24);

    goto LABEL_20;
  }

  v27 = [(BRBundleService *)self _findURLForBundleID:v11];
  if (v27 && (Unique = _CFBundleCreateUnique()) != 0)
  {
    v29 = Unique;
    v30 = objc_autoreleasePoolPush();
    v31 = [[BRMangledID alloc] initWithAppLibraryName:v10];
    v56 = 0;
    v53 = [BRContainer propertiesForMangledID:v31 usingBundle:v29 minimumBundleVersion:v12 bundleIcons:&v56];
    v32 = v56;

    objc_autoreleasePoolPop(v30);
    CFRelease(v29);
    v55 = v27;
    v54 = [LSApplicationProxy applicationProxyForBundleURL:v27];
    v33 = [v54 sdkVersion];
    v34 = [v33 compare:@"8.0" options:64];

    if (v34 == -1)
    {
      objc_opt_class();
      v45 = v53;
      if (objc_opt_isKindOfClass())
      {
        v46 = v53;
      }

      else
      {
        v46 = [v53 mutableCopy];
      }

      v35 = v46;
      [v46 setObject:BRUbiquitousContainerSupportedFolderOne forKeyedSubscript:{BRContainerSupportedFolderLevels, v53}];
    }

    else
    {
      v35 = v53;
    }

    v47 = brc_bread_crumbs();
    v48 = brc_default_log();
    v27 = v55;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      v50 = v35;
      v51 = [v35 count];
      v52 = [v32 count];
      *buf = 138413058;
      v58 = self;
      v59 = 2048;
      v60 = v51;
      v35 = v50;
      v27 = v55;
      v61 = 2048;
      v62 = v52;
      v63 = 2112;
      v64 = v47;
      _os_log_debug_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%ld properties, %ld bundleIcons, nil)%@", buf, 0x2Au);
    }

    (*(v13 + 2))(v13, v35, v32, 0);
  }

  else
  {
    v36 = brc_bread_crumbs();
    v37 = brc_default_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v58 = v11;
      v59 = 2112;
      v60 = v27;
      v61 = 2112;
      v62 = v36;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[WARNING] can't create CFBundle (bundleID: %@, bundleURL: %@)%@", buf, 0x20u);
    }

    v38 = brc_bread_crumbs();
    v39 = brc_default_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v49 = [NSError brc_errorInvalidParameter:@"bundleID" value:v11];
      *buf = 138413314;
      v58 = self;
      v59 = 2112;
      v60 = 0;
      v61 = 2112;
      v62 = 0;
      v63 = 2112;
      v64 = v49;
      v65 = 2112;
      v66 = v38;
      _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@, %@, %@)%@", buf, 0x34u);
    }

    v32 = [NSError brc_errorInvalidParameter:@"bundleID" value:v11];
    (*(v13 + 2))(v13, 0, 0, v32);
  }

LABEL_20:
}

- (void)extractMetadataForContainerID:(id)a3 bundleID:(id)a4 minimumBundleVersion:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  memset(v26, 0, sizeof(v26));
  sub_100001004(0, "[BRBundleService extractMetadataForContainerID:bundleID:minimumBundleVersion:reply:]", 160, 0, v26);
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219522;
    v28 = v26[0];
    v29 = 2112;
    v30 = self;
    v31 = 2080;
    v32 = "[BRBundleService extractMetadataForContainerID:bundleID:minimumBundleVersion:reply:]";
    v33 = 2112;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    v38 = v12;
    v39 = 2112;
    v40 = v14;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@: %s %@, %@, %@%@", buf, 0x48u);
  }

  if (qword_100008608 != -1)
  {
    sub_100002220();
  }

  v16 = qword_100008610;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100001DC4;
  v21[3] = &unk_1000042E0;
  v21[4] = self;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v10;
  dispatch_async(v16, v21);

  sub_1000011D4(v26);
}

- (id)_findURLForBundleID:(id)a3
{
  v3 = [LSApplicationProxy applicationProxyForIdentifier:a3];
  v4 = [v3 bundleURL];

  return v4;
}

@end