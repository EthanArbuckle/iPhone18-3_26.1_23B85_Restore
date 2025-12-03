@interface UIActivity
+ (double)imageWidthForContentSizeCategory:(id)category;
+ (id)_actionImageForActionRepresentationImage:(id)image contentSizeCategory:(id)category monochrome:(BOOL)monochrome;
+ (id)_actionImageForBundleImageConfiguration:(id)configuration;
+ (id)_activityImageForActionRepresentationImage:(id)image;
+ (id)_activityImageForBundleImageConfiguration:(id)configuration;
+ (id)_activitySettingsImageForBundleImageConfiguration:(id)configuration;
+ (id)_defaultFallbackActivityType;
+ (id)_imageByApplyingDefaultEffectsToImage:(id)image activityCategory:(int64_t)category iconFormat:(int)format;
+ (id)_stringFromActivityCategory:(int64_t)category;
+ (id)preparedActivityExtensionItemDataForActivityItemValues:(id)values extensionItemDataRequest:(id)request;
+ (unint64_t)_xpcAttributes;
+ (void)_loadItemProvidersFromActivityItems:(id)items withCacheURL:(id)l completion:(id)completion;
+ (void)_performAfterActivityImageLoadingCompletes:(id)completes;
- (BOOL)_isBuiltinDerived;
- (CGSize)_thumbnailSize;
- (NSString)description;
- (UIActivity)init;
- (_UIActivityResourceLoader)_activityImageLoader;
- (_UIActivityResourceLoader)_activitySettingsImageLoader;
- (id)_actionImage;
- (id)_activityImage;
- (id)_activitySettingsImage;
- (id)_activityTypeUsingFallbackActivityTypeIfNecessary;
- (id)_attachmentNameForActivityItem:(id)item;
- (id)_dataTypeIdentifierForActivityItem:(id)item;
- (id)_subjectForActivityItem:(id)item;
- (id)_thumbnailImageForActivityItem:(id)item;
- (int64_t)_defaultSortGroup;
- (void)_loadItemProvidersFromActivityItems:(id)items wantsSendCopyRepresentation:(BOOL)representation completion:(id)completion;
- (void)_prepareWithActivityItems:(id)items completion:(id)completion;
- (void)activityDidFinish:(BOOL)completed;
- (void)activityDidFinish:(BOOL)finish items:(id)items error:(id)error;
@end

@implementation UIActivity

- (UIActivity)init
{
  v6.receiver = self;
  v6.super_class = UIActivity;
  v2 = [(UIActivity *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    activityUUID = v2->_activityUUID;
    v2->_activityUUID = uUID;

    v2->_indexInApplicationDefinedActivities = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

+ (id)_defaultFallbackActivityType
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [bundleIdentifier stringByAppendingString:@"."];
  v7 = [v6 stringByAppendingString:v5];

  return v7;
}

- (CGSize)_thumbnailSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (int64_t)_defaultSortGroup
{
  if ([objc_opt_class() _xpcAttributes])
  {
    return 2;
  }

  if ([(UIActivity *)self indexInApplicationDefinedActivities]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 7;
  }

  return 3;
}

- (NSString)description
{
  if (self->_isInsideDescription)
  {
    v3 = MEMORY[0x1E696AEC0];
    v12.receiver = self;
    v12.super_class = UIActivity;
    v4 = [(UIActivity *)&v12 description];
    v5 = [v3 stringWithFormat:@"%@ UIActivity-recursiveDescription>", v4];
  }

  else
  {
    self->_isInsideDescription = 1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_opt_class();
      NSStringFromClass(v6);
    }

    else
    {
      [(UIActivity *)self activityTitle];
    }
    v4 = ;
    v7 = MEMORY[0x1E696AEC0];
    v11.receiver = self;
    v11.super_class = UIActivity;
    v8 = [(UIActivity *)&v11 description];
    activityType = [(UIActivity *)self activityType];
    v5 = [v7 stringWithFormat:@"%@ activityType:%@ activityTitle:%@", v8, activityType, v4];
  }

  self->_isInsideDescription = 0;

  return v5;
}

- (void)activityDidFinish:(BOOL)completed
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__UIActivity_activityDidFinish___block_invoke;
  v3[3] = &unk_1E71F9908;
  v3[4] = self;
  v4 = completed;
  sh_dispatch_on_main_queue(v3);
}

