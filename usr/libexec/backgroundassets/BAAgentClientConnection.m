@interface BAAgentClientConnection
- (BAAgentClientConnection)initWithNSXPCConnection:(id)a3 error:(id *)a4;
- (BOOL)_entitledForCloudKitWithDownload:(id)a3 outError:(id *)a4;
- (BOOL)isActive;
- (NSString)debugDescription;
- (id)extendClientSandboxForStagedURL:(id)a3 allowWrites:(BOOL)a4;
- (void)_validateAndSetClientIdentifier;
- (void)callBlockWhenConnectionReady:(id)a3 onQueue:(id)a4;
- (void)cancelDownload:(id)a3 reply:(id)a4;
- (void)connectionInvalidated;
- (void)currentDownloads:(id)a3;
- (void)dealloc;
- (void)downloadIdentifier:(id)a3 didFailWithError:(id)a4 wasHandled:(id)a5;
- (void)downloadIdentifier:(id)a3 didReceiveChallenge:(id)a4 authChallengeHandler:(id)a5 withCompletion:(id)a6;
- (void)downloadIdentifier:(id)a3 didWriteBytes:(int64_t)a4 totalBytesWritten:(int64_t)a5 totalBytesExpectedToWrite:(int64_t)a6;
- (void)downloadIdentifierDidBegin:(id)a3;
- (void)downloadIdentifierDidFinish:(id)a3 sandboxExtensionToken:(id)a4 wasHandled:(id)a5;
- (void)downloadIdentifierDidPause:(id)a3;
- (void)exclusiveControlExitedWithToken:(id)a3;
- (void)markPurgeableWithFileURL:(id)a3 sandboxToken:(id)a4 reply:(id)a5;
- (void)performWithExclusiveControlBeforeDate:(id)a3 handler:(id)a4;
- (void)performWithExclusiveControlWithHandler:(id)a3;
- (void)removeDownloadIdentifier:(id)a3;
- (void)scheduleDownload:(id)a3 reply:(id)a4;
- (void)startForegroundDownload:(id)a3 reply:(id)a4;
- (void)syncDownloads:(id)a3;
@end

@implementation BAAgentClientConnection

