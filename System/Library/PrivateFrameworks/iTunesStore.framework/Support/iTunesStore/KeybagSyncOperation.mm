@interface KeybagSyncOperation
- (KeybagSyncOperation)initWithKeybagSyncRequest:(id)a3;
- (id)_newBodyDataWithBodyPlist:(id)a3 error:(id *)a4;
- (id)_newRequestPropertiesWithBodyData:(id)a3;
- (void)run;
@end

@implementation KeybagSyncOperation

- (KeybagSyncOperation)initWithKeybagSyncRequest:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = KeybagSyncOperation;
  v5 = [(KeybagSyncOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 accountIdentifier];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;
  }

  return v5;
}

- (void)run
{
  v3 = self->_accountIdentifier;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = +[SSAccountStore defaultStore];
    v6 = [v5 activeAccount];
    v4 = [v6 uniqueIdentifier];

    if (!v4)
    {
      goto LABEL_27;
    }
  }

  v7 = sub_1000B18E8([v4 unsignedLongLongValue], 11);
  if (v7)
  {
    v8 = v7;
    v9 = objc_alloc_init(NSMutableDictionary);
    [v9 setObject:v8 forKey:@"kbsync"];
    [v9 setObject:@"familyChange" forKey:@"reason"];
    v10 = +[ISDevice sharedInstance];
    v11 = [v10 guid];

    if ([v11 length])
    {
      [v9 setObject:v11 forKey:@"guid"];
    }

    v48 = 0;
    v12 = [(KeybagSyncOperation *)self _newBodyDataWithBodyPlist:v9 error:&v48];
    v13 = v48;
    if (!v12)
    {
      v28 = 0;
LABEL_40:

      goto LABEL_41;
    }

    v14 = objc_alloc_init(ISStoreURLOperation);
    v15 = +[DaemonProtocolDataProvider provider];
    [v15 setShouldProcessProtocol:0];
    v46 = v15;
    [v14 setDataProvider:v15];
    v16 = [(KeybagSyncOperation *)self _newRequestPropertiesWithBodyData:v12];
    [v16 setURLBagKey:@"view-software-updates"];
    v43 = v16;
    [v14 setRequestProperties:v16];
    v45 = v14;
    v42 = [[SSAuthenticationContext alloc] initWithAccountIdentifier:v4];
    [v14 setAuthenticationContext:?];
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    v44 = v4;
    v18 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v18 |= 2u;
    }

    v19 = [v17 OSLogObject];
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v20 = objc_opt_class();
      v49 = 138412290;
      v50 = v20;
      v21 = v9;
      v22 = v8;
      v23 = v12;
      v24 = v11;
      v25 = v20;
      LODWORD(v40) = 12;
      v39 = &v49;
      v26 = _os_log_send_and_compose_impl();

      v11 = v24;
      v12 = v23;
      v8 = v22;
      v9 = v21;

      if (!v26)
      {
LABEL_18:

        v47 = v13;
        v27 = v45;
        v28 = [(KeybagSyncOperation *)self runSubOperation:v45 returningError:&v47];
        v29 = v47;

        v4 = v44;
        if (v28)
        {
          v30 = [v46 output];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v41 = v29;
            v31 = [v30 objectForKey:@"keybag"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = [[NSData alloc] initWithBase64EncodedString:v31 options:0];

              v31 = v32;
              v27 = v45;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              sub_1000B29AC(v31);
            }

            v29 = v41;
          }
        }

        v13 = v29;
        goto LABEL_40;
      }

      v19 = [NSString stringWithCString:v26 encoding:4, &v49, v40];
      free(v26);
      v39 = v19;
      SSFileLog();
    }

    goto LABEL_18;
  }

LABEL_27:
  v33 = +[SSLogConfig sharedDaemonConfig];
  if (!v33)
  {
    v33 = +[SSLogConfig sharedConfig];
  }

  v34 = [v33 shouldLog];
  if ([v33 shouldLogToDisk])
  {
    v35 = v34 | 2;
  }

  else
  {
    v35 = v34;
  }

  v36 = [v33 OSLogObject];
  if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    v35 &= 2u;
  }

  if (!v35)
  {
    goto LABEL_37;
  }

  v49 = 138412290;
  v50 = objc_opt_class();
  v37 = v50;
  LODWORD(v40) = 12;
  v39 = &v49;
  v38 = _os_log_send_and_compose_impl();

  if (v38)
  {
    v36 = [NSString stringWithCString:v38 encoding:4, &v49, v40];
    free(v38);
    v39 = v36;
    SSFileLog();
LABEL_37:
  }

  v13 = SSError();
  v28 = 0;
LABEL_41:
  [(KeybagSyncOperation *)self setError:v13, v39];
  [(KeybagSyncOperation *)self setSuccess:v28];
}

- (id)_newBodyDataWithBodyPlist:(id)a3 error:(id *)a4
{
  v10 = 0;
  v5 = [NSPropertyListSerialization dataWithPropertyList:a3 format:100 options:0 error:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = ISCopyGzippedDataForData();
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!v7)
  {
    v8 = v6;
    *a4 = v6;
  }

LABEL_7:

  return v7;
}

- (id)_newRequestPropertiesWithBodyData:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SSMutableURLRequestProperties);
  [v4 setAllowedRetryCount:0];
  [v4 setHTTPBody:v3];

  [v4 setHTTPMethod:@"POST"];
  [v4 setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];
  [v4 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  v5 = +[SSDevice currentDevice];
  v6 = [v5 userAgentWithClientName:@"AppStore" version:@"2.0"];

  if (v6)
  {
    [v4 setValue:v6 forHTTPHeaderField:SSHTTPHeaderUserAgent];
  }

  return v4;
}

@end