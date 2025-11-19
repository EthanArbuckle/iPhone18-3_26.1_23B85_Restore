@interface PXMessagesStackView
- ($9C403407A5B624E1CD2E2AFE16A3B680)tapbackConfigurationForProposedConfiguration:(SEL)a3 spriteIndex:(id *)a4 inLayout:(unsigned int)a5;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)a3 inLayout:(id)a4;
- ($DE30A600513D762F9B6AB73D2AED4B95)additionalItemsCount;
- (BOOL)_isSpriteReferenceForPrimaryItem:(id)a3;
- (BOOL)_shouldAutoplayAsset:(id)a3;
- (BOOL)contentChangedForItemBeforeDataSource:(id)a3 beforeIndexPath:(PXSimpleIndexPath *)a4 afterDataSource:(id)a5 afterIndexPath:(PXSimpleIndexPath *)a6;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isPlayingInlineVideo;
- (BOOL)shadowsDisabled;
- (BOOL)stackItemsLayout:(id)a3 itemHasTapback:(int64_t)a4;
- (CGRect)itemsLayout:(id)a3 bestCropRectForItem:(int64_t)a4 withAspectRatio:(double)a5;
- (CGSize)minSpriteSizeForPresentationStyle:(unint64_t)a3;
- (Class)customAssetImageViewContainerClass;
- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inDecoratingLayout:(id)a4;
- (PXGAssetDecorationInfo)assetDecorationInfoForAsset:(SEL)a3 atSpriteIndex:(id)a4 inLayout:(unsigned int)a5;
- (PXMessagesStackView)initWithFrame:(CGRect)a3;
- (PXMessagesStackViewDelegate)delegate;
- (PXPhotosGridStackTransitionViewSource)transitionViewSource;
- (double)itemsLayout:(id)a3 aspectRatioForItem:(int64_t)a4;
- (id)_presentationControllerForAsset:(id)a3;
- (id)_regionOfInterestForAssetReference:(id)a3 forTransitioning:(BOOL)a4;
- (id)_trackingContainerViewForAssetReference:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)a3 inLayout:(id)a4;
- (id)installTransitionSnapshotViewForAssetReference:(id)a3 uncroppedImageFrame:(CGRect *)a4;
- (id)itemsLayout:(id)a3 objectReferenceForItem:(int64_t)a4;
- (id)placeholderImageForForPresentationController:(id)a3;
- (id)viewUserDataForAccessoryItemAtIndex:(int64_t)a3;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inDecoratingLayout:(id)a4;
- (int64_t)itemsLayout:(id)a3 itemForObjectReference:(id)a4 options:(unint64_t)a5;
- (void)_cleanupForDisplayOrReuse;
- (void)_handleCustomAssetImageViewClassConfiguratorView:(id)a3;
- (void)_handleTap:(id)a3;
- (void)_updateCurrentPresentationController;
- (void)currentDataSourceDidChange;
- (void)dataSourceManagerDidChange;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)primaryItemDidChange:(BOOL)a3 didChangeIndex:(BOOL)a4;
- (void)removeTransitionSnapshotView;
- (void)setAdditionalItemsCount:(id)a3;
- (void)setAllowPlayableContentLoading:(BOOL)a3;
- (void)setCornerRadiusClipsTopLevelContent:(BOOL)a3;
- (void)setCurrentVideoPresentationController:(id)a3;
- (void)setCustomAssetImageViewContainerClass:(Class)a3;
- (void)setDelegate:(id)a3;
- (void)setHiddenAssetReferences:(id)a3 animationType:(int64_t)a4;
- (void)setItemCornerRadius:(double)a3;
- (void)setItemEffectViewClass:(Class)a3;
- (void)setMediaProvider:(id)a3;
- (void)setShadowsDisabled:(BOOL)a3;
- (void)setTransitionPlaceholderView:(id)a3;
- (void)settledDidChange;
- (void)willBeginScrolling;
@end

@implementation PXMessagesStackView

- (PXPhotosGridStackTransitionViewSource)transitionViewSource
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionViewSource);

  return WeakRetained;
}

- ($DE30A600513D762F9B6AB73D2AED4B95)additionalItemsCount
{
  p_additionalItemsCount = &self->_additionalItemsCount;
  count = self->_additionalItemsCount.count;
  type = p_additionalItemsCount->type;
  result.var1 = type;
  result.var0 = count;
  return result;
}

