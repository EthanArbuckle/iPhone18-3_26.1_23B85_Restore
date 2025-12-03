@interface VMVoicemailGreetingController
- (VMVoicemailGreetingController)initWithService:(id)service;
- (VVService)voicemailService;
- (void)_greetingFetchEnded:(id)ended;
- (void)_greetingSaveCompleted:(id)completed;
- (void)_handleGreetingTaskNotification:(id)notification;
- (void)dealloc;
- (void)greetingWithCompletion:(id)completion;
- (void)setGreeting:(id)greeting completion:(id)completion;
@end

@implementation VMVoicemailGreetingController

- (VMVoicemailGreetingController)initWithService:(id)service
{
  serviceCopy = service;
  v25.receiver = self;
  v25.super_class = VMVoicemailGreetingController;
  v5 = [(VMVoicemailGreetingController *)&v25 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_voicemailService, serviceCopy);
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    bundleIdentifier = [v7 bundleIdentifier];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector("queue");
    v12 = [NSString stringWithFormat:@"%@.%@.%@", bundleIdentifier, v10, v11];

    v13 = dispatch_queue_create([v12 UTF8String], 0);
    queue = v6->_queue;
    v6->_queue = v13;

    v15 = vm_vmd_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      voicemailService = [(VMVoicemailGreetingController *)v6 voicemailService];
      serviceLabelID = [voicemailService serviceLabelID];
      voicemailService2 = [(VMVoicemailGreetingController *)v6 voicemailService];
      contextInfo = [voicemailService2 contextInfo];
      *buf = 138412546;
      v27 = serviceLabelID;
      v28 = 2112;
      v29 = contextInfo;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Adding greeting observers for account %@, subscription %@", buf, 0x16u);
    }

    v20 = +[NSNotificationCenter defaultCenter];
    voicemailService3 = [(VMVoicemailGreetingController *)v6 voicemailService];
    [v20 addObserver:v6 selector:"_handleGreetingTaskNotification:" name:@"VVServiceTaskEndedNotification" object:voicemailService3];

    v22 = +[NSNotificationCenter defaultCenter];
    voicemailService4 = [(VMVoicemailGreetingController *)v6 voicemailService];
    [v22 addObserver:v6 selector:"_handleGreetingTaskNotification:" name:@"VVServiceTaskCancelledNotification" object:voicemailService4];
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

- (void)greetingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    voicemailService = [(VMVoicemailGreetingController *)self voicemailService];
    serviceLabelID = [voicemailService serviceLabelID];
    voicemailService2 = [(VMVoicemailGreetingController *)self voicemailService];
    contextInfo = [voicemailService2 contextInfo];
    v11 = 138412546;
    v12 = serviceLabelID;
    v13 = 2112;
    v14 = contextInfo;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Get greeting for account %@, subscription %@", &v11, 0x16u);
  }

  voicemailService3 = [(VMVoicemailGreetingController *)self voicemailService];
  [voicemailService3 retrieveGreeting:completionCopy];
}

- (void)setGreeting:(id)greeting completion:(id)completion
{
  greetingCopy = greeting;
  completionCopy = completion;
  v8 = vm_vmd_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = completionCopy;
    if ([greetingCopy type] == 2)
    {
      v10 = @"custom";
    }

    else
    {
      v10 = @"standard";
    }

    voicemailService = [(VMVoicemailGreetingController *)self voicemailService];
    serviceLabelID = [voicemailService serviceLabelID];
    voicemailService2 = [(VMVoicemailGreetingController *)self voicemailService];
    contextInfo = [voicemailService2 contextInfo];
    v14 = [greetingCopy url];
    path = [v14 path];
    *buf = 138413314;
    v25 = v10;
    completionCopy = v9;
    v26 = 2112;
    v27 = greetingCopy;
    v28 = 2112;
    v29 = serviceLabelID;
    v30 = 2112;
    v31 = contextInfo;
    v32 = 2112;
    v33 = path;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Set %@ greeting %@ for account %@, subscription %@ from file at %@", buf, 0x34u);
  }

  if ([greetingCopy type] != 2)
  {
    [greetingCopy setDuration:0.0];
    v17 = 0;
    goto LABEL_12;
  }

  v16 = [greetingCopy url];
  v17 = [NSData dataWithContentsOfURL:v16];

  if (v17)
  {
LABEL_12:
    [(VMVoicemailGreetingController *)self setSetVoicemailReply:completionCopy];
    voicemailService3 = [(VMVoicemailGreetingController *)self voicemailService];
    type = [greetingCopy type];
    if (type >= 3)
    {
      v21 = 3;
    }

    else
    {
      v21 = type;
    }

    [greetingCopy duration];
    [voicemailService3 setGreetingType:v21 data:v17 duration:v22];

    goto LABEL_16;
  }

  v18 = vm_vmd_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_10009DE58(greetingCopy, self, v18);
  }

  v17 = [NSError errorWithDomain:kVVErrorDomain code:1032 userInfo:0];
  completionCopy[2](completionCopy, 0, v17);
