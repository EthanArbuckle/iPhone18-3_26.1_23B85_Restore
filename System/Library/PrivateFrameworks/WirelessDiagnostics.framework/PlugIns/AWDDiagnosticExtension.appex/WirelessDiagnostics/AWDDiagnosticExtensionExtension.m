@interface AWDDiagnosticExtensionExtension
- (AWDDiagnosticExtensionExtension)init;
- (id)attachmentsForParameters:(id)a3;
@end

@implementation AWDDiagnosticExtensionExtension

- (AWDDiagnosticExtensionExtension)init
{
  v4.receiver = self;
  v4.super_class = AWDDiagnosticExtensionExtension;
  v2 = [(AWDDiagnosticExtensionExtension *)&v4 init];
  syslog(3, " **** INIT");
  return v2;
}

- (id)attachmentsForParameters:(id)a3
{
  v3 = a3;
  syslog(3, " **** attachmentsForParameters");
  v4 = +[NSMutableArray array];
  v5 = dispatch_semaphore_create(0);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100000F1C;
  v30 = sub_100000F2C;
  v31 = 0;
  v6 = dispatch_get_global_queue(0, 0);
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100000F34;
  v23 = &unk_100004138;
  v25 = &v26;
  v7 = v5;
  v24 = v7;
  AWDServerConsolidateDeviceDiagnostics();

  v8 = dispatch_time(0, 15000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    syslog(3, " **** attachmentsForParameters :: TIMEOUT");
  }

  else
  {
    v9 = [v27[5] objectForKey:kAwdDiagnosticsFileArray];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v32 count:16];
      if (v11)
      {
        v12 = *v17;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = [DEAttachmentItem attachmentWithPath:*(*(&v16 + 1) + 8 * i)];
            [v4 addObject:v14];
          }

          v11 = [v10 countByEnumeratingWithState:&v16 objects:v32 count:16];
        }

        while (v11);
      }

      syslog(3, " **** attachmentsForParameters :: %zd files", [v4 count]);
    }

    else
    {
      syslog(3, " **** attachmentsForParameters :: BAD INPUT");
    }
  }

  _Block_object_dispose(&v26, 8);

  return v4;
}

@end