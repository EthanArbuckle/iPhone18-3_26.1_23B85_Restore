@interface SearchUIHomeScreenAppIconViewContextMenuController
+ (id)sharedInstance;
- (BOOL)contextMenuManager:(id)manager shouldBeginContextMenuPresentationForIconView:(id)view;
- (BOOL)iconView:(id)view shouldActivateApplicationShortcutItem:(id)item atIndex:(unint64_t)index;
- (BOOL)isTimedOutForIcon:(id)icon;
- (BOOL)shouldActivateApplicationShortcutItem:(id)item atIndex:(unint64_t)index forIconView:(id)view;
- (SearchUIHomeScreenAppIconViewContextMenuController)init;
- (id)iconView:(id)view applicationShortcutItemsWithProposedItems:(id)items;
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

- (BOOL)contextMenuManager:(id)manager shouldBeginContextMenuPresentationForIconView:(id)view
{
  viewCopy = view;
  v5 = [SearchUIUtilities deviceIsAuthenticatedForView:viewCopy];
  if (v5)
  {
    [viewCopy didEngageWithTriggerEvent:5 destination:1];
  }

  return v5;
}

- (id)iconView:(id)view applicationShortcutItemsWithProposedItems:(id)items
{
  viewCopy = view;
  v6 = [items mutableCopy];
  rowModel = [viewCopy rowModel];
  identifyingResult = [rowModel identifyingResult];

  if ([identifyingResult type] == 22)
  {
    [viewCopy isInSuggestionContext];
  }

  else
  {
    type = [identifyingResult type];
    if ([viewCopy isInSuggestionContext] && type != 24)
    {
      v10 = objc_opt_class();
      title = [identifyingResult title];
      text = [title text];
      v13 = [v10 neverSuggestAppShortcutItemWithLocalizedName:text];
      [v6 addObject:v13];
    }
  }

  return v6;
}

- (BOOL)iconView:(id)view shouldActivateApplicationShortcutItem:(id)item atIndex:(unint64_t)index
{
  viewCopy = view;
  LOBYTE(index) = [(SearchUIHomeScreenAppIconViewContextMenuController *)self shouldActivateApplicationShortcutItem:item atIndex:index forIconView:viewCopy];
  icon = [viewCopy icon];

  LOBYTE(self) = [(SearchUIHomeScreenAppIconViewContextMenuController *)self isTimedOutForIcon:icon];
  return index & (self ^ 1);
}

- (BOOL)shouldActivateApplicationShortcutItem:(id)item atIndex:(unint64_t)index forIconView:(id)view
{
  v23[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  type = [item type];
  v8 = [type isEqualToString:@"com.apple.SearchUI.application-shortcut-item.never-show-suggestion"];

  if (v8)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v22 = @"SearchUIHomeScreenAppIconViewBundleIdUserInfoKey";
    rowModel = [viewCopy rowModel];
    applicationBundleIdentifier = [rowModel applicationBundleIdentifier];
    v23[0] = applicationBundleIdentifier;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    [defaultCenter postNotificationName:@"SearchUIHomeScreenAppIconViewDidHideIconNotification" object:0 userInfo:v12];

    v13 = objc_opt_new();
    [v13 setCategory:6];
    rowModel2 = [viewCopy rowModel];
    identifyingResult = [rowModel2 identifyingResult];
    identifier = [identifyingResult identifier];
    [v13 setProactiveIdentifier:identifier];

    feedbackDelegate = [viewCopy feedbackDelegate];
    v18 = [SearchUIUtilities environmentForDelegate:feedbackDelegate];

    rowModel3 = [viewCopy rowModel];
    v20 = [SearchUICommandHandler handlerForCommand:v13 rowModel:rowModel3 button:0 sectionModel:0 environment:v18];

    [v20 executeWithTriggerEvent:17];
  }

  return v8 ^ 1;
}

- (BOOL)isTimedOutForIcon:(id)icon
{
  iconCopy = icon;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[SearchUIScreenTimeManager sharedInstance];
    applicationBundleID = [iconCopy applicationBundleID];
    v6 = [v4 getCachedObjectIfAvailableForKey:applicationBundleID];

    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

@end