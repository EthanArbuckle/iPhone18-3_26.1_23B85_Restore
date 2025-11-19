@interface SpotlightDiagnosticExtension
- (id)attachmentList;
- (id)attachmentsForParameters:(id)a3;
- (id)runHelperWithDestination:(id)a3;
@end

@implementation SpotlightDiagnosticExtension

- (id)attachmentList
{
  v3 = +[CSSearchableIndex defaultSearchableIndex];
  v4 = v3;
  if (v3)
  {
    [v3 _issueCommand:@"taptoradar" completionHandler:&stru_100004228];
  }

  v5 = objc_opt_new();
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search/Ranking"];

  if (v7)
  {
    v8 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search/Ranking"];
    v9 = [NSRegularExpression regularExpressionWithPattern:@"Spotlight_Ranking_Diagnostic_Dump_.*log$" options:0 error:0];
    v10 = [(SpotlightDiagnosticExtension *)self filesInDir:v8 matchingPattern:v9 excludingPattern:0];

    if ([v10 count])
    {
      [v5 addObjectsFromArray:v10];
    }
  }

  return v5;
}

- (id)attachmentsForParameters:(id)a3
{
  v51 = a3;
  v4 = [v51 objectForKeyedSubscript:@"DEExtensionAttachmentsParamBundleIDKey"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 firstObject];

      v4 = v5;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v4 = 0;
    }
  }

  v6 = SDLogCategoryExtension();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v51;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[SpotlightDiagnosticExtension attachmentsForParameters:] - %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v62 = 0x3032000000;
  v63 = sub_10000165C;
  v64 = sub_10000166C;
  v65 = objc_opt_new();
  v7 = [SDCoreSpotlightDiagnosticClient defaultClientWithBundleID:v4 protectionClass:0];
  v8 = dispatch_group_create();
  v9 = +[DEUtils uniqueTemporaryDirectory];
  v10 = SDLogCategoryExtension();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [v9 path];
    sub_100001C34(v11, v60, v10);
  }

  if (SDIsAppleInternalInstall())
  {
    v12 = [NSURL fileURLWithPath:@"CoreSpotlight-status.log" relativeToURL:v9];
    dispatch_group_enter(v8);
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_100001674;
    v55[3] = &unk_100004250;
    v13 = v12;
    v56 = v13;
    v14 = v8;
    v57 = v14;
    [v7 getStatus:0 protectionClasses:0 queue:0 completionHandler:v55];
    v15 = dispatch_time(0, 10000000000);
    if (dispatch_group_wait(v14, v15))
    {
      v16 = SDLogCategoryExtension();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100001C8C(v16, v17, v18, v19, v20, v21, v22, v23);
      }
    }

    else
    {
      v16 = [DEAttachmentItem attachmentWithPathURL:v13];
      if (v16)
      {
        [*(*(&buf + 1) + 40) addObject:v16];
      }
    }
  }

  dispatch_group_enter(v8);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100001710;
  v52[3] = &unk_100004278;
  p_buf = &buf;
  v24 = v8;
  v53 = v24;
  [v7 issueDiagnose:0 privacyLevel:0 completionHandler:v52];
  v25 = dispatch_time(0, 30000000000);
  if (dispatch_group_wait(v24, v25))
  {
    v26 = SDLogCategoryExtension();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_100001CC4(v26, v27, v28, v29, v30, v31, v32, v33);
    }
  }

  if (os_variant_has_internal_diagnostics() && os_variant_allows_internal_security_policies())
  {
    v34 = [(SpotlightDiagnosticExtension *)self runHelperWithDestination:v9];
    v35 = SDLogCategoryExtension();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *v58 = 138412290;
      v59 = v34;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[SpotlightDiagnosticExtension attachmentsForParameters:] - helperResultURL %@", v58, 0xCu);
    }
  }

  v36 = +[NSFileManager defaultManager];
  v37 = [v36 fileExistsAtPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search"];

  if (v37)
  {
    v38 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search"];
    v39 = [NSRegularExpression regularExpressionWithPattern:@".*log$" options:0 error:0];
    v40 = [(SpotlightDiagnosticExtension *)self filesInDir:v38 matchingPattern:v39 excludingPattern:0];

    if ([v40 count])
    {
      [*(*(&buf + 1) + 40) addObjectsFromArray:v40];
    }
  }

  v41 = +[NSFileManager defaultManager];
  v42 = [v41 fileExistsAtPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/com.apple.corespotlight.asl"];

  if (v42)
  {
    v43 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Search"];
    v44 = [NSRegularExpression regularExpressionWithPattern:@".*asl$" options:0 error:0];
    v45 = [(SpotlightDiagnosticExtension *)self filesInDir:v43 matchingPattern:v44 excludingPattern:0];

    if ([v45 count])
    {
      [*(*(&buf + 1) + 40) addObjectsFromArray:v45];
    }
  }

  v46 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter"];
  v47 = [NSRegularExpression regularExpressionWithPattern:@"(searchd|Spotlight|CoreSpotlightService|com.apple.spotlight.IndexAgent|spotlightknowledged|CoreSpotlightImportExtension*_iOS).*(ips|ips.synced)$" options:0 error:0];
  v48 = [(SpotlightDiagnosticExtension *)self filesInDir:v46 matchingPattern:v47 excludingPattern:0];

  if ([v48 count])
  {
    [*(*(&buf + 1) + 40) addObjectsFromArray:v48];
  }

  v49 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v49;
}

- (id)runHelperWithDestination:(id)a3
{
  v3 = a3;
  v4 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.spotlight.diagnostic.helper" options:4096];
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DESpotlightDiagnosticHelperProtocol];
  [v4 setRemoteObjectInterface:v5];

  [v4 resume];
  v6 = [v4 remoteObjectProxy];
  v7 = [DEDaemonHelper generateSandboxExtensionWithDestinationDir:v3 pingTarget:v6];

  v8 = dispatch_semaphore_create(0);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000165C;
  v31 = sub_10000166C;
  v32 = 0;
  v9 = [v4 remoteObjectProxy];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100001B08;
  v23[3] = &unk_1000042A0;
  v26 = &v27;
  v10 = v8;
  v24 = v10;
  v11 = v4;
  v25 = v11;
  [v9 runDiagnosticWithDestinationDir:v3 sandboxExtension:v7 replyURL:v23];

  v12 = dispatch_time(0, 20000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    v13 = SDLogCategoryExtension();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100001DFC(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  v21 = v28[5];

  _Block_object_dispose(&v27, 8);

  return v21;
}

@end