- (BAAgentClientConnection)initWithNSXPCConnection:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (qword_100089CC8 != -1)
  {
    sub_10004C824();
  }

  v65.receiver = self;
  v65.super_class = BAAgentClientConnection;
  v7 = [(BAAgentConnection *)&v65 initWithNSXPCConnection:v6 error:a4];
  if (v7)
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BAAgentClientXPCProtocol];
    v81[0] = objc_opt_class();
    v81[1] = objc_opt_class();
    v81[2] = objc_opt_class();
    v81[3] = objc_opt_class();
    v9 = [NSArray arrayWithObjects:v81 count:4];
    v10 = [NSSet setWithArray:v9];
    [v8 setClasses:v10 forSelector:"currentDownloads:" argumentIndex:0 ofReply:1];

    v80 = objc_opt_class();
    v11 = [NSArray arrayWithObjects:&v80 count:1];
    v12 = [NSSet setWithArray:v11];
    [v8 setClasses:v12 forSelector:"performWithExclusiveControlBeforeDate:handler:" argumentIndex:0 ofReply:0];

    v79[0] = objc_opt_class();
    v79[1] = objc_opt_class();
    v13 = [NSArray arrayWithObjects:v79 count:2];
    v14 = [NSSet setWithArray:v13];
    v62 = v8;
    [v8 setClasses:v14 forSelector:"scheduleDownload:reply:" argumentIndex:0 ofReply:0];

    v78[0] = objc_opt_class();
    v78[1] = objc_opt_class();
    v15 = [NSArray arrayWithObjects:v78 count:2];
    v16 = [NSSet setWithArray:v15];
    [v8 setClasses:v16 forSelector:"startForegroundDownload:reply:" argumentIndex:0 ofReply:0];

    v17 = [(BAAgentConnection *)v7 connection];
    [v17 setExportedInterface:v8];

    v18 = [(BAAgentConnection *)v7 connection];
    [v18 setExportedObject:v7];

    v19 = [(BAAgentConnection *)v7 connection];
    v20 = [v19 processIdentifier];
    v21 = +[NSUUID UUID];
    v22 = [v21 UUIDString];
    v23 = [NSString stringWithFormat:@"%d.%@.worker", v20, v22];

    v24 = [(BAAgentConnection *)v7 connection];
    v25 = [v24 processIdentifier];
    v26 = +[NSUUID UUID];
    v27 = [v26 UUIDString];
    v28 = [NSString stringWithFormat:@"%d.%@.handler", v25, v27];

    v29 = dispatch_queue_create([v23 UTF8String], 0);
    [(BAAgentClientConnection *)v7 setClientWorkQueue:v29];

    v30 = dispatch_queue_create([v28 UTF8String], 0);
    [(BAAgentClientConnection *)v7 setClientHandlerQueue:v30];

    v31 = [(BAAgentClientConnection *)v7 clientWorkQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100032ED8;
    block[3] = &unk_100079260;
    v32 = v7;
    v64 = v32;
    dispatch_async(v31, block);

    v33 = [(BAAgentConnection *)v32 connection];
    v34 = [(BAAgentClientConnection *)v32 clientHandlerQueue];
    [v33 _setQueue:v34];

    v35 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BADownloadManagerSyncProtocol];
    v77[0] = objc_opt_class();
    v77[1] = objc_opt_class();
    v77[2] = objc_opt_class();
    v77[3] = objc_opt_class();
    v36 = [NSArray arrayWithObjects:v77 count:4];
    v37 = [NSSet setWithArray:v36];
    [v35 setClasses:v37 forSelector:"syncDownloads:" argumentIndex:0 ofReply:0];

    v76 = objc_opt_class();
    v38 = [NSArray arrayWithObjects:&v76 count:1];
    v39 = [NSSet setWithArray:v38];
    [v35 setClasses:v39 forSelector:"removeDownloadIdentifier:" argumentIndex:0 ofReply:0];

    v75 = objc_opt_class();
    v40 = [NSArray arrayWithObjects:&v75 count:1];
    v41 = [NSSet setWithArray:v40];
    [v35 setClasses:v41 forSelector:"downloadIdentifierDidBegin:" argumentIndex:0 ofReply:0];

    v74 = objc_opt_class();
    v42 = [NSArray arrayWithObjects:&v74 count:1];
    v43 = [NSSet setWithArray:v42];
    [v35 setClasses:v43 forSelector:"downloadIdentifierDidPause:" argumentIndex:0 ofReply:0];

    v73 = objc_opt_class();
    v44 = [NSArray arrayWithObjects:&v73 count:1];
    v45 = [NSSet setWithArray:v44];
    [v35 setClasses:v45 forSelector:"downloadIdentifier:didWriteBytes:totalBytesWritten:totalBytesExpectedToWrite:" argumentIndex:0 ofReply:0];

    v72 = objc_opt_class();
    v46 = [NSArray arrayWithObjects:&v72 count:1];
    v47 = [NSSet setWithArray:v46];
    [v35 setClasses:v47 forSelector:"downloadIdentifier:didReceiveChallenge:authChallengeHandler:" argumentIndex:0 ofReply:0];

    v71 = objc_opt_class();
    v48 = [NSArray arrayWithObjects:&v71 count:1];
    v49 = [NSSet setWithArray:v48];
    [v35 setClasses:v49 forSelector:"downloadIdentifier:didReceiveChallenge:authChallengeHandler:" argumentIndex:1 ofReply:0];

    v70 = objc_opt_class();
    v50 = [NSArray arrayWithObjects:&v70 count:1];
    v51 = [NSSet setWithArray:v50];
    [v35 setClasses:v51 forSelector:"downloadIdentifier:didReceiveChallenge:authChallengeHandler:" argumentIndex:1 ofReply:1];

    v69 = objc_opt_class();
    v52 = [NSArray arrayWithObjects:&v69 count:1];
    v53 = [NSSet setWithArray:v52];
    [v35 setClasses:v53 forSelector:"downloadIdentifier:didFailWithError:wasHandled:" argumentIndex:0 ofReply:0];

    v68 = objc_opt_class();
    v54 = [NSArray arrayWithObjects:&v68 count:1];
    v55 = [NSSet setWithArray:v54];
    [v35 setClasses:v55 forSelector:"downloadIdentifier:didFailWithError:wasHandled:" argumentIndex:1 ofReply:0];

    v67 = objc_opt_class();
    v56 = [NSArray arrayWithObjects:&v67 count:1];
    v57 = [NSSet setWithArray:v56];
    [v35 setClasses:v57 forSelector:"downloadIdentifierDidFinish:sandboxExtensionToken:wasHandled:" argumentIndex:0 ofReply:0];

    v66 = objc_opt_class();
    v58 = [NSArray arrayWithObjects:&v66 count:1];
    v59 = [NSSet setWithArray:v58];
    [v35 setClasses:v59 forSelector:"downloadIdentifierDidFinish:sandboxExtensionToken:wasHandled:" argumentIndex:1 ofReply:0];

    v60 = [(BAAgentConnection *)v32 connection];
    [v60 setRemoteObjectInterface:v35];
  }

  return v7;
}