- (BOOL)_isBuiltinDerived
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [_UIActivityHelper builtinActivityClasses:0];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_opt_isKindOfClass())
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

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

- (id)_activityTypeUsingFallbackActivityTypeIfNecessary
{
  activityType = [(UIActivity *)self activityType];
  if ([activityType length])
  {
    _defaultFallbackActivityType = activityType;
  }

  else
  {
    _defaultFallbackActivityType = [objc_opt_class() _defaultFallbackActivityType];
  }

  v4 = _defaultFallbackActivityType;

  return v4;
}

- (id)_subjectForActivityItem:(id)item
{
  itemCopy = item;
  activityType = [(UIActivity *)self activityType];
  v6 = [_UIActivityItemMapping _subjectForActivityItem:itemCopy activityType:activityType];

  return v6;
}

- (id)_dataTypeIdentifierForActivityItem:(id)item
{
  itemCopy = item;
  activityType = [(UIActivity *)self activityType];
  v6 = [_UIActivityItemMapping _dataTypeIdentifierForActivityItem:itemCopy activityType:activityType];

  return v6;
}

- (id)_thumbnailImageForActivityItem:(id)item
{
  itemCopy = item;
  [(UIActivity *)self _thumbnailSize];
  v6 = v5;
  v8 = v7;
  activityType = [(UIActivity *)self activityType];
  v10 = [_UIActivityItemMapping _thumbnailImageForActivityItem:itemCopy thumbnailSize:activityType activityType:v6, v8];

  return v10;
}

- (id)_attachmentNameForActivityItem:(id)item
{
  itemCopy = item;
  activityType = [(UIActivity *)self activityType];
  v6 = [_UIActivityItemMapping _attachmentNameForActivityItem:itemCopy activityType:activityType];

  return v6;
}

- (void)activityDidFinish:(BOOL)finish items:(id)items error:(id)error
{
  finishCopy = finish;
  v21 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  errorCopy = error;
  v10 = share_sheet_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    v15 = 138412802;
    if (finishCopy)
    {
      v11 = @"YES";
    }

    v16 = v11;
    v17 = 2112;
    v18 = itemsCopy;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&dword_18B359000, v10, OS_LOG_TYPE_DEFAULT, "Called activityDidFinish:%@ items:%@ error:%@", &v15, 0x20u);
  }

  if (self->_representationCacheURL)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:self->_representationCacheURL error:0];
  }

  v13 = MEMORY[0x18CFF58E0](self->_didFinishPerformingActivityHandler);
  didFinishPerformingActivityHandler = self->_didFinishPerformingActivityHandler;
  self->_didFinishPerformingActivityHandler = 0;

  if (v13)
  {
    (v13)[2](v13, finishCopy, itemsCopy, errorCopy);
  }
}

+ (void)_performAfterActivityImageLoadingCompletes:(id)completes
{
  completesCopy = completes;
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B359000, v4, OS_LOG_TYPE_DEFAULT, "Waiting on image loading queue", buf, 2u);
  }

  v5 = imageLoadingQueue();
  dispatch_sync(v5, &__block_literal_global_8);

  v6 = share_sheet_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_18B359000, v6, OS_LOG_TYPE_DEFAULT, "Finished waiting on image loading queue", v7, 2u);
  }

  dispatch_async(MEMORY[0x1E69E96A0], completesCopy);
}

+ (double)imageWidthForContentSizeCategory:(id)category
{
  categoryCopy = category;
  v4 = categoryCopy;
  if (*MEMORY[0x1E69DDC70] == categoryCopy)
  {
    v6 = 0x4040000000000000;
LABEL_12:
    v5 = *&v6;
    goto LABEL_16;
  }

  if (*MEMORY[0x1E69DDC68] == categoryCopy)
  {
    v5 = 26.0;
    goto LABEL_16;
  }

  if (*MEMORY[0x1E69DDC88] == categoryCopy)
  {
    v5 = 28.0;
    goto LABEL_16;
  }

  if (*MEMORY[0x1E69DDC78] == categoryCopy)
  {
    v5 = 30.0;
    goto LABEL_16;
  }

  if (*MEMORY[0x1E69DDC60] == categoryCopy)
  {
    v6 = 0x4041000000000000;
    goto LABEL_12;
  }

  if (*MEMORY[0x1E69DDC58] == categoryCopy)
  {
    v6 = 0x4042000000000000;
    goto LABEL_12;
  }

  if (*MEMORY[0x1E69DDC50] == categoryCopy)
  {
    v6 = 0x4043000000000000;
    goto LABEL_12;
  }

  if (UIContentSizeCategoryIsAccessibilityCategory(categoryCopy))
  {
    v5 = 46.0;
  }

  else
  {
    v5 = 32.0;
  }

LABEL_16:

  return v5;
}