- (PXMessagesStackViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = [[PXMessagesStackDismissalAnimationController alloc] initWithStackView:self dismissingViewController:v4];

  return v5;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v5 = [[PXMessagesStackPresentationAnimationController alloc] initWithStackView:self];

  return v5;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(PXMessagesStackView *)self tapGestureRecognizer];

  if (v5 == v4)
  {
    v7 = self;
    v6 = [(PXBaseMessagesStackView *)v7 tungstenView];
    v8 = [v6 scrollViewController];
    v9 = [v8 scrollView];

    [v4 locationInView:v7];
    v10 = [(PXMessagesStackView *)v7 hitTest:0 withEvent:?];

    LOBYTE(v6) = 1;
    if (v10 != v7 && v10 != v9)
    {
      LODWORD(v6) = [(PXMessagesStackView *)v10 isUserInteractionEnabled]^ 1;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (id)viewUserDataForAccessoryItemAtIndex:(int64_t)a3
{
  cachedAdditionalItemsUserData = self->_cachedAdditionalItemsUserData;
  if (!cachedAdditionalItemsUserData)
  {
    v5 = [PXMessagesStackAdditionalItemsViewUserData alloc];
    v6 = [(PXMessagesStackView *)self additionalItemsCount];
    v8 = [(PXMessagesStackAdditionalItemsViewUserData *)v5 initWithAdditionalItemsCount:v6, v7];
    v9 = self->_cachedAdditionalItemsUserData;
    self->_cachedAdditionalItemsUserData = v8;

    cachedAdditionalItemsUserData = self->_cachedAdditionalItemsUserData;
  }

  return cachedAdditionalItemsUserData;
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inDecoratingLayout:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if ([v6 decoratingTypeForSpriteIndex:v4] != 3)
  {
    v12 = [(PXPhotosGridAssetDecorationSource *)self->_assetDecorationSource viewUserDataForSpriteAtIndex:v4 inLayout:v6];
LABEL_13:
    v16 = v12;
    goto LABEL_14;
  }

  v7 = [(PXBaseMessagesStackView *)self layout];
  v8 = _StackItemIndexForSpriteIndexInLayout(v4, v6, v7);

  if ((v8 & 0x8000000000000000) == 0)
  {
    if (v8 || ![(PXMessagesStackView *)self providesLoadingAppearanceAndBehavior])
    {
      cachedPlaybackControlUserData = self->_cachedPlaybackControlUserData;
      if (!cachedPlaybackControlUserData || [(PXMessagesStackPlaybackControlUserData *)cachedPlaybackControlUserData itemIndex]!= v8)
      {
        v14 = [[PXMessagesStackPlaybackControlUserData alloc] initWithItemIndex:v8 viewModel:self->_playbackControlViewModel];
        v15 = self->_cachedPlaybackControlUserData;
        self->_cachedPlaybackControlUserData = v14;
      }

      activityIndicatorViewUserData = self->_cachedPlaybackControlUserData;
    }

    else
    {
      activityIndicatorViewUserData = self->_activityIndicatorViewUserData;
      if (!activityIndicatorViewUserData)
      {
        v10 = objc_alloc_init(PXMessagesStackActivityIndicatorViewUserData);
        v11 = self->_activityIndicatorViewUserData;
        self->_activityIndicatorViewUserData = v10;

        activityIndicatorViewUserData = self->_activityIndicatorViewUserData;
      }
    }

    v12 = activityIndicatorViewUserData;
    goto LABEL_13;
  }

  v16 = 0;
LABEL_14:

  return v16;
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inDecoratingLayout:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  if ([v6 decoratingTypeForSpriteIndex:v4] != 3)
  {
    v9 = [(PXPhotosGridAssetDecorationSource *)self->_assetDecorationSource viewClassForSpriteAtIndex:v4 inLayout:v6];
    goto LABEL_7;
  }

  v7 = [(PXBaseMessagesStackView *)self layout];
  v8 = _StackItemIndexForSpriteIndexInLayout(v4, v6, v7);

  if ((v8 & 0x8000000000000000) == 0)
  {
    if (!v8 && [(PXMessagesStackView *)self providesLoadingAppearanceAndBehavior])
    {
      v9 = objc_opt_class();
LABEL_7:
      v10 = v9;
      goto LABEL_13;
    }

    if ([(PXMessagesStackView *)self allowPlayableContentLoading])
    {
      v11 = [(PXBaseMessagesStackView *)self currentDataSource];
      v12 = [(PXBaseMessagesStackView *)self currentDataSource];
      v15[0] = [v12 identifier];
      v15[1] = 0;
      v15[2] = v8;
      v15[3] = 0x7FFFFFFFFFFFFFFFLL;
      v13 = [v11 assetAtItemIndexPath:v15];

      if ([v13 playbackStyle] == 4)
      {
        v10 = objc_opt_class();

        goto LABEL_13;
      }
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (id)placeholderImageForForPresentationController:(id)a3
{
  v4 = a3;
  v5 = [v4 accessQueue];
  v6 = MEMORY[0x1E69E96A0];

  if (v5 != v6)
  {
    PXAssertGetLog();
  }

  v7 = [(PXMessagesStackView *)self transitionPlaceholderAssetReference];
  v8 = [v7 asset];
  v9 = [v4 displayAsset];
  if (v8 == v9 || ([v8 isEqual:v9] & 1) != 0)
  {
    v10 = [(PXMessagesStackView *)self transitionPlaceholderView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [(PXMessagesStackView *)self transitionPlaceholderView];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v13 = [(PXMessagesStackView *)self transitionViewSource];

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = [(PXMessagesStackView *)self transitionViewSource];
  v15 = [v4 displayAsset];
  v12 = [v14 transitionViewForAsset:v15];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    goto LABEL_12;
  }

LABEL_10:
  v13 = [v12 image];
LABEL_12:

LABEL_13:

  return v13;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = *off_1E7722000;
  v5 = *(off_1E7722000 + 1);
  v6 = *(off_1E7722000 + 2);
  v7 = *(off_1E7722000 + 3);
  result.var3 = v7;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- ($9C403407A5B624E1CD2E2AFE16A3B680)tapbackConfigurationForProposedConfiguration:(SEL)a3 spriteIndex:(id *)a4 inLayout:(unsigned int)a5
{
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  v15 = [(PXBaseMessagesStackView *)self layout:a4];
  [v15 tapbackConfigurationForProposedConfiguration:a4 spriteIndex:{v14, v13, v12, v11}];

  return result;
}

- (PXGAssetDecorationInfo)assetDecorationInfoForAsset:(SEL)a3 atSpriteIndex:(id)a4 inLayout:(unsigned int)a5
{
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  result = self->_assetDecorationSource;
  if (result)
  {
    return [(PXGAssetDecorationInfo *)result assetDecorationInfoForAsset:a4 atSpriteIndex:*&a5 inLayout:a6];
  }

  return result;
}

- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)a3 inLayout:(id)a4
{
  v5 = [(PXBaseMessagesStackView *)self layout:a3];
  v6 = [v5 itemForSpriteIndex:0];

  v7 = [(PXBaseMessagesStackView *)self layout];
  v8 = [v7 numberOfItems] - v6;

  v9 = self->_cachedClampedItemRange.location == v6 && self->_cachedClampedItemRange.length == v8;
  if (!v9 || (cachedClampedFetchResult = self->_cachedClampedFetchResult) == 0)
  {
    v12 = [(PXBaseMessagesStackView *)self currentDataSource];
    v14 = [v12 identifier];
    v15 = xmmword_1A5380D10;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    [v12 assetsInSectionIndexPath:&v14];
    objc_claimAutoreleasedReturnValue();
    PXDisplayAssetFetchResultSubfetchResultWithRange();
  }

  v11 = cachedClampedFetchResult;

  return v11;
}

- (CGSize)minSpriteSizeForPresentationStyle:(unint64_t)a3
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)itemsLayout:(id)a3 bestCropRectForItem:(int64_t)a4 withAspectRatio:(double)a5
{
  v7 = [(PXBaseMessagesStackView *)self currentDataSource];
  v25[0] = [v7 identifier];
  v25[1] = 0;
  v25[2] = a4;
  v25[3] = 0x7FFFFFFFFFFFFFFFLL;
  v8 = [v7 assetAtItemIndexPath:v25];
  v9 = +[PXMessagesUISettings sharedInstance];
  v10 = [v9 bestCropRectEnabled];

  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 bestCropRectForAspectRatioV2:0 verticalContentMode:2 cropMode:a5];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v14 = *off_1E77221F8;
    v16 = *(off_1E77221F8 + 1);
    v18 = *(off_1E77221F8 + 2);
    v20 = *(off_1E77221F8 + 3);
    v11 = [v8 pixelWidth];
    v12 = [v8 pixelHeight];
    if (v11 && v12)
    {
      PXRectWithAspectRatioFittingRect();
    }
  }

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (double)itemsLayout:(id)a3 aspectRatioForItem:(int64_t)a4
{
  v6 = 0.75;
  if ([(PXBaseMessagesStackView *)self useAspectTiles])
  {
    v7 = [(PXBaseMessagesStackView *)self currentDataSource];
    v12[0] = [v7 identifier];
    v12[1] = 0;
    v12[2] = a4;
    v12[3] = 0x7FFFFFFFFFFFFFFFLL;
    v8 = [v7 assetAtItemIndexPath:v12];
    [v8 aspectRatio];
    v10 = 1.0;
    if (v9 < 0.99)
    {
      v10 = 0.75;
    }

    if (v9 <= 1.01)
    {
      v6 = v10;
    }

    else
    {
      v6 = 1.33333333;
    }
  }

  return v6;
}

- (id)itemsLayout:(id)a3 objectReferenceForItem:(int64_t)a4
{
  v5 = [(PXBaseMessagesStackView *)self currentDataSource];
  v8[0] = [v5 identifier];
  v8[1] = 0;
  v8[2] = a4;
  v8[3] = 0x7FFFFFFFFFFFFFFFLL;
  v6 = [v5 assetReferenceAtItemIndexPath:v8];

  return v6;
}

- (int64_t)itemsLayout:(id)a3 itemForObjectReference:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (v10)
  {
    v11 = v10;
    v12 = [(PXBaseMessagesStackView *)self currentDataSource];
    v13 = v12;
    v14 = v8;
    if (v5)
    {
      v14 = [v12 objectReferenceNearestToObjectReference:v11 inSection:0];
      if (v14)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = [MEMORY[0x1E696AAA8] currentHandler];
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = [v14 px_descriptionForAssertionMessage];
          [v16 handleFailureInMethod:a2 object:self file:@"PXMessagesStackView.m" lineNumber:631 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[dataSource objectReferenceNearestToObjectReference:assetReference inSection:0]", v18, v19}];
        }
      }
    }

    if (v13)
    {
      [v13 indexPathForAssetReference:v14];
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)stackItemsLayout:(id)a3 itemHasTapback:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 spriteIndexForItem:a4];
  v8 = v7 != -1 && [(PXMessagesStackView *)self hasTapbacksForSpriteIndex:v7 inLayout:v6];

  return v8;
}

- (void)setTransitionPlaceholderView:(id)a3
{
  v5 = a3;
  transitionPlaceholderView = self->_transitionPlaceholderView;
  if (transitionPlaceholderView != v5)
  {
    v8 = v5;
    [(UIView *)transitionPlaceholderView removeFromSuperview];
    objc_storeStrong(&self->_transitionPlaceholderView, a3);
    v5 = v8;
    if (!self->_transitionPlaceholderView)
    {
      v7 = [MEMORY[0x1E695DFD8] set];
      [(PXMessagesStackView *)self setHiddenAssetReferences:v7 animationType:2];

      v5 = v8;
    }
  }
}

- (id)_presentationControllerForAsset:(id)a3
{
  v4 = a3;
  if (-[PXMessagesStackView allowPlayableContentLoading](self, "allowPlayableContentLoading") && ((v5 = [v4 playbackStyle], v6 = objc_msgSend(v4, "playbackStyle"), v7 = v6 == 5, v5 == 4) || v6 == 5))
  {
    v9 = [v4 uuid];
    v8 = [(PXLRUMemoryCache *)self->_videoPresentationControllersByItem objectForKeyedSubscript:v9];
    if (!v8)
    {
      v10 = [PXGDisplayAssetVideoPresentationController alloc];
      v11 = [(PXBaseMessagesStackView *)self layout];
      v12 = [v11 layoutQueue];
      v8 = [(PXGDisplayAssetVideoPresentationController *)v10 initWithDisplayAsset:v4 accessQueue:v12];

      [(PXGDisplayAssetVideoPresentationController *)v8 setVisualEffectViewClass:[(PXMessagesStackView *)self customAssetImageViewContainerClass]];
      [(PXLRUMemoryCache *)self->_videoPresentationControllersByItem setObject:v8 forKeyedSubscript:v9];
      [(PXGDisplayAssetVideoPresentationController *)v8 setDelegate:self];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__PXMessagesStackView__presentationControllerForAsset___block_invoke;
    v14[3] = &__block_descriptor_33_e61_v16__0___PXGMutableDisplayAssetVideoPresentationController__8l;
    v15 = v7;
    [(PXGDisplayAssetVideoPresentationController *)v8 performChanges:v14];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __55__PXMessagesStackView__presentationControllerForAsset___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setIsLoopingEnabled:v3];
  [v4 setResetsDesiredPlayStateOnHide:(*(a1 + 32) & 1) == 0];
}

- (void)_updateCurrentPresentationController
{
  v3 = [(PXBaseMessagesStackView *)self isSettled];
  v4 = [(PXBaseMessagesStackView *)self layout];
  v5 = [v4 primaryItemIndex];

  v6 = [(PXBaseMessagesStackView *)self layout];
  v7 = [v6 numberOfItems];

  if (v3)
  {
    if (v5 >= v7)
    {
      v10 = 0;
    }

    else
    {
      v8 = [(PXBaseMessagesStackView *)self currentDataSource];
      v9 = [(PXBaseMessagesStackView *)self currentDataSource];
      v16[0] = [v9 identifier];
      v16[1] = 0;
      v16[2] = v5;
      v16[3] = 0x7FFFFFFFFFFFFFFFLL;
      v10 = [v8 assetAtItemIndexPath:v16];
    }

    v11 = [(PXMessagesStackView *)self _presentationControllerForAsset:v10];
    [(PXMessagesStackView *)self setCurrentVideoPresentationController:v11];
    if (v11 && [(PXMessagesStackView *)self _shouldAutoplayAsset:v10])
    {
      [v11 performChanges:&__block_literal_global_123_251893];
    }
  }

  else
  {
    [(PXMessagesStackView *)self setCurrentVideoPresentationController:0];
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
  playbackControlViewModel = self->_playbackControlViewModel;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__PXMessagesStackView__updateCurrentPresentationController__block_invoke_2;
  v14[3] = &unk_1E774B4F0;
  if (v5 < v7)
  {
    v12 = v5;
  }

  v15 = v3;
  v14[4] = self;
  v14[5] = v12;
  [(PXMessagesStackPlaybackControlViewModel *)playbackControlViewModel performChanges:v14];
}

void __59__PXMessagesStackView__updateCurrentPresentationController__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 setSettled:v3];
  [v4 setCurrentItem:*(a1 + 40)];
  v5 = [*(a1 + 32) currentVideoPresentationController];
  [v4 setVideoController:v5];
}

- (BOOL)_shouldAutoplayAsset:(id)a3
{
  v4 = a3;
  if ([v4 playbackStyle] == 5 && self->_delegateRespondsTo.shouldAutoplayAsset)
  {
    v5 = [(PXMessagesStackView *)self delegate];
    v6 = [v5 stackView:self shouldAutoplayAsset:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setCurrentVideoPresentationController:(id)a3
{
  v5 = a3;
  currentVideoPresentationController = self->_currentVideoPresentationController;
  if (currentVideoPresentationController != v5)
  {
    v7 = v5;
    [(PXGDisplayAssetVideoPresentationController *)currentVideoPresentationController performChanges:&__block_literal_global_121_251896];
    objc_storeStrong(&self->_currentVideoPresentationController, a3);
    v5 = v7;
  }
}

- (BOOL)_isSpriteReferenceForPrimaryItem:(id)a3
{
  v4 = a3;
  v5 = [(PXBaseMessagesStackView *)self layout];
  v6 = [v5 primaryItemIndex];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    v9 = [v5 spriteIndexForSpriteReference:v4];
    if ([v5 numberOfItems] <= v8)
    {
      v10 = [v5 spriteIndexForAccessoryItem:{v8 - objc_msgSend(v5, "numberOfItems")}];
    }

    else
    {
      v10 = [v5 spriteIndexForItem:v8];
    }

    v7 = v9 == v10;
  }

  return v7;
}

- (void)_handleTap:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 state] != 3)
  {
    goto LABEL_38;
  }

  v5 = [(PXBaseMessagesStackView *)self tungstenView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(PXBaseMessagesStackView *)self layout];
  v11 = [(PXBaseMessagesStackView *)self tungstenView];
  v12 = [v11 hitTestResultsAtPoint:{v7, v9}];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (!v13)
  {
    goto LABEL_25;
  }

  v14 = v13;
  v15 = *v55;
  v16 = *off_1E7722020;
  v17 = *off_1E7722018;
  v18 = *off_1E7722010;
  v51 = v10;
  v52 = v4;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v55 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v54 + 1) + 8 * i);
      v21 = [v20 identifier];
      v22 = [v21 isEqualToString:v16];

      if (v22)
      {
        v30 = [v20 spriteReference];
        v31 = [v20 spriteReference];
        v32 = [(PXMessagesStackView *)self _isSpriteReferenceForPrimaryItem:v31];

        v33 = [(PXBaseMessagesStackView *)self layout];
        v34 = [v33 spriteIndexForSpriteReference:v30];

        v35 = [(PXBaseMessagesStackView *)self layout];
        v36 = [v35 itemForSpriteIndex:v34];

        if (v32)
        {
          v10 = v51;
          v4 = v52;
          if (!self->_delegateRespondsTo.didSelectAssetReference)
          {
            goto LABEL_37;
          }

          v37 = [v51 objectReferenceForItem:{objc_msgSend(v51, "primaryItemIndex")}];
          v38 = [(PXMessagesStackView *)self delegate];
          [v38 stackView:self didSelectAssetReference:v37];

LABEL_23:
          goto LABEL_37;
        }

        v10 = v51;
        v4 = v52;
LABEL_27:
        if (v36 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v45 = [v10 primaryItemIndex];
          v46 = v45;
          if (v36 >= v45)
          {
            v49 = v45 + 1;
            v50 = [v10 numberOfItems];
            if (v49 < v50 - 1)
            {
              v48 = v46 + 1;
            }

            else
            {
              v48 = v50 - 1;
            }
          }

          else
          {
            if (v45 <= 1)
            {
              v47 = 1;
            }

            else
            {
              v47 = v45;
            }

            v48 = v47 - 1;
          }

          [(PXBaseMessagesStackView *)self scrollToIndex:v48 animated:1];
        }

        goto LABEL_37;
      }

      v23 = [v20 identifier];
      v24 = [v23 isEqualToString:v17];

      if (!v24)
      {
        v28 = [v20 identifier];
        v29 = [v28 isEqualToString:v18];

        if ((v29 & 1) == 0)
        {
          continue;
        }

        v39 = [v20 spriteReference];
        v40 = [v20 spriteReference];
        v41 = [(PXMessagesStackView *)self _isSpriteReferenceForPrimaryItem:v40];

        v10 = v51;
        v42 = [v51 spriteIndexForSpriteReference:v39];
        v43 = [v51 numberOfItems];
        v44 = [v51 accessoryItemForSpriteIndex:v42];

        if (v41)
        {
          v4 = v52;
          if (!self->_delegateRespondsTo.didSelectAdditionalItems)
          {
            goto LABEL_37;
          }

          v37 = [(PXMessagesStackView *)self delegate];
          [v37 stackViewDidSelectAdditionalItemsCard:self];
          goto LABEL_23;
        }

        v36 = v44 + v43;
        v4 = v52;
        goto LABEL_27;
      }

      v25 = [v20 spriteReference];
      v26 = [(PXBaseMessagesStackView *)self tungstenView];
      v27 = [v26 viewForSpriteReference:v25];

      if (v27)
      {
        [v52 locationInView:v27];
        if ([v27 handleTapAtPoint:?])
        {

          v10 = v51;
          v4 = v52;
          goto LABEL_25;
        }
      }
    }

    v14 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    v10 = v51;
    v4 = v52;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_25:

