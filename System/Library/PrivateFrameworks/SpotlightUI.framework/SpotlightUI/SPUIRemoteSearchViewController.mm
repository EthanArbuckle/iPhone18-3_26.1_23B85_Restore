@interface SPUIRemoteSearchViewController
- (CGSize)dockedSearchBarSize;
- (CGSize)searchBarSize;
- (SPUIRemoteSearchViewController)init;
- (SPUIRemoteSearchViewDelegate)delegate;
- (double)keyboardHeight;
- (id)sceneSpecification;
- (void)didInvalidateSceneWhenForeground;
- (void)finishCompletionHandlerIfNeeded;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)setRevealProgress:(double)progress;
- (void)setSource:(unint64_t)source;
- (void)updateIntent:(unint64_t)intent;
- (void)updateSceneSettingsWithBlock:(id)block;
@end

@implementation SPUIRemoteSearchViewController

- (id)sceneSpecification
{
  v2 = objc_opt_new();

  return v2;
}

- (double)keyboardHeight
{
  view = [(SPUIRemoteSearchViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  _FBSScene = [windowScene _FBSScene];
  settings = [_FBSScene settings];
  displayConfiguration = [settings displayConfiguration];
  identity = [displayConfiguration identity];
  if ([identity isContinuityDisplay])
  {

    return 0.0;
  }

  else
  {
    isInHardwareKeyboardMode = [MEMORY[0x277D75658] isInHardwareKeyboardMode];

    result = 0.0;
    if ((isInHardwareKeyboardMode & 1) == 0)
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
  scene = [(SPUISpotlightRemoteViewController *)self scene];
  settings = [scene settings];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    scene2 = [(SPUISpotlightRemoteViewController *)self scene];
    settings2 = [scene2 settings];
  }

  else
  {
    settings2 = 0;
  }

  finishedPresentingSpotlightHandler = [(SPUIRemoteSearchViewController *)self finishedPresentingSpotlightHandler];
  if (finishedPresentingSpotlightHandler)
  {
    finishedPresentingSpotlightHandler2 = finishedPresentingSpotlightHandler;
    scene3 = [(SPUISpotlightRemoteViewController *)self scene];
    if ([scene3 contentState] == 2)
    {
      presentationIntent = [settings2 presentationIntent];

      if (presentationIntent != 2)
      {
        goto LABEL_10;
      }

      finishedPresentingSpotlightHandler2 = [(SPUIRemoteSearchViewController *)self finishedPresentingSpotlightHandler];
      finishedPresentingSpotlightHandler2[2]();
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

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  transitionContext = [settings transitionContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = transitionContext;
    if ([v8 shouldDismiss])
    {
      delegate = [(SPUIRemoteSearchViewController *)self delegate];
      [delegate dismissSearchView];
    }

    if ([v8 shouldBackground])
    {
      settings = [sceneCopy settings];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        settings2 = [sceneCopy settings];
        presentationIntent = [settings2 presentationIntent];

        if (presentationIntent == 4)
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

  clientSettings = [sceneCopy clientSettings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    clientSettings2 = [sceneCopy clientSettings];
    [clientSettings2 distanceToTopOfIcons];
    if (v16 > 0.0)
    {
      [clientSettings2 distanceToTopOfIcons];
      [(SPUIRemoteSearchViewController *)self setDistanceToTopOfIcons:?];
    }

    -[SPUIRemoteSearchViewController setSearchHeaderLayerRenderID:](self, "setSearchHeaderLayerRenderID:", [clientSettings2 searchHeaderLayerRenderID]);
    -[SPUIRemoteSearchViewController setSearchHeaderContextID:](self, "setSearchHeaderContextID:", [clientSettings2 searchHeaderContextID]);
    -[SPUIRemoteSearchViewController setSearchHeaderBackgroundContextID:](self, "setSearchHeaderBackgroundContextID:", [clientSettings2 searchHeaderBackgroundContextID]);
    -[SPUIRemoteSearchViewController setSearchHeaderBackgroundLayerRenderID:](self, "setSearchHeaderBackgroundLayerRenderID:", [clientSettings2 searchHeaderBackgroundLayerRenderID]);
    [clientSettings2 keyboardProtectorHeight];
    [(SPUIRemoteSearchViewController *)self setKeyboardProtectorHeight:?];
    [clientSettings2 searchBarSize];
    [(SPUIRemoteSearchViewController *)self setSearchBarSize:?];
    [clientSettings2 dockedSearchBarSize];
    [(SPUIRemoteSearchViewController *)self setDockedSearchBarSize:?];
    [clientSettings2 searchBarCornerRadius];
    [(SPUIRemoteSearchViewController *)self setSearchBarCornerRadius:?];
    [clientSettings2 keyboardHeight];
    [(SPUIRemoteSearchViewController *)self setKeyboardHeight:?];
    -[SPUIRemoteSearchViewController setSearchHeaderBlurContextID:](self, "setSearchHeaderBlurContextID:", [clientSettings2 searchHeaderBlurContextID]);
    -[SPUIRemoteSearchViewController setSearchHeaderBlurLayerRenderID:](self, "setSearchHeaderBlurLayerRenderID:", [clientSettings2 searchHeaderBlurLayerRenderID]);
    isKeyboardPresented = [(SPUIRemoteSearchViewController *)self isKeyboardPresented];
    if (isKeyboardPresented != [clientSettings2 isKeyboardPresented])
    {
      -[SPUIRemoteSearchViewController setKeyboardPresented:](self, "setKeyboardPresented:", [clientSettings2 isKeyboardPresented]);
      delegate2 = [(SPUIRemoteSearchViewController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate2 searchViewKeyboardPresentationStateDidChange];
      }
    }
  }
}

- (void)setSource:(unint64_t)source
{
  self->_source = source;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__SPUIRemoteSearchViewController_setSource___block_invoke;
  v3[3] = &__block_descriptor_40_e44_v16__0__SPUIMutableSearchViewSceneSettings_8l;
  v3[4] = source;
  [(SPUIRemoteSearchViewController *)self updateSceneSettingsWithBlock:v3];
}

- (void)setRevealProgress:(double)progress
{
  self->_revealProgress = progress;
  scene = [(SPUISpotlightRemoteViewController *)self scene];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__SPUIRemoteSearchViewController_setRevealProgress___block_invoke;
  v5[3] = &__block_descriptor_40_e33_v16__0__FBSMutableSceneSettings_8l;
  *&v5[4] = progress;
  [scene updateSettingsWithBlock:v5];
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

- (void)updateIntent:(unint64_t)intent
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__SPUIRemoteSearchViewController_updateIntent___block_invoke;
  v3[3] = &__block_descriptor_40_e44_v16__0__SPUIMutableSearchViewSceneSettings_8l;
  v3[4] = intent;
  [(SPUIRemoteSearchViewController *)self updateSceneSettingsWithBlock:v3];
}

- (void)updateSceneSettingsWithBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SPUIRemoteSearchViewController_updateSceneSettingsWithBlock___block_invoke;
  v6[3] = &unk_279D053A0;
  objc_copyWeak(&v8, &location);
  v5 = blockCopy;
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

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  v5.receiver = self;
  v5.super_class = SPUIRemoteSearchViewController;
  [(SPUISpotlightRemoteViewController *)&v5 sceneDidInvalidate:invalidate withContext:context];
  [(SPUIRemoteSearchViewController *)self setSearchHeaderContextID:0];
  [(SPUIRemoteSearchViewController *)self setSearchHeaderLayerRenderID:0];
}

- (void)sceneContentStateDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = SPUIRemoteSearchViewController;
  [(SPUISpotlightRemoteViewController *)&v4 sceneContentStateDidChange:change];
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