- (void)_loadItemProvidersFromActivityItems:(id)items wantsSendCopyRepresentation:(BOOL)representation completion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v11 = _itemLoaderQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__UIActivity__loadItemProvidersFromActivityItems_wantsSendCopyRepresentation_completion___block_invoke;
  block[3] = &unk_1E71F99A8;
  v16 = itemsCopy;
  selfCopy = self;
  representationCopy = representation;
  v18 = v10;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = v10;
  v14 = itemsCopy;
  dispatch_async(v11, block);
}

void __89__UIActivity__loadItemProvidersFromActivityItems_wantsSendCopyRepresentation_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = v2[5];
  v5 = *(a1 + 64);
  v6 = [v2 activityType];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__UIActivity__loadItemProvidersFromActivityItems_wantsSendCopyRepresentation_completion___block_invoke_2;
  v13[3] = &unk_1E71F9930;
  v14 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__UIActivity__loadItemProvidersFromActivityItems_wantsSendCopyRepresentation_completion___block_invoke_3;
  v9[3] = &unk_1E71F9980;
  v8 = *(a1 + 32);
  v7 = v8.i64[0];
  v10 = vextq_s8(v8, v8, 8uLL);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  _loadItemProvidersFromActivityItemsStartingAtIndex(v3, 0, v4, v5, v6, v13, v9);
}

void __89__UIActivity__loadItemProvidersFromActivityItems_wantsSendCopyRepresentation_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _itemLoaderQueue();
  dispatch_assert_queue_V2(v7);

  v8 = objc_opt_new();
  [v8 setOriginalItem:v6];

  [v8 setResolvedItem:v5];
  [*(a1 + 32) addObject:v8];
}

void __89__UIActivity__loadItemProvidersFromActivityItems_wantsSendCopyRepresentation_completion___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 40), a2);
  v4 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__UIActivity__loadItemProvidersFromActivityItems_wantsSendCopyRepresentation_completion___block_invoke_4;
  block[3] = &unk_1E71F9958;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __89__UIActivity__loadItemProvidersFromActivityItems_wantsSendCopyRepresentation_completion___block_invoke_4(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 originalItem];
        v10 = [v8 resolvedItem];
        _updateActivityItemMappingWithResolvedActivityItem(v9, v10);

        v11 = [v8 resolvedItem];
        [v2 addObject:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *(a1 + 48);
  v13 = [v2 copy];
  (*(v12 + 16))(v12, v13);
}

+ (void)_loadItemProvidersFromActivityItems:(id)items withCacheURL:(id)l completion:(id)completion
{
  itemsCopy = items;
  lCopy = l;
  completionCopy = completion;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v11 = _itemLoaderQueue();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__UIActivity__loadItemProvidersFromActivityItems_withCacheURL_completion___block_invoke;
  v16[3] = &unk_1E71F9A20;
  v17 = itemsCopy;
  v18 = lCopy;
  v19 = v10;
  v20 = completionCopy;
  v12 = completionCopy;
  v13 = v10;
  v14 = lCopy;
  v15 = itemsCopy;
  dispatch_async(v11, v16);
}

void __74__UIActivity__loadItemProvidersFromActivityItems_withCacheURL_completion___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__UIActivity__loadItemProvidersFromActivityItems_withCacheURL_completion___block_invoke_2;
  v8[3] = &unk_1E71F9930;
  v9 = *(a1 + 48);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__UIActivity__loadItemProvidersFromActivityItems_withCacheURL_completion___block_invoke_3;
  v4[3] = &unk_1E71F99F8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  _loadItemProvidersFromActivityItemsStartingAtIndex(v3, 0, v2, 1, 0, v8, v4);
}

void __74__UIActivity__loadItemProvidersFromActivityItems_withCacheURL_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _itemLoaderQueue();
  dispatch_assert_queue_V2(v7);

  v8 = objc_opt_new();
  [v8 setOriginalItem:v6];

  [v8 setResolvedItem:v5];
  [*(a1 + 32) addObject:v8];
}

