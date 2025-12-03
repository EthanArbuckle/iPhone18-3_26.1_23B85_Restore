@interface SBFAlwaysOnLiveRenderingAssertionProvider
+ (id)sharedInstance;
- (BLSBacklightStateObservable)backlight;
- (SBFAlwaysOnLiveRenderingAssertionProvider)init;
- (id)_acquireLiveRenderingAssertionForScene:(id)scene identifier:(id)identifier reason:(id)reason attributes:(id)attributes;
- (id)acquireLiveRenderingAssertionForFBSScene:(id)scene reason:(id)reason;
- (id)acquireLiveRenderingAssertionForUIScene:(id)scene reason:(id)reason;
- (id)description;
- (void)invalidateAllAssertions;
@end

@implementation SBFAlwaysOnLiveRenderingAssertionProvider

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[SBFAlwaysOnLiveRenderingAssertionProvider sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

- (SBFAlwaysOnLiveRenderingAssertionProvider)init
{
  v8.receiver = self;
  v8.super_class = SBFAlwaysOnLiveRenderingAssertionProvider;
  v2 = [(SBFAlwaysOnLiveRenderingAssertionProvider *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SBFAlwaysOnLiveRenderingBLSAssertionProvider);
    assertionProvider = v2->_assertionProvider;
    v2->_assertionProvider = v3;

    v5 = objc_alloc_init(SBFAlwaysOnLiveRenderingAssertionWeakCollection);
    assertions = v2->_assertions;
    v2->_assertions = v5;
  }

  return v2;
}

uint64_t __59__SBFAlwaysOnLiveRenderingAssertionProvider_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(SBFAlwaysOnLiveRenderingAssertionProvider);

  return MEMORY[0x1EEE66BB8]();
}

- (BLSBacklightStateObservable)backlight
{
  backlight = self->_backlight;
  if (backlight)
  {
    mEMORY[0x1E698E520] = backlight;
  }

  else
  {
    mEMORY[0x1E698E520] = [MEMORY[0x1E698E520] sharedBacklight];
  }

  return mEMORY[0x1E698E520];
}

- (id)acquireLiveRenderingAssertionForUIScene:(id)scene reason:(id)reason
{
  reasonCopy = reason;
  sceneCopy = scene;
  _sceneIdentifier = [sceneCopy _sceneIdentifier];
  v9 = [[SBFAlwaysOnLiveRenderingBLSAttributesProvider alloc] initWithUIScene:sceneCopy];
  v10 = [(SBFAlwaysOnLiveRenderingAssertionProvider *)self _acquireLiveRenderingAssertionForScene:sceneCopy identifier:_sceneIdentifier reason:reasonCopy attributes:v9];

  return v10;
}

- (id)acquireLiveRenderingAssertionForFBSScene:(id)scene reason:(id)reason
{
  reasonCopy = reason;
  sceneCopy = scene;
  identifier = [sceneCopy identifier];
  v9 = [[SBFAlwaysOnLiveRenderingBLSAttributesProvider alloc] initWithFBSScene:sceneCopy];
  v10 = [(SBFAlwaysOnLiveRenderingAssertionProvider *)self _acquireLiveRenderingAssertionForScene:sceneCopy identifier:identifier reason:reasonCopy attributes:v9];

  return v10;
}

- (id)_acquireLiveRenderingAssertionForScene:(id)scene identifier:(id)identifier reason:(id)reason attributes:(id)attributes
{
  sceneCopy = scene;
  identifierCopy = identifier;
  attributesCopy = attributes;
  reasonCopy = reason;
  v14 = [(SBFAlwaysOnLiveRenderingAssertionProvider *)self _assertionManagerForScene:sceneCopy];
  if (v14)
  {
    v15 = v14;
    v16 = SBLogLiveRendering();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [SBFAlwaysOnLiveRenderingAssertionProvider _acquireLiveRenderingAssertionForScene:identifier:reason:attributes:];
    }
  }

  else
  {
    v17 = [SBFAlwaysOnLiveRenderingAssertionManager alloc];
    backlight = [(SBFAlwaysOnLiveRenderingAssertionProvider *)self backlight];
    assertionProvider = [(SBFAlwaysOnLiveRenderingAssertionProvider *)self assertionProvider];
    v15 = [(SBFAlwaysOnLiveRenderingAssertionManager *)v17 initWithBacklight:backlight assertionProvider:assertionProvider attributesProvider:attributesCopy];

    v20 = SBLogLiveRendering();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [SBFAlwaysOnLiveRenderingAssertionProvider _acquireLiveRenderingAssertionForScene:identifier:reason:attributes:];
    }

    [(SBFAlwaysOnLiveRenderingAssertionProvider *)self _setAssertionManager:v15 forScene:sceneCopy];
  }

  v21 = [(SBFAlwaysOnLiveRenderingAssertionManager *)v15 acquireLiveRenderingAssertionWithReason:reasonCopy];

  [(SBFAlwaysOnLiveRenderingAssertionWeakCollection *)self->_assertions addAssertion:v21];

  return v21;
}

- (void)invalidateAllAssertions
{
  [(SBFAlwaysOnLiveRenderingAssertionWeakCollection *)self->_assertions invalidateAll];
  assertions = self->_assertions;

  [(SBFAlwaysOnLiveRenderingAssertionWeakCollection *)assertions removeAll];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p activeCount:%d", v5, self, -[SBFAlwaysOnLiveRenderingAssertionWeakCollection count](self->_assertions, "count")];;

  return v6;
}

- (void)_acquireLiveRenderingAssertionForScene:identifier:reason:attributes:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2(&dword_1BEA11000, v2, v3, "Reusing <%@; %p> for scene: %@", v4, v5, v6, v7, v8);
}

- (void)_acquireLiveRenderingAssertionForScene:identifier:reason:attributes:.cold.2()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2(&dword_1BEA11000, v2, v3, "Created <%@; %p> for scene: %@", v4, v5, v6, v7, v8);
}

@end