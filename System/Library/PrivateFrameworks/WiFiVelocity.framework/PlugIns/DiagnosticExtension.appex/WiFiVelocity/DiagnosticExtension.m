@interface DiagnosticExtension
- (id)__attachmentsForDiagnosticsModeWithParameters:(id)a3;
- (id)attachmentsForParameters:(id)a3;
@end

@implementation DiagnosticExtension

- (id)__attachmentsForDiagnosticsModeWithParameters:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = objc_alloc_init(W5Client);
  if (v5)
  {
    v6 = [v3 objectForKey:@"DiagnosticsModeUUID"];
    v7 = v6;
    if (v6)
    {
      v21[0] = @"Compress";
      v21[1] = @"DiagnosticsModeUUID";
      v22[0] = &__kCFBooleanTrue;
      v22[1] = v6;
      v8 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
      v16 = 0;
      v9 = [v5 collectLogsDiagnosticMode:v8 update:0 receipts:0 error:&v16];
      v10 = v16;

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Waiting for WiFiVelocity to complete log collection", &buf, 2u);
      }

      if (v9)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "WiFiVelocity returned: %@", &buf, 0xCu);
        }

        v17 = 0;
        v18 = &v17;
        v19 = 0x2050000000;
        v11 = qword_100008150;
        v20 = qword_100008150;
        if (!qword_100008150)
        {
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v24 = sub_10000118C;
          v25 = &unk_100004120;
          v26 = &v17;
          sub_10000118C(&buf);
          v11 = v18[3];
        }

        v12 = v11;
        _Block_object_dispose(&v17, 8);
        v13 = [v9 path];
        v14 = [v11 attachmentWithPath:v13];

        [v4 addObject:v14];
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "WiFiVelocity Diagnostic Mode DE, missing DM UUID in params=%@", &buf, 0xCu);
    }
  }

  return v4;
}

- (id)attachmentsForParameters:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "WiFiVelocity Diagnostic Mode DE, params=%@", &v11, 0xCu);
  }

  v5 = [v4 objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 lowercaseString];
    if ([v7 hasPrefix:@"com.apple.taptoradar"])
    {

LABEL_7:
      v9 = [(DiagnosticExtension *)self __attachmentsForDiagnosticsModeWithParameters:v4];
      goto LABEL_11;
    }

    v8 = [v6 isEqualToString:@"com.apple.diagnosticextensionsd"];

    if (v8)
    {
      goto LABEL_7;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "WiFiVelocity Diagnostic Mode DE, Unrecognized HostApp: %@", &v11, 0xCu);
  }

  v9 = &__NSArray0__struct;
LABEL_11:

  return v9;
}

@end