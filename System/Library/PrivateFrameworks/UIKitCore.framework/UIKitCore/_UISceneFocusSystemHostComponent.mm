@interface _UISceneFocusSystemHostComponent
- (NSString)description;
- (id)beginFocusSystemActivationAssertionWithReason:(id)reason;
- (void)_updateAssertionIdentifiersWithIdentifier:(int)identifier addAssertion:;
- (void)_updateHostAssertingActiveFocusSystem;
- (void)dealloc;
- (void)setScene:(id)scene;
@end

@implementation _UISceneFocusSystemHostComponent

- (void)_updateHostAssertingActiveFocusSystem
{
  if (self)
  {
    v2 = [self[3] count] != 0;
    hostScene = [self hostScene];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __73___UISceneFocusSystemHostComponent__updateHostAssertingActiveFocusSystem__block_invoke;
    v4[3] = &__block_descriptor_33_e62_v16__0__FBSMutableSceneSettings__UISceneFocusSystemSettings__8l;
    v5 = v2;
    [hostScene updateSettingsWithBlock:v4];
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

- (void)setScene:(id)scene
{
  sceneCopy = scene;
  v18.receiver = self;
  v18.super_class = _UISceneFocusSystemHostComponent;
  [(FBSSceneComponent *)&v18 setScene:sceneCopy];
  stateCaptureToken = self->_stateCaptureToken;
  if (stateCaptureToken)
  {
    [(BSInvalidatable *)stateCaptureToken invalidate];
  }

  v6 = MEMORY[0x1E696AEC0];
  selfCopy = self;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  selfCopy = [v6 stringWithFormat:@"<%@: %p>", v9, selfCopy];

  loggingIdentifier = [sceneCopy loggingIdentifier];
  v12 = [v6 stringWithFormat:@"UIKit - _UISceneFocusSystemController (%@), sceneLoggingIdentifier = %@", selfCopy, loggingIdentifier];

  objc_initWeak(&location, selfCopy);
  v13 = MEMORY[0x1E69E96A0];
  objc_copyWeak(&v16, &location);
  v14 = BSLogAddStateCaptureBlock();
  v15 = self->_stateCaptureToken;
  self->_stateCaptureToken = v14;

  [(_UISceneFocusSystemHostComponent *)&selfCopy->super.super.isa _updateHostAssertingActiveFocusSystem];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (id)beginFocusSystemActivationAssertionWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  reasonCopy = [v5 stringWithFormat:@"_UISceneFocusSystemActivationAssertion(identifier: %@, reason: %@)", uUID, reasonCopy];

  [(_UISceneFocusSystemHostComponent *)self _updateAssertionIdentifiersWithIdentifier:reasonCopy addAssertion:1];
  objc_initWeak(&location, self);
  v8 = [_UIDeallocInvalidatable alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82___UISceneFocusSystemHostComponent_beginFocusSystemActivationAssertionWithReason___block_invoke;
  v12[3] = &unk_1E70F67D0;
  objc_copyWeak(&v14, &location);
  v9 = reasonCopy;
  v13 = v9;
  v10 = [(_UIDeallocInvalidatable *)v8 initWithIdentifier:v9 faultForDeallocInvalidation:1 invalidationBlock:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v10;
}

- (void)_updateAssertionIdentifiersWithIdentifier:(int)identifier addAssertion:
{
  v5 = a2;
  if (self)
  {
    v6 = *(self + 24);
    v9 = v5;
    if (identifier)
    {
      if (!v6)
      {
        v7 = [MEMORY[0x1E695DFA8] set];
        v8 = *(self + 24);
        *(self + 24) = v7;

        v5 = v9;
        v6 = *(self + 24);
      }

      [v6 addObject:v5];
    }

    else
    {
      [v6 removeObject:v5];
    }

    [(_UISceneFocusSystemHostComponent *)self _updateHostAssertingActiveFocusSystem];
    v5 = v9;
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  allObjects = [(NSMutableSet *)self->_systemShellAssertionIdentifiers allObjects];
  [v3 appendArraySection:allObjects withName:@"systemShellAssertionIdentifiers" skipIfEmpty:0];

  build = [v3 build];

  return build;
}

@end