LABEL_16:
}

- (void)_handleGreetingTaskNotification:(id)notification
{
  notificationCopy = notification;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 138412546;
    *&v12[4] = objc_opt_class();
    *&v12[12] = 2112;
    *&v12[14] = notificationCopy;
    v6 = *&v12[4];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", v12, 0x16u);
  }

  userInfo = [notificationCopy userInfo];
  v8 = [userInfo valueForKey:@"VVTaskWillBeRetried"];
  bOOLValue = [v8 BOOLValue];

  userInfo2 = [notificationCopy userInfo];
  v11 = [userInfo2 valueForKey:@"VVTaskType"];

  if (![v11 isEqual:&off_1000F58C0] || (bOOLValue & 1) != 0)
  {
    if ([v11 isEqual:{&off_1000F58D8, *v12, *&v12[16]}])
    {
      if (bOOLValue)
      {
        goto LABEL_11;
      }
    }

    else if (bOOLValue & 1 | (([v11 isEqual:&off_1000F58F0] & 1) == 0))
    {
      goto LABEL_11;
    }

    [(VMVoicemailGreetingController *)self _greetingSaveCompleted:notificationCopy];
    goto LABEL_11;
  }

  [(VMVoicemailGreetingController *)self _greetingFetchEnded:notificationCopy];
LABEL_11:
}

- (void)_greetingFetchEnded:(id)ended
{
  endedCopy = ended;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [endedCopy userInfo];
    v33 = 138412290;
    v34 = userInfo;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Retrieving greeting finished with user info %@", &v33, 0xCu);
  }

  userInfo2 = [endedCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:@"VVBlock"];

  if (v8)
  {
    userInfo3 = [endedCopy userInfo];
    v10 = [userInfo3 objectForKeyedSubscript:@"VVError"];

    if (v10)
    {
      userInfo4 = [endedCopy userInfo];
      v12 = [userInfo4 objectForKeyedSubscript:@"VVError"];

      domain = [v12 domain];
      if ([domain isEqualToString:kVVErrorDomain])
      {
        code = [v12 code];

        if (code == 1033)
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
            voicemailService = [(VMVoicemailGreetingController *)self voicemailService];
            contextInfo = [voicemailService contextInfo];
            v33 = 138412290;
            v34 = contextInfo;
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
        voicemailService2 = [(VMVoicemailGreetingController *)self voicemailService];
        contextInfo2 = [voicemailService2 contextInfo];
        v33 = 138412290;
        v34 = contextInfo2;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Retrieving greeting failed for subscription %@", &v33, 0xCu);
      }

      v19 = [NSError errorWithDomain:@"com.apple.mobilephone" code:1034 userInfo:0];
      (v8)[2](v8, 0, v19);
      goto LABEL_23;
    }

    v20 = vm_vmd_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      voicemailService3 = [(VMVoicemailGreetingController *)self voicemailService];
      contextInfo3 = [voicemailService3 contextInfo];
      v33 = 138412290;
      v34 = contextInfo3;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Retrieved greeting successfully for subscription %@", &v33, 0xCu);
    }

    v19 = objc_alloc_init(VMVoicemailGreeting);
    voicemailService4 = [(VMVoicemailGreetingController *)self voicemailService];
    mailboxGreetingType = [voicemailService4 mailboxGreetingType];
    if (mailboxGreetingType >= 3)
    {
      v25 = 3;
    }

    else
    {
      v25 = mailboxGreetingType;
    }

    [v19 setType:v25];

    voicemailService5 = [(VMVoicemailGreetingController *)self voicemailService];
    accountDir = [voicemailService5 accountDir];
    v29 = sub_1000856A8(accountDir, v28);
    [v19 setUrl:v29];

    goto LABEL_18;
  }

LABEL_24:
}

- (void)_greetingSaveCompleted:(id)completed
{
  completedCopy = completed;
  v5 = vm_vmd_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    voicemailService = [(VMVoicemailGreetingController *)self voicemailService];
    contextInfo = [voicemailService contextInfo];
    userInfo = [completedCopy userInfo];
    v14 = 138412546;
    v15 = contextInfo;
    v16 = 2112;
    v17 = userInfo;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saving greeting completed for subscription %@ with user info %@", &v14, 0x16u);
  }

  userInfo2 = [completedCopy userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:@"VVError"];

  if (v10)
  {
    v11 = [NSError errorWithDomain:@"com.apple.mobilephone" code:1035 userInfo:0];
  }

  else
  {
    v11 = 0;
  }

  setVoicemailReply = [(VMVoicemailGreetingController *)self setVoicemailReply];

  if (setVoicemailReply)
  {
    setVoicemailReply2 = [(VMVoicemailGreetingController *)self setVoicemailReply];
    (setVoicemailReply2)[2](setVoicemailReply2, v11 == 0, v11);
  }
}

- (VVService)voicemailService
{
  WeakRetained = objc_loadWeakRetained(&self->_voicemailService);

  return WeakRetained;
}

@end