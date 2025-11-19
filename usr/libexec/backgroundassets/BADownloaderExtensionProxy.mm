@interface BADownloaderExtensionProxy
- (BADownloaderExtensionProxy)initWithExtension:(id)a3 xpcConnection:(id)a4 parentAppRecord:(id)a5 applicationInfo:(id)a6;
- (BOOL)sendAuthenticationChallenge:(id)a3 download:(id)a4 completionHandler:(id)a5;
- (NSString)debugDescription;
- (id)extendClientSandboxForStagedURL:(id)a3 allowWrites:(BOOL)a4;
- (void)_checkForExit;
- (void)_sendingMessage;
- (void)_startExitTimer;
- (void)backgroundDownload:(id)a3 failedWithError:(id)a4 completionHandler:(id)a5;
- (void)backgroundDownload:(id)a3 finishedWithSandboxToken:(id)a4 completionHandler:(id)a5;
- (void)decrementWakeAssertionWithReply:(id)a3;
- (void)extensionWillTerminate;
- (void)incrementWakeAssertionWithReply:(id)a3;
- (void)invalidate;
- (void)markPurgeableWithFileURL:(id)a3 sandboxToken:(id)a4 reply:(id)a5;
- (void)requestDownloadsWithContentRequest:(int64_t)a3 manifestURL:(id)a4 extensionInfo:(id)a5 completion:(id)a6;
- (void)wakeupForTokenWithReply:(id)a3;
@end

@implementation BADownloaderExtensionProxy

