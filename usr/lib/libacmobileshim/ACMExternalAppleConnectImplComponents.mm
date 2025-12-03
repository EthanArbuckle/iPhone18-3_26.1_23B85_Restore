@interface ACMExternalAppleConnectImplComponents
+ (id)components;
- (BOOL)uiControllerLoaded;
- (id)createAppleConnectImpl;
- (id)createAppleConnectImplWithMasterObject:(id)object;
- (id)createAuthenticationRequest;
- (id)createHandlerWithClass:(Class)class context:(id)context;
- (id)preferences;
- (id)twoSVController;
- (id)uiController;
- (void)unloadUIController;
@end

@implementation ACMExternalAppleConnectImplComponents

+ (id)components
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___ACMExternalAppleConnectImplComponents;
  return objc_msgSendSuper2(&v3, sel_components);
}

- (id)twoSVController
{
  objc_sync_enter(self);
  twoSVController = self->super._twoSVController;
  if (!twoSVController)
  {
    if (qword_2A1EB8F50 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACMExternalAppleConnectImplComponents twoSVController]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImplComponents.m", 41, 0, "Creating 2SV Controller instance");
    }

    twoSVController = objc_opt_new();
    self->super._twoSVController = twoSVController;
  }

  objc_sync_exit(self);
  return twoSVController;
}

- (id)preferences
{
  objc_sync_enter(self);
  preferences = self->super._preferences;
  if (!preferences)
  {
    if (qword_2A1EB8F50 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACMExternalAppleConnectImplComponents preferences]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImplComponents.m", 54, 0, "Creating External AppleConnect Preferences instance");
    }

    preferences = +[ACMAppleConnectPreferences preferencesWithStore:](ACMExternalAppleConnectPreferences, "preferencesWithStore:", +[ACMPreferencesCFPreferencesStore preferencesStoreWithCFPreferences]);
    self->super._preferences = &preferences->super;
  }

  objc_sync_exit(self);
  return preferences;
}

- (id)uiController
{
  objc_sync_enter(self);
  uiController = self->super._uiController;
  if (!uiController)
  {
    [(ACMSystemInfoProtocol *)[(ACMAppleConnectImplComponents *)self systemInfo] isRunningOnModernMobileSystem];
    objc_opt_class();
    if (qword_2A1EB8F50 && (ACFLogSettingsGetLevelMask() & 0x80) != 0)
    {
      ACFLog(7, "[ACMExternalAppleConnectImplComponents uiController]", "/Library/Caches/com.apple.xbs/Sources/AppleConnectClients/Mobile/External/Sources/ACMExternalAppleConnectImplComponents.m", 78, 0, "Creating External UI Controller");
    }

    self->super._uiController = objc_opt_new();
    [(ACMUIControllerProtocol *)self->super._uiController setDelegate:[(ACMAppleConnectImplComponents *)self uiControllerDelegate]];
    uiController = self->super._uiController;
  }

  objc_sync_exit(self);
  return uiController;
}

- (id)createAuthenticationRequest
{
  v2 = objc_opt_new();

  return v2;
}

- (id)createAppleConnectImpl
{
  v2 = [[ACMExternalAppleConnectImpl alloc] initWithMasterObject:0];

  return v2;
}

- (id)createAppleConnectImplWithMasterObject:(id)object
{
  v3 = [[ACMExternalAppleConnectImpl alloc] initWithMasterObject:object];

  return v3;
}

- (id)createHandlerWithClass:(Class)class context:(id)context
{
  if (objc_opt_class() == class)
  {

    return [(ACCHTTPHandler *)ACMHTTPExternalAuthenticationHandler handlerWithContext:context];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ACMExternalAppleConnectImplComponents;
    return [(ACMAppleConnectImplComponents *)&v8 createHandlerWithClass:class context:context];
  }
}

- (BOOL)uiControllerLoaded
{
  objc_sync_enter(self);
  v3 = self->super._uiController != 0;
  objc_sync_exit(self);
  return v3;
}

- (void)unloadUIController
{
  objc_sync_enter(self);
  [(ACMUIControllerProtocol *)self->super._uiController setDelegate:0];

  self->super._uiController = 0;

  objc_sync_exit(self);
}

@end