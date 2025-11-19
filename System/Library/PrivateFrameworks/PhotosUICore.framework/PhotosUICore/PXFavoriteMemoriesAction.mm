@interface PXFavoriteMemoriesAction
+ (BOOL)toggledValueForMemories:(id)a3;
+ (id)menuTitleForMemories:(id)a3;
- (PXFavoriteMemoriesAction)initWithMemories:(id)a3;
- (PXFavoriteMemoriesAction)initWithMemories:(id)a3 favorite:(BOOL)a4;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXFavoriteMemoriesAction

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXFavoriteMemoriesAction *)self isFavorite];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PXFavoriteMemoriesAction_performUndo___block_invoke;
  v6[3] = &__block_descriptor_33_e44_v24__0__PHMemoryChangeRequest_8__NSString_16l;
  v7 = !v5;
  [(PXMemoriesAction *)self performMemoryChanges:v6 completionHandler:v4];
}

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = [(PXFavoriteMemoriesAction *)self isFavorite];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__PXFavoriteMemoriesAction_performAction___block_invoke;
  v6[3] = &unk_1E772E2E0;
  v7 = v5;
  v6[4] = self;
  [(PXMemoriesAction *)self performMemoryChanges:v6 completionHandler:v4];
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

- (PXFavoriteMemoriesAction)initWithMemories:(id)a3
{
  v4 = a3;
  v5 = -[PXFavoriteMemoriesAction initWithMemories:favorite:](self, "initWithMemories:favorite:", v4, [objc_opt_class() toggledValueForMemories:v4]);

  return v5;
}

- (PXFavoriteMemoriesAction)initWithMemories:(id)a3 favorite:(BOOL)a4
{
  v4 = a4;
  v12.receiver = self;
  v12.super_class = PXFavoriteMemoriesAction;
  v5 = [(PXMemoriesAction *)&v12 initWithMemories:a3];
  v6 = v5;
  if (v5)
  {
    v5->_favorite = v4;
    if (v4)
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

+ (id)menuTitleForMemories:(id)a3
{
  if ([a1 toggledValueForMemories:a3])
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

+ (BOOL)toggledValueForMemories:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    PXExists();
  }

  return 1;
}

@end