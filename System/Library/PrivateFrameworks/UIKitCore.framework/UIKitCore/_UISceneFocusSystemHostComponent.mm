@interface _UISceneFocusSystemHostComponent
- (NSString)description;
- (id)beginFocusSystemActivationAssertionWithReason:(id)a3;
- (void)_updateAssertionIdentifiersWithIdentifier:(int)a3 addAssertion:;
- (void)_updateHostAssertingActiveFocusSystem;
- (void)dealloc;
- (void)setScene:(id)a3;
@end

@implementation _UISceneFocusSystemHostComponent

- (void)_updateHostAssertingActiveFocusSystem
{
  if (a1)
  {
    v2 = [a1[3] count] != 0;
    v3 = [a1 hostScene];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __73___UISceneFocusSystemHostComponent__updateHostAssertingActiveFocusSystem__block_invoke;
    v4[3] = &__block_descriptor_33_e62_v16__0__FBSMutableSceneSettings__UISceneFocusSystemSettings__8l;
    v5 = v2;
    [v3 updateSettingsWithBlock:v4];
  }
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureToken invalidate];
  stateCaptureToken = self->_stateCaptureToken;
  self->_stateCaptureToken = 0;

  v4.receiver = self;
  v4.super_class = _UISceneFocusSystemHostComponent;
  [(_UISceneFocusSystemHostComponent *)&v4 dealloc];
}

- (void)setScene:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _UISceneFocusSystemHostComponent;
  [(FBSSceneComponent *)&v18 setScene:v4];
  stateCaptureToken = self->_stateCaptureToken;
  if (stateCaptureToken)
  {
    [(BSInvalidatable *)stateCaptureToken invalidate];
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = self;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v6 stringWithFormat:@"<%@: %p>", v9, v7];

  v11 = [v4 loggingIdentifier];
  v12 = [v6 stringWithFormat:@"UIKit - _UISceneFocusSystemController (%@), sceneLoggingIdentifier = %@", v10, v11];

  objc_initWeak(&location, v7);
  v13 = MEMORY[0x1E69E96A0];
  objc_copyWeak(&v16, &location);
  v14 = BSLogAddStateCaptureBlock();
  v15 = self->_stateCaptureToken;
  self->_stateCaptureToken = v14;

  [(_UISceneFocusSystemHostComponent *)&v7->super.super.isa _updateHostAssertingActiveFocusSystem];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (id)beginFocusSystemActivationAssertionWithReason:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v5 stringWithFormat:@"_UISceneFocusSystemActivationAssertion(identifier: %@, reason: %@)", v6, v4];

  [(_UISceneFocusSystemHostComponent *)self _updateAssertionIdentifiersWithIdentifier:v7 addAssertion:1];
  objc_initWeak(&location, self);
  v8 = [_UIDeallocInvalidatable alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82___UISceneFocusSystemHostComponent_beginFocusSystemActivationAssertionWithReason___block_invoke;
  v12[3] = &unk_1E70F67D0;
  objc_copyWeak(&v14, &location);
  v9 = v7;
  v13 = v9;
  v10 = [(_UIDeallocInvalidatable *)v8 initWithIdentifier:v9 faultForDeallocInvalidation:1 invalidationBlock:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v10;
}

- (void)_updateAssertionIdentifiersWithIdentifier:(int)a3 addAssertion:
{
  v5 = a2;
  if (a1)
  {
    v6 = *(a1 + 24);
    v9 = v5;
    if (a3)
    {
      if (!v6)
      {
        v7 = [MEMORY[0x1E695DFA8] set];
        v8 = *(a1 + 24);
        *(a1 + 24) = v7;

        v5 = v9;
        v6 = *(a1 + 24);
      }

      [v6 addObject:v5];
    }

    else
    {
      [v6 removeObject:v5];
    }

    [(_UISceneFocusSystemHostComponent *)a1 _updateHostAssertingActiveFocusSystem];
    v5 = v9;
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(NSMutableSet *)self->_systemShellAssertionIdentifiers allObjects];
  [v3 appendArraySection:v4 withName:@"systemShellAssertionIdentifiers" skipIfEmpty:0];

  v5 = [v3 build];

  return v5;
}

@end