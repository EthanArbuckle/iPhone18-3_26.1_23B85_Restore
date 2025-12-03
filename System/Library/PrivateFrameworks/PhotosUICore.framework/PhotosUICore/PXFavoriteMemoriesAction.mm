@interface PXFavoriteMemoriesAction
+ (BOOL)toggledValueForMemories:(id)memories;
+ (id)menuTitleForMemories:(id)memories;
- (PXFavoriteMemoriesAction)initWithMemories:(id)memories;
- (PXFavoriteMemoriesAction)initWithMemories:(id)memories favorite:(BOOL)favorite;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXFavoriteMemoriesAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  isFavorite = [(PXFavoriteMemoriesAction *)self isFavorite];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PXFavoriteMemoriesAction_performUndo___block_invoke;
  v6[3] = &__block_descriptor_33_e44_v24__0__PHMemoryChangeRequest_8__NSString_16l;
  v7 = !isFavorite;
  [(PXMemoriesAction *)self performMemoryChanges:v6 completionHandler:undoCopy];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  isFavorite = [(PXFavoriteMemoriesAction *)self isFavorite];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__PXFavoriteMemoriesAction_performAction___block_invoke;
  v6[3] = &unk_1E772E2E0;
  v7 = isFavorite;
  v6[4] = self;
  [(PXMemoriesAction *)self performMemoryChanges:v6 completionHandler:actionCopy];
}

void __42__PXFavoriteMemoriesAction_performAction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 40);
  v6 = a3;
  [a2 setFavorite:v5];
  v7 = MEMORY[0x1E6991F28];
  if (*(a1 + 40))
  {
    v8 = @"com.apple.photos.CPAnalytics.assetCollectionFavorited";
  }

  else
  {
    v8 = @"com.apple.photos.CPAnalytics.assetCollectionUnfavorited";
  }

  v9 = *MEMORY[0x1E6991E10];
  v15[0] = v6;
  v10 = *MEMORY[0x1E6991E20];
  v14[0] = v9;
  v14[1] = v10;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v15[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v7 sendEvent:v8 withPayload:v13];
}

- (PXFavoriteMemoriesAction)initWithMemories:(id)memories
{
  memoriesCopy = memories;
  v5 = -[PXFavoriteMemoriesAction initWithMemories:favorite:](self, "initWithMemories:favorite:", memoriesCopy, [objc_opt_class() toggledValueForMemories:memoriesCopy]);

  return v5;
}

- (PXFavoriteMemoriesAction)initWithMemories:(id)memories favorite:(BOOL)favorite
{
  favoriteCopy = favorite;
  v12.receiver = self;
  v12.super_class = PXFavoriteMemoriesAction;
  v5 = [(PXMemoriesAction *)&v12 initWithMemories:memories];
  v6 = v5;
  if (v5)
  {
    v5->_favorite = favoriteCopy;
    if (favoriteCopy)
    {
      v7 = @"heart";
    }

    else
    {
      v7 = @"heart.slash";
    }

    objc_storeStrong(&v5->_actionSystemImageName, v7);
    if (v6->_favorite)
    {
      v8 = @"PXMemoriesFeedMultiFavoriteActionTitle";
    }

    else
    {
      v8 = @"PXMemoriesFeedMultiUnfavoriteActionTitle";
    }

    v9 = PXLocalizedStringFromTable(v8, @"PhotosUICore");
    localizedActionName = v6->_localizedActionName;
    v6->_localizedActionName = v9;
  }

  return v6;
}

+ (id)menuTitleForMemories:(id)memories
{
  if ([self toggledValueForMemories:memories])
  {
    v3 = @"PXMemoriesFeedFavoriteMenuActionTitle";
  }

  else
  {
    v3 = @"PXMemoriesFeedUnfavoriteMenuActionTitle";
  }

  v4 = PXLocalizedStringFromTable(v3, @"PhotosUICore");

  return v4;
}

+ (BOOL)toggledValueForMemories:(id)memories
{
  memoriesCopy = memories;
  if ([memoriesCopy count])
  {
    PXExists();
  }

  return 1;
}

@end