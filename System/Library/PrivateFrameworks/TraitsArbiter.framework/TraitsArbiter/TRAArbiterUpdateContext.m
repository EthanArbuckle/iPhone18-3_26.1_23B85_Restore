@interface TRAArbiterUpdateContext
- (TRAArbiterDrawingDataSource)_drawingConfigProvider;
- (TRAArbiterUpdateContext)initWithBuilder:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_setDrawingConfigurationProvider:(id)a3;
- (void)setOrientationActuationContext:(id)a3;
- (void)setReason:(id)a3;
@end

@implementation TRAArbiterUpdateContext

- (TRAArbiterUpdateContext)initWithBuilder:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [TRAArbiterUpdateContext initWithBuilder:];
  }

  v7.receiver = self;
  v7.super_class = TRAArbiterUpdateContext;
  v5 = [(TRAArbiterUpdateContext *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
    if (!v5->_reason)
    {
      [TRAArbiterUpdateContext initWithBuilder:];
    }
  }

  return v5;
}

- (void)setReason:(id)a3
{
  if (self->_reason != a3)
  {
    v5 = [a3 copy];
    reason = self->_reason;
    self->_reason = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)_setDrawingConfigurationProvider:(id)a3
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->__drawingConfigProvider);

  v5 = v9;
  if (WeakRetained != v9 && !self->_orientationActuationContext)
  {
    v6 = [v9 defaultOrientationAnimationSettingsAnimatable:1];
    v7 = [[TRASettingsActuationContext alloc] initWithAnimationSettings:v6 drawingFence:0];
    orientationActuationContext = self->_orientationActuationContext;
    self->_orientationActuationContext = v7;

    self->__hasDefaultOrientationActuationContext = 1;
    v5 = v9;
  }
}

- (void)setOrientationActuationContext:(id)a3
{
  if (self->_orientationActuationContext != a3)
  {
    v4 = [a3 copy];
    orientationActuationContext = self->_orientationActuationContext;
    self->_orientationActuationContext = v4;

    self->__hasDefaultOrientationActuationContext = 0;
  }
}

- (id)succinctDescription
{
  v2 = [(TRAArbiterUpdateContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(TRAArbiterUpdateContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(TRAArbiterUpdateContext *)self succinctDescriptionBuilder];
  [v4 appendString:self->_reason withName:@"reason"];
  v5 = [(TRAArbiterUpdateContext *)self requestingParticipantsUniqueIdentifiers];
  [v4 appendArraySection:v5 withName:@"Requesting Participants" skipIfEmpty:0];

  v6 = [v4 appendObject:self->_userInterfaceStyleActuationContext withName:@"UserInterfaceStyle actuation context"];
  v7 = [v4 appendBool:self->_forceOrientationResolution withName:@"Force Orientation resolution"];
  v8 = [v4 appendObject:self->_orientationActuationContext withName:@"Orientation actuation context"];

  return v4;
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