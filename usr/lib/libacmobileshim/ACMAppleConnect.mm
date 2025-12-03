@interface ACMAppleConnect
+ (id)sharedInstance;
- (ACMAppleConnect)init;
- (id)delegate;
- (id)hideAppleConnectSignInDialog;
- (id)private;
- (unint64_t)logLevel;
- (void)authenticate:(id)authenticate;
- (void)authenticateWithRequest:(id)request password:(id)password;
- (void)cancelRequests;
- (void)dealloc;
- (void)handleMemoryWarningNotification:(id)notification;
- (void)setDelegate:(id)delegate;
- (void)setLogLevel:(unint64_t)level;
- (void)setupComponents;
- (void)verifyServiceTicket:(id)ticket;
@end

@implementation ACMAppleConnect

- (void)authenticateWithRequest:(id)request password:(id)password
{
  private = [(ACMAppleConnect *)self private];

  [private authenticateWithRequest:request password:password];
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
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
    [defaultCenter addObserver:v4 selector:sel_handleMemoryWarningNotification_ name:*MEMORY[0x29EDC8020] object:mEMORY[0x29EDC7938]];
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

- (void)handleMemoryWarningNotification:(id)notification
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

- (void)authenticate:(id)authenticate
{
  private = [(ACMAppleConnect *)self private];

  [private authenticate:authenticate];
}

- (void)verifyServiceTicket:(id)ticket
{
  private = [(ACMAppleConnect *)self private];

  [private verifyServiceTicket:ticket];
}

- (void)cancelRequests
{
  private = [(ACMAppleConnect *)self private];

  [private cancelRequests];
}

- (id)hideAppleConnectSignInDialog
{
  private = [(ACMAppleConnect *)self private];

  return [private hideAppleConnectSignInDialog];
}

- (id)delegate
{
  objc_sync_enter(self);
  delegate = self->_delegate;
  objc_sync_exit(self);
  return delegate;
}

- (void)setDelegate:(id)delegate
{
  objc_sync_enter(self);
  if (self->_delegate != delegate)
  {
    self->_delegate = delegate;
    [self->_private setDelegate:delegate];
  }

  objc_sync_exit(self);
}

- (unint64_t)logLevel
{
  private = [(ACMAppleConnect *)self private];

  return [private logLevel];
}

- (void)setLogLevel:(unint64_t)level
{
  private = [(ACMAppleConnect *)self private];

  [private setLogLevel:level];
}

@end