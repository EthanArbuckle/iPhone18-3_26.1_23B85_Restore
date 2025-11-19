@interface SearchUIHomeScreenAppIconViewContextMenuController
+ (id)sharedInstance;
- (BOOL)contextMenuManager:(id)a3 shouldBeginContextMenuPresentationForIconView:(id)a4;
- (BOOL)iconView:(id)a3 shouldActivateApplicationShortcutItem:(id)a4 atIndex:(unint64_t)a5;
- (BOOL)isTimedOutForIcon:(id)a3;
- (BOOL)shouldActivateApplicationShortcutItem:(id)a3 atIndex:(unint64_t)a4 forIconView:(id)a5;
- (SearchUIHomeScreenAppIconViewContextMenuController)init;
- (id)iconView:(id)a3 applicationShortcutItemsWithProposedItems:(id)a4;
@end

@implementation SearchUIHomeScreenAppIconViewContextMenuController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SearchUIHomeScreenAppIconViewContextMenuController sharedInstance];
  }

  v3 = sharedInstance_contextMenuController;

  return v3;
}

uint64_t __68__SearchUIHomeScreenAppIconViewContextMenuController_sharedInstance__block_invoke()
{
  sharedInstance_contextMenuController = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (SearchUIHomeScreenAppIconViewContextMenuController)init
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = SearchUIHomeScreenAppIconViewContextMenuController;
  v2 = [(SearchUIHomeScreenAppIconViewContextMenuController *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69D40C0]);
    contextMenuManager = v2->_contextMenuManager;
    v2->_contextMenuManager = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69D40B8]);
    [v5 setDelegate:v2];
    v6 = v2->_contextMenuManager;
    v10[0] = v5;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(SBHIconViewContextMenuManager *)v6 addContextMenuActionProviders:v7];

    [(SBHIconViewContextMenuManager *)v2->_contextMenuManager setDelegate:v2];
  }

  return v2;
}

- (BOOL)contextMenuManager:(id)a3 shouldBeginContextMenuPresentationForIconView:(id)a4
{
  v4 = a4;
  v5 = [SearchUIUtilities deviceIsAuthenticatedForView:v4];
  if (v5)
  {
    [v4 didEngageWithTriggerEvent:5 destination:1];
  }

  return v5;
}

- (id)iconView:(id)a3 applicationShortcutItemsWithProposedItems:(id)a4
{
  v5 = a3;
  v6 = [a4 mutableCopy];
  v7 = [v5 rowModel];
  v8 = [v7 identifyingResult];

  if ([v8 type] == 22)
  {
    [v5 isInSuggestionContext];
  }

  else
  {
    v9 = [v8 type];
    if ([v5 isInSuggestionContext] && v9 != 24)
    {
      v10 = objc_opt_class();
      v11 = [v8 title];
      v12 = [v11 text];
      v13 = [v10 neverSuggestAppShortcutItemWithLocalizedName:v12];
      [v6 addObject:v13];
    }
  }

  return v6;
}

- (BOOL)iconView:(id)a3 shouldActivateApplicationShortcutItem:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a3;
  LOBYTE(a5) = [(SearchUIHomeScreenAppIconViewContextMenuController *)self shouldActivateApplicationShortcutItem:a4 atIndex:a5 forIconView:v8];
  v9 = [v8 icon];

  LOBYTE(self) = [(SearchUIHomeScreenAppIconViewContextMenuController *)self isTimedOutForIcon:v9];
  return a5 & (self ^ 1);
}

- (BOOL)shouldActivateApplicationShortcutItem:(id)a3 atIndex:(unint64_t)a4 forIconView:(id)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [a3 type];
  v8 = [v7 isEqualToString:@"com.apple.SearchUI.application-shortcut-item.never-show-suggestion"];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v22 = @"SearchUIHomeScreenAppIconViewBundleIdUserInfoKey";
    v10 = [v6 rowModel];
    v11 = [v10 applicationBundleIdentifier];
    v23[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    [v9 postNotificationName:@"SearchUIHomeScreenAppIconViewDidHideIconNotification" object:0 userInfo:v12];

    v13 = objc_opt_new();
    [v13 setCategory:6];
    v14 = [v6 rowModel];
    v15 = [v14 identifyingResult];
    v16 = [v15 identifier];
    [v13 setProactiveIdentifier:v16];

    v17 = [v6 feedbackDelegate];
    v18 = [SearchUIUtilities environmentForDelegate:v17];

    v19 = [v6 rowModel];
    v20 = [SearchUICommandHandler handlerForCommand:v13 rowModel:v19 button:0 sectionModel:0 environment:v18];

    [v20 executeWithTriggerEvent:17];
  }

  return v8 ^ 1;
}

- (BOOL)isTimedOutForIcon:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[SearchUIScreenTimeManager sharedInstance];
    v5 = [v3 applicationBundleID];
    v6 = [v4 getCachedObjectIfAvailableForKey:v5];

    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end