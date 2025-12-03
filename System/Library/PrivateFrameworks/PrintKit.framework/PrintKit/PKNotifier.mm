@interface PKNotifier
+ (id)sharedNotifier;
- (PKNotifier)init;
- (id)makeAuthAlert:(id)alert challenge:(id)challenge;
- (id)makeNotice:(id)notice message:(id)message;
- (id)makeQuotaAlert:(id)alert message:(id)message quotaURL:(id)l;
- (id)makeRetry:(id)retry message:(id)message;
- (id)makeSimpleAlert:(id)alert message:(id)message;
- (void)cancelNotification:(id)notification;
- (void)notification:(__CFUserNotification *)notification completedWithResult:(unint64_t)result;
- (void)startNotification:(id)notification options:(unint64_t)options dict:(id)dict;
@end

@implementation PKNotifier

+ (id)sharedNotifier
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__PKNotifier_sharedNotifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[PKNotifier sharedNotifier]::sOnce != -1)
  {
    dispatch_once(&+[PKNotifier sharedNotifier]::sOnce, block);
  }

  v2 = +[PKNotifier sharedNotifier]::sNotifier;

  return v2;
}

void __28__PKNotifier_sharedNotifier__block_invoke()
{
  objc_opt_class();
  v0 = objc_opt_new();
  v1 = +[PKNotifier sharedNotifier]::sNotifier;
  +[PKNotifier sharedNotifier]::sNotifier = v0;
}

- (PKNotifier)init
{
  v3.receiver = self;
  v3.super_class = PKNotifier;
  return [(PKNotifier *)&v3 init];
}

- (id)makeSimpleAlert:(id)alert message:(id)message
{
  v4 = makeNotification<PKNotification>(self, alert, message, 0);
  v5 = PKLocalizedString(&cfstr_Ok.isa, "Acknowledgement");
  [v4 setDefaultButtonTitle:v5];

  v6 = PKLocalizedString(&cfstr_Cancel.isa, "Cancel printing");
  [v4 setAlternateButtonTitle:v6];

  return v4;
}

- (id)makeQuotaAlert:(id)alert message:(id)message quotaURL:(id)l
{
  alertCopy = alert;
  messageCopy = message;
  lCopy = l;
  selfCopy = self;
  v12 = alertCopy;
  v13 = messageCopy;
  v14 = [(PKNotification *)[PKQuotaNotification alloc] initWithNotifier:selfCopy notifyKind:0];
  [(PKNotification *)v14 setHeaderString:v12];
  [(PKNotification *)v14 setMessageString:v13];

  v15 = PKLocalizedString(&cfstr_Details.isa, "Open webpage to manage quota");
  [(PKNotification *)v14 setDefaultButtonTitle:v15];

  v16 = PKLocalizedString(&cfstr_Cancel.isa, "Cancel printing");
  [(PKNotification *)v14 setAlternateButtonTitle:v16];

  [(PKQuotaNotification *)v14 setQuotaURL:lCopy];

  return v14;
}

- (id)makeNotice:(id)notice message:(id)message
{
  v4 = makeNotification<PKNotification>(self, notice, message, 1);
  v5 = PKLocalizedString(&cfstr_Ok.isa, "Acknowledgement");
  [v4 setDefaultButtonTitle:v5];

  return v4;
}

- (id)makeRetry:(id)retry message:(id)message
{
  v4 = makeNotification<PKNotification>(self, retry, message, 0);
  v5 = PKLocalizedString(&cfstr_TryAgain.isa, "Retry printing");
  [v4 setDefaultButtonTitle:v5];

  v6 = PKLocalizedString(&cfstr_Cancel.isa, "Cancel printing");
  [v4 setAlternateButtonTitle:v6];

  return v4;
}

