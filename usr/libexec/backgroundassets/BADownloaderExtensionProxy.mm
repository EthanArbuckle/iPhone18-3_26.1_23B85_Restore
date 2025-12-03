@interface BADownloaderExtensionProxy
- (BADownloaderExtensionProxy)initWithExtension:(id)extension xpcConnection:(id)connection parentAppRecord:(id)record applicationInfo:(id)info;
- (BOOL)sendAuthenticationChallenge:(id)challenge download:(id)download completionHandler:(id)handler;
- (NSString)debugDescription;
- (id)extendClientSandboxForStagedURL:(id)l allowWrites:(BOOL)writes;
- (void)_checkForExit;
- (void)_sendingMessage;
- (void)_startExitTimer;
- (void)backgroundDownload:(id)download failedWithError:(id)error completionHandler:(id)handler;
- (void)backgroundDownload:(id)download finishedWithSandboxToken:(id)token completionHandler:(id)handler;
- (void)decrementWakeAssertionWithReply:(id)reply;
- (void)extensionWillTerminate;
- (void)incrementWakeAssertionWithReply:(id)reply;
- (void)invalidate;
- (void)markPurgeableWithFileURL:(id)l sandboxToken:(id)token reply:(id)reply;
- (void)requestDownloadsWithContentRequest:(int64_t)request manifestURL:(id)l extensionInfo:(id)info completion:(id)completion;
- (void)wakeupForTokenWithReply:(id)reply;
@end

@implementation BADownloaderExtensionProxy

- (BADownloaderExtensionProxy)initWithExtension:(id)extension xpcConnection:(id)connection parentAppRecord:(id)record applicationInfo:(id)info
{
  extensionCopy = extension;
  connectionCopy = connection;
  recordCopy = record;
  infoCopy = info;
  v88.receiver = self;
  v88.super_class = BADownloaderExtensionProxy;
  v10 = [(BADownloaderExtensionProxy *)&v88 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_19;
  }

  [(BADownloaderExtensionProxy *)v10 setExtensionConnection:connectionCopy];
  [(BADownloaderExtensionProxy *)v11 setExtensionProcess:extensionCopy];
  [(BADownloaderExtensionProxy *)v11 setApplicationInfo:infoCopy];
  applicationIdentifier = [infoCopy applicationIdentifier];
  _baassets_validUTI = [applicationIdentifier _baassets_validUTI];
  if (![_baassets_validUTI isEqualToString:applicationIdentifier])
  {

LABEL_20:
    v63 = 0;
    goto LABEL_21;
  }

  [(BADownloaderExtensionProxy *)v11 setIdentifier:_baassets_validUTI];
  identifier = [(BADownloaderExtensionProxy *)v11 identifier];
  v13 = [NSString stringWithFormat:@"com.apple.backgroundassets.extension.%@.shutdown_queue", identifier];
  v14 = v13;
  v15 = dispatch_queue_create([v13 UTF8String], 0);
  [(BADownloaderExtensionProxy *)v11 setShutdownQueue:v15];

  [(BADownloaderExtensionProxy *)v11 setParentAppRecord:recordCopy];
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
  extensionConnection = [(BADownloaderExtensionProxy *)v11 extensionConnection];
  [extensionConnection setRemoteObjectInterface:v16];

  extensionConnection2 = [(BADownloaderExtensionProxy *)v11 extensionConnection];
  [extensionConnection2 setExportedInterface:v35];

  extensionConnection3 = [(BADownloaderExtensionProxy *)v11 extensionConnection];
  [extensionConnection3 setExportedObject:v11];

  v39 = v11;
  extensionConnection4 = [(BADownloaderExtensionProxy *)v39 extensionConnection];
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_100006980;
  v85[3] = &unk_100079300;
  v41 = _baassets_validUTI;
  v86 = v41;
  v42 = v39;
  v87 = v42;
  [extensionConnection4 setInterruptionHandler:v85];

  extensionConnection5 = [(BADownloaderExtensionProxy *)v42 extensionConnection];
  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_1000069D4;
  v82[3] = &unk_100079300;
  v44 = v41;
  v83 = v44;
  v45 = v42;
  v84 = v45;
  [extensionConnection5 setInvalidationHandler:v82];

  extensionConnection6 = [(BADownloaderExtensionProxy *)v45 extensionConnection];
  [extensionConnection6 resume];

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
  extensionConnection7 = [(BADownloaderExtensionProxy *)v45 extensionConnection];
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_100006AA4;
  v76[3] = &unk_100079328;
  v50 = v48;
  v77 = v50;
  v51 = [extensionConnection7 remoteObjectProxyWithErrorHandler:v76];
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

    extensionConnection8 = [(BADownloaderExtensionProxy *)v45 extensionConnection];
    [extensionConnection8 invalidate];

    exitTimer = [(BADownloaderExtensionProxy *)v45 exitTimer];
    [exitTimer invalidate];

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

  applicationInfo = [(BADownloaderExtensionProxy *)v45 applicationInfo];
  [applicationInfo willLaunchExtension];

  applicationInfo2 = [(BADownloaderExtensionProxy *)v45 applicationInfo];
  extensionConnection9 = [(BADownloaderExtensionProxy *)v45 extensionConnection];
  v59 = extensionConnection9;
  if (extensionConnection9)
  {
    [extensionConnection9 auditToken];
  }

  else
  {
    *v71 = 0u;
    v72 = 0u;
  }

  [applicationInfo2 determineInstallSourceIfUnsetFromAuditToken:v71];

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

- (void)requestDownloadsWithContentRequest:(int64_t)request manifestURL:(id)l extensionInfo:(id)info completion:(id)completion
{
  lCopy = l;
  infoCopy = info;
  completionCopy = completion;
  v13 = [(BADownloaderExtensionProxy *)self extendClientSandboxForStagedURL:lCopy allowWrites:0];
  if (v13)
  {
    [(BADownloaderExtensionProxy *)self _sendingMessage];
    extensionConnection = [(BADownloaderExtensionProxy *)self extensionConnection];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100006D1C;
    v21[3] = &unk_100079378;
    v21[4] = self;
    v15 = completionCopy;
    v22 = v15;
    v16 = [extensionConnection remoteObjectProxyWithErrorHandler:v21];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100006DBC;
    v19[3] = &unk_1000793A0;
    v19[4] = self;
    v20 = v15;
    [v16 downloadsForRequest:request manifestURL:lCopy manifestToken:v13 extensionInfo:infoCopy completionHandler:v19];
  }

  else
  {
    v17 = sub_100010584();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100047D48();
    }

    v18 = +[NSSet set];
    (*(completionCopy + 2))(completionCopy, 0, v18);
  }
}

