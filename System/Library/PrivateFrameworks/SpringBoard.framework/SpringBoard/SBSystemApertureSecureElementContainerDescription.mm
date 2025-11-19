@interface SBSystemApertureSecureElementContainerDescription
- (CGRect)captureBounds;
- (SBSystemApertureSecureElementContainerDescription)initWithSupportedLayoutMode:(int64_t)a3 layoutOverriderDelegate:(id)a4;
- (id)allowedNextStatesForState:(id)a3;
- (void)resetToState:(id)a3 completion:(id)a4;
- (void)transitionToState:(id)a3 completion:(id)a4;
@end

@implementation SBSystemApertureSecureElementContainerDescription

- (SBSystemApertureSecureElementContainerDescription)initWithSupportedLayoutMode:(int64_t)a3 layoutOverriderDelegate:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SBSystemApertureSecureElementContainerDescription;
  v7 = [(SBSystemApertureSecureElementContainerDescription *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_supportedLayoutMode = a3;
    objc_storeWeak(&v7->_delegate, v6);
  }

  return v8;
}

- (id)allowedNextStatesForState:(id)a3
{
  v5 = a3;
  if ([v5 isEqual:@"hidden"] & 1) != 0 || (objc_msgSend(v5, "isEqual:", @"presented"))
  {
    v6 = &unk_28336E7D8;
  }

  else
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"SBSystemApertureSecureElementContainerDescription.m" lineNumber:48 description:{@"Unhandled state: %@", v5}];

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

- (void)resetToState:(id)a3 completion:(id)a4
{
  v11 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    [SBSystemApertureSecureElementContainerDescription resetToState:a2 completion:self];
  }

  if ([v11 isEqual:self->_currentState])
  {
    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    objc_storeStrong(&self->_currentState, a3);
    if ([v11 isEqual:@"hidden"])
    {
      supportedLayoutMode = 0;
    }

    else
    {
      supportedLayoutMode = self->_supportedLayoutMode;
    }

    [WeakRetained containerDescription:self resetToLayoutMode:supportedLayoutMode completion:v8];
  }
}

- (void)transitionToState:(id)a3 completion:(id)a4
{
  v11 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!WeakRetained)
  {
    [SBSystemApertureSecureElementContainerDescription transitionToState:a2 completion:self];
  }

  if ([v11 isEqual:self->_currentState])
  {
    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    objc_storeStrong(&self->_currentState, a3);
    if ([v11 isEqual:@"hidden"])
    {
      supportedLayoutMode = 0;
    }

    else
    {
      supportedLayoutMode = self->_supportedLayoutMode;
    }

    [WeakRetained containerDescription:self transitionToLayoutMode:supportedLayoutMode completion:v8];
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