void __74__UIActivity__loadItemProvidersFromActivityItems_withCacheURL_completion___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__UIActivity__loadItemProvidersFromActivityItems_withCacheURL_completion___block_invoke_4;
  v6[3] = &unk_1E71F99D0;
  v7 = a1[4];
  v8 = a1[5];
  v4 = a1[6];
  v9 = v3;
  v10 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __74__UIActivity__loadItemProvidersFromActivityItems_withCacheURL_completion___block_invoke_4(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 originalItem];
        v10 = [v8 resolvedItem];
        _updateActivityItemMappingWithResolvedActivityItem(v9, v10);

        v11 = [v8 resolvedItem];
        [v2 addObject:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *(a1 + 56);
  v13 = [v2 copy];
  (*(v12 + 16))(v12, v13, *(a1 + 48));
}

+ (id)_stringFromActivityCategory:(int64_t)category
{
  v3 = @"Unknown";
  if (!category)
  {
    v3 = @"UIActivityCategoryAction";
  }

  if (category == 1)
  {
    return @"UIActivityCategoryShare";
  }

  else
  {
    return v3;
  }
}

- (_UIActivityResourceLoader)_activityImageLoader
{
  activityImageLoader = self->_activityImageLoader;
  if (!activityImageLoader)
  {
    objc_initWeak(&location, self);
    v4 = [_UIActivityResourceLoader alloc];
    v5 = imageLoadingQueue();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __34__UIActivity__activityImageLoader__block_invoke;
    v9[3] = &unk_1E71F9A48;
    objc_copyWeak(&v10, &location);
    v6 = [(_UIActivityResourceLoader *)v4 initWithQueue:v5 loadBlock:v9];
    v7 = self->_activityImageLoader;
    self->_activityImageLoader = v6;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    activityImageLoader = self->_activityImageLoader;
  }

  return activityImageLoader;
}

id __34__UIActivity__activityImageLoader__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _activityImage];

  return v2;
}

- (_UIActivityResourceLoader)_activitySettingsImageLoader
{
  activitySettingsImageLoader = self->_activitySettingsImageLoader;
  if (!activitySettingsImageLoader)
  {
    objc_initWeak(&location, self);
    v4 = [_UIActivityResourceLoader alloc];
    v5 = imageLoadingQueue();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__UIActivity__activitySettingsImageLoader__block_invoke;
    v9[3] = &unk_1E71F9A48;
    objc_copyWeak(&v10, &location);
    v6 = [(_UIActivityResourceLoader *)v4 initWithQueue:v5 loadBlock:v9];
    v7 = self->_activitySettingsImageLoader;
    self->_activitySettingsImageLoader = v6;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    activitySettingsImageLoader = self->_activitySettingsImageLoader;
  }

  return activitySettingsImageLoader;
}

id __42__UIActivity__activitySettingsImageLoader__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _activitySettingsImage];

  return v2;
}

- (id)_actionImage
{
  _activityBundleImageConfiguration = [(UIActivity *)self _activityBundleImageConfiguration];
  if (_activityBundleImageConfiguration)
  {
    v4 = [UIActivity _actionImageForBundleImageConfiguration:_activityBundleImageConfiguration];
  }

  else
  {
    activityImage = [(UIActivity *)self activityImage];
    contentSizeCategory = [(UIActivity *)self contentSizeCategory];
    v4 = [UIActivity _actionImageForActionRepresentationImage:activityImage contentSizeCategory:contentSizeCategory];
  }

  return v4;
}

