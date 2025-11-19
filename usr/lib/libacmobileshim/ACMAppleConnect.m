@interface ACMAppleConnect
+ (id)sharedInstance;
- (ACMAppleConnect)init;
- (id)delegate;
- (id)hideAppleConnectSignInDialog;
- (id)private;
- (unint64_t)logLevel;
- (void)authenticate:(id)a3;
- (void)authenticateWithRequest:(id)a3 password:(id)a4;
- (void)cancelRequests;
- (void)dealloc;
- (void)handleMemoryWarningNotification:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setLogLevel:(unint64_t)a3;
- (void)setupComponents;
- (void)verifyServiceTicket:(id)a3;
@end

@implementation ACMAppleConnect

- (void)authenticateWithRequest:(id)a3 password:(id)a4
{
  v6 = [(ACMAppleConnect *)self private];

  [v6 authenticateWithRequest:a3 password:a4];
}

+ (id)sharedInstance
{
  result = sAppleConnect;
  if (!sAppleConnect)
  {
    if (qword_2A1EB8FE0)
    {
      if ((ACFLogSettingsGetLevelMask() & 0x40) != 0)
      {
        ACFLog(6, "+[ACMAppleConnect sharedInstance]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnect.m", 47, 0, "Creating shared instance of %@ version", @"2.9.2");
      }
    }

    result = objc_opt_new();
    sAppleConnect = result;
  }

  return result;
}

- (ACMAppleConnect)init
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  if (sAppleConnect)
  {
    [(ACMAppleConnect *)self dealloc];
    v4 = sAppleConnect;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ACMAppleConnect;
    v4 = [(ACMAppleConnect *)&v8 init];
    sAppleConnect = v4;
    v5 = [MEMORY[0x29EDBA068] defaultCenter];
    v6 = [MEMORY[0x29EDC7938] sharedApplication];
    [v5 addObserver:v4 selector:sel_handleMemoryWarningNotification_ name:*MEMORY[0x29EDC8020] object:v6];
  }

  objc_sync_exit(v3);
  return v4;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  objc_sync_enter(v3);
  [objc_msgSend(MEMORY[0x29EDBA068] "defaultCenter")];
  if (sAppleConnect == self)
  {
    sAppleConnect = 0;
  }

  objc_sync_exit(v3);
  [self->_private setDelegate:0];
  [self->_private setMasterObject:0];

  self->_private = 0;
  [(ACFComponents *)ACMExternalAppleConnectImplComponents setComponents:0];
  v4.receiver = self;
  v4.super_class = ACMAppleConnect;
  [(ACMAppleConnect *)&v4 dealloc];
}

- (void)handleMemoryWarningNotification:(id)a3
{
  objc_sync_enter(self);
  v4 = self->_private;
  if (v4 && [v4 shouldReleaseOnMemoryWarning])
  {
    [self->_private setDelegate:0];
    [self->_private setMasterObject:0];

    self->_private = 0;
  }

  objc_sync_exit(self);
}

- (void)setupComponents
{
  v2 = objc_opt_new();
  [v2 setTransportClass:objc_opt_class()];
  [v2 setCryptograph:objc_opt_new()];
  [v2 setKeychainManager:objc_opt_new()];
  [v2 setCertificateStoragePolicy:objc_opt_new()];
  [v2 setTgtStoragePolicy:objc_opt_new()];
  [v2 setLocalAuthenticationContextClass:objc_opt_class()];
  v3 = objc_opt_new();
  [v3 setAuthContextClass:objc_opt_class()];
  [v3 setSsoTokenClass:objc_opt_class()];
  [v2 setTicketManager:v3];

  [(ACFComponents *)ACMExternalAppleConnectImplComponents setComponents:v2];
}

- (id)private
{
  objc_sync_enter(self);
  v3 = self->_private;
  if (!v3)
  {
    [(ACMAppleConnect *)self setupComponents];
    v4 = ACMExternalAppleConnectPrivateCreate(self);
    self->_private = v4;
    [v4 setDelegate:self->_delegate];
    v3 = self->_private;
  }

  v5 = v3;
  objc_sync_exit(self);
  return v5;
}

- (void)authenticate:(id)a3
{
  v4 = [(ACMAppleConnect *)self private];

  [v4 authenticate:a3];
}

- (void)verifyServiceTicket:(id)a3
{
  v4 = [(ACMAppleConnect *)self private];

  [v4 verifyServiceTicket:a3];
}

- (void)cancelRequests
{
  v2 = [(ACMAppleConnect *)self private];

  [v2 cancelRequests];
}

- (id)hideAppleConnectSignInDialog
{
  v2 = [(ACMAppleConnect *)self private];

  return [v2 hideAppleConnectSignInDialog];
}

- (id)delegate
{
  objc_sync_enter(self);
  delegate = self->_delegate;
  objc_sync_exit(self);
  return delegate;
}

- (void)setDelegate:(id)a3
{
  objc_sync_enter(self);
  if (self->_delegate != a3)
  {
    self->_delegate = a3;
    [self->_private setDelegate:a3];
  }

  objc_sync_exit(self);
}

- (unint64_t)logLevel
{
  v2 = [(ACMAppleConnect *)self private];

  return [v2 logLevel];
}

- (void)setLogLevel:(unint64_t)a3
{
  v4 = [(ACMAppleConnect *)self private];

  [v4 setLogLevel:a3];
}

@end