- (BADownloaderExtensionProxy)initWithExtension:(id)a3 xpcConnection:(id)a4 parentAppRecord:(id)a5 applicationInfo:(id)a6
{
  v68 = a3;
  v69 = a4;
  v66 = a5;
  v70 = a6;
  v88.receiver = self;
  v88.super_class = BADownloaderExtensionProxy;
  v10 = [(BADownloaderExtensionProxy *)&v88 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_19;
  }

  [(BADownloaderExtensionProxy *)v10 setExtensionConnection:v69];
  [(BADownloaderExtensionProxy *)v11 setExtensionProcess:v68];
  [(BADownloaderExtensionProxy *)v11 setApplicationInfo:v70];
  v67 = [v70 applicationIdentifier];
  v65 = [v67 _baassets_validUTI];
  if (![v65 isEqualToString:v67])
  {

LABEL_20:
    v63 = 0;
    goto LABEL_21;
  }

  [(BADownloaderExtensionProxy *)v11 setIdentifier:v65];
  v12 = [(BADownloaderExtensionProxy *)v11 identifier];
  v13 = [NSString stringWithFormat:@"com.apple.backgroundassets.extension.%@.shutdown_queue", v12];
  v14 = v13;
  v15 = dispatch_queue_create([v13 UTF8String], 0);
  [(BADownloaderExtensionProxy *)v11 setShutdownQueue:v15];

  [(BADownloaderExtensionProxy *)v11 setParentAppRecord:v66];
  v16 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BADownloaderExtensionSyncProtocol];
  v17 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v16 setClasses:v17 forSelector:"downloadsForRequest:manifestURL:manifestToken:extensionInfo:completionHandler:" argumentIndex:1 ofReply:0];

  v18 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v16 setClasses:v18 forSelector:"downloadsForRequest:manifestURL:manifestToken:extensionInfo:completionHandler:" argumentIndex:2 ofReply:0];

  v19 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v16 setClasses:v19 forSelector:"downloadsForRequest:manifestURL:manifestToken:extensionInfo:completionHandler:" argumentIndex:3 ofReply:0];

  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [NSSet setWithObjects:v20, v21, objc_opt_class(), 0];
  [v16 setClasses:v22 forSelector:"downloadsForRequest:manifestURL:manifestToken:extensionInfo:completionHandler:" argumentIndex:1 ofReply:1];

  v23 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v16 setClasses:v23 forSelector:"receivedAuthenticationChallenge:download:completionHandler:" argumentIndex:0 ofReply:0];

  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = [NSSet setWithObjects:v24, v25, v26, objc_opt_class(), 0];
  [v16 setClasses:v27 forSelector:"receivedAuthenticationChallenge:download:completionHandler:" argumentIndex:1 ofReply:0];

  v28 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v16 setClasses:v28 forSelector:"receivedAuthenticationChallenge:download:completionHandler:" argumentIndex:1 ofReply:1];

  v91[0] = objc_opt_class();
  v91[1] = objc_opt_class();
  v91[2] = objc_opt_class();
  v91[3] = objc_opt_class();
  v29 = [NSArray arrayWithObjects:v91 count:4];
  v30 = [NSSet setWithArray:v29];
  [v16 setClasses:v30 forSelector:"backgroundDownload:failedWithError:completionHandler:" argumentIndex:0 ofReply:0];

  v90[0] = objc_opt_class();
  v90[1] = objc_opt_class();
  v90[2] = objc_opt_class();
  v90[3] = objc_opt_class();
  v31 = [NSArray arrayWithObjects:v90 count:4];
  v32 = [NSSet setWithArray:v31];
  [v16 setClasses:v32 forSelector:"backgroundDownload:finishedWithSandboxToken:completionHandler:" argumentIndex:0 ofReply:0];

  v89 = objc_opt_class();
  v33 = [NSArray arrayWithObjects:&v89 count:1];
  v34 = [NSSet setWithArray:v33];
  [v16 setClasses:v34 forSelector:"backgroundDownload:finishedWithSandboxToken:completionHandler:" argumentIndex:1 ofReply:0];

  v35 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BADownloaderExtensionClientSyncProtocol];
  v36 = [(BADownloaderExtensionProxy *)v11 extensionConnection];
  [v36 setRemoteObjectInterface:v16];

  v37 = [(BADownloaderExtensionProxy *)v11 extensionConnection];
  [v37 setExportedInterface:v35];

  v38 = [(BADownloaderExtensionProxy *)v11 extensionConnection];
  [v38 setExportedObject:v11];

  v39 = v11;
  v40 = [(BADownloaderExtensionProxy *)v39 extensionConnection];
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_100006980;
  v85[3] = &unk_100079300;
  v41 = v65;
  v86 = v41;
  v42 = v39;
  v87 = v42;
  [v40 setInterruptionHandler:v85];

  v43 = [(BADownloaderExtensionProxy *)v42 extensionConnection];
  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_1000069D4;
  v82[3] = &unk_100079300;
  v44 = v41;
  v83 = v44;
  v45 = v42;
  v84 = v45;
  [v43 setInvalidationHandler:v82];

  v46 = [(BADownloaderExtensionProxy *)v45 extensionConnection];
  [v46 resume];

  v47 = sub_100010584();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Attempting to wakeup extension connection.\n", buf, 2u);
  }

  *buf = 0;
  v79 = buf;
  v80 = 0x2020000000;
  v81 = 0;
  v48 = dispatch_semaphore_create(0);
  v49 = [(BADownloaderExtensionProxy *)v45 extensionConnection];
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_100006AA4;
  v76[3] = &unk_100079328;
  v50 = v48;
  v77 = v50;
  v51 = [v49 remoteObjectProxyWithErrorHandler:v76];
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3221225472;
  v73[2] = sub_100006B0C;
  v73[3] = &unk_100079350;
  v75 = buf;
  v52 = v50;
  v74 = v52;
  [v51 wakeupForTokenWithReply:v73];

  v53 = dispatch_time(0, 2000000000);
  if (dispatch_semaphore_wait(v52, v53))
  {
    v54 = sub_100010584();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      sub_100047BDC();
    }

