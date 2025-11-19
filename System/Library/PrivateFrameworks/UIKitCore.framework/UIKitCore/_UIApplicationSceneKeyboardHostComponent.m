@interface _UIApplicationSceneKeyboardHostComponent
- (BOOL)suppressKeyboardFocusRequests;
- (id)suppressKeyboardFocusRequestsForReason:(id)a3;
- (void)evaluateKeyboardSuppressionSettingForActiveAssertions;
- (void)setHardwareKeyboardExclusivityIdentifier:(id)a3;
- (void)setScene:(id)a3;
@end

@implementation _UIApplicationSceneKeyboardHostComponent

- (void)setScene:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UIApplicationSceneKeyboardHostComponent;
  [(FBSSceneComponent *)&v4 setScene:a3];
  [(_UIApplicationSceneKeyboardHostComponent *)self setHardwareKeyboardExclusivityIdentifier:0];
}

- (void)setHardwareKeyboardExclusivityIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self hostScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85___UIApplicationSceneKeyboardHostComponent_setHardwareKeyboardExclusivityIdentifier___block_invoke;
  v7[3] = &unk_1E711FD48;
  v8 = v4;
  v6 = v4;
  [v5 updateSettings:v7];
}

- (BOOL)suppressKeyboardFocusRequests
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 settings];
  v4 = [v3 suppressKeyboardFocusRequests];

  return v4;
}

- (id)suppressKeyboardFocusRequestsForReason:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc(MEMORY[0x1E698E778]);
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __83___UIApplicationSceneKeyboardHostComponent_suppressKeyboardFocusRequestsForReason___block_invoke;
  v13 = &unk_1E70FA170;
  objc_copyWeak(&v14, &location);
  v8 = [v5 initWithIdentifier:v7 forReason:v4 invalidationBlock:&v10];

  ++*(&self->super._invalid + 1);
  [(_UIApplicationSceneKeyboardHostComponent *)self evaluateKeyboardSuppressionSettingForActiveAssertions:v10];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

- (void)evaluateKeyboardSuppressionSettingForActiveAssertions
{
  v3 = *(&self->super._invalid + 1);
  if ((v3 != 0) != [(_UIApplicationSceneKeyboardHostComponent *)self suppressKeyboardFocusRequests])
  {
    v4 = [(FBSSceneComponent *)self hostScene];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __97___UIApplicationSceneKeyboardHostComponent_evaluateKeyboardSuppressionSettingForActiveAssertions__block_invoke;
    v5[3] = &__block_descriptor_33_e33_v16__0__FBSMutableSceneSettings_8l;
    v6 = v3 != 0;
    [v4 updateSettings:v5];
  }
}

@end