LABEL_37:
LABEL_38:
}

- (void)setItemEffectViewClass:(Class)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = objc_opt_class();
    if (([v6 isSubclassOfClass:objc_opt_class()] & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"PXMessagesStackView.m" lineNumber:435 description:{@"Invalid parameter not satisfying: %@", @"itemEffectViewClass == nil || [itemEffectViewClass.class isSubclassOfClass:UIView.class]"}];
    }
  }

  else
  {
    v4 = objc_opt_class();
  }

  if (v4 != self->_itemEffectViewClass)
  {
    objc_storeStrong(&self->_itemEffectViewClass, v4);
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__PXMessagesStackView_setItemEffectViewClass___block_invoke;
    v10[3] = &unk_1E774B4A8;
    objc_copyWeak(&v11, &location);
    v8 = [(PXBaseMessagesStackView *)self tungstenView];
    [v8 setCustomAssetImageViewClassConfigurator:v10];

    v9 = [(PXBaseMessagesStackView *)self layout];
    [v9 setSpritesNeedUpdate];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __46__PXMessagesStackView_setItemEffectViewClass___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCustomAssetImageViewClassConfiguratorView:v3];
}

- (void)_handleCustomAssetImageViewClassConfiguratorView:(id)a3
{
  v13 = a3;
  if ([(PXMessagesStackView *)self itemEffectViewClass])
  {
    v5 = [(PXMessagesStackView *)self itemEffectViewClass];
    v6 = v13;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        v7 = objc_alloc_init(v5);
        [v6 setItemEffectView:v7];

        [v6 setIgnoresClipContentRequests:{-[PXMessagesStackView cornerRadiusClipsTopLevelContent](self, "cornerRadiusClipsTopLevelContent") ^ 1}];
        goto LABEL_5;
      }

      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = objc_opt_class();
      v10 = NSStringFromClass(v11);
      v12 = [v6 px_descriptionForAssertionMessage];
      [v8 handleFailureInMethod:a2 object:self file:@"PXMessagesStackView.m" lineNumber:423 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"view", v10, v12}];
    }

    else
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      [v8 handleFailureInMethod:a2 object:self file:@"PXMessagesStackView.m" lineNumber:423 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"view", v10}];
    }

    goto LABEL_4;
  }

