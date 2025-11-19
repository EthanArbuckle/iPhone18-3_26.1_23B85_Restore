@interface WiFiLogConfigDiagnosticExtension
- (BOOL)applyOrRemoveManagedDomain:(BOOL)a3 fileURL:(id)a4;
- (BOOL)postValuesChangedInDomains:(id)a3;
- (id)__attachmentsForTimberlorryWithParameters:(id)a3;
- (id)attachmentList;
- (id)attachmentsForParameters:(id)a3;
- (unint64_t)attachmentSizes:(id)a3;
- (void)clearTimers;
- (void)removeAndApplyNoLoggingToCoreCapture;
- (void)setupWithParameters:(id)a3;
- (void)teardownWithParameters:(id)a3;
@end

@implementation WiFiLogConfigDiagnosticExtension

- (id)attachmentList
{
  v2 = MegaWiFiDELog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446466;
    v5 = "[WiFiLogConfigDiagnosticExtension attachmentList]";
    v6 = 1024;
    v7 = 84;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: attachmentList called", &v4, 0x12u);
  }

  return &__NSArray0__struct;
}

- (id)__attachmentsForTimberlorryWithParameters:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v5 = qword_10000C360;
  v25 = qword_10000C360;
  if (!qword_10000C360)
  {
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100003050;
    v20 = &unk_100008260;
    v21 = &v22;
    sub_100003050(&v17);
    v5 = v23[3];
  }

  v6 = v5;
  _Block_object_dispose(&v22, 8);
  v7 = [v5 sharedClient];
  if (v7)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v8 = qword_10000C370;
    v25 = qword_10000C370;
    if (!qword_10000C370)
    {
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_100003218;
      v20 = &unk_100008260;
      v21 = &v22;
      sub_100003218(&v17);
      v8 = v23[3];
    }

    v9 = v8;
    _Block_object_dispose(&v22, 8);
    v10 = [v8 requestWithItemID:59 configuration:0];
    v26 = v10;
    v11 = [NSArray arrayWithObjects:&v26 count:1];
    v16 = 0;
    v12 = [v7 collectLogs:v11 configuration:&off_1000085B8 update:0 receipts:0 error:&v16];
    v13 = v16;

    if (v12)
    {
      v14 = [DEAttachmentItem attachmentWithPathURL:v12];
      [v4 addObject:v14];
    }
  }

  return v4;
}

- (unint64_t)attachmentSizes:(id)a3
{
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) filesize];
        v6 += [v9 unsignedIntValue];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)attachmentsForParameters:(id)a3
{
  v4 = a3;
  self->_attachmentsForParametersStartTime = CFAbsoluteTimeGetCurrent();
  v5 = +[NSMutableArray array];
  v6 = MegaWiFiDELog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136446722;
    v14 = "[WiFiLogConfigDiagnosticExtension attachmentsForParameters:]";
    v15 = 1024;
    v16 = 123;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: attachmentsForParameters called with parameters: %@", &v13, 0x1Cu);
  }

  if (v4)
  {
    if ([v4 count])
    {
      v7 = [v4 objectForKey:@"hostAppString"];

      if (v7)
      {
        v8 = [v4 objectForKey:@"hostAppString"];
        if ([v8 isEqualToString:@"Timberlorry"])
        {
          v9 = MegaWiFiDELog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136446466;
            v14 = "[WiFiLogConfigDiagnosticExtension attachmentsForParameters:]";
            v15 = 1024;
            v16 = 132;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: calling __attachmentsForTimberlorryWithParameters", &v13, 0x12u);
          }

          v10 = [(WiFiLogConfigDiagnosticExtension *)self __attachmentsForTimberlorryWithParameters:v4];
          [v5 addObjectsFromArray:v10];
        }
      }
    }
  }

  v11 = MegaWiFiDELog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136446722;
    v14 = "[WiFiLogConfigDiagnosticExtension attachmentsForParameters:]";
    v15 = 1024;
    v16 = 141;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: attachmentsForParameters done with attachments %@", &v13, 0x1Cu);
  }

  self->_attachmentsForParametersEndTime = CFAbsoluteTimeGetCurrent();
  self->_attachmentSize = [(WiFiLogConfigDiagnosticExtension *)self attachmentSizes:v5];
  self->_attachmentCount = [v5 count];

  return v5;
}

