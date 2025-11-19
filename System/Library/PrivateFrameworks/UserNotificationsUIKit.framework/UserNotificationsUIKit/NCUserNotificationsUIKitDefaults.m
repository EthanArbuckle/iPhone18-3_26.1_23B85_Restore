@interface NCUserNotificationsUIKitDefaults
+ (id)standardDefaults;
- (BOOL)_activeDefault:(id)a3;
- (CGRect)listDebugHUDFrame;
- (id)configurationActions;
- (id)observeDefault:(id)a3 onQueue:(id)a4 withBlock:(id)a5;
- (id)observeDefaults:(id)a3 onQueue:(id)a4 withBlock:(id)a5;
- (void)_bind:(id)a3 key:(id)a4 defaultValue:(BOOL)a5 onlyIf:(BOOL)a6;
- (void)_bind:(id)a3 key:(id)a4 value:(id)a5 options:(unint64_t)a6 onlyIf:(BOOL)a7;
- (void)_bindAndRegisterDefaults;
- (void)setListDebugHUDFrame:(CGRect)a3;
@end

@implementation NCUserNotificationsUIKitDefaults

+ (id)standardDefaults
{
  if (standardDefaults___once != -1)
  {
    +[NCUserNotificationsUIKitDefaults standardDefaults];
  }

  v3 = standardDefaults___instance;

  return v3;
}

uint64_t __52__NCUserNotificationsUIKitDefaults_standardDefaults__block_invoke()
{
  v0 = objc_alloc_init(NCUserNotificationsUIKitDefaults);
  standardDefaults___instance = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (id)configurationActions
{
  configurationMenuProperties = self->_configurationMenuProperties;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__NCUserNotificationsUIKitDefaults_configurationActions__block_invoke;
  v5[3] = &unk_278371B18;
  v5[4] = self;
  v3 = [(NSMutableArray *)configurationMenuProperties bs_map:v5];

  return v3;
}

id __56__NCUserNotificationsUIKitDefaults_configurationActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) valueForKey:v3];
  v5 = [v4 BOOLValue];

  v6 = MEMORY[0x277D750C8];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __56__NCUserNotificationsUIKitDefaults_configurationActions__block_invoke_2;
  v13 = &unk_278371968;
  v14 = *(a1 + 32);
  v15 = v3;
  v7 = v3;
  v8 = [v6 actionWithTitle:v7 image:0 identifier:0 handler:&v10];
  [v8 setState:{v5, v10, v11, v12, v13, v14}];

  return v8;
}

void __56__NCUserNotificationsUIKitDefaults_configurationActions__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForKey:*(a1 + 40)];
  v3 = [v2 BOOLValue];

  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v3 ^ 1u];
  [v4 setValue:v5 forKey:*(a1 + 40)];
}

- (CGRect)listDebugHUDFrame
{
  v2 = [(NCUserNotificationsUIKitDefaults *)self listDebugHUDRectString];
  v3 = v2;
  if (v2)
  {
    v12 = CGRectFromString(v2);
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    height = v12.size.height;
  }

  else
  {
    x = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
  }

  v8 = x;
  v9 = y;
  v10 = width;
  v11 = height;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)setListDebugHUDFrame:(CGRect)a3
{
  v4 = NSStringFromCGRect(a3);
  [(NCUserNotificationsUIKitDefaults *)self setListDebugHUDRectString:v4];
}

- (void)_bindAndRegisterDefaults
{
  v3 = _os_feature_enabled_impl();
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"showListDebugHUD"];
  [(NCUserNotificationsUIKitDefaults *)self _bind:v4 key:@"NCShowNotificationListDebugHUD" defaultValue:0];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"showZDepthDebugUI"];
  [(NCUserNotificationsUIKitDefaults *)self _bind:v5 key:@"NCShowZDepthDebugUI" defaultValue:0];

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"shouldForceHapticTouchForPreview"];
  [(NCUserNotificationsUIKitDefaults *)self _bind:v6 key:@"NCForceHapticTouchForPreview" defaultValue:0];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"highlightPlatterLightEnabled"];
  [(NCUserNotificationsUIKitDefaults *)self _bind:v7 key:@"NCHighlightsPlatterLightEnabled" defaultValue:1 onlyIf:v3];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"allowStackingInHighlights"];
  [(NCUserNotificationsUIKitDefaults *)self _bind:v8 key:@"NCAllowStackingInHighlights" defaultValue:1 onlyIf:v3];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"listDebugHUDPage"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"NCListDebugHUDPage" toDefaultValue:&unk_283015590 options:4];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"listDebugHUDRectString"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"NCListDebugHUDRectString" toDefaultValue:0 options:4];
}

- (id)observeDefault:(id)a3 onQueue:(id)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(NCUserNotificationsUIKitDefaults *)self _activeDefault:v8])
  {
    v13.receiver = self;
    v13.super_class = NCUserNotificationsUIKitDefaults;
    v11 = [(BSAbstractDefaultDomain *)&v13 observeDefault:v8 onQueue:v9 withBlock:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)observeDefaults:(id)a3 onQueue:(id)a4 withBlock:(id)a5
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__NCUserNotificationsUIKitDefaults_observeDefaults_onQueue_withBlock___block_invoke;
  v14[3] = &unk_278371B18;
  v14[4] = self;
  v8 = a5;
  v9 = a4;
  v10 = [a3 bs_compactMap:v14];
  v13.receiver = self;
  v13.super_class = NCUserNotificationsUIKitDefaults;
  v11 = [(BSAbstractDefaultDomain *)&v13 observeDefaults:v10 onQueue:v9 withBlock:v8];

  return v11;
}

void *__70__NCUserNotificationsUIKitDefaults_observeDefaults_onQueue_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if ([v2 _activeDefault:v3])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)_bind:(id)a3 key:(id)a4 defaultValue:(BOOL)a5 onlyIf:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = MEMORY[0x277CCABB0];
  v11 = a4;
  v12 = a3;
  v13 = [v10 numberWithBool:v7];
  [(NCUserNotificationsUIKitDefaults *)self _bind:v12 key:v11 value:v13 options:4 onlyIf:v6];
}

- (void)_bind:(id)a3 key:(id)a4 value:(id)a5 options:(unint64_t)a6 onlyIf:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];
  if (self->_configurationMenuProperties)
  {
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  configurationMenuProperties = self->_configurationMenuProperties;
  self->_configurationMenuProperties = v9;

  if (v7)
  {
LABEL_3:
    [(NSMutableArray *)self->_configurationMenuProperties addObject:v11];
  }

LABEL_4:
}

- (BOOL)_activeDefault:(id)a3
{
  v4 = a3;
  configurationMenuProperties = self->_configurationMenuProperties;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__NCUserNotificationsUIKitDefaults__activeDefault___block_invoke;
  v8[3] = &unk_278371B40;
  v9 = v4;
  v6 = v4;
  LOBYTE(configurationMenuProperties) = [(NSMutableArray *)configurationMenuProperties bs_containsObjectPassingTest:v8];

  return configurationMenuProperties;
}

@end