LABEL_5:
}

- (void)_cleanupForDisplayOrReuse
{
  activityIndicatorViewUserData = self->_activityIndicatorViewUserData;
  self->_activityIndicatorViewUserData = 0;

  v4 = [(PXBaseMessagesStackView *)self layout];
  [v4 invalidateDecoration];

  [(PXMessagesStackView *)self removeTransitionSnapshotView];
}

- (void)prepareForReuse
{
  [(PXMessagesStackView *)self _cleanupForDisplayOrReuse];
  v3.receiver = self;
  v3.super_class = PXMessagesStackView;
  [(PXBaseMessagesStackView *)&v3 prepareForReuse];
}

- (void)prepareForDisplay
{
  [(PXMessagesStackView *)self _cleanupForDisplayOrReuse];
  v3.receiver = self;
  v3.super_class = PXMessagesStackView;
  [(PXBaseMessagesStackView *)&v3 prepareForDisplay];
}

- (void)setAdditionalItemsCount:(id)a3
{
  if (self->_additionalItemsCount.count != a3.var0 || self->_additionalItemsCount.type != a3.var1)
  {
    var0 = a3.var0;
    self->_additionalItemsCount = a3;
    cachedAdditionalItemsUserData = self->_cachedAdditionalItemsUserData;
    self->_cachedAdditionalItemsUserData = 0;

    [(PXBaseMessagesStackView *)self setNumberOfAccessoryItems:var0 != 0];
  }
}