- (void)removeAndApplyNoLoggingToCoreCapture
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleURL];

  v5 = [v4 URLByAppendingPathComponent:@"WiFiLogConfigDiagnosticExtension/NoLogging_ManagedDefaultFiles/"];
  v6 = MegaWiFiDELog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = getuid();
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 bundleURL];
    *buf = 136447234;
    v45 = "[WiFiLogConfigDiagnosticExtension removeAndApplyNoLoggingToCoreCapture]";
    v46 = 1024;
    v47 = 164;
    v48 = 1024;
    v49 = v7;
    v50 = 2112;
    v51 = v4;
    v52 = 2112;
    v53 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: uid num %d mainBundleURL %@ bundleForClass.bundleURL %@", buf, 0x2Cu);
  }

  v10 = +[NSFileManager defaultManager];
  v42 = 0;
  v11 = [v10 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:0 error:&v42];
  v12 = v42;
  if (v12)
  {
    v35 = MegaWiFiDELog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_1000032E4();
    }
  }

  else
  {
    v32 = v10;
    v33 = v5;
    v34 = v4;
    v13 = +[NSMutableArray array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v31 = v11;
    obj = v11;
    v14 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    v35 = v13;
    if (v14)
    {
      v15 = v14;
      v16 = @"com.apple.corecapture.configure";
      v17 = *v39;
      do
      {
        v18 = 0;
        v36 = v15;
        do
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v38 + 1) + 8 * v18);
          v20 = [v19 lastPathComponent];
          v21 = [v20 stringByDeletingPathExtension];
          if ([v21 containsString:v16])
          {
            v22 = v16;
            [v13 addObject:v21];
            v23 = MegaWiFiDELog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              v45 = "[WiFiLogConfigDiagnosticExtension removeAndApplyNoLoggingToCoreCapture]";
              v46 = 1024;
              v47 = 193;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: Removing existing com.apple.corecapture.configure config", buf, 0x12u);
            }

            v24 = [(WiFiLogConfigDiagnosticExtension *)self applyOrRemoveManagedDomain:0 fileURL:v19];
            v25 = MegaWiFiDELog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446722;
              v45 = "[WiFiLogConfigDiagnosticExtension removeAndApplyNoLoggingToCoreCapture]";
              v46 = 1024;
              v47 = 197;
              v48 = 1024;
              v49 = v24;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: Posting values changed for removing com.apple.corecapture.configure success: %d", buf, 0x18u);
            }

            v13 = v35;
            [(WiFiLogConfigDiagnosticExtension *)self postValuesChangedInDomains:v35];
            sleep(0xCu);
            v26 = MegaWiFiDELog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              v45 = "[WiFiLogConfigDiagnosticExtension removeAndApplyNoLoggingToCoreCapture]";
              v46 = 1024;
              v47 = 202;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: Posting values done for removing com.apple.corecapture.configure sleep(12);", buf, 0x12u);
            }

            v27 = MegaWiFiDELog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              v45 = "[WiFiLogConfigDiagnosticExtension removeAndApplyNoLoggingToCoreCapture]";
              v46 = 1024;
              v47 = 207;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: Applying NoLogging com.apple.corecapture.configure config", buf, 0x12u);
            }

            v28 = [(WiFiLogConfigDiagnosticExtension *)self applyOrRemoveManagedDomain:1 fileURL:v19];
            v29 = MegaWiFiDELog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446722;
              v45 = "[WiFiLogConfigDiagnosticExtension removeAndApplyNoLoggingToCoreCapture]";
              v46 = 1024;
              v47 = 211;
              v48 = 1024;
              v49 = v28;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: Posting values changed for applying NoLogging com.apple.corecapture.configure success: %d", buf, 0x18u);
            }

            [(WiFiLogConfigDiagnosticExtension *)self postValuesChangedInDomains:v35];
            sleep(0xCu);
            v30 = MegaWiFiDELog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              v45 = "[WiFiLogConfigDiagnosticExtension removeAndApplyNoLoggingToCoreCapture]";
              v46 = 1024;
              v47 = 216;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: Posting values done for applying NoLogging com.apple.corecapture.configure sleep(12);", buf, 0x12u);
            }

            v16 = v22;
            v15 = v36;
          }

          v18 = v18 + 1;
        }

        while (v15 != v18);
        v15 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v15);
    }

    v5 = v33;
    v4 = v34;
    v11 = v31;
    v10 = v32;
    v12 = 0;
  }
}

