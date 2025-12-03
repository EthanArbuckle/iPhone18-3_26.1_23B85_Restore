@interface NCUserNotificationsUIKitDefaults
+ (id)standardDefaults;
- (BOOL)_activeDefault:(id)default;
- (CGRect)listDebugHUDFrame;
- (id)configurationActions;
- (id)observeDefault:(id)default onQueue:(id)queue withBlock:(id)block;
- (id)observeDefaults:(id)defaults onQueue:(id)queue withBlock:(id)block;
- (void)_bind:(id)_bind key:(id)key defaultValue:(BOOL)value onlyIf:(BOOL)if;
- (void)_bind:(id)_bind key:(id)key value:(id)value options:(unint64_t)options onlyIf:(BOOL)if;
- (void)_bindAndRegisterDefaults;
- (void)setListDebugHUDFrame:(CGRect)frame;
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
  listDebugHUDRectString = [(NCUserNotificationsUIKitDefaults *)self listDebugHUDRectString];
  v3 = listDebugHUDRectString;
  if (listDebugHUDRectString)
  {
    v12 = CGRectFromString(listDebugHUDRectString);
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

- (void)setListDebugHUDFrame:(CGRect)frame
{
  v4 = NSStringFromCGRect(frame);
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

- (id)observeDefault:(id)default onQueue:(id)queue withBlock:(id)block
{
  defaultCopy = default;
  queueCopy = queue;
  blockCopy = block;
  if ([(NCUserNotificationsUIKitDefaults *)self _activeDefault:defaultCopy])
  {
    v13.receiver = self;
    v13.super_class = NCUserNotificationsUIKitDefaults;
    v11 = [(BSAbstractDefaultDomain *)&v13 observeDefault:defaultCopy onQueue:queueCopy withBlock:blockCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)observeDefaults:(id)defaults onQueue:(id)queue withBlock:(id)block
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__NCUserNotificationsUIKitDefaults_observeDefaults_onQueue_withBlock___block_invoke;
  v14[3] = &unk_278371B18;
  v14[4] = self;
  blockCopy = block;
  queueCopy = queue;
  v10 = [defaults bs_compactMap:v14];
  v13.receiver = self;
  v13.super_class = NCUserNotificationsUIKitDefaults;
  v11 = [(BSAbstractDefaultDomain *)&v13 observeDefaults:v10 onQueue:queueCopy withBlock:blockCopy];

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

- (void)_bind:(id)_bind key:(id)key defaultValue:(BOOL)value onlyIf:(BOOL)if
{
  ifCopy = if;
  valueCopy = value;
  v10 = MEMORY[0x277CCABB0];
  keyCopy = key;
  _bindCopy = _bind;
  v13 = [v10 numberWithBool:valueCopy];
  [(NCUserNotificationsUIKitDefaults *)self _bind:_bindCopy key:keyCopy value:v13 options:4 onlyIf:ifCopy];
}

- (void)_bind:(id)_bind key:(id)key value:(id)value options:(unint64_t)options onlyIf:(BOOL)if
{
  ifCopy = if;
  _bindCopy = _bind;
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];
  if (self->_configurationMenuProperties)
  {
    if (!ifCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  configurationMenuProperties = self->_configurationMenuProperties;
  self->_configurationMenuProperties = v9;

  if (ifCopy)
  {
LABEL_3:
    [(NSMutableArray *)self->_configurationMenuProperties addObject:_bindCopy];
  }

LABEL_4:
}

- (BOOL)_activeDefault:(id)default
{
  defaultCopy = default;
  configurationMenuProperties = self->_configurationMenuProperties;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__NCUserNotificationsUIKitDefaults__activeDefault___block_invoke;
  v8[3] = &unk_278371B40;
  v9 = defaultCopy;
  v6 = defaultCopy;
  LOBYTE(configurationMenuProperties) = [(NSMutableArray *)configurationMenuProperties bs_containsObjectPassingTest:v8];

  return configurationMenuProperties;
}

@end