- (void)removeTransitionSnapshotView
{
  [(PXMessagesStackView *)self setTransitionPlaceholderView:0];

  [(PXMessagesStackView *)self setTransitionPlaceholderAssetReference:0];
}

- (id)installTransitionSnapshotViewForAssetReference:(id)a3 uncroppedImageFrame:(CGRect *)a4
{
  v6 = a3;
  v7 = [(PXMessagesStackView *)self currentAssetReference];
  v8 = [(PXMessagesStackView *)self regionOfInterestForTransitioningAssetReference:v7];

  v9 = [v8 placeholderViewFactory];

  if (v9)
  {
    v10 = [v8 placeholderViewFactory];
    v9 = (v10)[2](v10, v8);

    [(PXMessagesStackView *)self addSubview:v9];
    [(PXMessagesStackView *)self setTransitionPlaceholderView:v9];
    [(PXMessagesStackView *)self setTransitionPlaceholderAssetReference:v6];
    v11 = [MEMORY[0x1E695DFD8] setWithObject:v6];
    [(PXMessagesStackView *)self setHiddenAssetReferences:v11];
  }

  if (a4)
  {
    [v8 uncroppedImageFrameInCoordinateSpace:self];
    [v9 convertRect:self fromView:?];
    a4->origin.x = v12;
    a4->origin.y = v13;
    a4->size.width = v14;
    a4->size.height = v15;
  }

  return v9;
}