- (BOOL)applyOrRemoveManagedDomain:(BOOL)a3 fileURL:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = [v5 lastPathComponent];
  v7 = [v6 stringByDeletingPathExtension];
  v8 = [v5 pathExtension];
  v9 = [v8 isEqualToString:@"plist"];

  if (v9)
  {
    v10 = [NSData dataWithContentsOfURL:v5];
    if (v10)
    {
      if (v7)
      {
        if (!v4)
        {
          v12 = +[NSDictionary dictionary];
          v16 = _CFPreferencesWriteManagedDomain();
          v14 = v16 != 0;
          v11 = MegaWiFiDELog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136447234;
            v21 = "[WiFiLogConfigDiagnosticExtension applyOrRemoveManagedDomain:fileURL:]";
            v22 = 1024;
            v23 = 270;
            v24 = 1024;
            v25 = v16 != 0;
            v26 = 2112;
            v27 = v5;
            v28 = 2112;
            v29 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: applyOrRemoveManagedDomain Removed Managed Default success %d, %@ plist: %@", buf, 0x2Cu);
          }

          goto LABEL_19;
        }

        v19 = 0;
        v11 = [NSPropertyListSerialization propertyListWithData:v10 options:0 format:0 error:&v19];
        v12 = v19;
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = _CFPreferencesWriteManagedDomain();
            v14 = v13 != 0;
            v15 = MegaWiFiDELog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136447234;
              v21 = "[WiFiLogConfigDiagnosticExtension applyOrRemoveManagedDomain:fileURL:]";
              v22 = 1024;
              v23 = 268;
              v24 = 1024;
              v25 = v13 != 0;
              v26 = 2112;
              v27 = v5;
              v28 = 2112;
              v29 = v11;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: applyOrRemoveManagedDomain Applied Managed Default success %d, %@ plist: %@", buf, 0x2Cu);
            }

LABEL_19:
LABEL_24:

            goto LABEL_25;
          }
        }

        v17 = MegaWiFiDELog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          sub_1000033E4();
        }
      }

      else
      {
        v12 = MegaWiFiDELog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100003478();
        }
      }
    }

    else
    {
      v12 = MegaWiFiDELog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000034F4();
      }
    }

    v14 = 0;
    goto LABEL_24;
  }

  v10 = MegaWiFiDELog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100003368();
  }

  v14 = 0;
LABEL_25:

  return v14;
}

- (BOOL)postValuesChangedInDomains:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4)
  {
    v5 = MegaWiFiDELog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446722;
      v9 = "[WiFiLogConfigDiagnosticExtension postValuesChangedInDomains:]";
      v10 = 1024;
      v11 = 282;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: postValuesChangedInDomains Updating Domains with changes %@", &v8, 0x1Cu);
    }

    _CFPreferencesManagementStatusChangedForDomains();
    _CFPreferencesPostValuesChangedInDomains();
    v6 = MegaWiFiDELog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446466;
      v9 = "[WiFiLogConfigDiagnosticExtension postValuesChangedInDomains:]";
      v10 = 1024;
      v11 = 287;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: postValuesChangedInDomains Updating Domains with changes done", &v8, 0x12u);
    }
  }

  return v4 != 0;
}

