@interface UISMutableApplicationInitializationContext
- (id)copyWithZone:(_NSZone *)a3;
- (void)setCompatibilityContext:(id)a3;
- (void)setDefaultSceneToken:(id)a3;
- (void)setDeviceContext:(id)a3;
- (void)setLaunchDisplayContext:(id)a3;
- (void)setMainDisplayContext:(id)a3;
- (void)setPersistedSceneIdentifiers:(id)a3;
@end

@implementation UISMutableApplicationInitializationContext

- (void)setMainDisplayContext:(id)a3
{
  self->super._mainDisplayContext = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setLaunchDisplayContext:(id)a3
{
  self->super._launchDisplayContext = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setDeviceContext:(id)a3
{
  self->super._deviceContext = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setCompatibilityContext:(id)a3
{
  self->super._compatibilityContext = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setPersistedSceneIdentifiers:(id)a3
{
  self->super._persistedSceneIdentifiers = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setDefaultSceneToken:(id)a3
{
  self->super._defaultSceneToken = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UISApplicationInitializationContext alloc];

  return [(UISApplicationInitializationContext *)v4 initWithUISApplicationInitializationContext:self];
}

@end