- (void)setHiddenAssetReferences:(id)a3 animationType:(int64_t)a4
{
  v6 = a3;
  v7 = [(PXBaseMessagesStackView *)self tungstenView];
  v8 = [v7 rootLayout];
  [v8 hideSpritesForObjectReferences:v6];

  if (a4 >= 3)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXPhotosGridHideAssetAnimationType _GridHideAssetAnimationType(PXMessagesStackHideAssetAnimationType)"];
    [v14 handleFailureInFunction:v15 file:@"PXMessagesStackView.m" lineNumber:77 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v9 = [(PXBaseMessagesStackView *)self tungstenView];
  v10 = [v9 rootLayout];
  v11 = [off_1E7721808 createDecorationAnimationsForLayout:v10 animationType:a4];

  v12 = [v11 count];
  if (a4 && !v12)
  {
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Failed to create animations for hiding/unhiding assets", v16, 2u);
    }
  }
}

- (id)_trackingContainerViewForAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(PXBaseMessagesStackView *)self tungstenView];
  v6 = [v5 rootLayout];

  v7 = [v6 spriteReferenceForObjectReference:v4];

  v8 = [v6 spriteIndexForSpriteReference:v7 options:0];
  if (v8 == -1)
  {
    v11 = 0;
  }

  else
  {
    v9 = v8;
    v10 = [(PXBaseMessagesStackView *)self tungstenView];
    v11 = [v10 trackingContainerViewForSpriteIndex:v9];
  }

  return v11;
}

