@interface _UIScenefbsSceneBasedMetricsCalculator
- (UIWindowScene)_scene;
- (void)_updateMetricsOnWindows:(id)a3 animated:(BOOL)a4;
@end

@implementation _UIScenefbsSceneBasedMetricsCalculator

- (void)_updateMetricsOnWindows:(id)a3 animated:(BOOL)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v7 = [WeakRetained _effectiveSettings];
  v48 = [v7 interfaceOrientation];

  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __75___UIScenefbsSceneBasedMetricsCalculator__updateMetricsOnWindows_animated___block_invoke;
  v55[3] = &unk_1E70F44A8;
  v55[4] = self;
  v8 = [_UISceneLifecycleMultiplexer mostActiveSceneIncludingInternal:1 withTest:v55];
  v9 = objc_loadWeakRetained(&self->_scene);
  v10 = [v9 _affectsScreenOrientation];
  v11 = [UIApp _viewServiceIgnoresSceneForLegacyInterfaceOrientation:v9];

  if (v10 && (v11 & 1) == 0)
  {
    v12 = objc_loadWeakRetained(&self->_scene);
    LODWORD(v13) = [v12 isEqual:v8];

    if ((v13 & 1) == 0 && !v8)
    {
      v13 = objc_loadWeakRetained(&self->_scene);

      if (v13)
      {
        v14 = objc_loadWeakRetained(&self->_scene);
        v15 = [v14 _hasLifecycle];

        v16 = objc_loadWeakRetained(&self->_scene);
        v17 = [v16 _isInternal];

        if (v17)
        {
          v18 = objc_loadWeakRetained(&self->_scene);
          v19 = [v18 _affectsAppLifecycleIfInternal];
        }

        else
        {
          v19 = 0;
        }

        v20 = objc_loadWeakRetained(&self->_scene);
        v21 = [v20 _isConnecting];

        LODWORD(v13) = v15 & v21 & (v17 ^ 1 | v19);
      }
    }

    if (([UIApp isFrontBoard] & 1) == 0 && v13)
    {
      v22 = objc_loadWeakRetained(&self->_scene);
      v23 = [v22 screen];
      [v23 _setInterfaceOrientation:v48];
    }
  }

  v45 = v8;
  v24 = objc_loadWeakRetained(&self->_scene);
  v49 = [UIWindow _findWindowForControllingOverallAppearanceInWindowScene:v24];

  v25 = objc_loadWeakRetained(&self->_scene);
  v50 = [v25 _sceneSessionRoleIsCarPlayOrNonInteractiveExternal];

  v26 = objc_loadWeakRetained(&self->_scene);
  v27 = [v26 _canDynamicallySpecifySupportedInterfaceOrientations];

  v46 = self;
  v28 = objc_loadWeakRetained(&self->_scene);
  _UISceneMetricsCalculatorApplySceneCornerRadiiToScreenIfNecessary(v28);

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v29 = v5;
  v30 = [v29 countByEnumeratingWithState:&v51 objects:v56 count:16];
  v31 = v48;
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
          if (!v27)
          {
            goto LABEL_34;
          }

          v37 = ![v35 _canAffectStatusBarAppearance] || v49 == 0;
          v36 = v31;
          if (v37)
          {
            goto LABEL_34;
          }

          v38 = v49;
          v39 = v35;
          v40 = v39;
          if (v38 == v39)
          {
          }

          else
          {
            if (v39)
            {
              v41 = [v38 isEqual:v39];

              v31 = v48;
              v36 = v48;
              if (v41)
              {
                goto LABEL_34;
              }
            }

            else
            {
            }

            v42 = [v40 rootViewController];
            v38 = [v42 _viewControllerForSupportedInterfaceOrientations];

            if (v38)
            {
              v36 = [v40 _interfaceOrientationForSupportedOrientations:objc_msgSend(v38 preferredOrientation:{"__supportedInterfaceOrientations"), objc_msgSend(v40, "_preferredInterfaceOrientationForRootViewController")}];
LABEL_33:

              v31 = v48;
LABEL_34:
              if ((v50 & 1) != 0 || v36 == [v35 interfaceOrientation])
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

              else if (a4)
              {
                v43 = objc_loadWeakRetained(&v46->_scene);
                v44 = [v43 screen];
                [v35 _updateToInterfaceOrientation:v36 animated:{objc_msgSend(v44, "_isPerformingSystemSnapshot") ^ 1}];

                v31 = v48;
              }

              else
              {
                [v35 _updateToInterfaceOrientation:v36 animated:0];
              }

              continue;
            }
          }

          v36 = v48;
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