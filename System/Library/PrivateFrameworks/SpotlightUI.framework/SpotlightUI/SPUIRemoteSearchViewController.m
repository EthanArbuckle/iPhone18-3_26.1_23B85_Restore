@interface SPUIRemoteSearchViewController
- (CGSize)dockedSearchBarSize;
- (CGSize)searchBarSize;
- (SPUIRemoteSearchViewController)init;
- (SPUIRemoteSearchViewDelegate)delegate;
- (double)keyboardHeight;
- (id)sceneSpecification;
- (void)didInvalidateSceneWhenForeground;
- (void)finishCompletionHandlerIfNeeded;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
- (void)setRevealProgress:(double)a3;
- (void)setSource:(unint64_t)a3;
- (void)updateIntent:(unint64_t)a3;
- (void)updateSceneSettingsWithBlock:(id)a3;
@end

@implementation SPUIRemoteSearchViewController

- (id)sceneSpecification
{
  v2 = objc_opt_new();

  return v2;
}

- (double)keyboardHeight
{
  v3 = [(SPUIRemoteSearchViewController *)self view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _FBSScene];
  v7 = [v6 settings];
  v8 = [v7 displayConfiguration];
  v9 = [v8 identity];
  if ([v9 isContinuityDisplay])
  {

    return 0.0;
  }

  else
  {
    v11 = [MEMORY[0x277D75658] isInHardwareKeyboardMode];

    result = 0.0;
    if ((v11 & 1) == 0)
    {
      return self->_keyboardHeight;
    }
  }

  return result;
}

- (CGSize)searchBarSize
{
  width = self->_searchBarSize.width;
  height = self->_searchBarSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)dockedSearchBarSize
{
  width = self->_dockedSearchBarSize.width;
  height = self->_dockedSearchBarSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)finishCompletionHandlerIfNeeded
{
  v3 = [(SPUISpotlightRemoteViewController *)self scene];
  v4 = [v3 settings];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SPUISpotlightRemoteViewController *)self scene];
    v10 = [v5 settings];
  }

  else
  {
    v10 = 0;
  }

  v6 = [(SPUIRemoteSearchViewController *)self finishedPresentingSpotlightHandler];
  if (v6)
  {
    v7 = v6;
    v8 = [(SPUISpotlightRemoteViewController *)self scene];
    if ([v8 contentState] == 2)
    {
      v9 = [v10 presentationIntent];

      if (v9 != 2)
      {
        goto LABEL_10;
      }

      v7 = [(SPUIRemoteSearchViewController *)self finishedPresentingSpotlightHandler];
      v7[2]();
    }

    else
    {
    }
  }

LABEL_10:
}

- (SPUIRemoteSearchViewController)init
{
  v4.receiver = self;
  v4.super_class = SPUIRemoteSearchViewController;
  v2 = [(SPUISpotlightRemoteViewController *)&v4 initWithSceneIdentifier:@"searchScreen"];
  [(SPUIRemoteSearchViewController *)v2 setDistanceToTopOfIcons:58.0];
  return v2;
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a3;
  v7 = [a4 transitionContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    if ([v8 shouldDismiss])
    {
      v9 = [(SPUIRemoteSearchViewController *)self delegate];
      [v9 dismissSearchView];
    }

    if ([v8 shouldBackground])
    {
      v10 = [v6 settings];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v6 settings];
        v12 = [v11 presentationIntent];

        if (v12 == 4)
        {
          v19.receiver = self;
          v19.super_class = SPUIRemoteSearchViewController;
          [(SPUISpotlightRemoteViewController *)&v19 viewDidDisappear:0];
        }
      }

      else
      {
      }
    }
  }

  v13 = [v6 clientSettings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v15 = [v6 clientSettings];
    [v15 distanceToTopOfIcons];
    if (v16 > 0.0)
    {
      [v15 distanceToTopOfIcons];
      [(SPUIRemoteSearchViewController *)self setDistanceToTopOfIcons:?];
    }

    -[SPUIRemoteSearchViewController setSearchHeaderLayerRenderID:](self, "setSearchHeaderLayerRenderID:", [v15 searchHeaderLayerRenderID]);
    -[SPUIRemoteSearchViewController setSearchHeaderContextID:](self, "setSearchHeaderContextID:", [v15 searchHeaderContextID]);
    -[SPUIRemoteSearchViewController setSearchHeaderBackgroundContextID:](self, "setSearchHeaderBackgroundContextID:", [v15 searchHeaderBackgroundContextID]);
    -[SPUIRemoteSearchViewController setSearchHeaderBackgroundLayerRenderID:](self, "setSearchHeaderBackgroundLayerRenderID:", [v15 searchHeaderBackgroundLayerRenderID]);
    [v15 keyboardProtectorHeight];
    [(SPUIRemoteSearchViewController *)self setKeyboardProtectorHeight:?];
    [v15 searchBarSize];
    [(SPUIRemoteSearchViewController *)self setSearchBarSize:?];
    [v15 dockedSearchBarSize];
    [(SPUIRemoteSearchViewController *)self setDockedSearchBarSize:?];
    [v15 searchBarCornerRadius];
    [(SPUIRemoteSearchViewController *)self setSearchBarCornerRadius:?];
    [v15 keyboardHeight];
    [(SPUIRemoteSearchViewController *)self setKeyboardHeight:?];
    -[SPUIRemoteSearchViewController setSearchHeaderBlurContextID:](self, "setSearchHeaderBlurContextID:", [v15 searchHeaderBlurContextID]);
    -[SPUIRemoteSearchViewController setSearchHeaderBlurLayerRenderID:](self, "setSearchHeaderBlurLayerRenderID:", [v15 searchHeaderBlurLayerRenderID]);
    v17 = [(SPUIRemoteSearchViewController *)self isKeyboardPresented];
    if (v17 != [v15 isKeyboardPresented])
    {
      -[SPUIRemoteSearchViewController setKeyboardPresented:](self, "setKeyboardPresented:", [v15 isKeyboardPresented]);
      v18 = [(SPUIRemoteSearchViewController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [v18 searchViewKeyboardPresentationStateDidChange];
      }
    }
  }
}

