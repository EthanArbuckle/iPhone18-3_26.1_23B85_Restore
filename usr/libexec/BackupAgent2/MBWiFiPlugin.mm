@interface MBWiFiPlugin
- (id)endingRestoreWithPolicy:(id)policy engine:(id)engine;
@end

@implementation MBWiFiPlugin

- (id)endingRestoreWithPolicy:(id)policy engine:(id)engine
{
  policyCopy = policy;
  engineCopy = engine;
  if (![engineCopy restoresPrimaryAccount])
  {
    goto LABEL_35;
  }

  settingsContext = [engineCopy settingsContext];
  shouldRestoreSystemFiles = [settingsContext shouldRestoreSystemFiles];

  if (!shouldRestoreSystemFiles)
  {
    goto LABEL_35;
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Merging known Wi-Fi networks", buf, 2u);
    _MBLog();
  }

  persona = [engineCopy persona];
  sharedIncompleteRestoreDirectory = [persona sharedIncompleteRestoreDirectory];

  v12 = [sharedIncompleteRestoreDirectory stringByAppendingPathComponent:@"/var/preferences/SystemConfiguration/com.apple.wifi.plist"];
  v13 = [sharedIncompleteRestoreDirectory stringByAppendingPathComponent:@"/var/preferences/SystemConfiguration/com.apple.wifi-networks.plist"];
  v14 = [sharedIncompleteRestoreDirectory stringByAppendingPathComponent:@"/var/preferences/com.apple.wifi.known-networks.plist"];
  v15 = +[NSFileManager defaultManager];
  v16 = [v15 fileExistsAtPath:v12];

  if (v16)
  {
    v17 = [NSDictionary dictionaryWithContentsOfFile:v12];
    v18 = v17;
    if (!v17)
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v31 = v12;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to read contents of %{public}@", buf, 0xCu);
        _MBLog();
      }

      v23 = v12;
      goto LABEL_26;
    }

    v19 = [v17 objectForKeyedSubscript:@"Version"];
    v20 = [v18 objectForKeyedSubscript:@"isWiFiPNLMigrationComplete"];
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v19;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Unexpected version key/value: %@", buf, 0xCu);
LABEL_23:
        _MBLog();
      }
    }

    else
    {
      if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        intValue = [v19 intValue];
        v22 = v14;
        if (intValue <= 13)
        {
          if ([v20 BOOLValue])
          {
            v22 = v13;
          }

          else
          {
            v22 = v12;
          }
        }

        goto LABEL_25;
      }

      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v20;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Unexpected class C migration key/value: %@", buf, 0xCu);
        goto LABEL_23;
      }
    }

    v22 = v12;
LABEL_25:
    v23 = v22;

LABEL_26:
    goto LABEL_27;
  }

  v23 = v12;
LABEL_27:
  if (!v23)
  {
    sub_10009FAF8();
  }

  v26 = WiFiManagerClientCreate();
  v27 = MBGetDefaultLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v23;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Merging known Wi-Fi networks with %{public}@", buf, 0xCu);
    _MBLog();
  }

  if (!WiFiManagerClientMergeKnownNetworks())
  {
    v28 = MBGetDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to merge known Wi-Fi networks", buf, 2u);
      _MBLog();
    }
  }

  CFRelease(v26);

LABEL_35:
  return 0;
}

@end