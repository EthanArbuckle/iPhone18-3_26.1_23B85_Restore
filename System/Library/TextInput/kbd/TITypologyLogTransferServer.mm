@interface TITypologyLogTransferServer
+ (id)sharedServer;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (TITypologyLogTransferServer)init;
- (id)typologyLogsFolder;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)syncTypologyLogs;
@end

@implementation TITypologyLogTransferServer

+ (id)sharedServer
{
  if (qword_100026578 != -1)
  {
    sub_10000D5B8();
  }

  v3 = qword_100026570;

  return v3;
}

- (TITypologyLogTransferServer)init
{
  v10.receiver = self;
  v10.super_class = TITypologyLogTransferServer;
  v2 = [(TITypologyLogTransferServer *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.TextInput.TypologyLogTransferQueue", 0);
    serviceQueue = v2->_serviceQueue;
    v2->_serviceQueue = v3;

    v5 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.kbd.transfer"];
    service = v2->_service;
    v2->_service = v5;

    [(IDSService *)v2->_service addDelegate:v2 queue:v2->_serviceQueue];
    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.TextInput.kbdTransfer"];
    listener = v2->_listener;
    v2->_listener = v7;

    [(NSXPCListener *)v2->_listener _setQueue:v2->_serviceQueue];
    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  has_internal_ui = os_variant_has_internal_ui();
  if (has_internal_ui)
  {
    [v5 setExportedObject:self];
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TITypologyLogTransferServerProtocol];
    [v5 setExportedInterface:v7];

    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TITypologyLogTransferClientProtocol];
    [v5 setRemoteObjectInterface:v8];

    [v5 resume];
  }

  return has_internal_ui;
}

- (id)typologyLogsFolder
{
  v2 = NSHomeDirectory();
  v6[0] = v2;
  v6[1] = @"Library";
  v6[2] = @"Keyboard";
  v6[3] = @"Typology";
  v3 = [NSArray arrayWithObjects:v6 count:4];
  v4 = [NSString pathWithComponents:v3];

  return v4;
}

- (void)syncTypologyLogs
{
  if (os_variant_has_internal_ui())
  {
    v45[0] = IDSSendMessageOptionForceLocalDeliveryKey;
    v3 = [NSNumber numberWithBool:1];
    v46[0] = v3;
    v45[1] = IDSSendMessageOptionBypassDuetKey;
    v4 = [NSNumber numberWithBool:1];
    v46[1] = v4;
    v31 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];

    v5 = [(IDSService *)self->_service devices];
    v6 = [v5 indexOfObjectPassingTest:&stru_10001C8C8];

    v30 = v6;
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10000D5CC();
      }
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v7 = +[NSFileManager defaultManager];
      v8 = [(TITypologyLogTransferServer *)self typologyLogsFolder];
      v9 = [v7 subpathsAtPath:v8];

      obj = v9;
      v32 = [v9 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v32)
      {
        v10 = 0;
        v11 = 0;
        v28 = *v37;
        v29 = self;
        do
        {
          for (i = 0; i != v32; i = i + 1)
          {
            v13 = v11;
            if (*v37 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v36 + 1) + 8 * i);
            v15 = [(TITypologyLogTransferServer *)self typologyLogsFolder];
            v16 = [v15 stringByAppendingPathComponent:v14];
            v17 = [NSURL fileURLWithPath:v16];

            service = self->_service;
            v19 = [(IDSService *)service devices];
            v20 = [v19 objectAtIndexedSubscript:v30];
            v21 = IDSCopyIDForDevice();
            v22 = [NSSet setWithObject:v21];
            v34 = v10;
            v35 = v11;
            [(IDSService *)service sendResourceAtURL:v17 metadata:0 toDestinations:v22 priority:300 options:v31 identifier:&v35 error:&v34];
            v11 = v35;

            v23 = v34;
            if (!v11 || v23)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v26 = [v23 localizedDescription];
                *buf = 136315394;
                v41 = "[TITypologyLogTransferServer syncTypologyLogs]";
                v42 = 2112;
                v43 = v26;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s  typology log IDS service failed, with error %@", buf, 0x16u);
              }

              v10 = v23;
              self = v29;
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v41 = "[TITypologyLogTransferServer syncTypologyLogs]";
                v42 = 2112;
                v43 = v11;
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s  Successfully started transfer of file with ID %@. Deleting original Typology log.", buf, 0x16u);
              }

              v24 = +[NSFileManager defaultManager];
              v33 = 0;
              [v24 removeItemAtURL:v17 error:&v33];
              v10 = v33;

              self = v29;
              if (v10 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v25 = [v10 localizedDescription];
                *buf = 136315394;
                v41 = "[TITypologyLogTransferServer syncTypologyLogs]";
                v42 = 2112;
                v43 = v25;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s  Could not delete log file. %@", buf, 0x16u);
              }
            }
          }

          v32 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
        }

        while (v32);
      }
    }
  }
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a5;
  v10 = a6;
  if (os_variant_has_internal_ui())
  {
    v11 = [v9 lastPathComponent];
    if (![v11 length] || (objc_msgSend(v11, "isEqualToString:", @"..") & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"."))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10000D654();
      }
    }

    else
    {
      v12 = [(TITypologyLogTransferServer *)self typologyLogsFolder];
      v13 = [NSURL fileURLWithPath:v12 isDirectory:1];

      v14 = [v13 URLByAppendingPathComponent:v11];
      v15 = +[NSFileManager defaultManager];
      v25 = 0;
      [v15 moveItemAtURL:v9 toURL:v14 error:&v25];
      v16 = v25;

      v17 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        if (v16)
        {
          v18 = [v16 localizedDescription];
        }

        else
        {
          v18 = @"NONE";
        }

        *buf = 136315650;
        v29 = "[TITypologyLogTransferServer service:account:incomingResourceAtURL:fromID:context:]";
        v30 = 2112;
        v31 = v10;
        v32 = 2112;
        v33 = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%s  Recieving file from ID %@ and putting in final location. error? %@", buf, 0x20u);
        if (v16)
        {
        }
      }

      v26[0] = FBSOpenApplicationOptionKeyPayloadURL;
      v19 = [NSURL URLWithString:@"typology://filebug"];
      v27[0] = v19;
      v26[1] = FBSOpenApplicationOptionKeyUnlockDevice;
      v20 = [NSNumber numberWithBool:1];
      v27[1] = v20;
      v26[2] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
      v21 = [NSNumber numberWithBool:1];
      v27[2] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];

      v23 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
      v24 = [FBSOpenApplicationOptions optionsWithDictionary:v22];
      [v23 openApplication:@"com.apple.keyboard.TypoTracker" withOptions:v24 completion:0];
    }
  }
}

@end