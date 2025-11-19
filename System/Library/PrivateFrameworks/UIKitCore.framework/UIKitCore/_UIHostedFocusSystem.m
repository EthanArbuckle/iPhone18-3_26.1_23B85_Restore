@interface _UIHostedFocusSystem
- (BOOL)_focusSystemIsValid;
- (BOOL)_isEligibleForFocusInteraction;
- (BOOL)_isEligibleForFocusOcclusion;
- (BOOL)containsChildOfHostEnvironment:(id)a3;
- (UIFocusEnvironment)hostEnvironment;
- (_UIHostedFocusSystemDelegate)delegate;
- (id)_hostFocusSystem;
- (id)_initWithHostEnvironment:(id)a3;
- (id)behavior;
- (void)setDelegate:(id)a3;
@end

@implementation _UIHostedFocusSystem

- (id)_initWithHostEnvironment:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"_UIHostedFocusSystem.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"hostEnvironment"}];
  }

  v6 = [UIFocusSystem focusSystemForEnvironment:v5];
  v7 = [v6 behavior];
  v20.receiver = self;
  v20.super_class = _UIHostedFocusSystem;
  v8 = [(UIFocusSystem *)&v20 initWithFocusBehavior:v7 enabled:1];

  if (v8)
  {
    objc_storeWeak(&v8->_hostEnvironment, v5);
    v9 = [[_UIHostedFocusSystemItemContainer alloc] initWithHostedFocusSystem:v8];
    itemContainerProxy = v8->_itemContainerProxy;
    v8->_itemContainerProxy = v9;

    v11 = v8;
    if (qword_1ED4992C0 != -1)
    {
      dispatch_once(&qword_1ED4992C0, &__block_literal_global_233);
    }

    v12 = [(_UIHostedFocusSystem *)v11 hostEnvironment];
    if (!v12)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UIHostedFocusSystemRegister(_UIHostedFocusSystem *__strong)"];
      [v18 handleFailureInFunction:v19 file:@"_UIHostedFocusSystem.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"hostEnvironment"}];
    }

    v13 = _MergedGlobals_1_11;
    v14 = [v13 objectForKey:v12];
    if (v14)
    {
      v15 = v14;
      [v14 addObject:v11];
    }

    else
    {
      v15 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
      [v15 addObject:v11];
      [v13 setObject:v15 forKey:v12];
    }
  }

  return v8;
}

- (_UIHostedFocusSystemDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = _UIHostedFocusSystem;
  v2 = [(UIFocusSystem *)&v4 delegate];

  return v2;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(_UIHostedFocusSystem *)self delegateProxy];
  v6 = [v5 delegate];

  if (v6 != v4)
  {
    v7 = [[_UIHostedFocusSystemDelegateProxy alloc] initWithFocusSystem:self delegate:v4];
    [(_UIHostedFocusSystem *)self setDelegateProxy:v7];
    v8.receiver = self;
    v8.super_class = _UIHostedFocusSystem;
    [(UIFocusSystem *)&v8 setDelegate:v7];
  }
}

- (BOOL)containsChildOfHostEnvironment:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIHostedFocusSystem.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"childEnvironment"}];
  }

  v6 = [(_UIHostedFocusSystem *)self delegateProxy];
  v7 = [v6 delegate];

  if (v7)
  {
    v8 = [v7 _focusSystem:self containsChildOfHostEnvironment:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)behavior
{
  v3 = [(_UIHostedFocusSystem *)self _hostFocusSystem];
  v4 = [v3 behavior];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIHostedFocusSystem;
    v6 = [(UIFocusSystem *)&v9 behavior];
  }

  v7 = v6;

  return v7;
}

- (id)_hostFocusSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_hostEnvironment);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_hostEnvironment);
    v5 = [UIFocusSystem focusSystemForEnvironment:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_focusSystemIsValid
{
  v6.receiver = self;
  v6.super_class = _UIHostedFocusSystem;
  if (![(UIFocusSystem *)&v6 _focusSystemIsValid])
  {
    return 0;
  }

  v3 = [(_UIHostedFocusSystem *)self _hostFocusSystem];
  v4 = [v3 _focusSystemIsValid];

  return v4;
}

- (BOOL)_isEligibleForFocusInteraction
{
  v7.receiver = self;
  v7.super_class = _UIHostedFocusSystem;
  if (![(UIFocusSystem *)&v7 _isEligibleForFocusInteraction])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostEnvironment);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_hostEnvironment);
    IsEligibleForFocusInteraction = _UIFocusEnvironmentIsEligibleForFocusInteraction(v4);
  }

  else
  {
    IsEligibleForFocusInteraction = 0;
  }

  return IsEligibleForFocusInteraction;
}

- (BOOL)_isEligibleForFocusOcclusion
{
  v7.receiver = self;
  v7.super_class = _UIHostedFocusSystem;
  if (![(UIFocusSystem *)&v7 _isEligibleForFocusOcclusion])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostEnvironment);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_hostEnvironment);
    IsEligibleForFocusOcclusion = _UIFocusEnvironmentIsEligibleForFocusOcclusion(v4, 0);
  }

  else
  {
    IsEligibleForFocusOcclusion = 0;
  }

  return IsEligibleForFocusOcclusion;
}

- (UIFocusEnvironment)hostEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_hostEnvironment);

  return WeakRetained;
}

@end