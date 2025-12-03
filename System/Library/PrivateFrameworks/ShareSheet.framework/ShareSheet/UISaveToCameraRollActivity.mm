@interface UISaveToCameraRollActivity
+ (unint64_t)_xpcAttributes;
- (BOOL)_canSaveImages;
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)_activityImage;
- (id)_systemImageName;
- (id)activityTitle;
- (void)_prepareWithActivityItems:(id)items completion:(id)completion;
- (void)_startSavingItems:(id)items;
@end

@implementation UISaveToCameraRollActivity

+ (unint64_t)_xpcAttributes
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (id)activityTitle
{
  imageCount = self->_imageCount;
  videoCount = self->_videoCount;
  v4 = videoCount + imageCount;
  livePhotoCount = self->_livePhotoCount;
  if (videoCount + imageCount < 2)
  {
    if (videoCount == 1)
    {
      v11 = _ShareSheetBundle();
      v8 = v11;
      v12 = @"Save Video[Activity]";
      v13 = @"Save Video";
    }

    else
    {
      v11 = _ShareSheetBundle();
      v8 = v11;
      if (livePhotoCount == 1)
      {
        v12 = @"Save Live Photo[Activity]";
        v13 = @"Save Live Photo";
      }

      else
      {
        v12 = @"Save Image[Activity]";
        v13 = @"Save Image";
      }
    }

    v23 = [v11 localizedStringForKey:v12 value:v13 table:@"Localizable"];
    goto LABEL_17;
  }

  if (imageCount - livePhotoCount == v4)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = _ShareSheetBundle();
    v8 = v7;
    v9 = @"Save %@ Images[Activity]";
    v10 = @"Save %@ Images";
LABEL_12:
    v19 = [v7 localizedStringForKey:v9 value:v10 table:@"Localizable"];
    v20 = MEMORY[0x1E696ADA0];
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
    v22 = [v20 localizedStringFromNumber:v21 numberStyle:0];
    v23 = [v6 stringWithFormat:v19, v22];

    goto LABEL_17;
  }

  if (livePhotoCount == v4)
  {
    v6 = MEMORY[0x1E696AEC0];
    v8 = _ShareSheetBundle();
    v15 = [v8 localizedStringForKey:@"Save %@ Live Photos[Activity]" value:@"Save %@ Live Photos" table:@"Localizable"];
    v16 = MEMORY[0x1E696ADA0];
    v17 = MEMORY[0x1E696AD98];
    v18 = self->_livePhotoCount;
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = _ShareSheetBundle();
    v8 = v7;
    if (imageCount)
    {
      v9 = @"Save %@ Items[Activity]";
      v10 = @"Save %@ Items";
      goto LABEL_12;
    }

    v15 = [v7 localizedStringForKey:@"Save %@ Videos[Activity]" value:@"Save %@ Videos" table:@"Localizable"];
    v16 = MEMORY[0x1E696ADA0];
    v17 = MEMORY[0x1E696AD98];
    v18 = self->_videoCount;
  }

  v24 = [v17 numberWithInteger:v18];
  v25 = [v16 localizedStringFromNumber:v24 numberStyle:0];
  v23 = [v6 stringWithFormat:v15, v25];

LABEL_17:

  return v23;
}

- (id)_activityImage
{
  if (self->_videoCount + self->_imageCount < 2)
  {
    if (_activityImage_onceToken_58 != -1)
    {
      [UISaveToCameraRollActivity _activityImage];
    }

    v2 = &_activityImage___image_57;
  }

  else
  {
    if (_activityImage_onceToken_0 != -1)
    {
      [UISaveToCameraRollActivity _activityImage];
    }

    v2 = &_activityImage___image_0;
  }

  v3 = *v2;

  return v3;
}

void __44__UISaveToCameraRollActivity__activityImage__block_invoke()
{
  v13[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69DD1B8];
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  v2 = [v1 traitCollection];
  v13[0] = v2;
  v3 = MEMORY[0x1E69DD1B8];
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v3 traitCollectionWithUserInterfaceIdiom:{objc_msgSend(v4, "userInterfaceIdiom")}];
  v13[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v7 = [v0 traitCollectionWithTraitsFromCollections:v6];

  v8 = MEMORY[0x1E69DCAB8];
  v9 = [MEMORY[0x1E696AAE8] mainBundle];
  v10 = [v8 imageNamed:@"UIActivitySaveMultiple.png" inBundle:v9 compatibleWithTraitCollection:v7];
  v11 = [UIActivity _activityImageForActionRepresentationImage:v10];
  v12 = _activityImage___image_0;
  _activityImage___image_0 = v11;
}

