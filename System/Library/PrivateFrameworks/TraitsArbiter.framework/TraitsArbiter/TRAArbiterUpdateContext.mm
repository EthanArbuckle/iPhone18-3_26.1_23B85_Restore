@interface TRAArbiterUpdateContext
- (TRAArbiterDrawingDataSource)_drawingConfigProvider;
- (TRAArbiterUpdateContext)initWithBuilder:(id)builder;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_setDrawingConfigurationProvider:(id)provider;
- (void)setOrientationActuationContext:(id)context;
- (void)setReason:(id)reason;
@end

@implementation TRAArbiterUpdateContext

- (TRAArbiterUpdateContext)initWithBuilder:(id)builder
{
  builderCopy = builder;
  if (!builderCopy)
  {
    [TRAArbiterUpdateContext initWithBuilder:];
  }

  v7.receiver = self;
  v7.super_class = TRAArbiterUpdateContext;
  v5 = [(TRAArbiterUpdateContext *)&v7 init];
  if (v5)
  {
    builderCopy[2](builderCopy, v5);
    if (!v5->_reason)
    {
      [TRAArbiterUpdateContext initWithBuilder:];
    }
  }

  return v5;
}

- (void)setReason:(id)reason
{
  if (self->_reason != reason)
  {
    v5 = [reason copy];
    reason = self->_reason;
    self->_reason = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)_setDrawingConfigurationProvider:(id)provider
{
  providerCopy = provider;
  WeakRetained = objc_loadWeakRetained(&self->__drawingConfigProvider);

  v5 = providerCopy;
  if (WeakRetained != providerCopy && !self->_orientationActuationContext)
  {
    v6 = [providerCopy defaultOrientationAnimationSettingsAnimatable:1];
    v7 = [[TRASettingsActuationContext alloc] initWithAnimationSettings:v6 drawingFence:0];
    orientationActuationContext = self->_orientationActuationContext;
    self->_orientationActuationContext = v7;

    self->__hasDefaultOrientationActuationContext = 1;
    v5 = providerCopy;
  }
}

- (void)setOrientationActuationContext:(id)context
{
  if (self->_orientationActuationContext != context)
  {
    v4 = [context copy];
    orientationActuationContext = self->_orientationActuationContext;
    self->_orientationActuationContext = v4;

    self->__hasDefaultOrientationActuationContext = 0;
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRAArbiterUpdateContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAArbiterUpdateContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(TRAArbiterUpdateContext *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder appendString:self->_reason withName:@"reason"];
  requestingParticipantsUniqueIdentifiers = [(TRAArbiterUpdateContext *)self requestingParticipantsUniqueIdentifiers];
  [succinctDescriptionBuilder appendArraySection:requestingParticipantsUniqueIdentifiers withName:@"Requesting Participants" skipIfEmpty:0];

  v6 = [succinctDescriptionBuilder appendObject:self->_userInterfaceStyleActuationContext withName:@"UserInterfaceStyle actuation context"];
  v7 = [succinctDescriptionBuilder appendBool:self->_forceOrientationResolution withName:@"Force Orientation resolution"];
  v8 = [succinctDescriptionBuilder appendObject:self->_orientationActuationContext withName:@"Orientation actuation context"];

  return succinctDescriptionBuilder;
}

- (TRAArbiterDrawingDataSource)_drawingConfigProvider
{
  WeakRetained = objc_loadWeakRetained(&self->__drawingConfigProvider);

  return WeakRetained;
}

- (void)initWithBuilder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"builderBlock" object:? file:? lineNumber:? description:?];
}

- (void)initWithBuilder:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v2 handleFailureInMethod:v0 object:v1 file:@"TRAArbiter.m" lineNumber:523 description:{@"%@ was built without specifying a reason.", v4}];
}

@end