- (void)connectionInvalidated
{
  v5.receiver = self;
  v5.super_class = BAAgentClientConnection;
  [(BAAgentConnection *)&v5 connectionInvalidated];
  v3 = [(BAAgentClientConnection *)self clientWorkQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033028;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)dealloc
{
  v3 = [(BAAgentClientConnection *)self exclusiveAccessBlockQueue];

  if (v3)
  {
    v4 = qword_100089CD0;
    v5 = [(BAAgentClientConnection *)self exclusiveAccessBlockQueue];
    [v4 invalidateBlockQueue:v5];
  }

  v6.receiver = self;
  v6.super_class = BAAgentClientConnection;
  [(BAAgentClientConnection *)&v6 dealloc];
}

- (void)currentDownloads:(id)a3
{
  v4 = a3;
  v5 = [(BAAgentClientConnection *)self clientWorkQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000331F8;
  v7[3] = &unk_10007A2C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)scheduleDownload:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BAAgentClientConnection *)self clientWorkQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000333D4;
  block[3] = &unk_10007A2E8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)performWithExclusiveControlWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(BAAgentClientConnection *)self clientWorkQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033720;
  v7[3] = &unk_10007A2C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)performWithExclusiveControlBeforeDate:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BAAgentClientConnection *)self clientWorkQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100033A0C;
  block[3] = &unk_10007A2E8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)exclusiveControlExitedWithToken:(id)a3
{
  v4 = a3;
  v5 = [(BAAgentClientConnection *)self clientWorkQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100033CD8;
  v7[3] = &unk_100079300;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_validateAndSetClientIdentifier
{
  memset(&audittoken, 0, sizeof(audittoken));
  v3 = [(BAAgentConnection *)self connection];
  v4 = v3;
  if (v3)
  {
    [v3 auditToken];
  }

  else
  {
    memset(&audittoken, 0, sizeof(audittoken));
  }

  cf = 0;
  staticCode = 0;
  bzero(buffer, 0x400uLL);
  if (proc_pidpath_audittoken(&audittoken, buffer, 0x400u) < 0)
  {
    v6 = sub_100010584();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004D0BC();
    }

    goto LABEL_16;
  }

  v5 = [NSString stringWithUTF8String:buffer];
  v6 = v5;
  if (!v5 || ![v5 length])
  {
    v11 = sub_100010584();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10004D080();
    }

    goto LABEL_13;
  }

  token = audittoken;
  v7 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  if (!v7)
  {
    v11 = sub_100010584();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10004D044();
    }

LABEL_13:

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [NSURL fileURLWithPath:v6];
  if (SecStaticCodeCreateWithPath(v9, 0, &staticCode))
  {
    v10 = sub_100010584();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004C8DC();
    }

    goto LABEL_83;
  }

  if (SecCodeCopySigningInformation(staticCode, 0, &cf))
  {
    v10 = sub_100010584();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004C950();
    }

    goto LABEL_83;
  }

  v13 = CFDictionaryGetValue(cf, kSecCodeInfoPList);
  if (!v13)
  {
    v10 = sub_100010584();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004D008();
    }

    goto LABEL_83;
  }

  v10 = v13;
  v14 = [v13 objectForKey:@"EXAppExtensionAttributes"];
  if (v14)
  {

    goto LABEL_33;
  }

  v15 = [v10 objectForKey:@"NSExtension"];

  if (v15)
  {
LABEL_33:
    v16 = [v10 objectForKey:kCFBundleIdentifierKey];
    if (!v16)
    {
      v17 = sub_100010584();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10004CB78();
      }

      goto LABEL_82;
    }

    v17 = v16;
    v65 = 0;
    token = audittoken;
    v18 = [LSBundleRecord bundleRecordForAuditToken:&token error:&v65];
    v19 = v65;
    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [v18 bundleIdentifier];
        [(BAAgentClientConnection *)self setClientBundleIdentifier:v20];

        v21 = [(BAAgentClientConnection *)self clientBundleIdentifier];
        if (v21)
        {
          v22 = v21;
          [(BAAgentClientConnection *)self clientBundleIdentifier];
          v23 = v61 = v19;
          v24 = [v23 length];

          v19 = v61;
          if (v24)
          {
            v25 = [v18 containingBundleRecord];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ([v25 bundleIdentifier], (v26 = objc_claimAutoreleasedReturnValue()) == 0))
            {
              v27 = sub_100010584();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                sub_10004CA54();
              }

              v26 = [v17 _baassets_stringByRemovingLastIdentifierComponent];
            }

            [(BAAgentClientConnection *)self setApplicationBundleIdentifier:v26];
            v28 = [(BAAgentClientConnection *)self applicationBundleIdentifier];
            if (v28)
            {
              v29 = v28;
              [(BAAgentClientConnection *)self applicationBundleIdentifier];
              v30 = v60 = v25;
              v59 = [v30 length];

              v25 = v60;
              if (v59)
              {
                -[BAAgentClientConnection setIsAppClip:](self, "setIsAppClip:", [v60 ba_isAppClip]);
                [(BAAgentClientConnection *)self setIsApplication:0];

                goto LABEL_56;
              }
            }

            v53 = sub_100010584();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              sub_10004CA90();
            }