- (BOOL)sendAuthenticationChallenge:(id)challenge download:(id)download completionHandler:(id)handler
{
  challengeCopy = challenge;
  downloadCopy = download;
  handlerCopy = handler;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  [(BADownloaderExtensionProxy *)self _sendingMessage];
  extensionConnection = [(BADownloaderExtensionProxy *)self extensionConnection];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100006F98;
  v17[3] = &unk_1000793C8;
  v17[4] = self;
  v17[5] = &v18;
  v12 = [extensionConnection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007010;
  v15[3] = &unk_1000793F0;
  v13 = handlerCopy;
  v15[4] = self;
  v16 = v13;
  [v12 receivedAuthenticationChallenge:challengeCopy download:downloadCopy completionHandler:v15];

  LOBYTE(self) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return self;
}

- (void)extensionWillTerminate
{
  extensionConnection = [(BADownloaderExtensionProxy *)self extensionConnection];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000070EC;
  v5[3] = &unk_100079328;
  v5[4] = self;
  v4 = [extensionConnection remoteObjectProxyWithErrorHandler:v5];
  [v4 extensionWillTerminate];
}

- (void)backgroundDownload:(id)download failedWithError:(id)error completionHandler:(id)handler
{
  handlerCopy = handler;
  errorCopy = error;
  downloadCopy = download;
  [(BADownloaderExtensionProxy *)self _sendingMessage];
  extensionConnection = [(BADownloaderExtensionProxy *)self extensionConnection];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000072B0;
  v17[3] = &unk_100079378;
  v17[4] = self;
  v12 = handlerCopy;
  v18 = v12;
  v13 = [extensionConnection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007330;
  v15[3] = &unk_100079418;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 backgroundDownload:downloadCopy failedWithError:errorCopy completionHandler:v15];
}

- (void)backgroundDownload:(id)download finishedWithSandboxToken:(id)token completionHandler:(id)handler
{
  handlerCopy = handler;
  tokenCopy = token;
  downloadCopy = download;
  [(BADownloaderExtensionProxy *)self _sendingMessage];
  extensionConnection = [(BADownloaderExtensionProxy *)self extensionConnection];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000074D4;
  v17[3] = &unk_100079378;
  v17[4] = self;
  v12 = handlerCopy;
  v18 = v12;
  v13 = [extensionConnection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007554;
  v15[3] = &unk_100079418;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 backgroundDownload:downloadCopy finishedWithSandboxToken:tokenCopy completionHandler:v15];
}

- (void)wakeupForTokenWithReply:(id)reply
{
  v3 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"wakeupForTokenWithReply should never be called on the proxy object userInfo:it is for internal use only", 0];
  [v3 raise];
}