- (void)setSource:(unint64_t)a3
{
  self->_source = a3;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__SPUIRemoteSearchViewController_setSource___block_invoke;
  v3[3] = &__block_descriptor_40_e44_v16__0__SPUIMutableSearchViewSceneSettings_8l;
  v3[4] = a3;
  [(SPUIRemoteSearchViewController *)self updateSceneSettingsWithBlock:v3];
}

- (void)setRevealProgress:(double)a3
{
  self->_revealProgress = a3;
  v4 = [(SPUISpotlightRemoteViewController *)self scene];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__SPUIRemoteSearchViewController_setRevealProgress___block_invoke;
  v5[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
  *&v5[4] = a3;
  [v4 updateSettingsWithBlock:v5];
}

void __52__SPUIRemoteSearchViewController_setRevealProgress___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setRevealProgress:*(a1 + 32)];
  }
}

- (void)didInvalidateSceneWhenForeground
{
  v3.receiver = self;
  v3.super_class = SPUIRemoteSearchViewController;
  [(SPUISpotlightRemoteViewController *)&v3 didInvalidateSceneWhenForeground];
  [(SPUIRemoteSearchViewController *)self setSource:[(SPUIRemoteSearchViewController *)self source]];
  [(SPUIRemoteSearchViewController *)self updateIntent:1];
  [(SPUIRemoteSearchViewController *)self updateIntent:2];
}

- (void)updateIntent:(unint64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__SPUIRemoteSearchViewController_updateIntent___block_invoke;
  v3[3] = &__block_descriptor_40_e44_v16__0__SPUIMutableSearchViewSceneSettings_8l;
  v3[4] = a3;
  [(SPUIRemoteSearchViewController *)self updateSceneSettingsWithBlock:v3];
}

- (void)updateSceneSettingsWithBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SPUIRemoteSearchViewController_updateSceneSettingsWithBlock___block_invoke;
  v6[3] = &unk_279D053A0;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(SPUISpotlightRemoteViewController *)self addOrExecuteEventAsNeeded:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __63__SPUIRemoteSearchViewController_updateSceneSettingsWithBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained scene];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__SPUIRemoteSearchViewController_updateSceneSettingsWithBlock___block_invoke_2;
  v4[3] = &unk_279D05378;
  v5 = *(a1 + 32);
  [v3 performUpdate:v4];
}

void __63__SPUIRemoteSearchViewController_updateSceneSettingsWithBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 setBarrier:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  v5.receiver = self;
  v5.super_class = SPUIRemoteSearchViewController;
  [(SPUISpotlightRemoteViewController *)&v5 sceneDidInvalidate:a3 withContext:a4];
  [(SPUIRemoteSearchViewController *)self setSearchHeaderContextID:0];
  [(SPUIRemoteSearchViewController *)self setSearchHeaderLayerRenderID:0];
}

- (void)sceneContentStateDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = SPUIRemoteSearchViewController;
  [(SPUISpotlightRemoteViewController *)&v4 sceneContentStateDidChange:a3];
  [(SPUIRemoteSearchViewController *)self finishCompletionHandlerIfNeeded];
}

- (SPUIRemoteSearchViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewWillAppear:(void *)a1 .cold.1(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  [a2 keyboardHeight];
  *&v5 = v5;
  v6 = [v3 numberWithFloat:v5];
  v8 = 138412290;
  v9 = v6;
  _os_log_debug_impl(&dword_26B824000, v4, OS_LOG_TYPE_DEBUG, "Keyboard height %@", &v8, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end