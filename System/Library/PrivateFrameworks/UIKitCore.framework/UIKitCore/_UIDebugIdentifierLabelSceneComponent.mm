@interface _UIDebugIdentifierLabelSceneComponent
+ (BOOL)isEnabled;
- (UIScene)_scene;
- (_UIDebugIdentifierLabelSceneComponent)initWithScene:(id)scene;
- (void)_scene:(id)_scene willTransitionToActivationState:(int64_t)state withReasonsMask:(unint64_t)mask;
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

- (_UIDebugIdentifierLabelSceneComponent)initWithScene:(id)scene
{
  sceneCopy = scene;
  v10.receiver = self;
  v10.super_class = _UIDebugIdentifierLabelSceneComponent;
  v5 = [(_UIDebugIdentifierLabelSceneComponent *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_UIDebugIdentifierWindow alloc] initWithWindowScene:sceneCopy];
      debugWindow = v6->_debugWindow;
      v6->_debugWindow = v7;
    }
  }

  return v6;
}

- (void)_scene:(id)_scene willTransitionToActivationState:(int64_t)state withReasonsMask:(unint64_t)mask
{
  if (!state)
  {
    [(UIWindow *)self->_debugWindow setHidden:0, 0, mask];
  }
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end