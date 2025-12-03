@interface _UIScenefbsSceneBasedMetricsCalculator
- (UIWindowScene)_scene;
- (void)_updateMetricsOnWindows:(id)windows animated:(BOOL)animated;
@end

@implementation _UIScenefbsSceneBasedMetricsCalculator

- (void)_updateMetricsOnWindows:(id)windows animated:(BOOL)animated
{
  v57 = *MEMORY[0x1E69E9840];
  windowsCopy = windows;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  _effectiveSettings = [WeakRetained _effectiveSettings];
  interfaceOrientation = [_effectiveSettings interfaceOrientation];

  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __75___UIScenefbsSceneBasedMetricsCalculator__updateMetricsOnWindows_animated___block_invoke;
  v55[3] = &unk_1E70F44A8;
  v55[4] = self;
  v8 = [_UISceneLifecycleMultiplexer mostActiveSceneIncludingInternal:1 withTest:v55];
  v9 = objc_loadWeakRetained(&self->_scene);
  _affectsScreenOrientation = [v9 _affectsScreenOrientation];
  v11 = [UIApp _viewServiceIgnoresSceneForLegacyInterfaceOrientation:v9];

  if (_affectsScreenOrientation && (v11 & 1) == 0)
  {
    v12 = objc_loadWeakRetained(&self->_scene);
    LODWORD(v13) = [v12 isEqual:v8];

    if ((v13 & 1) == 0 && !v8)
    {
      v13 = objc_loadWeakRetained(&self->_scene);

      if (v13)
      {
        v14 = objc_loadWeakRetained(&self->_scene);
        _hasLifecycle = [v14 _hasLifecycle];

        v16 = objc_loadWeakRetained(&self->_scene);
        _isInternal = [v16 _isInternal];

        if (_isInternal)
        {
          v18 = objc_loadWeakRetained(&self->_scene);
          _affectsAppLifecycleIfInternal = [v18 _affectsAppLifecycleIfInternal];
        }

        else
        {
          _affectsAppLifecycleIfInternal = 0;
        }

        v20 = objc_loadWeakRetained(&self->_scene);
        _isConnecting = [v20 _isConnecting];

        LODWORD(v13) = _hasLifecycle & _isConnecting & (_isInternal ^ 1 | _affectsAppLifecycleIfInternal);
      }
    }

    if (([UIApp isFrontBoard] & 1) == 0 && v13)
    {
      v22 = objc_loadWeakRetained(&self->_scene);
      screen = [v22 screen];
      [screen _setInterfaceOrientation:interfaceOrientation];
    }
  }

  v45 = v8;
  v24 = objc_loadWeakRetained(&self->_scene);
  v49 = [UIWindow _findWindowForControllingOverallAppearanceInWindowScene:v24];

  v25 = objc_loadWeakRetained(&self->_scene);
  _sceneSessionRoleIsCarPlayOrNonInteractiveExternal = [v25 _sceneSessionRoleIsCarPlayOrNonInteractiveExternal];

  v26 = objc_loadWeakRetained(&self->_scene);
  _canDynamicallySpecifySupportedInterfaceOrientations = [v26 _canDynamicallySpecifySupportedInterfaceOrientations];

  selfCopy = self;
  v28 = objc_loadWeakRetained(&self->_scene);
  _UISceneMetricsCalculatorApplySceneCornerRadiiToScreenIfNecessary(v28);

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v29 = windowsCopy;
  v30 = [v29 countByEnumeratingWithState:&v51 objects:v56 count:16];
  v31 = interfaceOrientation;
  if (v30)
  {
    v32 = v30;
    v33 = *v52;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v52 != v33)
        {
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v51 + 1) + 8 * i);
        if ([v35 _isWindowServerHostingManaged])
        {
          v36 = v31;
          if (!_canDynamicallySpecifySupportedInterfaceOrientations)
          {
            goto LABEL_34;
          }

          v37 = ![v35 _canAffectStatusBarAppearance] || v49 == 0;
          v36 = v31;
          if (v37)
          {
            goto LABEL_34;
          }

          _viewControllerForSupportedInterfaceOrientations = v49;
          v39 = v35;
          v40 = v39;
          if (_viewControllerForSupportedInterfaceOrientations == v39)
          {
          }

          else
          {
            if (v39)
            {
              v41 = [_viewControllerForSupportedInterfaceOrientations isEqual:v39];

              v31 = interfaceOrientation;
              v36 = interfaceOrientation;
              if (v41)
              {
                goto LABEL_34;
              }
            }

            else
            {
            }

            rootViewController = [v40 rootViewController];
            _viewControllerForSupportedInterfaceOrientations = [rootViewController _viewControllerForSupportedInterfaceOrientations];

            if (_viewControllerForSupportedInterfaceOrientations)
            {
              v36 = [v40 _interfaceOrientationForSupportedOrientations:objc_msgSend(_viewControllerForSupportedInterfaceOrientations preferredOrientation:{"__supportedInterfaceOrientations"), objc_msgSend(v40, "_preferredInterfaceOrientationForRootViewController")}];
LABEL_33:

              v31 = interfaceOrientation;
LABEL_34:
              if ((_sceneSessionRoleIsCarPlayOrNonInteractiveExternal & 1) != 0 || v36 == [v35 interfaceOrientation])
              {
                [(UIWindow *)v35 _invalidateDeferredOrientationUpdate];
                if ([objc_opt_class() _transformLayerRotationsAreEnabled])
                {
                  [v35 _sceneBoundsDidChange];
                }

                else
                {
                  [v35 _updateTransformLayer];
                }
              }

              else if (animated)
              {
                v43 = objc_loadWeakRetained(&selfCopy->_scene);
                screen2 = [v43 screen];
                [v35 _updateToInterfaceOrientation:v36 animated:{objc_msgSend(screen2, "_isPerformingSystemSnapshot") ^ 1}];

                v31 = interfaceOrientation;
              }

              else
              {
                [v35 _updateToInterfaceOrientation:v36 animated:0];
              }

              continue;
            }
          }

          v36 = interfaceOrientation;
          goto LABEL_33;
        }
      }

      v32 = [v29 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v32);
  }
}

- (UIWindowScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end