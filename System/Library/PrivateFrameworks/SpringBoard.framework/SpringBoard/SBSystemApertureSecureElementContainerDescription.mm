@interface SBSystemApertureSecureElementContainerDescription
- (CGRect)captureBounds;
- (SBSystemApertureSecureElementContainerDescription)initWithSupportedLayoutMode:(int64_t)mode layoutOverriderDelegate:(id)delegate;
- (id)allowedNextStatesForState:(id)state;
- (void)resetToState:(id)state completion:(id)completion;
- (void)transitionToState:(id)state completion:(id)completion;
@end

@implementation SBSystemApertureSecureElementContainerDescription

- (SBSystemApertureSecureElementContainerDescription)initWithSupportedLayoutMode:(int64_t)mode layoutOverriderDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = SBSystemApertureSecureElementContainerDescription;
  v7 = [(SBSystemApertureSecureElementContainerDescription *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_supportedLayoutMode = mode;
    objc_storeWeak(&v7->_delegate, delegateCopy);
  }

  return v8;
}

- (id)allowedNextStatesForState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqual:@"hidden"] & 1) != 0 || (objc_msgSend(stateCopy, "isEqual:", @"presented"))
  {
    v6 = &unk_28336E7D8;
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBSystemApertureSecureElementContainerDescription.m" lineNumber:48 description:{@"Unhandled state: %@", stateCopy}];

    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (CGRect)captureBounds
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)resetToState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    [SBSystemApertureSecureElementContainerDescription resetToState:a2 completion:self];
  }

  if ([stateCopy isEqual:self->_currentState])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    objc_storeStrong(&self->_currentState, state);
    if ([stateCopy isEqual:@"hidden"])
    {
      supportedLayoutMode = 0;
    }

    else
    {
      supportedLayoutMode = self->_supportedLayoutMode;
    }

    [WeakRetained containerDescription:self resetToLayoutMode:supportedLayoutMode completion:completionCopy];
  }
}

- (void)transitionToState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    [SBSystemApertureSecureElementContainerDescription transitionToState:a2 completion:self];
  }

  if ([stateCopy isEqual:self->_currentState])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    objc_storeStrong(&self->_currentState, state);
    if ([stateCopy isEqual:@"hidden"])
    {
      supportedLayoutMode = 0;
    }

    else
    {
      supportedLayoutMode = self->_supportedLayoutMode;
    }

    [WeakRetained containerDescription:self transitionToLayoutMode:supportedLayoutMode completion:completionCopy];
  }
}

- (void)resetToState:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureSecureElementContainerDescription.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"delegate != nil"}];
}

- (void)transitionToState:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureSecureElementContainerDescription.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"delegate != nil"}];
}

@end