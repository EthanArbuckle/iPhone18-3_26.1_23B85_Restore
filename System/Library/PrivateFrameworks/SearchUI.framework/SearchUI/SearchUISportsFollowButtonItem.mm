@interface SearchUISportsFollowButtonItem
- (SearchUISportsFollowButtonItem)initWithSFButtonItem:(id)a3;
- (id)commandForStatus:(unint64_t)a3;
- (void)updateButtonStateIsFollowing:(BOOL)a3 didSucceed:(BOOL)a4 completionHandler:(id)a5;
- (void)updateStateIfNeededWithCompletionHandler:(id)a3;
@end

@implementation SearchUISportsFollowButtonItem

- (SearchUISportsFollowButtonItem)initWithSFButtonItem:(id)a3
{
  v7.receiver = self;
  v7.super_class = SearchUISportsFollowButtonItem;
  v3 = [(SearchUIButtonItem *)&v7 initWithSFButtonItem:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = +[_TtC8SearchUI26SearchUISportsKitUtilities sportsFollowStatusDidChangeNotificaitonName];
    [v4 addObserver:v3 selector:sel_updateStateIfNeeded name:v5 object:0];
  }

  return v3;
}

- (void)updateStateIfNeededWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIButtonItem *)self sfButtonItem];
  v6 = [v5 sportsItem];

  v7 = [v6 type];
  if ((v7 - 1) > 1)
  {
    if (v7 != 3)
    {
      v4[2](v4, 0);
      goto LABEL_9;
    }

    v9 = [v6 identifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__SearchUISportsFollowButtonItem_updateStateIfNeededWithCompletionHandler___block_invoke_4;
    v10[3] = &unk_1E85B2E70;
    v10[4] = self;
    v11 = v4;
    [_TtC8SearchUI26SearchUISportsKitUtilities checkForSessionWithCanonicalId:v9 completionBlock:v10];

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
    v13 = v4;
    [_TtC8SearchUI19SearchUITVUtilities fetchSportsItemIsFavoritedWithSportsItem:v6 completionHandler:v12];
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

- (void)updateButtonStateIsFollowing:(BOOL)a3 didSucceed:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __92__SearchUISportsFollowButtonItem_updateButtonStateIsFollowing_didSucceed_completionHandler___block_invoke;
  v10[3] = &unk_1E85B2B20;
  v12 = a3;
  v10[4] = self;
  v11 = v8;
  v13 = a4;
  v9 = v8;
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

- (id)commandForStatus:(unint64_t)a3
{
  v5 = objc_opt_new();
  v6 = [(SearchUIButtonItem *)self sfButtonItem];
  v7 = [v6 sportsItem];
  [v5 setSportsItem:v7];

  [v5 setFollow:a3 == 0];

  return v5;
}

@end