LABEL_17:

    v60 = [(BADownloaderExtensionProxy *)v45 extensionConnection];
    [v60 invalidate];

    v61 = [(BADownloaderExtensionProxy *)v45 exitTimer];
    [v61 invalidate];

    v62 = 0;
    goto LABEL_18;
  }

  if (v79[24] != 1)
  {
    v54 = sub_100010584();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      sub_100047C1C();
    }

    goto LABEL_17;
  }

  v55 = sub_100010584();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    *v71 = 0;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Wakeup extension succeeded.\n", v71, 2u);
  }

  v56 = [(BADownloaderExtensionProxy *)v45 applicationInfo];
  [v56 willLaunchExtension];

  v57 = [(BADownloaderExtensionProxy *)v45 applicationInfo];
  v58 = [(BADownloaderExtensionProxy *)v45 extensionConnection];
  v59 = v58;
  if (v58)
  {
    [v58 auditToken];
  }

  else
  {
    *v71 = 0u;
    v72 = 0u;
  }

  [v57 determineInstallSourceIfUnsetFromAuditToken:v71];

  [(BADownloaderExtensionProxy *)v45 _startExitTimer];
  v62 = 1;
LABEL_18:

  _Block_object_dispose(buf, 8);
  if ((v62 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_19:
  v63 = v11;
LABEL_21:

  return v63;
}

- (void)requestDownloadsWithContentRequest:(int64_t)a3 manifestURL:(id)a4 extensionInfo:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(BADownloaderExtensionProxy *)self extendClientSandboxForStagedURL:v10 allowWrites:0];
  if (v13)
  {
    [(BADownloaderExtensionProxy *)self _sendingMessage];
    v14 = [(BADownloaderExtensionProxy *)self extensionConnection];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100006D1C;
    v21[3] = &unk_100079378;
    v21[4] = self;
    v15 = v12;
    v22 = v15;
    v16 = [v14 remoteObjectProxyWithErrorHandler:v21];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100006DBC;
    v19[3] = &unk_1000793A0;
    v19[4] = self;
    v20 = v15;
    [v16 downloadsForRequest:a3 manifestURL:v10 manifestToken:v13 extensionInfo:v11 completionHandler:v19];
  }

  else
  {
    v17 = sub_100010584();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100047D48();
    }

    v18 = +[NSSet set];
    (*(v12 + 2))(v12, 0, v18);
  }
}

- (BOOL)sendAuthenticationChallenge:(id)a3 download:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  [(BADownloaderExtensionProxy *)self _sendingMessage];
  v11 = [(BADownloaderExtensionProxy *)self extensionConnection];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100006F98;
  v17[3] = &unk_1000793C8;
  v17[4] = self;
  v17[5] = &v18;
  v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007010;
  v15[3] = &unk_1000793F0;
  v13 = v10;
  v15[4] = self;
  v16 = v13;
  [v12 receivedAuthenticationChallenge:v8 download:v9 completionHandler:v15];

  LOBYTE(self) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return self;
}

- (void)extensionWillTerminate
{
  v3 = [(BADownloaderExtensionProxy *)self extensionConnection];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000070EC;
  v5[3] = &unk_100079328;
  v5[4] = self;
  v4 = [v3 remoteObjectProxyWithErrorHandler:v5];
  [v4 extensionWillTerminate];
}

- (void)backgroundDownload:(id)a3 failedWithError:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(BADownloaderExtensionProxy *)self _sendingMessage];
  v11 = [(BADownloaderExtensionProxy *)self extensionConnection];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000072B0;
  v17[3] = &unk_100079378;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007330;
  v15[3] = &unk_100079418;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 backgroundDownload:v10 failedWithError:v9 completionHandler:v15];
}

- (void)backgroundDownload:(id)a3 finishedWithSandboxToken:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(BADownloaderExtensionProxy *)self _sendingMessage];
  v11 = [(BADownloaderExtensionProxy *)self extensionConnection];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000074D4;
  v17[3] = &unk_100079378;
  v17[4] = self;
  v12 = v8;
  v18 = v12;
  v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007554;
  v15[3] = &unk_100079418;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 backgroundDownload:v10 finishedWithSandboxToken:v9 completionHandler:v15];
}

- (void)wakeupForTokenWithReply:(id)a3
{
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"wakeupForTokenWithReply should never be called on the proxy object userInfo:it is for internal use only", 0];
  [v3 raise];
}

