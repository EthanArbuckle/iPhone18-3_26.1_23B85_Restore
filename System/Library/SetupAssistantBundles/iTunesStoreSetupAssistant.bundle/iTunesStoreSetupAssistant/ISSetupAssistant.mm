@interface ISSetupAssistant
- (ISSetupAssistant)init;
- (id)accountSetupRequestParameters;
- (void)_setCookiesWithString:(id)string userIdentifier:(id)identifier;
- (void)_setupHomeSharingWithParameters:(id)parameters;
- (void)_setupITunesMatchWithParameters:(id)parameters;
- (void)completeSetupWithResponseParameters:(id)parameters handler:(id)handler;
- (void)dealloc;
@end

@implementation ISSetupAssistant

- (ISSetupAssistant)init
{
  v4.receiver = self;
  v4.super_class = ISSetupAssistant;
  v2 = [(ISSetupAssistant *)&v4 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.ISSetupAssistent", &_dispatch_queue_attr_concurrent);
  }

  return v2;
}

- (void)dealloc
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v4.receiver = self;
  v4.super_class = ISSetupAssistant;
  [(ISSetupAssistant *)&v4 dealloc];
}

- (id)accountSetupRequestParameters
{
  v2 = +[NSMutableDictionary dictionary];
  [v2 setObject:@"iTunes" forKey:@"drm-client"];
  v3 = +[ISDevice sharedInstance];
  hardwareName = [(ISDevice *)v3 hardwareName];
  if (hardwareName)
  {
    [v2 setObject:objc_msgSend(hardwareName forKey:{"lowercaseString"), @"drm-type"}];
  }

  guid = [(ISDevice *)v3 guid];
  if (guid)
  {
    [v2 setObject:guid forKey:@"guid"];
  }

  deviceName = [(ISDevice *)v3 deviceName];
  if (deviceName)
  {
    [v2 setObject:deviceName forKey:@"device-name"];
  }

  v7 = +[SSDevice currentDevice];
  productVersion = [v7 productVersion];
  if (productVersion)
  {
    [v2 setObject:productVersion forKey:@"drm-version"];
  }

  userAgent = [v7 userAgent];
  if (userAgent)
  {
    [v2 setObject:userAgent forKey:@"user-agent"];
  }

  return v2;
}