+ (id)_actionImageForActionRepresentationImage:(id)image contentSizeCategory:(id)category monochrome:(BOOL)monochrome
{
  imageCopy = image;
  categoryCopy = category;
  if (!imageCopy || (([imageCopy size], v10 == *MEMORY[0x1E695F060]) ? (v11 = v9 == *(MEMORY[0x1E695F060] + 8)) : (v11 = 0), v11))
  {
    v28 = 0;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v14 = v13;

    [UIActivity imageWidthForContentSizeCategory:categoryCopy];
    v16 = v15;
    [imageCopy size];
    UIRectCenteredAboutPointScale();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v32.width = v16;
    v32.height = v16;
    UIGraphicsBeginImageContextWithOptions(v32, 0, v14);
    CurrentContext = UIGraphicsGetCurrentContext();
    v30.b = 0.0;
    v30.c = 0.0;
    v30.a = 1.0;
    *&v30.d = xmmword_18B4339B0;
    v30.ty = v16;
    CGContextConcatCTM(CurrentContext, &v30);
    if (monochrome)
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      CGContextSetFillColorWithColor(CurrentContext, [whiteColor CGColor]);

      v33.origin.x = v18;
      v33.origin.y = v20;
      v33.size.width = v22;
      v33.size.height = v24;
      CGContextFillRect(CurrentContext, v33);
      CGContextSetBlendMode(CurrentContext, kCGBlendModeDestinationIn);
    }

    cGImage = [imageCopy CGImage];
    v34.origin.x = v18;
    v34.origin.y = v20;
    v34.size.width = v22;
    v34.size.height = v24;
    CGContextDrawImage(CurrentContext, v34, cGImage);
    v28 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v28;
}

+ (id)preparedActivityExtensionItemDataForActivityItemValues:(id)values extensionItemDataRequest:(id)request
{
  requestCopy = request;
  valuesCopy = values;
  v8 = objc_alloc_init(UISUIActivityExtensionItemData);
  v9 = [self _activityExtensionItemsForActivityItemValues:valuesCopy extensionItemDataRequest:requestCopy];

  [(UISUIActivityExtensionItemData *)v8 setExtensionItems:v9];

  return v8;
}

+ (id)_actionImageForBundleImageConfiguration:(id)configuration
{
  fetchedImage = [configuration fetchedImage];
  v4 = [UIActivity _actionImageForActionRepresentationImage:fetchedImage contentSizeCategory:0];

  return v4;
}

+ (id)_activityImageForBundleImageConfiguration:(id)configuration
{
  configurationCopy = configuration;
  fetchedImage = [configurationCopy fetchedImage];
  activityCategory = [configurationCopy activityCategory];

  v6 = [UIActivity _imageByApplyingDefaultEffectsToImage:fetchedImage activityCategory:activityCategory iconFormat:10];

  return v6;
}

+ (id)_activitySettingsImageForBundleImageConfiguration:(id)configuration
{
  fetchedImage = [configuration fetchedImage];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v6 = v5;

  v7 = [fetchedImage _applicationIconImageForFormat:0 precomposed:0 scale:v6];

  return v7;
}

+ (id)_imageByApplyingDefaultEffectsToImage:(id)image activityCategory:(int64_t)category iconFormat:(int)format
{
  imageCopy = image;
  v7 = dyld_program_sdk_at_least();
  if (category && (v7 & 1) != 0)
  {
    v8 = imageCopy;
  }

  else
  {
    v8 = [UIActivity _activityImageForActionRepresentationImage:imageCopy];
  }

  v9 = v8;

  return v9;
}