LABEL_81:
            goto LABEL_82;
          }
        }

        v31 = sub_100010584();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10004CACC();
        }
      }

      else
      {
        v31 = sub_100010584();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_10004C9C4();
        }
      }
    }

    else
    {
      v31 = sub_100010584();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10004CB08();
      }
    }

    goto LABEL_82;
  }

  v64 = 0;
  token = audittoken;
  v26 = [LSBundleRecord bundleRecordForAuditToken:&token error:&v64];
  v17 = v64;
  if (!v26)
  {
    v52 = sub_100010584();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_10004CB08();
    }

    goto LABEL_80;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v52 = sub_100010584();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_10004CBB4();
    }

    goto LABEL_80;
  }

  v32 = [v26 bundleIdentifier];
  [(BAAgentClientConnection *)self setApplicationBundleIdentifier:v32];

  v33 = [(BAAgentClientConnection *)self applicationBundleIdentifier];
  [(BAAgentClientConnection *)self setClientBundleIdentifier:v33];

  v34 = [(BAAgentClientConnection *)self applicationBundleIdentifier];

  if (!v34)
  {
    v52 = sub_100010584();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      sub_10004CF98();
    }

LABEL_80:

    goto LABEL_81;
  }

  -[BAAgentClientConnection setIsAppClip:](self, "setIsAppClip:", [v26 ba_isAppClip]);
  [(BAAgentClientConnection *)self setIsApplication:1];
