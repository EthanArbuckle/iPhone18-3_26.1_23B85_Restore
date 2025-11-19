@interface VMVoicemailGreetingController
- (VMVoicemailGreetingController)initWithService:(id)a3;
- (VVService)voicemailService;
- (void)_greetingFetchEnded:(id)a3;
- (void)_greetingSaveCompleted:(id)a3;
- (void)_handleGreetingTaskNotification:(id)a3;
- (void)dealloc;
- (void)greetingWithCompletion:(id)a3;
- (void)setGreeting:(id)a3 completion:(id)a4;
@end

@implementation VMVoicemailGreetingController

- (VMVoicemailGreetingController)initWithService:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = VMVoicemailGreetingController;
  v5 = [(VMVoicemailGreetingController *)&v25 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_voicemailService, v4);
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 bundleIdentifier];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector("queue");
    v12 = [NSString stringWithFormat:@"%@.%@.%@", v8, v10, v11];

    v13 = dispatch_queue_create([v12 UTF8String], 0);
    queue = v6->_queue;
    v6->_queue = v13;

    v15 = vm_vmd_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(VMVoicemailGreetingController *)v6 voicemailService];
      v17 = [v16 serviceLabelID];
      v18 = [(VMVoicemailGreetingController *)v6 voicemailService];
      v19 = [v18 contextInfo];
      *buf = 138412546;
      v27 = v17;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Adding greeting observers for account %@, subscription %@", buf, 0x16u);
    }

    v20 = +[NSNotificationCenter defaultCenter];
    v21 = [(VMVoicemailGreetingController *)v6 voicemailService];
    [v20 addObserver:v6 selector:"_handleGreetingTaskNotification:" name:@"VVServiceTaskEndedNotification" object:v21];

    v22 = +[NSNotificationCenter defaultCenter];
    v23 = [(VMVoicemailGreetingController *)v6 voicemailService];
    [v22 addObserver:v6 selector:"_handleGreetingTaskNotification:" name:@"VVServiceTaskCancelledNotification" object:v23];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VMVoicemailGreetingController;
  [(VMVoicemailGreetingController *)&v4 dealloc];
}

- (void)greetingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VMVoicemailGreetingController *)self voicemailService];
    v7 = [v6 serviceLabelID];
    v8 = [(VMVoicemailGreetingController *)self voicemailService];
    v9 = [v8 contextInfo];
    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Get greeting for account %@, subscription %@", &v11, 0x16u);
  }

  v10 = [(VMVoicemailGreetingController *)self voicemailService];
  [v10 retrieveGreeting:v4];
}

- (void)setGreeting:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = vm_vmd_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v7;
    if ([v6 type] == 2)
    {
      v10 = @"custom";
    }

    else
    {
      v10 = @"standard";
    }

    v23 = [(VMVoicemailGreetingController *)self voicemailService];
    v11 = [v23 serviceLabelID];
    v12 = [(VMVoicemailGreetingController *)self voicemailService];
    v13 = [v12 contextInfo];
    v14 = [v6 url];
    v15 = [v14 path];
    *buf = 138413314;
    v25 = v10;
    v7 = v9;
    v26 = 2112;
    v27 = v6;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = v13;
    v32 = 2112;
    v33 = v15;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Set %@ greeting %@ for account %@, subscription %@ from file at %@", buf, 0x34u);
  }

  if ([v6 type] != 2)
  {
    [v6 setDuration:0.0];
    v17 = 0;
    goto LABEL_12;
  }

  v16 = [v6 url];
  v17 = [NSData dataWithContentsOfURL:v16];

  if (v17)
  {
LABEL_12:
    [(VMVoicemailGreetingController *)self setSetVoicemailReply:v7];
    v19 = [(VMVoicemailGreetingController *)self voicemailService];
    v20 = [v6 type];
    if (v20 >= 3)
    {
      v21 = 3;
    }

    else
    {
      v21 = v20;
    }

    [v6 duration];
    [v19 setGreetingType:v21 data:v17 duration:v22];

    goto LABEL_16;
  }

  v18 = vm_vmd_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_10009DE58(v6, self, v18);
  }

  v17 = [NSError errorWithDomain:kVVErrorDomain code:1032 userInfo:0];
  v7[2](v7, 0, v17);
LABEL_16:
}

