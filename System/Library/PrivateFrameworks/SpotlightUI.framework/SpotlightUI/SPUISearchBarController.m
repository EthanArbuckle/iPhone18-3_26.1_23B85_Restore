@interface SPUISearchBarController
+ (id)notificationCenterSearchBar;
+ (id)todayViewSearchBar;
- (CGSize)initialFittingSize;
- (SPUISearchBarDelegate)delegate;
- (id)sceneSpecification;
- (void)didInvalidateSceneWhenForeground;
- (void)loadView;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)updateSceneSettingsWithBlock:(id)a3;
@end

@implementation SPUISearchBarController

+ (id)todayViewSearchBar
{
  v2 = [(SPUISpotlightRemoteViewController *)[SPUISearchBarController alloc] initWithSceneIdentifier:@"searchBar-todayView"];

  return v2;
}

+ (id)notificationCenterSearchBar
{
  v2 = [(SPUISpotlightRemoteViewController *)[SPUISearchBarController alloc] initWithSceneIdentifier:@"searchBar-notificationCenter"];

  return v2;
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(SPUISearchBarController *)self setView:v3];

  v4 = [(SPUISearchBarController *)self view];
  [v4 setHeight:60.0];

  v5 = [(SPUISearchBarController *)self view];
  v6 = [v5 heightAnchor];
  v7 = [(SPUISearchBarController *)self view];
  [v7 height];
  v8 = [v6 constraintEqualToConstant:?];
  [(SPUISearchBarController *)self setHeightAnchor:v8];

  v9 = [(SPUISearchBarController *)self heightAnchor];
  [v9 setActive:1];
}

- (CGSize)initialFittingSize
{
  v2 = [(SPUISearchBarController *)self view];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)sceneSpecification
{
  v2 = objc_opt_new();

  return v2;
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v18 = a3;
  v6 = [a4 transitionContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 searchBarDidFocus])
  {
    v7 = [(SPUISearchBarController *)self delegate];
    [v7 searchBarDidFocus];
  }

  v8 = [v18 clientSettings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v18 clientSettings];
    [v10 headerHeight];
    if (v11 > 0.0)
    {
      [v10 headerHeight];
      v13 = v12;
      v14 = [(SPUISearchBarController *)self view];
      [v14 setHeight:v13];

      [v10 headerHeight];
      v16 = v15;
      v17 = [(SPUISearchBarController *)self heightAnchor];
      [v17 setConstant:v16];
    }
  }
}

- (void)didInvalidateSceneWhenForeground
{
  [(SPUISpotlightRemoteViewController *)self viewWillAppear:0];
  v3 = [(SPUISearchBarController *)self view];
  [v3 setNeedsLayout];
}

- (void)updateSceneSettingsWithBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SPUISearchBarController_updateSceneSettingsWithBlock___block_invoke;
  v6[3] = &unk_279D053A0;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(SPUISpotlightRemoteViewController *)self addOrExecuteEventAsNeeded:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __56__SPUISearchBarController_updateSceneSettingsWithBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained scene];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SPUISearchBarController_updateSceneSettingsWithBlock___block_invoke_2;
  v4[3] = &unk_279D05408;
  v5 = *(a1 + 32);
  [v3 updateSettingsWithBlock:v4];
}

void __56__SPUISearchBarController_updateSceneSettingsWithBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (SPUISearchBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end