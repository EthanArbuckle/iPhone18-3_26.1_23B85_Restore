@interface PhotosDiagnosticsExtension
- (PhotosDiagnosticsExtension)init;
- (id)_bundleIDFromParameters:(id)a3;
- (id)attachmentList;
- (id)attachmentsForParameters:(id)a3;
- (id)latestArchiveWithinTimeCutoff:(double)a3 nameExclude:(id)a4;
- (void)diagnosticServiceStateDidChange:(char)a3 outputURL:(id)a4 error:(id)a5;
- (void)photosDiagnosticDone;
@end

@implementation PhotosDiagnosticsExtension

- (void)diagnosticServiceStateDidChange:(char)a3 outputURL:(id)a4 error:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (!v6)
  {
LABEL_7:
    [(PhotosDiagnosticsExtension *)self photosDiagnosticDone];
    goto LABEL_8;
  }

  if (v6 == -1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v9 localizedFailureReason];
      v11 = v10;
      v12 = @"<unknown reason>";
      if (v10)
      {
        v12 = v10;
      }

      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error running diagnose: %{public}@", &v13, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (id)_bundleIDFromParameters:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"DEExtensionAttachmentsParamBundleIDKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if (([&off_1000045D0 containsObject:{v9, v12}] & 1) == 0)
          {
            v10 = v9;
            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_13:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)attachmentsForParameters:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  if ([v5 isEqualToString:@"com.apple.symptomsd-diag"])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 isEqualToString:@"com.apple.symptomsd"];
  }

  v7 = [(PhotosDiagnosticsExtension *)self latestArchiveWithinTimeCutoff:0 nameExclude:600.0];
  v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v8)
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "running for %@", buf, 0xCu);
    }

    if (v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "running for symptomsd/AutoBugCapture: skip databases and deleteOnAttach", buf, 2u);
    }

    v10 = [(PhotosDiagnosticsExtension *)self _bundleIDFromParameters:v4];
    v11 = [(PhotosDiagnosticsExtension *)self photosDiagnosticIncludingDatabases:v6 ^ 1 bundleID:v10];

    v12 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v12)
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Returning %@ as attachment", buf, 0xCu);
      }

      v13 = [DEAttachmentItem attachmentWithPath:v11];
      v14 = v13;
      if (v6)
      {
        [v13 setDeleteOnAttach:&__kCFBooleanTrue];
      }

      v17 = v14;
      v15 = [NSArray arrayWithObjects:&v17 count:1];

      v7 = v11;
    }

    else
    {
      if (v12)
      {
        *buf = 138412290;
        v20 = CPLDiagnosticsService;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ did not generate a Photos Diagnostic", buf, 0xCu);
      }

      v7 = 0;
      v15 = &__NSArray0__struct;
    }
  }

  else
  {
    if (v8)
    {
      *buf = 138412546;
      v20 = CPLDiagnosticsName;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "found recent %@: %@", buf, 0x16u);
    }

    v10 = [DEAttachmentItem attachmentWithPath:v7];
    v18 = v10;
    v15 = [NSArray arrayWithObjects:&v18 count:1];
  }

  return v15;
}

- (id)attachmentList
{
  v3 = +[PLDiagnostics logDirectoryURL];
  v4 = +[PLDiagnostics matchingNameExpression];
  v5 = +[PLDiagnostics excludingNameExpression];
  v6 = [(PhotosDiagnosticsExtension *)self filesInDir:v3 matchingPattern:v4 excludingPattern:v5];

  return v6;
}

- (void)photosDiagnosticDone
{
  doneHandler = self->_doneHandler;
  if (doneHandler)
  {
    doneHandler[2](doneHandler, a2);
    v4 = self->_doneHandler;
    self->_doneHandler = 0;
  }
}

- (id)latestArchiveWithinTimeCutoff:(double)a3 nameExclude:(id)a4
{
  v5 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100001808;
  v25 = sub_100001818;
  v26 = +[NSDate distantPast];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100001808;
  v19 = sub_100001818;
  v20 = 0;
  v27 = NSURLCreationDateKey;
  v6 = [NSArray arrayWithObjects:&v27 count:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001CB4;
  v11[3] = &unk_1000041C0;
  v7 = v5;
  v12 = v7;
  v13 = &v21;
  v14 = &v15;
  [PLDiagnostics enumerateDiagnosticsURLsIncludingPropertyiesForKeys:v6 handler:v11];

  v8 = [[NSDate alloc] initWithTimeIntervalSinceNow:-a3];
  if ([v22[5] compare:v8] == 1)
  {
    v9 = [v16[5] path];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

- (PhotosDiagnosticsExtension)init
{
  v5.receiver = self;
  v5.super_class = PhotosDiagnosticsExtension;
  v2 = [(PhotosDiagnosticsExtension *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PhotosDiagnosticsExtension *)v2 setLoggingConsent:CPLDiagnosticsConsentText];
  }

  return v3;
}

@end