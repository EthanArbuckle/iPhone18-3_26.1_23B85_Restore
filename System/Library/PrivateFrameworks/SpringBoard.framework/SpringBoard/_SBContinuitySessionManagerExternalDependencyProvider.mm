@interface _SBContinuitySessionManagerExternalDependencyProvider
- (_SBContinuitySessionManagerExternalDependencyProvider)init;
- (void)_setResourceHintActive:(BOOL)active;
- (void)_setRestrictionsActive:(BOOL)active;
- (void)noteContinuitySessionEnded;
- (void)noteContinuitySessionNegotiationStarted;
@end

@implementation _SBContinuitySessionManagerExternalDependencyProvider

- (_SBContinuitySessionManagerExternalDependencyProvider)init
{
  v11.receiver = self;
  v11.super_class = _SBContinuitySessionManagerExternalDependencyProvider;
  v2 = [(_SBContinuitySessionManagerExternalDependencyProvider *)&v11 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    resourceHintQueue = v2->_resourceHintQueue;
    v2->_resourceHintQueue = Serial;

    v5 = BSDispatchQueueCreateSerial();
    restrictionsQueue = v2->_restrictionsQueue;
    v2->_restrictionsQueue = v5;

    IOPMUpdateOnenessState();
    [(_SBContinuitySessionManagerExternalDependencyProvider *)v2 _setRestrictionsActive:0];
    v7 = v2->_resourceHintQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61___SBContinuitySessionManagerExternalDependencyProvider_init__block_invoke;
    block[3] = &unk_2783A8C18;
    v10 = v2;
    dispatch_async(v7, block);
  }

  return v2;
}

- (void)noteContinuitySessionNegotiationStarted
{
  IOPMUpdateOnenessState();

  [(_SBContinuitySessionManagerExternalDependencyProvider *)self _setResourceHintActive:1];
}

- (void)noteContinuitySessionEnded
{
  IOPMUpdateOnenessState();
  [(_SBContinuitySessionManagerExternalDependencyProvider *)self _setResourceHintActive:0];

  [(_SBContinuitySessionManagerExternalDependencyProvider *)self _setRestrictionsActive:0];
}

- (void)_setResourceHintActive:(BOOL)active
{
  resourceHintQueue = self->_resourceHintQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80___SBContinuitySessionManagerExternalDependencyProvider__setResourceHintActive___block_invoke;
  v4[3] = &unk_2783A9F58;
  v4[4] = self;
  activeCopy = active;
  dispatch_async(resourceHintQueue, v4);
}

- (void)_setRestrictionsActive:(BOOL)active
{
  restrictionsQueue = self->_restrictionsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80___SBContinuitySessionManagerExternalDependencyProvider__setRestrictionsActive___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  activeCopy = active;
  dispatch_async(restrictionsQueue, block);
}

@end