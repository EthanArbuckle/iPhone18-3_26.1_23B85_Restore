@interface PKNotifier
+ (id)sharedNotifier;
- (PKNotifier)init;
- (id)makeAuthAlert:(id)a3 challenge:(id)a4;
- (id)makeNotice:(id)a3 message:(id)a4;
- (id)makeQuotaAlert:(id)a3 message:(id)a4 quotaURL:(id)a5;
- (id)makeRetry:(id)a3 message:(id)a4;
- (id)makeSimpleAlert:(id)a3 message:(id)a4;
- (void)cancelNotification:(id)a3;
- (void)notification:(__CFUserNotification *)a3 completedWithResult:(unint64_t)a4;
- (void)startNotification:(id)a3 options:(unint64_t)a4 dict:(id)a5;
@end

@implementation PKNotifier

+ (id)sharedNotifier
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__PKNotifier_sharedNotifier__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (id)makeSimpleAlert:(id)a3 message:(id)a4
{
  v4 = makeNotification<PKNotification>(self, a3, a4, 0);
  v5 = PKLocalizedString(&cfstr_Ok.isa, "Acknowledgement");
  [v4 setDefaultButtonTitle:v5];

  v6 = PKLocalizedString(&cfstr_Cancel.isa, "Cancel printing");
  [v4 setAlternateButtonTitle:v6];

  return v4;
}

- (id)makeQuotaAlert:(id)a3 message:(id)a4 quotaURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = v8;
  v13 = v9;
  v14 = [(PKNotification *)[PKQuotaNotification alloc] initWithNotifier:v11 notifyKind:0];
  [(PKNotification *)v14 setHeaderString:v12];
  [(PKNotification *)v14 setMessageString:v13];

  v15 = PKLocalizedString(&cfstr_Details.isa, "Open webpage to manage quota");
  [(PKNotification *)v14 setDefaultButtonTitle:v15];

  v16 = PKLocalizedString(&cfstr_Cancel.isa, "Cancel printing");
  [(PKNotification *)v14 setAlternateButtonTitle:v16];

  [(PKQuotaNotification *)v14 setQuotaURL:v10];

  return v14;
}

- (id)makeNotice:(id)a3 message:(id)a4
{
  v4 = makeNotification<PKNotification>(self, a3, a4, 1);
  v5 = PKLocalizedString(&cfstr_Ok.isa, "Acknowledgement");
  [v4 setDefaultButtonTitle:v5];

  return v4;
}

- (id)makeRetry:(id)a3 message:(id)a4
{
  v4 = makeNotification<PKNotification>(self, a3, a4, 0);
  v5 = PKLocalizedString(&cfstr_TryAgain.isa, "Retry printing");
  [v4 setDefaultButtonTitle:v5];

  v6 = PKLocalizedString(&cfstr_Cancel.isa, "Cancel printing");
  [v4 setAlternateButtonTitle:v6];

  return v4;
}

- (id)makeAuthAlert:(id)a3 challenge:(id)a4
{
  v5 = a3;
  v6 = PKLocalizedString(&cfstr_PasswordRequir.isa, "Password prompt");
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:0, v5];
  v8 = self;
  v9 = v7;
  v10 = [(PKNotification *)[PKAuthNotification alloc] initWithNotifier:v8 notifyKind:0];
  [(PKNotification *)v10 setHeaderString:0];
  [(PKNotification *)v10 setMessageString:v9];

  v11 = [(PKAuthNotification *)v10 defaultUsername];
  v12 = [v11 isEqualToString:@"guest-only"];

  if ((v12 & 1) == 0)
  {
    v13 = PKLocalizedString(&cfstr_UserName.isa, "Username placeholder text");
    [(PKAuthNotification *)v10 setUsernameField:v13];
  }

  v14 = PKLocalizedString(&cfstr_Password.isa, "Password placeholder text");
  [(PKAuthNotification *)v10 setPasswordField:v14];

  return v10;
}

- (void)notification:(__CFUserNotification *)a3 completedWithResult:(unint64_t)a4
{
  v6 = self;
  objc_sync_enter(v6);
  if (v6->_outstandingRef == a3)
  {
    v6->_outstandingRef = 0;
    v10 = v6->_outstandingNote;
    outstandingNote = v6->_outstandingNote;
    v6->_outstandingNote = 0;

    outstandingSource = v6->_outstandingSource;
    if (outstandingSource)
    {
      CFRunLoopSourceInvalidate(outstandingSource);
      v6->_outstandingSource = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(v6);

  if (v10)
  {
    v9 = CFUserNotificationGetResponseDictionary(a3);
    [(PKNotification *)v10 _interpretResult:a4 responseDict:v9];
  }

  else
  {
    [0 _interpretResult:2 responseDict:0];
  }
}

- (void)startNotification:(id)a3 options:(unint64_t)a4 dict:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [v9 resultHandler];

  if (!v11)
  {
    [v9 setResultHandler:&__block_literal_global_3];
  }

  v12 = [v9 resultQueue];

  if (!v12)
  {
    [v9 setResultQueue:MEMORY[0x277D85CD0]];
  }

  error = 0;
  v13 = *MEMORY[0x277CBECE8];
  v14 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, a4, &error, v10);
  v15 = v14;
  if (v14)
  {
    if (v11)
    {
      RunLoopSource = CFUserNotificationCreateRunLoopSource(v13, v14, _notifyCallout, 0);
      v17 = self;
      objc_sync_enter(v17);
      outstandingRef = v17->_outstandingRef;
      if (outstandingRef)
      {
        CFUserNotificationCancel(outstandingRef);
        CFRelease(v17->_outstandingRef);
        v17->_outstandingRef = 0;
      }

      outstandingSource = v17->_outstandingSource;
      if (outstandingSource)
      {
        CFRelease(outstandingSource);
        v17->_outstandingSource = 0;
      }

      v17->_outstandingRef = v15;
      objc_storeStrong(&v17->_outstandingNote, a3);
      v17->_outstandingSource = RunLoopSource;
      objc_sync_exit(v17);

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
    [v9 _interpretResult:2 responseDict:0];
  }
}

- (void)cancelNotification:(id)a3
{
  obj = self;
  v4 = a3;
  objc_sync_enter(obj);
  outstandingNote = obj->_outstandingNote;

  if (outstandingNote == v4)
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