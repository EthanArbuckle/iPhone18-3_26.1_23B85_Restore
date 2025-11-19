@interface SBIdleTimerServiceClientRequestConfiguration
- (SBIdleTimerServiceClientRequestConfiguration)initWithScenePID:(int)a3 process:(id)a4 configuration:(id)a5;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBIdleTimerServiceClientRequestConfiguration

- (SBIdleTimerServiceClientRequestConfiguration)initWithScenePID:(int)a3 process:(id)a4 configuration:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SBIdleTimerServiceClientRequestConfiguration;
  v11 = [(SBIdleTimerServiceClientRequestConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_scenePID = a3;
    objc_storeStrong(&v11->_process, a4);
    objc_storeStrong(&v12->_configuration, a5);
  }

  return v12;
}

- (id)succinctDescription
{
  v2 = [(SBIdleTimerServiceClientRequestConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIdleTimerServiceClientRequestConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end