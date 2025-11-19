@interface UIViewServiceTextEffectsOperator
@end

@implementation UIViewServiceTextEffectsOperator

void __81___UIViewServiceTextEffectsOperator__prepareForDisconnectionUnconditionallyThen___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v25 = [WeakRetained _boundContext];

  [v25 setZombifyOnInvalidate:1];
  [v25 invalidate];
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  *(v3 + 160) = 0;

  v5 = objc_loadWeakRetained((*(a1 + 32) + 48));
  v6 = [v5 windowScene];

  v7 = [v6 keyboardSceneDelegate];
  v8 = +[UIWindow _applicationKeyWindow];
  v9 = objc_loadWeakRetained((*(a1 + 32) + 48));
  if (v8 != v9)
  {
    goto LABEL_2;
  }

  v19 = objc_loadWeakRetained((*(a1 + 32) + 48));
  v20 = [v19 firstResponder];
  if (!v20)
  {

LABEL_2:
    goto LABEL_3;
  }

  v21 = v20;
  v22 = objc_loadWeakRetained((*(a1 + 32) + 48));
  v23 = [v22 firstResponder];
  v24 = [v7 responder];

  if (v23 == v24)
  {
    [v7 _preserveInputViewsWithId:0 animated:0];
  }

LABEL_3:
  v10 = objc_loadWeakRetained((*(a1 + 32) + 48));
  UIKeyboardSafariDepresentForViewService();

  v11 = [MEMORY[0x1E696B098] valueWithPointer:*(a1 + 32)];
  [v7 _clearPreservedInputViewsWithId:v11 clearKeyboard:_activeTextEffectsOperator == *(a1 + 32)];

  v12 = _activeTextEffectsOperator;
  v13 = *(a1 + 32);
  if (_activeTextEffectsOperator == v13)
  {
    _activeTextEffectsOperator = 0;

    v13 = *(a1 + 32);
  }

  objc_storeWeak((v13 + 48), 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [UITextEffectsHostingInfo hostingInfoForWindowScene:v6];
    v15 = [v14 useHostedInstance];

    if (v15)
    {
      v16 = [UITextEffectsHostingInfo hostingInfoForWindowScene:v6];
      [v16 setUseHostedInstance:0];
    }
  }

  v17 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  [v17 finishWithHostedWindow];

  v18 = [MEMORY[0x1E696AD88] defaultCenter];
  [v18 removeObserver:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

void __68___UIViewServiceTextEffectsOperator__invalidateUnconditionallyThen___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 32) invoke];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68___UIViewServiceTextEffectsOperator__invalidateUnconditionallyThen___block_invoke_2;
  v5[3] = &unk_1E7128660;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [v2 whenCompleteDo:v5];
}

void __68___UIViewServiceTextEffectsOperator__invalidateUnconditionallyThen___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___UIViewServiceTextEffectsOperator__invalidateUnconditionallyThen___block_invoke_3;
  block[3] = &unk_1E7128660;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  dispatch_async(v2, block);
}

uint64_t __68___UIViewServiceTextEffectsOperator__invalidateUnconditionallyThen___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  *(*(a1 + 40) + 24) = 1;
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void __55___UIViewServiceTextEffectsOperator___setWindowOffset___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _isTextEffectsWindow])
  {
    [v3 setHostedViewOrigin:{*(*(a1 + 32) + 56), *(*(a1 + 32) + 64)}];
  }
}

void __54___UIViewServiceTextEffectsOperator__reloadSafeInsets__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _isTextEffectsWindow] && objc_msgSend(v3, "_isHostedInAnotherProcess"))
  {
    [v3 setHostedSafeInsets:{*(*(a1 + 32) + 72), *(*(a1 + 32) + 80), *(*(a1 + 32) + 88), *(*(a1 + 32) + 96)}];
  }
}

void __49___UIViewServiceTextEffectsOperator_XPCInterface__block_invoke()
{
  v0 = objc_alloc_init(_UIViewServiceTextEffectsOperator_XPCInterface);
  v1 = qword_1ED4A2980;
  qword_1ED4A2980 = v0;
}

void __68___UIViewServiceTextEffectsOperator_forceSyncToStatusBarOrientation__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 visualModeManager];
  v5 = [v4 shouldShowWithinAppWindow];

  if (v5)
  {
    [*(a1 + 32) _resetHostedViewSize];
  }

  else
  {
    v6 = [v9 screen];
    [v6 _boundsForInterfaceOrientation:*(a1 + 40)];
    [v9 setSize:{v7, v8}];
  }
}

void __79___UIViewServiceTextEffectsOperator_setHostedWindow_disableAutomaticBehaviors___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained(WeakRetained + 6);
  if (WeakRetained && v2)
  {
    v3 = [v2 _windowHostingScene];
    v4 = [v3 _screen];
    v5 = [v4 _userInterfaceIdiom];

    v6 = [_UIViewServiceSessionActivityRecord activityRecordForProvider:v5 userInterfaceIdiom:?];
    v7 = WeakRetained[20];
    WeakRetained[20] = v6;
  }
}

void __79___UIViewServiceTextEffectsOperator_willRotateToInterfaceOrientation_duration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rootViewController];
  [v4 window:v3 willRotateToInterfaceOrientation:*(a1 + 32) duration:*(a1 + 40)];
}

void __75___UIViewServiceTextEffectsOperator_rotateToInterfaceOrientation_duration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rootViewController];
  [v4 window:v3 willAnimateRotationToInterfaceOrientation:*(a1 + 32) duration:*(a1 + 40)];

  v16 = [v3 rootViewController];
  v5 = [v16 view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v3 rootViewController];

  v15 = [v14 view];
  [v15 setFrame:{v7, v9, v11, v13}];
}

void __76___UIViewServiceTextEffectsOperator_finishRotationFromInterfaceOrientation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 rootViewController];
  [v4 window:v3 didRotateFromInterfaceOrientation:*(a1 + 32)];
}

@end