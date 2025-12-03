@interface UISMutableApplicationInitializationContext
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCompatibilityContext:(id)context;
- (void)setDefaultSceneToken:(id)token;
- (void)setDeviceContext:(id)context;
- (void)setLaunchDisplayContext:(id)context;
- (void)setMainDisplayContext:(id)context;
- (void)setPersistedSceneIdentifiers:(id)identifiers;
@end

@implementation UISMutableApplicationInitializationContext

- (void)setMainDisplayContext:(id)context
{
  self->super._mainDisplayContext = [context copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setLaunchDisplayContext:(id)context
{
  self->super._launchDisplayContext = [context copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setDeviceContext:(id)context
{
  self->super._deviceContext = [context copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setCompatibilityContext:(id)context
{
  self->super._compatibilityContext = [context copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setPersistedSceneIdentifiers:(id)identifiers
{
  self->super._persistedSceneIdentifiers = [identifiers copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setDefaultSceneToken:(id)token
{
  self->super._defaultSceneToken = [token copy];

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UISApplicationInitializationContext alloc];

  return [(UISApplicationInitializationContext *)v4 initWithUISApplicationInitializationContext:self];
}

@end