- (id)_regionOfInterestForAssetReference:(id)a3 forTransitioning:(BOOL)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(PXBaseMessagesStackView *)self tungstenView];
  objc_claimAutoreleasedReturnValue();
  [(PXBaseMessagesStackView *)self layout];
  objc_claimAutoreleasedReturnValue();
  v7 = 0;
  PXRegionOfInterestForAssetReference();
}

id __75__PXMessagesStackView__regionOfInterestForAssetReference_forTransitioning___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _trackingContainerViewForAssetReference:*(a1 + 32)];

  return v3;
}

- (BOOL)isPlayingInlineVideo
{
  v2 = [(PXMessagesStackView *)self currentVideoPresentationController];
  v3 = [v2 actualPlayState] == 2;

  return v3;
}

- (void)setAllowPlayableContentLoading:(BOOL)a3
{
  if (self->_allowPlayableContentLoading != a3)
  {
    self->_allowPlayableContentLoading = a3;
    if (!a3)
    {
      [(PXLRUMemoryCache *)self->_videoPresentationControllersByItem removeAllObjects];
    }

    v6 = [(PXBaseMessagesStackView *)self layout];
    v5 = [off_1E7721450 changeDetailsWithChangedIndexRange:{0, objc_msgSend(v6, "numberOfItems")}];
    [v6 setNumberOfItems:objc_msgSend(v6 withChangeDetails:"numberOfItems") changeMediaVersionHandler:{v5, &__block_literal_global_251975}];
    [(PXMessagesStackView *)self _updateCurrentPresentationController];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    self->_delegateRespondsTo.didSelectAssetReference = objc_opt_respondsToSelector() & 1;

    v7 = objc_loadWeakRetained(&self->_delegate);
    self->_delegateRespondsTo.didChangeCurrentAssetReference = objc_opt_respondsToSelector() & 1;

    v8 = objc_loadWeakRetained(&self->_delegate);
    self->_delegateRespondsTo.shouldAutoplayAsset = objc_opt_respondsToSelector() & 1;

    v9 = objc_loadWeakRetained(&self->_delegate);
    p_delegateRespondsTo->didSelectAdditionalItems = objc_opt_respondsToSelector() & 1;
  }
}

- (BOOL)shadowsDisabled
{
  v3.receiver = self;
  v3.super_class = PXMessagesStackView;
  return [(PXBaseMessagesStackView *)&v3 shadowsDisabled];
}

- (void)setShadowsDisabled:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PXMessagesStackView;
  [(PXBaseMessagesStackView *)&v3 setShadowsDisabled:a3];
}

- (void)willBeginScrolling
{
  v3.receiver = self;
  v3.super_class = PXMessagesStackView;
  [(PXBaseMessagesStackView *)&v3 willBeginScrolling];
  [(PXMessagesStackView *)self removeTransitionSnapshotView];
}

- (void)primaryItemDidChange:(BOOL)a3 didChangeIndex:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXMessagesStackView;
  [PXBaseMessagesStackView primaryItemDidChange:sel_primaryItemDidChange_didChangeIndex_ didChangeIndex:?];
  [(PXMessagesStackView *)self _updateCurrentPresentationController];
  if (self->_delegateRespondsTo.didChangeCurrentAssetReference)
  {
    v7 = [(PXMessagesStackView *)self delegate];
    v8 = [(PXMessagesStackView *)self currentAssetReference];
    [v7 stackView:self didChangeCurrentAssetReference:v8 isProgrammaticChange:v5 didChangeIndex:v4];
  }
}

- (void)settledDidChange
{
  v3.receiver = self;
  v3.super_class = PXMessagesStackView;
  [(PXBaseMessagesStackView *)&v3 settledDidChange];
  [(PXMessagesStackView *)self _updateCurrentPresentationController];
}

- (void)dataSourceManagerDidChange
{
  [(PXMessagesStackView *)self _cleanupForDisplayOrReuse];
  v3.receiver = self;
  v3.super_class = PXMessagesStackView;
  [(PXBaseMessagesStackView *)&v3 dataSourceManagerDidChange];
}