- (void)setupWithParameters:(id)a3
{
  v4 = a3;
  v5 = MegaWiFiDELog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446722;
    v15 = "[WiFiLogConfigDiagnosticExtension setupWithParameters:]";
    v16 = 1024;
    v17 = 347;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: setupWithParameters called with parameters: %@", &v14, 0x1Cu);
  }

  [(WiFiLogConfigDiagnosticExtension *)self clearTimers];
  self->_setupWithParametersStartTime = CFAbsoluteTimeGetCurrent();
  if (v4 && [v4 count])
  {
    v6 = [v4 objectForKey:@"hostAppString"];

    if (v6)
    {
      v7 = [v4 objectForKey:@"hostAppString"];
      if ([v7 isEqualToString:@"Timberlorry"])
      {
        v8 = MegaWiFiDELog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136446466;
          v15 = "[WiFiLogConfigDiagnosticExtension setupWithParameters:]";
          v16 = 1024;
          v17 = 357;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: calling modifyManagedDefaults:TRUE due to hostAppString:Timberlorry to apply MegaWiFi", &v14, 0x12u);
        }

        [(WiFiLogConfigDiagnosticExtension *)self modifyManagedDefaults:1];
      }
    }

    v9 = [v4 objectForKey:@"Action"];

    if (v9)
    {
      v10 = [v4 objectForKey:@"Action"];
      if ([v10 isEqualToString:@"Apply"])
      {
        v11 = MegaWiFiDELog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136446466;
          v15 = "[WiFiLogConfigDiagnosticExtension setupWithParameters:]";
          v16 = 1024;
          v17 = 365;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: calling modifyManagedDefaults:TRUE due to Action:Apply to apply MegaWiFi", &v14, 0x12u);
        }

        [(WiFiLogConfigDiagnosticExtension *)self modifyManagedDefaults:1];
      }

      if ([v10 isEqualToString:@"Remove"])
      {
        v12 = MegaWiFiDELog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136446466;
          v15 = "[WiFiLogConfigDiagnosticExtension setupWithParameters:]";
          v16 = 1024;
          v17 = 369;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: calling modifyManagedDefaults:FALSE due to Action:Remove to remove MegaWiFi", &v14, 0x12u);
        }

        [(WiFiLogConfigDiagnosticExtension *)self modifyManagedDefaults:0];
      }

      if ([v10 isEqualToString:@"RemoveCC"])
      {
        v13 = MegaWiFiDELog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136446466;
          v15 = "[WiFiLogConfigDiagnosticExtension setupWithParameters:]";
          v16 = 1024;
          v17 = 373;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: calling removeAndApplyNoLoggingToCoreCapture due to Action:RemoveCC to remove and apply noLoggingCC", &v14, 0x12u);
        }

        [(WiFiLogConfigDiagnosticExtension *)self removeAndApplyNoLoggingToCoreCapture];
      }
    }
  }

  self->_setupWithParametersEndTime = CFAbsoluteTimeGetCurrent();
}

- (void)teardownWithParameters:(id)a3
{
  v4 = a3;
  v5 = MegaWiFiDELog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v12 = "[WiFiLogConfigDiagnosticExtension teardownWithParameters:]";
    v13 = 1024;
    v14 = 383;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: teardownWithParameters called with parameters: %@", buf, 0x1Cu);
  }

  self->_teardownWithParametersStartTime = CFAbsoluteTimeGetCurrent();
  if (v4)
  {
    if ([v4 count])
    {
      v6 = [v4 objectForKey:@"hostAppString"];

      if (v6)
      {
        v7 = [v4 objectForKey:@"hostAppString"];
        if ([v7 isEqualToString:@"Timberlorry"])
        {
          v8 = MegaWiFiDELog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446466;
            v12 = "[WiFiLogConfigDiagnosticExtension teardownWithParameters:]";
            v13 = 1024;
            v14 = 393;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}s::%d: calling modifyManagedDefaults:FALSE due to hostAppString:Timberlorry to remove MegaWiFi", buf, 0x12u);
          }

          [(WiFiLogConfigDiagnosticExtension *)self modifyManagedDefaults:0];
        }
      }
    }
  }

  self->_teardownWithParametersEndTime = CFAbsoluteTimeGetCurrent();
  v10 = v4;
  v9 = v4;
  AnalyticsSendEventLazy();
  [(WiFiLogConfigDiagnosticExtension *)self clearTimers:_NSConcreteStackBlock];
}

- (void)clearTimers
{
  self->_setupWithParametersStartTime = 0.0;
  self->_setupWithParametersEndTime = 0.0;
  self->_attachmentsForParametersStartTime = 0.0;
  self->_attachmentsForParametersEndTime = 0.0;
  self->_teardownWithParametersStartTime = 0.0;
  self->_teardownWithParametersEndTime = 0.0;
  self->_attachmentSize = 0;
  self->_attachmentCount = 0;
}

@end