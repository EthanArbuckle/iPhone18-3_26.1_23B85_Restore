@interface _UISceneScreenBasedMetricsCalculator
- (UIWindowScene)_scene;
- (void)_updateMetricsOnWindows:(id)windows animated:(BOOL)animated;
@end

@implementation _UISceneScreenBasedMetricsCalculator

- (void)_updateMetricsOnWindows:(id)windows animated:(BOOL)animated
{
  windowsCopy = windows;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  _effectiveSettings = [WeakRetained _effectiveSettings];
  interfaceOrientation = [_effectiveSettings interfaceOrientation];

  v9 = objc_loadWeakRetained(&self->_scene);
  _effectiveUIClientSettings = [v9 _effectiveUIClientSettings];
  interfaceOrientation2 = [_effectiveUIClientSettings interfaceOrientation];

  v12 = objc_loadWeakRetained(&self->_scene);
  _affectsScreenOrientation = [v12 _affectsScreenOrientation];
  v14 = [UIApp _viewServiceIgnoresSceneForLegacyInterfaceOrientation:v12];

  if (([UIApp isFrontBoard] & 1) == 0 && _affectsScreenOrientation && (v14 & 1) == 0)
  {
    v15 = objc_loadWeakRetained(&self->_scene);
    screen = [v15 screen];
    [screen _setInterfaceOrientation:interfaceOrientation];
  }

  v17 = objc_loadWeakRetained(&self->_scene);
  _UISceneMetricsCalculatorApplySceneCornerRadiiToScreenIfNecessary(v17);

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73___UISceneScreenBasedMetricsCalculator__updateMetricsOnWindows_animated___block_invoke;
  v19[3] = &unk_1E70F6848;
  v20 = windowsCopy;
  v21 = interfaceOrientation;
  v22 = interfaceOrientation2;
  v18 = windowsCopy;
  [UIView performWithoutAnimation:v19];
}

- (UIWindowScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end