LABEL_56:

  v35 = [(BAAgentClientConnection *)self applicationBundleIdentifier];
  v17 = [LSApplicationProxy applicationProxyForIdentifier:v35];

  if (v17)
  {
    v36 = [[FBSApplicationInfo alloc] initWithApplicationProxy:v17];
    if (v36)
    {
      v37 = v36;
      if ([v36 unauthoritativeTrustState]== 8)
      {
        v62 = v37;
        v38 = [(BAAgentClientConnection *)self applicationBundleIdentifier];
        v39 = [(BAAgentClientConnection *)self applicationBundleIdentifier];
        v40 = [v39 _baassets_validUTI];
        v41 = [v38 isEqualToString:v40];

        if (v41)
        {
          v42 = [(BAAgentClientConnection *)self clientBundleIdentifier];
          v43 = [(BAAgentClientConnection *)self clientBundleIdentifier];
          v44 = [v43 _baassets_validUTI];
          v45 = [v42 isEqualToString:v44];

          if (v45)
          {
            error = 0;
            v46 = SecTaskCopySigningIdentifier(v8, &error);
            [(BAAgentClientConnection *)self setSigningIdentifier:v46];

            v47 = [(BAAgentClientConnection *)self signingIdentifier];

            v48 = error;
            if (v47)
            {
              if (error)
              {
                CFRelease(error);
              }

              v49 = [(BAAgentClientConnection *)self isApplication];
              v50 = +[BAAgentCore sharedCore];
              v51 = [(BAAgentClientConnection *)self applicationBundleIdentifier];
              if (v49)
              {
                [v50 handleApplicationLaunched:v51];
              }

              else
              {
                v58 = [v50 applicationInfoForIdentifier:v51];

                [v58 setApplicationExtensionState:4];
              }

              v12 = 1;
              goto LABEL_84;
            }

            v57 = sub_100010584();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              sub_10004CE10();
            }
          }

          else
          {
            v56 = sub_100010584();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              sub_10004CD84(self);
            }

            [(BAAgentClientConnection *)self setClientBundleIdentifier:0];
          }
        }

        else
        {
          v55 = sub_100010584();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            sub_10004CCF8(self);
          }

          [(BAAgentClientConnection *)self setApplicationBundleIdentifier:0];
        }

        goto LABEL_82;
      }

      v54 = sub_100010584();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        sub_10004CC44(self);
      }
    }

    else
    {
      v37 = sub_100010584();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10004CE80(self);
      }
    }
  }

  else
  {
    v17 = sub_100010584();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10004CF0C(self);
    }
  }

LABEL_82:

LABEL_83:
  v12 = 0;
LABEL_84:

  CFRelease(v8);
  v6 = v9;
LABEL_17:

  if (staticCode)
  {
    CFRelease(staticCode);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  [(BAAgentClientConnection *)self setConnectionIsValid:v12, v59];
}

- (BOOL)_entitledForCloudKitWithDownload:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = [(BAAgentConnection *)self connection];
  v8 = [v7 valueForEntitlement:@"com.apple.developer.icloud-services"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (![*(*(&v33 + 1) + 8 * i) caseInsensitiveCompare:@"CloudKit"])
          {

            goto LABEL_16;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v8 caseInsensitiveCompare:@"CloudKit"])
  {
LABEL_13:
    if (a4)
    {
      sub_100027BE4(-52);
      *a4 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_35;
  }

LABEL_16:
  v15 = [(BAAgentConnection *)self connection];
  v16 = [v15 valueForEntitlement:@"com.apple.developer.icloud-container-identifiers"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 count])
  {
    v27 = a4;
    v28 = v16;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      while (2)
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v29 + 1) + 8 * j);
          v23 = [v6 containerID];
          v24 = [v23 containerIdentifier];
          LOBYTE(v22) = [v24 isEqualToString:v22];

          if (v22)
          {

            v25 = [(BAAgentClientConnection *)self signingIdentifier];
            [v6 setMasqueradeIdentifier:v25];

            v14 = 1;
            goto LABEL_33;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    if (v27)
    {
      sub_100027BE4(-54);
      *v27 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

LABEL_33:
    v16 = v28;
  }

  else if (a4)
  {
    sub_100027BE4(-53);
    *a4 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_35:
  return v14;
}

- (BOOL)isActive
{
  v3 = [(BAAgentClientConnection *)self isApplication];
  v4 = +[BAAgentCore sharedCore];
  v5 = [(BAAgentClientConnection *)self applicationBundleIdentifier];
  if (v3)
  {
    v6 = [v4 applicationStateForIdentifier:v5];
  }

  else
  {
    v6 = [v4 applicationExtensionStateForIdentifier:v5];
  }

  v7 = v6;

  return (v7 & 0xFFFFFFFFFFFFFFFELL) == 4;
}

- (void)startForegroundDownload:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BAAgentClientConnection *)self clientWorkQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034C1C;
  block[3] = &unk_10007A2E8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)cancelDownload:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BAAgentClientConnection *)self clientWorkQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034EA4;
  block[3] = &unk_100079AA8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)markPurgeableWithFileURL:(id)a3 sandboxToken:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BAAgentClientConnection *)self clientWorkQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100035134;
  v15[3] = &unk_10007A360;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(v11, v15);
}

