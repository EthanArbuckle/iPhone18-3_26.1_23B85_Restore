@interface _UISceneScreenBasedMetricsCalculator
- (UIWindowScene)_scene;
- (void)_updateMetricsOnWindows:(id)a3 animated:(BOOL)a4;
@end

@implementation _UISceneScreenBasedMetricsCalculator

- (void)_updateMetricsOnWindows:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v7 = [WeakRetained _effectiveSettings];
  v8 = [v7 interfaceOrientation];

  v9 = objc_loadWeakRetained(&self->_scene);
  v10 = [v9 _effectiveUIClientSettings];
  v11 = [v10 interfaceOrientation];

  v12 = objc_loadWeakRetained(&self->_scene);
  v13 = [v12 _affectsScreenOrientation];
  v14 = [UIApp _viewServiceIgnoresSceneForLegacyInterfaceOrientation:v12];

  if (([UIApp isFrontBoard] & 1) == 0 && v13 && (v14 & 1) == 0)
  {
    v15 = objc_loadWeakRetained(&self->_scene);
    v16 = [v15 screen];
    [v16 _setInterfaceOrientation:v8];
  }

  v17 = objc_loadWeakRetained(&self->_scene);
  _UISceneMetricsCalculatorApplySceneCornerRadiiToScreenIfNecessary(v17);

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73___UISceneScreenBasedMetricsCalculator__updateMetricsOnWindows_animated___block_invoke;
  v19[3] = &unk_1E70F6848;
  v20 = v5;
  v21 = v8;
  v22 = v11;
  v18 = v5;
  [UIView performWithoutAnimation:v19];
}

- (UIWindowScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end