- (id)makeAuthAlert:(id)alert challenge:(id)challenge
{
  alertCopy = alert;
  v6 = PKLocalizedString(&cfstr_PasswordRequir.isa, "Password prompt");
  alertCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:0, alertCopy];
  selfCopy = self;
  v9 = alertCopy;
  v10 = [(PKNotification *)[PKAuthNotification alloc] initWithNotifier:selfCopy notifyKind:0];
  [(PKNotification *)v10 setHeaderString:0];
  [(PKNotification *)v10 setMessageString:v9];

  defaultUsername = [(PKAuthNotification *)v10 defaultUsername];
  v12 = [defaultUsername isEqualToString:@"guest-only"];

  if ((v12 & 1) == 0)
  {
    v13 = PKLocalizedString(&cfstr_UserName.isa, "Username placeholder text");
    [(PKAuthNotification *)v10 setUsernameField:v13];
  }

  v14 = PKLocalizedString(&cfstr_Password.isa, "Password placeholder text");
  [(PKAuthNotification *)v10 setPasswordField:v14];

  return v10;
}

- (void)notification:(__CFUserNotification *)notification completedWithResult:(unint64_t)result
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_outstandingRef == notification)
  {
    selfCopy->_outstandingRef = 0;
    v10 = selfCopy->_outstandingNote;
    outstandingNote = selfCopy->_outstandingNote;
    selfCopy->_outstandingNote = 0;

    outstandingSource = selfCopy->_outstandingSource;
    if (outstandingSource)
    {
      CFRunLoopSourceInvalidate(outstandingSource);
      selfCopy->_outstandingSource = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(selfCopy);

  if (v10)
  {
    v9 = CFUserNotificationGetResponseDictionary(notification);
    [(PKNotification *)v10 _interpretResult:result responseDict:v9];
  }

  else
  {
    [0 _interpretResult:2 responseDict:0];
  }
}

- (void)startNotification:(id)notification options:(unint64_t)options dict:(id)dict
{
  notificationCopy = notification;
  dictCopy = dict;
  resultHandler = [notificationCopy resultHandler];

  if (!resultHandler)
  {
    [notificationCopy setResultHandler:&__block_literal_global_3];
  }

  resultQueue = [notificationCopy resultQueue];

  if (!resultQueue)
  {
    [notificationCopy setResultQueue:MEMORY[0x277D85CD0]];
  }

  error = 0;
  v13 = *MEMORY[0x277CBECE8];
  v14 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, options, &error, dictCopy);
  v15 = v14;
  if (v14)
  {
    if (resultHandler)
    {
      RunLoopSource = CFUserNotificationCreateRunLoopSource(v13, v14, _notifyCallout, 0);
      selfCopy = self;
      objc_sync_enter(selfCopy);
      outstandingRef = selfCopy->_outstandingRef;
      if (outstandingRef)
      {
        CFUserNotificationCancel(outstandingRef);
        CFRelease(selfCopy->_outstandingRef);
        selfCopy->_outstandingRef = 0;
      }

      outstandingSource = selfCopy->_outstandingSource;
      if (outstandingSource)
      {
        CFRelease(outstandingSource);
        selfCopy->_outstandingSource = 0;
      }

      selfCopy->_outstandingRef = v15;
      objc_storeStrong(&selfCopy->_outstandingNote, notification);
      selfCopy->_outstandingSource = RunLoopSource;
      objc_sync_exit(selfCopy);

      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, RunLoopSource, *MEMORY[0x277CBF048]);
    }

    else
    {
      CFAutorelease(v14);
    }
  }

  else
  {
    [notificationCopy _interpretResult:2 responseDict:0];
  }
}

- (void)cancelNotification:(id)notification
{
  obj = self;
  notificationCopy = notification;
  objc_sync_enter(obj);
  outstandingNote = obj->_outstandingNote;

  if (outstandingNote == notificationCopy)
  {
    outstandingRef = obj->_outstandingRef;
    if (outstandingRef)
    {
      CFUserNotificationCancel(outstandingRef);
    }
  }

  objc_sync_exit(obj);
}

@end