@interface SBIdleTimerServiceClientRequestConfiguration
- (SBIdleTimerServiceClientRequestConfiguration)initWithScenePID:(int)d process:(id)process configuration:(id)configuration;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBIdleTimerServiceClientRequestConfiguration

- (SBIdleTimerServiceClientRequestConfiguration)initWithScenePID:(int)d process:(id)process configuration:(id)configuration
{
  processCopy = process;
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = SBIdleTimerServiceClientRequestConfiguration;
  v11 = [(SBIdleTimerServiceClientRequestConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_scenePID = d;
    objc_storeStrong(&v11->_process, process);
    objc_storeStrong(&v12->_configuration, configuration);
  }

  return v12;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIdleTimerServiceClientRequestConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_scenePID];
  v5 = [v3 appendObject:v4 withName:@"scenePID"];

  v6 = [v3 appendObject:self->_process withName:@"process"];
  v7 = [v3 appendObject:self->_configuration withName:@"configuration"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIdleTimerServiceClientRequestConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end