- (id)extendClientSandboxForStagedURL:(id)l allowWrites:(BOOL)writes
{
  v6 = &APP_SANDBOX_READ_WRITE;
  if (!writes)
  {
    v6 = &APP_SANDBOX_READ;
  }

  v7 = *v6;
  lCopy = l;
  [l fileSystemRepresentation];
  extensionConnection = [(BADownloaderExtensionProxy *)self extensionConnection];
  v10 = extensionConnection;
  if (extensionConnection)
  {
    [extensionConnection auditToken];
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
    identifier = [(BADownloaderExtensionProxy *)self identifier];
    v7 = 138543362;
    v8 = identifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Invalidating connection to extension: %{public}@", &v7, 0xCu);
  }

  extensionConnection = [(BADownloaderExtensionProxy *)self extensionConnection];
  [extensionConnection invalidate];

  [(BADownloaderExtensionProxy *)self setExtensionConnection:0];
  extensionProcess = [(BADownloaderExtensionProxy *)self extensionProcess];
  [extensionProcess invalidate];

  [(BADownloaderExtensionProxy *)self setExtensionProcess:0];
}

- (void)_sendingMessage
{
  shutdownQueue = [(BADownloaderExtensionProxy *)self shutdownQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007884;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_sync(shutdownQueue, block);
}

- (void)_checkForExit
{
  shutdownQueue = [(BADownloaderExtensionProxy *)self shutdownQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000795C;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_async(shutdownQueue, block);
}

- (void)_startExitTimer
{
  v3 = dispatch_time(0, 10000000000);
  shutdownQueue = [(BADownloaderExtensionProxy *)self shutdownQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007A8C;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_after(v3, shutdownQueue, block);
}

- (NSString)debugDescription
{
  exitTimer = [(BADownloaderExtensionProxy *)self exitTimer];
  fireDate = [exitTimer fireDate];

  [fireDate timeIntervalSinceNow];
  v6 = v5;
  identifier = [(BADownloaderExtensionProxy *)self identifier];
  extensionConnection = [(BADownloaderExtensionProxy *)self extensionConnection];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Extension Proxy\nIdentifier: %@\nPID: %d\nExtension Termination Time: %@ (%.2lf seconds remaining)\n", identifier, [extensionConnection processIdentifier], fireDate, v6);

  return v9;
}

- (void)markPurgeableWithFileURL:(id)l sandboxToken:(id)token reply:(id)reply
{
  lCopy = l;
  replyCopy = reply;
  [token UTF8String];
  if (sandbox_extension_consume() == -1)
  {
    v14 = *__error();
    v22 = @"FileURL";
    v15 = lCopy;
    if (!lCopy)
    {
      v15 = +[NSNull null];
    }

    v23 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v14 userInfo:v16];

    if (!lCopy)
    {
    }

    v18 = sub_100027BF8(@"BAErrorDomain", -108, v17);
    replyCopy[2](replyCopy, 0, v18);
  }

  else
  {
    v19 = 66564;
    if (fsctl([lCopy fileSystemRepresentation], 0xC0084A44uLL, &v19, 0))
    {
      v9 = *__error();
      v20 = @"FileURL";
      v10 = lCopy;
      if (!lCopy)
      {
        v10 = +[NSNull null];
      }

      v21 = v10;
      v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:v11];

      if (!lCopy)
      {
      }

      sandbox_extension_release();
      v13 = sub_100027BF8(@"BAErrorDomain", -57, v12);
      replyCopy[2](replyCopy, 0, v13);
    }

    else
    {
      sandbox_extension_release();
      replyCopy[2](replyCopy, 1, 0);
    }
  }
}

- (void)decrementWakeAssertionWithReply:(id)reply
{
  replyCopy = reply;
  shutdownQueue = [(BADownloaderExtensionProxy *)self shutdownQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000080DC;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_sync(shutdownQueue, block);

  [(BADownloaderExtensionProxy *)self _checkForExit];
  replyCopy[2](replyCopy);
}

- (void)incrementWakeAssertionWithReply:(id)reply
{
  replyCopy = reply;
  shutdownQueue = [(BADownloaderExtensionProxy *)self shutdownQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008214;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_sync(shutdownQueue, block);

  replyCopy[2](replyCopy);
}

@end