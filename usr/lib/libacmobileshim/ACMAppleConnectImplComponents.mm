@interface ACMAppleConnectImplComponents
+ (id)components;
- (ACMAppleConnectPreferences)preferences;
- (ACMSystemInfoProtocol)systemInfo;
- (id)createAuthenticationRequest;
- (id)createHandlerWithClass:(Class)class context:(id)context;
- (id)createTicketVerificationRequest;
- (void)cleanupOnMemoryWarning;
- (void)dealloc;
- (void)setUIControllerDelegate:(id)delegate;
@end

@implementation ACMAppleConnectImplComponents

+ (id)components
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___ACMAppleConnectImplComponents;
  return objc_msgSendSuper2(&v3, sel_components);
}

- (void)dealloc
{
  [(ACMAppleConnectImplComponents *)self setPreferences:0];
  [(ACMAppleConnectImplComponents *)self setUiController:0];
  [(ACMAppleConnectImplComponents *)self setSystemInfo:0];
  [(ACFComponents *)self setCryptograph:0];
  [(ACCComponents *)self setTgtStoragePolicy:0];
  if (self->_twoSVController)
  {
    [(ACC2SVControllerProtocol *)[(ACMAppleConnectImplComponents *)self twoSVController] setDelegate:0];
    [(ACMAppleConnectImplComponents *)self setTwoSVController:0];
  }

  v3.receiver = self;
  v3.super_class = ACMAppleConnectImplComponents;
  [(ACCComponents *)&v3 dealloc];
}

- (void)cleanupOnMemoryWarning
{
  objc_sync_enter(self);
  [(ACMAppleConnectPreferences *)self->_preferences cleanupOnMemoryWarning];

  self->_preferences = 0;
  self->_systemInfo = 0;

  objc_sync_exit(self);
}

- (ACMAppleConnectPreferences)preferences
{
  objc_sync_enter(self);
  preferences = self->_preferences;
  if (!preferences)
  {
    if (qword_2A1EB8FD8 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACMAppleConnectImplComponents preferences]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/Common/Sources/ACMAppleConnectImplComponents.m", 80, 0, "Creating AppleConnectPreferences instance");
    }

    preferences = +[ACMAppleConnectPreferences preferencesWithStore:](ACMAppleConnectPreferences, "preferencesWithStore:", +[ACMPreferencesCFPreferencesStore preferencesStoreWithCFPreferences]);
    self->_preferences = preferences;
  }

  objc_sync_exit(self);
  return preferences;
}

- (ACMSystemInfoProtocol)systemInfo
{
  objc_sync_enter(self);
  systemInfo = self->_systemInfo;
  if (!systemInfo)
  {
    systemInfo = objc_opt_new();
    self->_systemInfo = systemInfo;
  }

  objc_sync_exit(self);
  return systemInfo;
}

- (void)setUIControllerDelegate:(id)delegate
{
  if (self->_uiControllerDelegate != delegate)
  {
    self->_uiControllerDelegate = delegate;
    [(ACMUIControllerProtocol *)self->_uiController setDelegate:?];
  }
}

- (id)createAuthenticationRequest
{
  v2 = objc_opt_new();

  return v2;
}

- (id)createTicketVerificationRequest
{
  v2 = objc_opt_new();

  return v2;
}

- (id)createHandlerWithClass:(Class)class context:(id)context
{
  v4 = [[class alloc] initWithContext:context];

  return v4;
}

@end