- (void)completeSetupWithResponseParameters:(id)parameters handler:(id)handler
{
  v7 = +[SSLogConfig sharedConfig];
  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  if (os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 & 2;
  }

  if (v10)
  {
    v53 = 138412290;
    v54 = objc_opt_class();
    LODWORD(v47) = 12;
    v45 = &v53;
    v11 = _os_log_send_and_compose_impl();
    if (v11)
    {
      v12 = v11;
      v13 = [NSString stringWithCString:v11 encoding:4, &v53, v47];
      free(v12);
      v45 = v13;
      SSFileLog();
    }
  }

  [parameters objectForKey:{@"dsid", v45}];
  UniqueIdentifierFromValue = SSAccountGetUniqueIdentifierFromValue();
  if (UniqueIdentifierFromValue)
  {
    v15 = [parameters objectForKey:@"cookies"];
    handlerCopy = handler;
    if (!v15)
    {
      -[ISSetupAssistant _setCookiesWithString:userIdentifier:](self, "_setCookiesWithString:userIdentifier:", [parameters objectForKey:@"pod"], UniqueIdentifierFromValue);
      v15 = [parameters objectForKey:@"weak-token"];
    }

    [(ISSetupAssistant *)self _setCookiesWithString:v15 userIdentifier:UniqueIdentifierFromValue];
    v16 = [parameters objectForKey:@"storefront"];
    v17 = +[SSLogConfig sharedConfig];
    shouldLog2 = [v17 shouldLog];
    if ([v17 shouldLogToDisk])
    {
      v19 = shouldLog2 | 2;
    }

    else
    {
      v19 = shouldLog2;
    }

    if (os_log_type_enabled([v17 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 2;
    }

    if (v20)
    {
      v21 = objc_opt_class();
      v53 = 138412546;
      v54 = v21;
      v55 = 2112;
      v56 = v16;
      LODWORD(v47) = 22;
      v46 = &v53;
      v22 = _os_log_send_and_compose_impl();
      if (v22)
      {
        v23 = v22;
        v24 = [NSString stringWithCString:v22 encoding:4, &v53, v47];
        free(v23);
        v46 = v24;
        SSFileLog();
      }
    }

    v25 = [parameters objectForKey:{@"strong-token", v46}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = +[SSAccountStore defaultStore];
    activeAccount = [v27 activeAccount];
    v29 = [v27 accountWithUniqueIdentifier:UniqueIdentifierFromValue];
    v30 = (activeAccount | v29) == 0;
    if (v29)
    {
      if (v26)
      {
        v31 = v29;
        [v29 setSecureToken:v26];
        if (activeAccount)
        {
          [v27 addAccount:v31];
        }

        else
        {
          [v27 setActiveAccount:v31];
        }
      }

      goto LABEL_45;
    }

    v36 = objc_alloc_init(SSAccount);
    [v36 setAccountName:{objc_msgSend(parameters, "objectForKey:", @"email"}];
    [v36 setSecureToken:v26];
    [v36 setStoreFrontIdentifier:v16];
    [v36 setUniqueIdentifier:UniqueIdentifierFromValue];
    v37 = [parameters objectForKey:@"newCustomer"];
    if (objc_opt_respondsToSelector())
    {
      [v36 setNewCustomer:{objc_msgSend(v37, "BOOLValue")}];
    }

    if (activeAccount && ![activeAccount accountSource])
    {
      [v27 addAccount:v36];

LABEL_45:
      v38 = +[SSLogConfig sharedConfig];
      shouldLog3 = [v38 shouldLog];
      if ([v38 shouldLogToDisk])
      {
        v40 = shouldLog3 | 2;
      }

      else
      {
        v40 = shouldLog3;
      }

      if (os_log_type_enabled([v38 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v41 = v40;
      }

      else
      {
        v41 = v40 & 2;
      }

      if (v41)
      {
        v42 = objc_opt_class();
        v53 = 138412290;
        v54 = v42;
        LODWORD(v47) = 12;
        v43 = _os_log_send_and_compose_impl();
        if (v43)
        {
          v44 = v43;
          [NSString stringWithCString:v43 encoding:4, &v53, v47];
          free(v44);
          SSFileLog();
        }
      }

      handlerCopy[2](handlerCopy, 1, 0);
      return;
    }

    [v27 setActiveAccount:v36];
    +[SSAccountStore resetExpiration];
    if (v16)
    {
      [+[SSDevice currentDevice](SSDevice "currentDevice")];
    }

    if (PSIsRunningInAssistant())
    {
      [+[SSDevice currentDevice](SSDevice "currentDevice")];
    }

    if (!v30)
    {
      goto LABEL_45;
    }

    v32 = 0;
    handler = handlerCopy;
  }

  else
  {
    v32 = [NSError errorWithDomain:@"ISSetupErrorDomain" code:1 userInfo:0];
  }

  [(ISSetupAssistant *)self setHandler:handler];
  v33 = dispatch_group_create();
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1670;
  block[3] = &unk_41B8;
  block[4] = self;
  block[5] = parameters;
  dispatch_group_async(v33, dispatchQueue, block);
  if (PSIsRunningInAssistant())
  {
    v35 = self->_dispatchQueue;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_167C;
    v51[3] = &unk_41B8;
    v51[4] = self;
    v51[5] = parameters;
    dispatch_group_async(v33, v35, v51);
  }

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1688;
  v49[3] = &unk_41E0;
  v50 = UniqueIdentifierFromValue != 0;
  v49[4] = self;
  v49[5] = v32;
  dispatch_group_notify(v33, &_dispatch_main_q, v49);
  dispatch_release(v33);
}

- (void)_setCookiesWithString:(id)string userIdentifier:(id)identifier
{
  if (string)
  {
    v5 = [[NSDictionary alloc] initWithObjectsAndKeys:{string, @"Set-Cookie", 0}];
    [+[SSVCookieStorage sharedStorage](SSVCookieStorage "sharedStorage")];
  }
}

- (void)_setupHomeSharingWithParameters:(id)parameters
{
  v5 = dispatch_semaphore_create(0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1858;
  block[3] = &unk_4230;
  block[4] = parameters;
  block[5] = v5;
  block[6] = self;
  dispatch_async(&_dispatch_main_q, block);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v5);
}

- (void)_setupITunesMatchWithParameters:(id)parameters
{
  v4 = [parameters objectForKey:@"slot-acquired"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 BOOLValue] && objc_msgSend(+[ML3MusicLibrary sharedLibrary](ML3MusicLibrary, "sharedLibrary"), "isLibraryEmpty"))
  {
    v5 = [objc_msgSend(+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
    v6 = +[SSLogConfig sharedConfig];
    shouldLog = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      *v40 = 138412546;
      *&v40[4] = objc_opt_class();
      *&v40[12] = 2112;
      *&v40[14] = v5;
      LODWORD(v35) = 22;
      v33 = v40;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [NSString stringWithCString:v9 encoding:4, v40, v35];
        free(v10);
        v33 = v11;
        SSFileLog();
      }
    }

    v12 = [SSURLBagContext contextWithBagType:0, v33];
    v13 = v12;
    if (v5)
    {
      [(SSURLBagContext *)v12 setUserIdentifier:v5];
    }

    v14 = [[SSURLBag alloc] initWithURLBagContext:v13];
    [v14 invalidate];
    *v40 = 0;
    *&v40[8] = v40;
    *&v40[16] = 0x2020000000;
    v41 = 0;
    v15 = dispatch_semaphore_create(0);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_2000;
    v37[3] = &unk_4258;
    v37[5] = v15;
    v37[6] = v40;
    v37[4] = self;
    [v14 loadWithCompletionBlock:v37];
    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);

    if (*(*&v40[8] + 24) == 1)
    {
      v16 = objc_alloc_init(HSCloudClient);
      v17 = dispatch_semaphore_create(0);
      v18 = +[SSLogConfig sharedConfig];
      shouldLog2 = [v18 shouldLog];
      shouldLogToDisk = [v18 shouldLogToDisk];
      oSLogObject = [v18 OSLogObject];
      if (shouldLogToDisk)
      {
        shouldLog2 |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        shouldLog2 &= 2u;
      }

      if (shouldLog2)
      {
        v22 = objc_opt_class();
        v38 = 138412290;
        v39 = v22;
        LODWORD(v35) = 12;
        v34 = &v38;
        v23 = _os_log_send_and_compose_impl();
        if (v23)
        {
          v24 = v23;
          v25 = [NSString stringWithCString:v23 encoding:4, &v38, v35];
          free(v24);
          v34 = v25;
          SSFileLog();
        }
      }

      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_21BC;
      v36[3] = &unk_4280;
      v36[4] = v17;
      [v16 authenticateWithCompletionHandler:{v36, v34}];
      dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v26 = +[SSLogConfig sharedConfig];
      shouldLog3 = [v26 shouldLog];
      shouldLogToDisk2 = [v26 shouldLogToDisk];
      oSLogObject2 = [v26 OSLogObject];
      if (shouldLogToDisk2)
      {
        shouldLog3 |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        shouldLog3 &= 2u;
      }

      if (shouldLog3)
      {
        v30 = objc_opt_class();
        v38 = 138412290;
        v39 = v30;
        LODWORD(v35) = 12;
        v31 = _os_log_send_and_compose_impl();
        if (v31)
        {
          v32 = v31;
          [NSString stringWithCString:v31 encoding:4, &v38, v35];
          free(v32);
          SSFileLog();
        }
      }
    }

    _Block_object_dispose(v40, 8);
  }
}

@end