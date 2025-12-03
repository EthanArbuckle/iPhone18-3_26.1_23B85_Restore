@interface SearchUISportsFollowButtonItem
- (SearchUISportsFollowButtonItem)initWithSFButtonItem:(id)item;
- (id)commandForStatus:(unint64_t)status;
- (void)updateButtonStateIsFollowing:(BOOL)following didSucceed:(BOOL)succeed completionHandler:(id)handler;
- (void)updateStateIfNeededWithCompletionHandler:(id)handler;
@end

@implementation SearchUISportsFollowButtonItem

- (SearchUISportsFollowButtonItem)initWithSFButtonItem:(id)item
{
  v7.receiver = self;
  v7.super_class = SearchUISportsFollowButtonItem;
  v3 = [(SearchUIButtonItem *)&v7 initWithSFButtonItem:item];
  if (v3)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = +[_TtC8SearchUI26SearchUISportsKitUtilities sportsFollowStatusDidChangeNotificaitonName];
    [defaultCenter addObserver:v3 selector:sel_updateStateIfNeeded name:v5 object:0];
  }

  return v3;
}

- (void)updateStateIfNeededWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  sfButtonItem = [(SearchUIButtonItem *)self sfButtonItem];
  sportsItem = [sfButtonItem sportsItem];

  type = [sportsItem type];
  if ((type - 1) > 1)
  {
    if (type != 3)
    {
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_9;
    }

    identifier = [sportsItem identifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__SearchUISportsFollowButtonItem_updateStateIfNeededWithCompletionHandler___block_invoke_4;
    v10[3] = &unk_1E85B2E70;
    v10[4] = self;
    v11 = handlerCopy;
    [_TtC8SearchUI26SearchUISportsKitUtilities checkForSessionWithCanonicalId:identifier completionBlock:v10];

    v8 = v11;
  }

  else
  {
    if (updateStateIfNeededWithCompletionHandler__onceToken != -1)
    {
      [SearchUISportsFollowButtonItem updateStateIfNeededWithCompletionHandler:];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75__SearchUISportsFollowButtonItem_updateStateIfNeededWithCompletionHandler___block_invoke_3;
    v12[3] = &unk_1E85B2E48;
    v12[4] = self;
    v13 = handlerCopy;
    [_TtC8SearchUI19SearchUITVUtilities fetchSportsItemIsFavoritedWithSportsItem:sportsItem completionHandler:v12];
    v8 = v13;
  }

LABEL_9:
}

void __75__SearchUISportsFollowButtonItem_updateStateIfNeededWithCompletionHandler___block_invoke()
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = +[_TtC8SearchUI19SearchUITVUtilities favoritesDidChangeNotificationName];
  v1 = [v2 addObserverForName:v0 object:0 queue:0 usingBlock:&__block_literal_global_14];
}

- (void)updateButtonStateIsFollowing:(BOOL)following didSucceed:(BOOL)succeed completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__SearchUISportsFollowButtonItem_updateButtonStateIsFollowing_didSucceed_completionHandler___block_invoke;
  v10[3] = &unk_1E85B2B20;
  followingCopy = following;
  v10[4] = self;
  v11 = handlerCopy;
  succeedCopy = succeed;
  v9 = handlerCopy;
  [SearchUIUtilities dispatchMainIfNecessary:v10];
}

uint64_t __92__SearchUISportsFollowButtonItem_updateButtonStateIsFollowing_didSucceed_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setStatus:*(a1 + 48)];
  v2 = [*(a1 + 32) delegate];
  [v2 stateDidChangeForButtonItem:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (id)commandForStatus:(unint64_t)status
{
  v5 = objc_opt_new();
  sfButtonItem = [(SearchUIButtonItem *)self sfButtonItem];
  sportsItem = [sfButtonItem sportsItem];
  [v5 setSportsItem:sportsItem];

  [v5 setFollow:status == 0];

  return v5;
}

@end