- (void)syncDownloads:(id)a3
{
  v4 = a3;
  v6 = [(BAAgentConnection *)self connection];
  v5 = [v6 remoteObjectProxyWithErrorHandler:&stru_10007A380];
  [v5 syncDownloads:v4];
}

- (void)callBlockWhenConnectionReady:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BAAgentClientConnection *)self clientWorkQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000355F0;
  block[3] = &unk_100079AA8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)removeDownloadIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BAAgentConnection *)self connection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100035774;
  v8[3] = &unk_100079328;
  v9 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v7 removeDownloadIdentifier:v6];
}

- (void)downloadIdentifierDidBegin:(id)a3
{
  v4 = a3;
  v5 = [(BAAgentConnection *)self connection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000358A0;
  v8[3] = &unk_100079328;
  v9 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v7 downloadIdentifierDidBegin:v6];
}

- (void)downloadIdentifierDidPause:(id)a3
{
  v4 = a3;
  v5 = [(BAAgentConnection *)self connection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000359CC;
  v8[3] = &unk_100079328;
  v9 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v8];
  [v7 downloadIdentifierDidPause:v6];
}

- (void)downloadIdentifier:(id)a3 didWriteBytes:(int64_t)a4 totalBytesWritten:(int64_t)a5 totalBytesExpectedToWrite:(int64_t)a6
{
  v10 = a3;
  v11 = [(BAAgentConnection *)self connection];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100035B18;
  v14[3] = &unk_100079328;
  v15 = v10;
  v12 = v10;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v14];
  [v13 downloadIdentifier:v12 didWriteBytes:a4 totalBytesWritten:a5 totalBytesExpectedToWrite:a6];
}

- (void)downloadIdentifier:(id)a3 didReceiveChallenge:(id)a4 authChallengeHandler:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = dispatch_queue_create("com.apple.BAAgentClientConnection.AuthChallengeWaiter", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035CA4;
  block[3] = &unk_10007A3D0;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(v14, block);
}

- (void)downloadIdentifier:(id)a3 didFailWithError:(id)a4 wasHandled:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(BAAgentConnection *)self connection];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100035F9C;
  v18[3] = &unk_100079378;
  v19 = v8;
  v12 = v9;
  v20 = v12;
  v13 = v8;
  v14 = [v11 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100036014;
  v16[3] = &unk_10007A3F8;
  v17 = v12;
  v15 = v12;
  [v14 downloadIdentifier:v13 didFailWithError:v10 wasHandled:v16];
}

- (void)downloadIdentifierDidFinish:(id)a3 sandboxExtensionToken:(id)a4 wasHandled:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(BAAgentConnection *)self connection];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003618C;
  v18[3] = &unk_100079378;
  v19 = v8;
  v12 = v9;
  v20 = v12;
  v13 = v8;
  v14 = [v11 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100036204;
  v16[3] = &unk_10007A3F8;
  v17 = v12;
  v15 = v12;
  [v14 downloadIdentifierDidFinish:v13 sandboxExtensionToken:v10 wasHandled:v16];
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
  v9 = [(BAAgentConnection *)self connection];
  v10 = v9;
  if (v9)
  {
    [v9 auditToken];
  }

  v11 = sandbox_extension_issue_file_to_process();

  v12 = *__error();
  if (v11)
  {
    v13 = [NSString stringWithCString:v11 encoding:4];
    free(v11);
  }

  else
  {
    v13 = 0;
  }

  *__error() = v12;

  return v13;
}

- (NSString)debugDescription
{
  v3 = [(BAAgentClientConnection *)self applicationBundleIdentifier];
  v4 = [(BAAgentClientConnection *)self clientBundleIdentifier];
  v5 = [(BAAgentConnection *)self connection];
  v6 = [v5 processIdentifier];
  v7 = [(BAAgentClientConnection *)self isApplication];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [NSString stringWithFormat:@"Client Connection\nApp Identifier: %@\nClient Identifier: %@\nPID: %d\nIs Client App: %@", v3, v4, v6, v8];

  return v9;
}

@end