- (void)_handleGreetingTaskNotification:(id)a3
{
  v4 = a3;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 138412546;
    *&v12[4] = objc_opt_class();
    *&v12[12] = 2112;
    *&v12[14] = v4;
    v6 = *&v12[4];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", v12, 0x16u);
  }

  v7 = [v4 userInfo];
  v8 = [v7 valueForKey:@"VVTaskWillBeRetried"];
  v9 = [v8 BOOLValue];

  v10 = [v4 userInfo];
  v11 = [v10 valueForKey:@"VVTaskType"];

  if (![v11 isEqual:&off_1000F58C0] || (v9 & 1) != 0)
  {
    if ([v11 isEqual:{&off_1000F58D8, *v12, *&v12[16]}])
    {
      if (v9)
      {
        goto LABEL_11;
      }
    }

    else if (v9 & 1 | (([v11 isEqual:&off_1000F58F0] & 1) == 0))
    {
      goto LABEL_11;
    }

    [(VMVoicemailGreetingController *)self _greetingSaveCompleted:v4];
    goto LABEL_11;
  }

  [(VMVoicemailGreetingController *)self _greetingFetchEnded:v4];
LABEL_11:
}

- (void)_greetingFetchEnded:(id)a3
{
  v4 = a3;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 userInfo];
    v33 = 138412290;
    v34 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Retrieving greeting finished with user info %@", &v33, 0xCu);
  }

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"VVBlock"];

  if (v8)
  {
    v9 = [v4 userInfo];
    v10 = [v9 objectForKeyedSubscript:@"VVError"];

    if (v10)
    {
      v11 = [v4 userInfo];
      v12 = [v11 objectForKeyedSubscript:@"VVError"];

      v13 = [v12 domain];
      if ([v13 isEqualToString:kVVErrorDomain])
      {
        v14 = [v12 code];

        if (v14 == 1033)
        {
          v15 = vm_vmd_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v33 = 138412290;
            v34 = v12;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Greeting did not exist on server, even though we expected custom greeting: %@", &v33, 0xCu);
          }

          v16 = vm_vmd_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [(VMVoicemailGreetingController *)self voicemailService];
            v18 = [v17 contextInfo];
            v33 = 138412290;
            v34 = v18;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Retrieving greeting completed, but greeting message does not exist for subscription %@", &v33, 0xCu);
          }

          v19 = objc_opt_new();
          [v19 setType:0];
          [v19 setUrl:0];
LABEL_18:
          (v8)[2](v8, v19, 0);
LABEL_23:

          goto LABEL_24;
        }
      }

      else
      {
      }

      v30 = vm_vmd_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [(VMVoicemailGreetingController *)self voicemailService];
        v32 = [v31 contextInfo];
        v33 = 138412290;
        v34 = v32;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Retrieving greeting failed for subscription %@", &v33, 0xCu);
      }

      v19 = [NSError errorWithDomain:@"com.apple.mobilephone" code:1034 userInfo:0];
      (v8)[2](v8, 0, v19);
      goto LABEL_23;
    }

    v20 = vm_vmd_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(VMVoicemailGreetingController *)self voicemailService];
      v22 = [v21 contextInfo];
      v33 = 138412290;
      v34 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Retrieved greeting successfully for subscription %@", &v33, 0xCu);
    }

    v19 = objc_alloc_init(VMVoicemailGreeting);
    v23 = [(VMVoicemailGreetingController *)self voicemailService];
    v24 = [v23 mailboxGreetingType];
    if (v24 >= 3)
    {
      v25 = 3;
    }

    else
    {
      v25 = v24;
    }

    [v19 setType:v25];

    v26 = [(VMVoicemailGreetingController *)self voicemailService];
    v27 = [v26 accountDir];
    v29 = sub_1000856A8(v27, v28);
    [v19 setUrl:v29];

    goto LABEL_18;
  }

LABEL_24:
}

- (void)_greetingSaveCompleted:(id)a3
{
  v4 = a3;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VMVoicemailGreetingController *)self voicemailService];
    v7 = [v6 contextInfo];
    v8 = [v4 userInfo];
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saving greeting completed for subscription %@ with user info %@", &v14, 0x16u);
  }

  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"VVError"];

  if (v10)
  {
    v11 = [NSError errorWithDomain:@"com.apple.mobilephone" code:1035 userInfo:0];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(VMVoicemailGreetingController *)self setVoicemailReply];

  if (v12)
  {
    v13 = [(VMVoicemailGreetingController *)self setVoicemailReply];
    (v13)[2](v13, v11 == 0, v11);
  }
}

- (VVService)voicemailService
{
  WeakRetained = objc_loadWeakRetained(&self->_voicemailService);

  return WeakRetained;
}

@end