- (void)currentDataSourceDidChange
{
  v7.receiver = self;
  v7.super_class = PXMessagesStackView;
  [(PXBaseMessagesStackView *)&v7 currentDataSourceDidChange];
  self->_cachedClampedItemRange = xmmword_1A5380D90;
  cachedClampedFetchResult = self->_cachedClampedFetchResult;
  self->_cachedClampedFetchResult = 0;

  cachedPlaybackControlUserData = self->_cachedPlaybackControlUserData;
  self->_cachedPlaybackControlUserData = 0;

  assetDecorationSource = self->_assetDecorationSource;
  v6 = [(PXBaseMessagesStackView *)self currentDataSource];
  [(PXPhotosGridAssetDecorationSource *)assetDecorationSource setDataSource:v6 section:0];

  [(PXMessagesStackView *)self _updateCurrentPresentationController];
  [(PXMessagesStackView *)self removeTransitionSnapshotView];
}

- (BOOL)contentChangedForItemBeforeDataSource:(id)a3 beforeIndexPath:(PXSimpleIndexPath *)a4 afterDataSource:(id)a5 afterIndexPath:(PXSimpleIndexPath *)a6
{
  v8 = *&a4->item;
  v19 = *&a4->dataSourceIdentifier;
  v20 = v8;
  v9 = a5;
  v10 = [a3 assetAtItemIndexPath:&v19];
  v11 = *&a6->item;
  v19 = *&a6->dataSourceIdentifier;
  v20 = v11;
  v12 = [v9 assetAtItemIndexPath:&v19];

  v13 = v12;
  v14 = v10;
  v15 = v14;
  if (v13 == v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = 1;
    if (v14 && v13)
    {
      v17 = [v13 isContentEqualTo:v14];
      if (!v17)
      {
        v17 = [v15 isContentEqualTo:v13];
      }

      v16 = v17 != 2;
    }
  }

  return v16;
}

- (void)setMediaProvider:(id)a3
{
  v5 = a3;
  if (self->_mediaProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mediaProvider, a3);
    [(PXBaseMessagesStackView *)self registerAllTextureProvidersWithMediaProvider:v6];
    v5 = v6;
  }
}

- (Class)customAssetImageViewContainerClass
{
  v2 = [(PXBaseMessagesStackView *)self tungstenView];
  v3 = [v2 customAssetImageViewClass];

  return v3;
}

- (void)setCustomAssetImageViewContainerClass:(Class)a3
{
  v4 = [(PXBaseMessagesStackView *)self tungstenView];
  [v4 setCustomAssetImageViewClass:a3];
}

- (void)setCornerRadiusClipsTopLevelContent:(BOOL)a3
{
  if (self->_cornerRadiusClipsTopLevelContent != a3)
  {
    self->_cornerRadiusClipsTopLevelContent = a3;
    v4 = [(PXBaseMessagesStackView *)self layout];
    [v4 setSpritesNeedUpdate];
  }
}

- (void)setItemCornerRadius:(double)a3
{
  v5.receiver = self;
  v5.super_class = PXMessagesStackView;
  v4 = [(PXBaseMessagesStackView *)&v5 layout];
  [v4 setItemCornerRadius:a3];
}

- (PXMessagesStackView)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = PXMessagesStackView;
  v3 = [(PXBaseMessagesStackView *)&v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = v3;
  if (v3)
  {
    v5 = [(PXBaseMessagesStackView *)v3 layout];
    v6 = [(PXBaseMessagesStackView *)v4 tungstenView];
    v7 = objc_alloc_init(off_1E7721800);
    assetDecorationSource = v4->_assetDecorationSource;
    v4->_assetDecorationSource = v7;

    [(PXPhotosGridAssetDecorationSource *)v4->_assetDecorationSource setDecoratedLayout:v5];
    [(PXPhotosGridAssetDecorationSource *)v4->_assetDecorationSource setDurationAlwaysHidden:1];
    [(PXPhotosGridAssetDecorationSource *)v4->_assetDecorationSource setEnableSpatialBadges:1];
    [v5 setDelegate:v4];
    v9 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__handleTap_];
    [(UITapGestureRecognizer *)v9 setDelegate:v4];
    [(UITapGestureRecognizer *)v9 setCancelsTouchesInView:0];
    tapGestureRecognizer = v4->_tapGestureRecognizer;
    v4->_tapGestureRecognizer = v9;
    v11 = v9;

    [v6 addGestureRecognizer:v11];
    v12 = objc_alloc_init(PXLRUMemoryCache);
    videoPresentationControllersByItem = v4->_videoPresentationControllersByItem;
    v4->_videoPresentationControllersByItem = v12;

    -[PXLRUMemoryCache setNumberOfSlots:](v4->_videoPresentationControllersByItem, "setNumberOfSlots:", (2 * [v5 stackedItemsCount]) | 1);
    v14 = objc_alloc_init(PXMessagesStackPlaybackControlViewModel);
    playbackControlViewModel = v4->_playbackControlViewModel;
    v4->_playbackControlViewModel = v14;

    v4->_additionalItemsCount = *off_1E7721F88;
    v16 = objc_opt_class();

    [(PXMessagesStackView *)v4 setCustomAssetImageViewContainerClass:v16];
    [(PXMessagesStackView *)v4 setItemEffectViewClass:0];
    [(PXMessagesStackView *)v4 setCornerRadiusClipsTopLevelContent:1];
  }

  return v4;
}

@end