+ (id)_activityImageForActionRepresentationImage:(id)image
{
  imageCopy = image;
  v4 = imageCopy;
  if (_activityImageForActionRepresentationImage__once == -1)
  {
    if (!imageCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    +[UIActivity(UIActivity_Private) _activityImageForActionRepresentationImage:];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  [v4 size];
  if (v6 != *MEMORY[0x1E695F060] || v5 != *(MEMORY[0x1E695F060] + 8))
  {
    [_activityImageForActionRepresentationImage____chickletImage size];
    v9 = v8;
    v11 = v10;
    [_activityImageForActionRepresentationImage____chickletImage scale];
    v13 = v12;
    [v4 size];
    UIRectCenteredAboutPointScale();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v29.width = v9;
    v29.height = v11;
    UIGraphicsBeginImageContextWithOptions(v29, 0, v13);
    CurrentContext = UIGraphicsGetCurrentContext();
    v27.b = 0.0;
    v27.c = 0.0;
    v27.a = 1.0;
    *&v27.d = xmmword_18B4339B0;
    v27.ty = v11;
    CGContextConcatCTM(CurrentContext, &v27);
    [_activityImageForActionRepresentationImage____chickletImage drawAtPoint:17 blendMode:*MEMORY[0x1E695EFF8] alpha:{*(MEMORY[0x1E695EFF8] + 8), 1.0}];
    cGImage = [_activityImageForActionRepresentationImage____chickletImage CGImage];
    v30.origin.x = 0.0;
    v30.origin.y = 0.0;
    v30.size.width = v9;
    v30.size.height = v11;
    CGContextClipToMask(CurrentContext, v30, cGImage);
    cGImage2 = [v4 CGImage];
    v31.origin.x = v15;
    v31.origin.y = v17;
    v31.size.width = v19;
    v31.size.height = v21;
    CGContextClipToMask(CurrentContext, v31, cGImage2);
    [_activityImageForActionRepresentationImage____imageTintColor set];
    v32.origin.x = 0.0;
    v32.origin.y = 0.0;
    v32.size.width = v9;
    v32.size.height = v11;
    UIRectFill(v32);
    v25 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    goto LABEL_10;
  }

LABEL_9:
  v25 = _activityImageForActionRepresentationImage____chickletImage;
LABEL_10:

  return v25;
}

void __77__UIActivity_UIActivity_Private___activityImageForActionRepresentationImage___block_invoke()
{
  v14[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69DD1B8];
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  v2 = [v1 traitCollection];
  v14[0] = v2;
  v3 = MEMORY[0x1E69DD1B8];
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v3 traitCollectionWithUserInterfaceIdiom:{objc_msgSend(v4, "userInterfaceIdiom")}];
  v14[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v7 = [v0 traitCollectionWithTraitsFromCollections:v6];

  v8 = MEMORY[0x1E69DCAB8];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v8 imageNamed:@"UIActivityRoundedCornerButtonBackground" inBundle:v9 compatibleWithTraitCollection:v7];
  v11 = _activityImageForActionRepresentationImage____chickletImage;
  _activityImageForActionRepresentationImage____chickletImage = v10;

  v12 = [MEMORY[0x1E69DC888] colorWithRed:0.40625 green:0.40625 blue:0.44140625 alpha:1.0];
  v13 = _activityImageForActionRepresentationImage____imageTintColor;
  _activityImageForActionRepresentationImage____imageTintColor = v12;
}

- (id)_activityImage
{
  _bundleIdentifierForActivityImageCreation = [(UIActivity *)self _bundleIdentifierForActivityImageCreation];
  if ([_bundleIdentifierForActivityImageCreation length])
  {
    v4 = [UIActivity _activityImageForApplicationBundleIdentifier:_bundleIdentifierForActivityImageCreation userInterfaceStyle:[(UIActivity *)self userInterfaceStyle]];
  }

  else
  {
    _activityBundleImageConfiguration = [(UIActivity *)self _activityBundleImageConfiguration];
    if (_activityBundleImageConfiguration)
    {
      v4 = [UIActivity _activityImageForBundleImageConfiguration:_activityBundleImageConfiguration];
    }

    else
    {
      activityImage = [(UIActivity *)self activityImage];
      v4 = +[UIActivity _imageByApplyingDefaultEffectsToImage:activityCategory:iconFormat:](UIActivity, "_imageByApplyingDefaultEffectsToImage:activityCategory:iconFormat:", activityImage, [objc_opt_class() activityCategory], 10);
    }
  }

  return v4;
}

- (id)_activitySettingsImage
{
  _bundleIdentifierForActivityImageCreation = [(UIActivity *)self _bundleIdentifierForActivityImageCreation];
  if (_bundleIdentifierForActivityImageCreation)
  {
    v4 = [UIActivity _activitySettingsImageForApplicationBundleIdentifier:_bundleIdentifierForActivityImageCreation userInterfaceStyle:[(UIActivity *)self userInterfaceStyle]];
  }

  else
  {
    _activitySettingsBundleImageConfiguration = [(UIActivity *)self _activitySettingsBundleImageConfiguration];
    if (_activitySettingsBundleImageConfiguration)
    {
      v4 = [UIActivity _activitySettingsImageForBundleImageConfiguration:_activitySettingsBundleImageConfiguration];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)_prepareWithActivityItems:(id)items completion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__UIActivity_UIActivity_Private___prepareWithActivityItems_completion___block_invoke;
  v9[3] = &unk_1E71F9A70;
  objc_copyWeak(&v11, &location);
  v8 = completionCopy;
  v10 = v8;
  [(UIActivity *)self _loadItemProvidersFromActivityItems:itemsCopy completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

uint64_t __71__UIActivity_UIActivity_Private___prepareWithActivityItems_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained prepareWithActivityItems:v3];

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

@end