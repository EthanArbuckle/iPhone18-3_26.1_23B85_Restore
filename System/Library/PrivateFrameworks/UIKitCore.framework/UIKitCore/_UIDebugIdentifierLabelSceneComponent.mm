@interface _UIDebugIdentifierLabelSceneComponent
+ (BOOL)isEnabled;
- (UIScene)_scene;
- (_UIDebugIdentifierLabelSceneComponent)initWithScene:(id)a3;
- (void)_scene:(id)a3 willTransitionToActivationState:(int64_t)a4 withReasonsMask:(unint64_t)a5;
@end

@implementation _UIDebugIdentifierLabelSceneComponent

+ (BOOL)isEnabled
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (has_internal_diagnostics)
  {
    has_internal_diagnostics = _UIGetShowSceneIdentifiers();
    if (has_internal_diagnostics)
    {
      LOBYTE(has_internal_diagnostics) = [UIApp isFrontBoard] ^ 1;
    }
  }

  return has_internal_diagnostics;
}

- (_UIDebugIdentifierLabelSceneComponent)initWithScene:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UIDebugIdentifierLabelSceneComponent;
  v5 = [(_UIDebugIdentifierLabelSceneComponent *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_UIDebugIdentifierWindow alloc] initWithWindowScene:v4];
      debugWindow = v6->_debugWindow;
      v6->_debugWindow = v7;
    }
  }

  return v6;
}

- (void)_scene:(id)a3 willTransitionToActivationState:(int64_t)a4 withReasonsMask:(unint64_t)a5
{
  if (!a4)
  {
    [(UIWindow *)self->_debugWindow setHidden:0, 0, a5];
  }
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end