- (id)extendClientSandboxForStagedURL:(id)a3 allowWrites:(BOOL)a4
{
  v6 = &APP_SANDBOX_READ_WRITE;
  if (!a4)
  {
    v6 = &APP_SANDBOX_READ;
  }

  v7 = *v6;
  v8 = a3;
  [a3 fileSystemRepresentation];
  v9 = [(BADownloaderExtensionProxy *)self extensionConnection];
  v10 = v9;
  if (v9)
  {
    [v9 auditToken];
  }

  v11 = sandbox_extension_issue_file_to_process();

  if (v11)
  {
    v12 = [NSString stringWithCString:v11 encoding:4];
    free(v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)invalidate
{
  v3 = sub_10001060C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(BADownloaderExtensionProxy *)self identifier];
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Invalidating connection to extension: %{public}@", &v7, 0xCu);
  }

  v5 = [(BADownloaderExtensionProxy *)self extensionConnection];
  [v5 invalidate];

  [(BADownloaderExtensionProxy *)self setExtensionConnection:0];
  v6 = [(BADownloaderExtensionProxy *)self extensionProcess];
  [v6 invalidate];

  [(BADownloaderExtensionProxy *)self setExtensionProcess:0];
}

- (void)_sendingMessage
{
  v3 = [(BADownloaderExtensionProxy *)self shutdownQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007884;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_checkForExit
{
  v3 = [(BADownloaderExtensionProxy *)self shutdownQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000795C;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_startExitTimer
{
  v3 = dispatch_time(0, 10000000000);
  v4 = [(BADownloaderExtensionProxy *)self shutdownQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007A8C;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_after(v3, v4, block);
}

- (NSString)debugDescription
{
  v3 = [(BADownloaderExtensionProxy *)self exitTimer];
  v4 = [v3 fireDate];

  [v4 timeIntervalSinceNow];
  v6 = v5;
  v7 = [(BADownloaderExtensionProxy *)self identifier];
  v8 = [(BADownloaderExtensionProxy *)self extensionConnection];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Extension Proxy\nIdentifier: %@\nPID: %d\nExtension Termination Time: %@ (%.2lf seconds remaining)\n", v7, [v8 processIdentifier], v4, v6);

  return v9;
}

- (void)markPurgeableWithFileURL:(id)a3 sandboxToken:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  [a4 UTF8String];
  if (sandbox_extension_consume() == -1)
  {
    v14 = *__error();
    v22 = @"FileURL";
    v15 = v7;
    if (!v7)
    {
      v15 = +[NSNull null];
    }

    v23 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v14 userInfo:v16];

    if (!v7)
    {
    }

    v18 = sub_100027BF8(@"BAErrorDomain", -108, v17);
    v8[2](v8, 0, v18);
  }

  else
  {
    v19 = 66564;
    if (fsctl([v7 fileSystemRepresentation], 0xC0084A44uLL, &v19, 0))
    {
      v9 = *__error();
      v20 = @"FileURL";
      v10 = v7;
      if (!v7)
      {
        v10 = +[NSNull null];
      }

      v21 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:v11];

      if (!v7)
      {
      }

      sandbox_extension_release();
      v13 = sub_100027BF8(@"BAErrorDomain", -57, v12);
      v8[2](v8, 0, v13);
    }

    else
    {
      sandbox_extension_release();
      v8[2](v8, 1, 0);
    }
  }
}

- (void)decrementWakeAssertionWithReply:(id)a3
{
  v4 = a3;
  v5 = [(BADownloaderExtensionProxy *)self shutdownQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000080DC;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_sync(v5, block);

  [(BADownloaderExtensionProxy *)self _checkForExit];
  v4[2](v4);
}

- (void)incrementWakeAssertionWithReply:(id)a3
{
  v4 = a3;
  v5 = [(BADownloaderExtensionProxy *)self shutdownQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008214;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_sync(v5, block);

  v4[2](v4);
}

@end