@interface SBFAlwaysOnLiveRenderingBLSAttributesProvider
- (SBFAlwaysOnLiveRenderingBLSAttributesProvider)initWithFBSScene:(id)scene;
- (SBFAlwaysOnLiveRenderingBLSAttributesProvider)initWithProvider:(id)provider;
- (SBFAlwaysOnLiveRenderingBLSAttributesProvider)initWithUIScene:(id)scene;
- (id)assertionAttributes;
@end

@implementation SBFAlwaysOnLiveRenderingBLSAttributesProvider

- (id)assertionAttributes
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DFA8]);
  assertionAttributes = [(SBFAlwaysOnLiveRenderingBLSAttributesProvider *)self->_provider assertionAttributes];
  v5 = [v3 initWithArray:assertionAttributes];

  if ([v5 count])
  {
    ignoreWhenBacklightInactivates = [MEMORY[0x1E698E560] ignoreWhenBacklightInactivates];
    v12[0] = ignoreWhenBacklightInactivates;
    v7 = [MEMORY[0x1E698E558] timeoutAfterInterval:10.0];
    v12[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    [v5 addObjectsFromArray:v8];

    allObjects = [v5 allObjects];
  }

  else
  {
    v10 = SBLogLiveRendering();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SBFAlwaysOnLiveRenderingBLSAttributesProvider *)v10 assertionAttributes];
    }

    allObjects = MEMORY[0x1E695E0F0];
  }

  return allObjects;
}

- (SBFAlwaysOnLiveRenderingBLSAttributesProvider)initWithProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SBFAlwaysOnLiveRenderingBLSAttributesProvider;
  v6 = [(SBFAlwaysOnLiveRenderingBLSAttributesProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_provider, provider);
  }

  return v7;
}

- (SBFAlwaysOnLiveRenderingBLSAttributesProvider)initWithUIScene:(id)scene
{
  sceneCopy = scene;
  v5 = [[SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider alloc] initWithUIScene:sceneCopy];

  v6 = [(SBFAlwaysOnLiveRenderingBLSAttributesProvider *)self initWithProvider:v5];
  return v6;
}

- (SBFAlwaysOnLiveRenderingBLSAttributesProvider)initWithFBSScene:(id)scene
{
  sceneCopy = scene;
  v5 = [[SBFAlwaysOnLiveRenderingSceneBLSAttributesProvider alloc] initWithFBSScene:sceneCopy];

  v6 = [(SBFAlwaysOnLiveRenderingBLSAttributesProvider *)self initWithProvider:v5];
  return v6;
}

@end