void __44__UISaveToCameraRollActivity__activityImage__block_invoke_2()
{
  v13[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69DD1B8];
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  v2 = [v1 traitCollection];
  v13[0] = v2;
  v3 = MEMORY[0x1E69DD1B8];
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v3 traitCollectionWithUserInterfaceIdiom:{objc_msgSend(v4, "userInterfaceIdiom")}];
  v13[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v7 = [v0 traitCollectionWithTraitsFromCollections:v6];

  v8 = MEMORY[0x1E69DCAB8];
  v9 = [MEMORY[0x1E696AAE8] mainBundle];
  v10 = [v8 imageNamed:@"UIActivitySaveSingle.png" inBundle:v9 compatibleWithTraitCollection:v7];
  v11 = [UIActivity _activityImageForActionRepresentationImage:v10];
  v12 = _activityImage___image_57;
  _activityImage___image_57 = v11;
}

- (id)_systemImageName
{
  if (self->_videoCount + self->_imageCount <= 1)
  {
    return @"square.and.arrow.down";
  }

  else
  {
    return @"square.and.arrow.down.on.square";
  }
}

- (BOOL)_canSaveImages
{
  v2 = 1;
  v3 = [(objc_class *)getPHPhotoLibraryClass() authorizationStatusForAccessLevel:1];
  if ((v3 - 1) < 2)
  {
    return 0;
  }

  if (!v3)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [mainBundle objectForInfoDictionaryKey:@"NSPhotoLibraryAddUsageDescription"];

    v6 = [mainBundle objectForInfoDictionaryKey:@"NSPhotoLibraryUsageDescription"];
    v7 = v5 | v6;

    v2 = v7 != 0;
  }

  return v2;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v17 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  self->_imageCount = 0;
  self->_livePhotoCount = 0;
  self->_videoCount = 0;
  if ((_UIActivityItemTypes() & 0x42) != 0)
  {
    self->_imageCount = _UIActivityItemCountOfType(itemsCopy, 2);
    self->_videoCount = _UIActivityItemCountOfType(itemsCopy, 64);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = itemsCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (_UIActivityItemIsLivePhoto(*(*(&v12 + 1) + 8 * i)))
          {
            ++self->_livePhotoCount;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    self->_imageCount = 0;
    self->_videoCount = 0;
  }

  v10 = (self->_imageCount > 0 || self->_videoCount >= 1) && [(UISaveToCameraRollActivity *)self _canSaveImages];

  return v10;
}

- (void)_startSavingItems:(id)items
{
  itemsCopy = items;
  objc_initWeak(&location, self);
  v5 = [_UISaveToCameraRollSaveItemsController alloc];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __48__UISaveToCameraRollActivity__startSavingItems___block_invoke;
  v11 = &unk_1E71FAF08;
  objc_copyWeak(&v12, &location);
  v6 = [(_UISaveToCameraRollSaveItemsController *)v5 initWithItems:itemsCopy saveCompletionBlock:&v8];
  saveController = self->_saveController;
  self->_saveController = v6;

  [(_UISaveToCameraRollSaveItemsController *)self->_saveController beginSaving:v8];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __48__UISaveToCameraRollActivity__startSavingItems___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained activityDidFinish:a2 items:0 error:v5];
}

- (void)_prepareWithActivityItems:(id)items completion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__UISaveToCameraRollActivity__prepareWithActivityItems_completion___block_invoke;
  v9[3] = &unk_1E71F9A70;
  objc_copyWeak(&v11, &location);
  v8 = completionCopy;
  v10 = v8;
  [(UIActivity *)self _loadItemProvidersFromActivityItems:itemsCopy completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __67__UISaveToCameraRollActivity__prepareWithActivityItems_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);
  v6 = dispatch_queue_create("com.apple.ShareSheet.UISaveToCameraRollActivity", v5);

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__UISaveToCameraRollActivity__prepareWithActivityItems_completion___block_invoke_2;
  block[3] = &unk_1E71FAF30;
  v9 = v3;
  v7 = v3;
  objc_copyWeak(&v11, (a1 + 40));
  v10 = *(a1 + 32);
  dispatch_async(v6, block);

  objc_destroyWeak(&v11);
}

void __67__UISaveToCameraRollActivity__prepareWithActivityItems_completion___block_invoke_2(void **a1)
{
  v2 = _UIActivityItemsGetImagesAndVideos(a1[4]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__UISaveToCameraRollActivity__prepareWithActivityItems_completion___block_invoke_3;
  block[3] = &unk_1E71F9CD0;
  objc_copyWeak(&v7, a1 + 6);
  v5 = v2;
  v6 = a1[5];
  v3 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v7);
}

uint64_t __67__UISaveToCameraRollActivity__prepareWithActivityItems_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _startSavingItems:*(a1 + 32)];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

@end