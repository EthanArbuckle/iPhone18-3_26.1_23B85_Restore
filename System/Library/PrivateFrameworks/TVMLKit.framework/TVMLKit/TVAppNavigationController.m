@interface TVAppNavigationController
@end

@implementation TVAppNavigationController

uint64_t __80___TVAppNavigationController_iOS__accessibilityButtonBackgroundDefaultTintColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.15];
  v1 = _accessibilityButtonBackgroundDefaultTintColor_defaultTintColor;
  _accessibilityButtonBackgroundDefaultTintColor_defaultTintColor = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __68___TVAppNavigationController_insertDocument_beforeDocument_options___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v7 = [v14 appDocument];
    v8 = [v7 isEqual:*(a1 + 32)];

    if (v8)
    {
      v9 = [*(a1 + 40) viewControllers];
      v10 = [v9 mutableCopy];

      v11 = [[_TVAppDocumentRequestController alloc] initWithAppDocument:*(a1 + 48)];
      v12 = [*(a1 + 56) objectForKey:*MEMORY[0x277D1AF68]];
      v13 = [v12 BOOLValue];

      [(_TVAppDocumentController *)v11 setAdoptsContext:v13];
      [*(a1 + 40) _doWillLoadAppDocumentWithController:v11];
      [v10 insertObject:v11 atIndex:a3];
      [*(a1 + 40) setViewControllers:v10 animated:1];
      *a4 = 1;
    }
  }
}

void __70___TVAppNavigationController__presentModalDocumentController_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissed];
}

void __70___TVAppNavigationController__presentModalDocumentController_options___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"TVAppNavigationWillDisplayViewControllerNotification" object:*(a1 + 32)];

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = +[TVStorePlaybackLaunchShroud sharedShroud];
  v5 = [v4 isHidden];

  if ([*(a1 + 40) presentationStyle] == 7 && *(a1 + 48))
  {
    v6 = +[_TVModalPresenter presenter];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __70___TVAppNavigationController__presentModalDocumentController_options___block_invoke_3;
    v38[3] = &unk_279D6F5D0;
    v7 = &v39;
    v8 = *(a1 + 48);
    v39 = *(a1 + 56);
    v9 = &v40;
    v40 = WeakRetained;
    v41 = *(a1 + 40);
    [v6 hideController:v8 animated:1 withCompletion:v38];

    v10 = v41;
  }

  else
  {
    v10 = +[_TVModalPresenter presenter];
    v11 = *(a1 + 40);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __70___TVAppNavigationController__presentModalDocumentController_options___block_invoke_4;
    v35[3] = &unk_279D6E2F8;
    v7 = &v36;
    v12 = *(a1 + 56);
    v36 = *(a1 + 48);
    v9 = &v37;
    v37 = *(a1 + 40);
    [v10 showController:v12 fromController:WeakRetained withConfiguration:v11 animated:v5 andCompletionBlock:v35];
  }

  v13 = [*(a1 + 56) appDocument];
  v14 = [v13 templateElement];

  v15 = [v14 elementName];
  if ([v15 isEqualToString:@"playlist"])
  {
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    objc_initWeak(&location, v16);

    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__11;
    v32 = __Block_byref_object_dispose__11;
    v33 = 0;
    v17 = objc_loadWeakRetained(&location);
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __70___TVAppNavigationController__presentModalDocumentController_options___block_invoke_59;
    v24 = &unk_279D71090;
    v25 = *(a1 + 32);
    objc_copyWeak(&v27, &location);
    v26 = &v28;
    v18 = [v17 addObserverForName:@"com.apple.tv.dismissing-playback" object:0 queue:0 usingBlock:&v21];
    v19 = v29[5];
    v29[5] = v18;

    objc_destroyWeak(&v27);
    _Block_object_dispose(&v28, 8);

    objc_destroyWeak(&location);
  }

  [WeakRetained setPresentedModalViewController:{*(a1 + 56), v21, v22, v23, v24, v25}];
  v20 = [MEMORY[0x277CCAB98] defaultCenter];
  [v20 postNotificationName:@"TVAppNavigationDidDisplayViewControllerNotification" object:*(a1 + 32)];
}

void __70___TVAppNavigationController__presentModalDocumentController_options___block_invoke_3(void *a1)
{
  v2 = +[_TVModalPresenter presenter];
  [v2 showController:a1[4] fromController:a1[5] withConfiguration:a1[6] andCompletionBlock:0];
}

void __70___TVAppNavigationController__presentModalDocumentController_options___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32) && [*(a1 + 40) navigationBarHidden])
  {
    v2 = +[_TVModalPresenter presenter];
    [v2 hideController:*(a1 + 32) animated:0 withCompletion:0];
  }
}

void __70___TVAppNavigationController__presentModalDocumentController_options___block_invoke_59(uint64_t a1)
{
  [*(a1 + 32) dismissed];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained removeObserver:*(*(*(a1 + 40) + 8) + 40)];
}

uint64_t __67___TVAppNavigationController_replaceDocument_withDocument_options___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = a2;
  v7 = objc_opt_respondsToSelector();
  v8 = v19;
  if (v7)
  {
    v9 = [v19 appDocument];
    v10 = [v9 isEqual:*(a1 + 32)];

    v8 = v19;
    if (v10)
    {
      v11 = [v19 templateViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [v19 replaceAppDocumentWithAppDocument:*(a1 + 40)];
        v7 = [v19 setPresentedModal:*(a1 + 64)];
      }

      else
      {
        v13 = [[_TVAppDocumentRequestController alloc] initWithAppDocument:*(a1 + 40)];
        [(_TVAppDocumentController *)v13 setPresentedModal:*(a1 + 64)];
        v14 = [*(a1 + 48) objectForKey:*MEMORY[0x277D1AF68]];
        v15 = [v14 BOOLValue];

        [(_TVAppDocumentController *)v13 setAdoptsContext:v15];
        [*(a1 + 56) _doWillLoadAppDocumentWithController:v13];
        v16 = [*(a1 + 56) viewControllers];
        v17 = [v16 mutableCopy];

        [v17 replaceObjectAtIndex:a3 withObject:v13];
        [*(a1 + 56) setViewControllers:v17 animated:1];
      }

      *a4 = 1;
      v8 = v19;
    }
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

@end