@interface PXMessagesStackView
- ($9C403407A5B624E1CD2E2AFE16A3B680)tapbackConfigurationForProposedConfiguration:(SEL)configuration spriteIndex:(id *)index inLayout:(unsigned int)layout;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)index inLayout:(id)layout;
- ($DE30A600513D762F9B6AB73D2AED4B95)additionalItemsCount;
- (BOOL)_isSpriteReferenceForPrimaryItem:(id)item;
- (BOOL)_shouldAutoplayAsset:(id)asset;
- (BOOL)contentChangedForItemBeforeDataSource:(id)source beforeIndexPath:(PXSimpleIndexPath *)path afterDataSource:(id)dataSource afterIndexPath:(PXSimpleIndexPath *)indexPath;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isPlayingInlineVideo;
- (BOOL)shadowsDisabled;
- (BOOL)stackItemsLayout:(id)layout itemHasTapback:(int64_t)tapback;
- (CGRect)itemsLayout:(id)layout bestCropRectForItem:(int64_t)item withAspectRatio:(double)ratio;
- (CGSize)minSpriteSizeForPresentationStyle:(unint64_t)style;
- (Class)customAssetImageViewContainerClass;
- (Class)viewClassForSpriteAtIndex:(unsigned int)index inDecoratingLayout:(id)layout;
- (PXGAssetDecorationInfo)assetDecorationInfoForAsset:(SEL)asset atSpriteIndex:(id)index inLayout:(unsigned int)layout;
- (PXMessagesStackView)initWithFrame:(CGRect)frame;
- (PXMessagesStackViewDelegate)delegate;
- (PXPhotosGridStackTransitionViewSource)transitionViewSource;
- (double)itemsLayout:(id)layout aspectRatioForItem:(int64_t)item;
- (id)_presentationControllerForAsset:(id)asset;
- (id)_regionOfInterestForAssetReference:(id)reference forTransitioning:(BOOL)transitioning;
- (id)_trackingContainerViewForAssetReference:(id)reference;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)range inLayout:(id)layout;
- (id)installTransitionSnapshotViewForAssetReference:(id)reference uncroppedImageFrame:(CGRect *)frame;
- (id)itemsLayout:(id)layout objectReferenceForItem:(int64_t)item;
- (id)placeholderImageForForPresentationController:(id)controller;
- (id)viewUserDataForAccessoryItemAtIndex:(int64_t)index;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inDecoratingLayout:(id)layout;
- (int64_t)itemsLayout:(id)layout itemForObjectReference:(id)reference options:(unint64_t)options;
- (void)_cleanupForDisplayOrReuse;
- (void)_handleCustomAssetImageViewClassConfiguratorView:(id)view;
- (void)_handleTap:(id)tap;
- (void)_updateCurrentPresentationController;
- (void)currentDataSourceDidChange;
- (void)dataSourceManagerDidChange;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)primaryItemDidChange:(BOOL)change didChangeIndex:(BOOL)index;
- (void)removeTransitionSnapshotView;
- (void)setAdditionalItemsCount:(id)count;
- (void)setAllowPlayableContentLoading:(BOOL)loading;
- (void)setCornerRadiusClipsTopLevelContent:(BOOL)content;
- (void)setCurrentVideoPresentationController:(id)controller;
- (void)setCustomAssetImageViewContainerClass:(Class)class;
- (void)setDelegate:(id)delegate;
- (void)setHiddenAssetReferences:(id)references animationType:(int64_t)type;
- (void)setItemCornerRadius:(double)radius;
- (void)setItemEffectViewClass:(Class)class;
- (void)setMediaProvider:(id)provider;
- (void)setShadowsDisabled:(BOOL)disabled;
- (void)setTransitionPlaceholderView:(id)view;
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

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  v5 = [[PXMessagesStackDismissalAnimationController alloc] initWithStackView:self dismissingViewController:controllerCopy];

  return v5;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v5 = [[PXMessagesStackPresentationAnimationController alloc] initWithStackView:self];

  return v5;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  tapGestureRecognizer = [(PXMessagesStackView *)self tapGestureRecognizer];

  if (tapGestureRecognizer == beginCopy)
  {
    selfCopy = self;
    tungstenView = [(PXBaseMessagesStackView *)selfCopy tungstenView];
    scrollViewController = [tungstenView scrollViewController];
    scrollView = [scrollViewController scrollView];

    [beginCopy locationInView:selfCopy];
    v10 = [(PXMessagesStackView *)selfCopy hitTest:0 withEvent:?];

    LOBYTE(tungstenView) = 1;
    if (v10 != selfCopy && v10 != scrollView)
    {
      LODWORD(tungstenView) = [(PXMessagesStackView *)v10 isUserInteractionEnabled]^ 1;
    }
  }

  else
  {
    LOBYTE(tungstenView) = 1;
  }

  return tungstenView;
}

- (id)viewUserDataForAccessoryItemAtIndex:(int64_t)index
{
  cachedAdditionalItemsUserData = self->_cachedAdditionalItemsUserData;
  if (!cachedAdditionalItemsUserData)
  {
    v5 = [PXMessagesStackAdditionalItemsViewUserData alloc];
    additionalItemsCount = [(PXMessagesStackView *)self additionalItemsCount];
    v8 = [(PXMessagesStackAdditionalItemsViewUserData *)v5 initWithAdditionalItemsCount:additionalItemsCount, v7];
    v9 = self->_cachedAdditionalItemsUserData;
    self->_cachedAdditionalItemsUserData = v8;

    cachedAdditionalItemsUserData = self->_cachedAdditionalItemsUserData;
  }

  return cachedAdditionalItemsUserData;
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inDecoratingLayout:(id)layout
{
  v4 = *&index;
  layoutCopy = layout;
  if ([layoutCopy decoratingTypeForSpriteIndex:v4] != 3)
  {
    v12 = [(PXPhotosGridAssetDecorationSource *)self->_assetDecorationSource viewUserDataForSpriteAtIndex:v4 inLayout:layoutCopy];
LABEL_13:
    v16 = v12;
    goto LABEL_14;
  }

  layout = [(PXBaseMessagesStackView *)self layout];
  v8 = _StackItemIndexForSpriteIndexInLayout(v4, layoutCopy, layout);

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

- (Class)viewClassForSpriteAtIndex:(unsigned int)index inDecoratingLayout:(id)layout
{
  v4 = *&index;
  layoutCopy = layout;
  if ([layoutCopy decoratingTypeForSpriteIndex:v4] != 3)
  {
    v9 = [(PXPhotosGridAssetDecorationSource *)self->_assetDecorationSource viewClassForSpriteAtIndex:v4 inLayout:layoutCopy];
    goto LABEL_7;
  }

  layout = [(PXBaseMessagesStackView *)self layout];
  v8 = _StackItemIndexForSpriteIndexInLayout(v4, layoutCopy, layout);

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
      currentDataSource = [(PXBaseMessagesStackView *)self currentDataSource];
      currentDataSource2 = [(PXBaseMessagesStackView *)self currentDataSource];
      v15[0] = [currentDataSource2 identifier];
      v15[1] = 0;
      v15[2] = v8;
      v15[3] = 0x7FFFFFFFFFFFFFFFLL;
      v13 = [currentDataSource assetAtItemIndexPath:v15];

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

- (id)placeholderImageForForPresentationController:(id)controller
{
  controllerCopy = controller;
  accessQueue = [controllerCopy accessQueue];
  v6 = MEMORY[0x1E69E96A0];

  if (accessQueue != v6)
  {
    PXAssertGetLog();
  }

  transitionPlaceholderAssetReference = [(PXMessagesStackView *)self transitionPlaceholderAssetReference];
  asset = [transitionPlaceholderAssetReference asset];
  displayAsset = [controllerCopy displayAsset];
  if (asset == displayAsset || ([asset isEqual:displayAsset] & 1) != 0)
  {
    transitionPlaceholderView = [(PXMessagesStackView *)self transitionPlaceholderView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      transitionPlaceholderView2 = [(PXMessagesStackView *)self transitionPlaceholderView];
      goto LABEL_10;
    }
  }

  else
  {
  }

  transitionViewSource = [(PXMessagesStackView *)self transitionViewSource];

  if (!transitionViewSource)
  {
    goto LABEL_13;
  }

  transitionViewSource2 = [(PXMessagesStackView *)self transitionViewSource];
  displayAsset2 = [controllerCopy displayAsset];
  transitionPlaceholderView2 = [transitionViewSource2 transitionViewForAsset:displayAsset2];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    transitionViewSource = 0;
    goto LABEL_12;
  }

LABEL_10:
  transitionViewSource = [transitionPlaceholderView2 image];
LABEL_12:

LABEL_13:

  return transitionViewSource;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)overlayInsetsForSpriteIndex:(unsigned int)index inLayout:(id)layout
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

- ($9C403407A5B624E1CD2E2AFE16A3B680)tapbackConfigurationForProposedConfiguration:(SEL)configuration spriteIndex:(id *)index inLayout:(unsigned int)layout
{
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  v15 = [(PXBaseMessagesStackView *)self layout:index];
  [v15 tapbackConfigurationForProposedConfiguration:index spriteIndex:{v14, v13, v12, v11}];

  return result;
}

- (PXGAssetDecorationInfo)assetDecorationInfoForAsset:(SEL)asset atSpriteIndex:(id)index inLayout:(unsigned int)layout
{
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  result = self->_assetDecorationSource;
  if (result)
  {
    return [(PXGAssetDecorationInfo *)result assetDecorationInfoForAsset:index atSpriteIndex:*&layout inLayout:a6];
  }

  return result;
}

- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)range inLayout:(id)layout
{
  v5 = [(PXBaseMessagesStackView *)self layout:range];
  v6 = [v5 itemForSpriteIndex:0];

  layout = [(PXBaseMessagesStackView *)self layout];
  v8 = [layout numberOfItems] - v6;

  v9 = self->_cachedClampedItemRange.location == v6 && self->_cachedClampedItemRange.length == v8;
  if (!v9 || (cachedClampedFetchResult = self->_cachedClampedFetchResult) == 0)
  {
    currentDataSource = [(PXBaseMessagesStackView *)self currentDataSource];
    identifier = [currentDataSource identifier];
    v15 = xmmword_1A5380D10;
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    [currentDataSource assetsInSectionIndexPath:&identifier];
    objc_claimAutoreleasedReturnValue();
    PXDisplayAssetFetchResultSubfetchResultWithRange();
  }

  v11 = cachedClampedFetchResult;

  return v11;
}

- (CGSize)minSpriteSizeForPresentationStyle:(unint64_t)style
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)itemsLayout:(id)layout bestCropRectForItem:(int64_t)item withAspectRatio:(double)ratio
{
  currentDataSource = [(PXBaseMessagesStackView *)self currentDataSource];
  v25[0] = [currentDataSource identifier];
  v25[1] = 0;
  v25[2] = item;
  v25[3] = 0x7FFFFFFFFFFFFFFFLL;
  v8 = [currentDataSource assetAtItemIndexPath:v25];
  v9 = +[PXMessagesUISettings sharedInstance];
  bestCropRectEnabled = [v9 bestCropRectEnabled];

  if (bestCropRectEnabled && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 bestCropRectForAspectRatioV2:0 verticalContentMode:2 cropMode:ratio];
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
    pixelWidth = [v8 pixelWidth];
    pixelHeight = [v8 pixelHeight];
    if (pixelWidth && pixelHeight)
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

- (double)itemsLayout:(id)layout aspectRatioForItem:(int64_t)item
{
  v6 = 0.75;
  if ([(PXBaseMessagesStackView *)self useAspectTiles])
  {
    currentDataSource = [(PXBaseMessagesStackView *)self currentDataSource];
    v12[0] = [currentDataSource identifier];
    v12[1] = 0;
    v12[2] = item;
    v12[3] = 0x7FFFFFFFFFFFFFFFLL;
    v8 = [currentDataSource assetAtItemIndexPath:v12];
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

- (id)itemsLayout:(id)layout objectReferenceForItem:(int64_t)item
{
  currentDataSource = [(PXBaseMessagesStackView *)self currentDataSource];
  v8[0] = [currentDataSource identifier];
  v8[1] = 0;
  v8[2] = item;
  v8[3] = 0x7FFFFFFFFFFFFFFFLL;
  v6 = [currentDataSource assetReferenceAtItemIndexPath:v8];

  return v6;
}

- (int64_t)itemsLayout:(id)layout itemForObjectReference:(id)reference options:(unint64_t)options
{
  optionsCopy = options;
  referenceCopy = reference;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = referenceCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (v10)
  {
    v11 = v10;
    currentDataSource = [(PXBaseMessagesStackView *)self currentDataSource];
    v13 = currentDataSource;
    v14 = referenceCopy;
    if (optionsCopy)
    {
      v14 = [currentDataSource objectReferenceNearestToObjectReference:v11 inSection:0];
      if (v14)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          px_descriptionForAssertionMessage = [v14 px_descriptionForAssertionMessage];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PXMessagesStackView.m" lineNumber:631 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"[dataSource objectReferenceNearestToObjectReference:assetReference inSection:0]", v18, px_descriptionForAssertionMessage}];
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

- (BOOL)stackItemsLayout:(id)layout itemHasTapback:(int64_t)tapback
{
  layoutCopy = layout;
  v7 = [layoutCopy spriteIndexForItem:tapback];
  v8 = v7 != -1 && [(PXMessagesStackView *)self hasTapbacksForSpriteIndex:v7 inLayout:layoutCopy];

  return v8;
}

- (void)setTransitionPlaceholderView:(id)view
{
  viewCopy = view;
  transitionPlaceholderView = self->_transitionPlaceholderView;
  if (transitionPlaceholderView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)transitionPlaceholderView removeFromSuperview];
    objc_storeStrong(&self->_transitionPlaceholderView, view);
    viewCopy = v8;
    if (!self->_transitionPlaceholderView)
    {
      v7 = [MEMORY[0x1E695DFD8] set];
      [(PXMessagesStackView *)self setHiddenAssetReferences:v7 animationType:2];

      viewCopy = v8;
    }
  }
}

- (id)_presentationControllerForAsset:(id)asset
{
  assetCopy = asset;
  if (-[PXMessagesStackView allowPlayableContentLoading](self, "allowPlayableContentLoading") && ((v5 = [assetCopy playbackStyle], v6 = objc_msgSend(assetCopy, "playbackStyle"), v7 = v6 == 5, v5 == 4) || v6 == 5))
  {
    uuid = [assetCopy uuid];
    v8 = [(PXLRUMemoryCache *)self->_videoPresentationControllersByItem objectForKeyedSubscript:uuid];
    if (!v8)
    {
      v10 = [PXGDisplayAssetVideoPresentationController alloc];
      layout = [(PXBaseMessagesStackView *)self layout];
      layoutQueue = [layout layoutQueue];
      v8 = [(PXGDisplayAssetVideoPresentationController *)v10 initWithDisplayAsset:assetCopy accessQueue:layoutQueue];

      [(PXGDisplayAssetVideoPresentationController *)v8 setVisualEffectViewClass:[(PXMessagesStackView *)self customAssetImageViewContainerClass]];
      [(PXLRUMemoryCache *)self->_videoPresentationControllersByItem setObject:v8 forKeyedSubscript:uuid];
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
  isSettled = [(PXBaseMessagesStackView *)self isSettled];
  layout = [(PXBaseMessagesStackView *)self layout];
  primaryItemIndex = [layout primaryItemIndex];

  layout2 = [(PXBaseMessagesStackView *)self layout];
  numberOfItems = [layout2 numberOfItems];

  if (isSettled)
  {
    if (primaryItemIndex >= numberOfItems)
    {
      v10 = 0;
    }

    else
    {
      currentDataSource = [(PXBaseMessagesStackView *)self currentDataSource];
      currentDataSource2 = [(PXBaseMessagesStackView *)self currentDataSource];
      v16[0] = [currentDataSource2 identifier];
      v16[1] = 0;
      v16[2] = primaryItemIndex;
      v16[3] = 0x7FFFFFFFFFFFFFFFLL;
      v10 = [currentDataSource assetAtItemIndexPath:v16];
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
  if (primaryItemIndex < numberOfItems)
  {
    v12 = primaryItemIndex;
  }

  v15 = isSettled;
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

- (BOOL)_shouldAutoplayAsset:(id)asset
{
  assetCopy = asset;
  if ([assetCopy playbackStyle] == 5 && self->_delegateRespondsTo.shouldAutoplayAsset)
  {
    delegate = [(PXMessagesStackView *)self delegate];
    v6 = [delegate stackView:self shouldAutoplayAsset:assetCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setCurrentVideoPresentationController:(id)controller
{
  controllerCopy = controller;
  currentVideoPresentationController = self->_currentVideoPresentationController;
  if (currentVideoPresentationController != controllerCopy)
  {
    v7 = controllerCopy;
    [(PXGDisplayAssetVideoPresentationController *)currentVideoPresentationController performChanges:&__block_literal_global_121_251896];
    objc_storeStrong(&self->_currentVideoPresentationController, controller);
    controllerCopy = v7;
  }
}

- (BOOL)_isSpriteReferenceForPrimaryItem:(id)item
{
  itemCopy = item;
  layout = [(PXBaseMessagesStackView *)self layout];
  primaryItemIndex = [layout primaryItemIndex];
  if (primaryItemIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = primaryItemIndex;
    v9 = [layout spriteIndexForSpriteReference:itemCopy];
    if ([layout numberOfItems] <= v8)
    {
      v10 = [layout spriteIndexForAccessoryItem:{v8 - objc_msgSend(layout, "numberOfItems")}];
    }

    else
    {
      v10 = [layout spriteIndexForItem:v8];
    }

    v7 = v9 == v10;
  }

  return v7;
}

- (void)_handleTap:(id)tap
{
  v59 = *MEMORY[0x1E69E9840];
  tapCopy = tap;
  if ([tapCopy state] != 3)
  {
    goto LABEL_38;
  }

  tungstenView = [(PXBaseMessagesStackView *)self tungstenView];
  [tapCopy locationInView:tungstenView];
  v7 = v6;
  v9 = v8;

  layout = [(PXBaseMessagesStackView *)self layout];
  tungstenView2 = [(PXBaseMessagesStackView *)self tungstenView];
  v12 = [tungstenView2 hitTestResultsAtPoint:{v7, v9}];

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
  v51 = layout;
  v52 = tapCopy;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v55 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v54 + 1) + 8 * i);
      identifier = [v20 identifier];
      v22 = [identifier isEqualToString:v16];

      if (v22)
      {
        spriteReference = [v20 spriteReference];
        spriteReference2 = [v20 spriteReference];
        v32 = [(PXMessagesStackView *)self _isSpriteReferenceForPrimaryItem:spriteReference2];

        layout2 = [(PXBaseMessagesStackView *)self layout];
        v34 = [layout2 spriteIndexForSpriteReference:spriteReference];

        layout3 = [(PXBaseMessagesStackView *)self layout];
        v36 = [layout3 itemForSpriteIndex:v34];

        if (v32)
        {
          layout = v51;
          tapCopy = v52;
          if (!self->_delegateRespondsTo.didSelectAssetReference)
          {
            goto LABEL_37;
          }

          delegate2 = [v51 objectReferenceForItem:{objc_msgSend(v51, "primaryItemIndex")}];
          delegate = [(PXMessagesStackView *)self delegate];
          [delegate stackView:self didSelectAssetReference:delegate2];

LABEL_23:
          goto LABEL_37;
        }

        layout = v51;
        tapCopy = v52;
LABEL_27:
        if (v36 != 0x7FFFFFFFFFFFFFFFLL)
        {
          primaryItemIndex = [layout primaryItemIndex];
          v46 = primaryItemIndex;
          if (v36 >= primaryItemIndex)
          {
            v49 = primaryItemIndex + 1;
            numberOfItems = [layout numberOfItems];
            if (v49 < numberOfItems - 1)
            {
              v48 = v46 + 1;
            }

            else
            {
              v48 = numberOfItems - 1;
            }
          }

          else
          {
            if (primaryItemIndex <= 1)
            {
              v47 = 1;
            }

            else
            {
              v47 = primaryItemIndex;
            }

            v48 = v47 - 1;
          }

          [(PXBaseMessagesStackView *)self scrollToIndex:v48 animated:1];
        }

        goto LABEL_37;
      }

      identifier2 = [v20 identifier];
      v24 = [identifier2 isEqualToString:v17];

      if (!v24)
      {
        identifier3 = [v20 identifier];
        v29 = [identifier3 isEqualToString:v18];

        if ((v29 & 1) == 0)
        {
          continue;
        }

        spriteReference3 = [v20 spriteReference];
        spriteReference4 = [v20 spriteReference];
        v41 = [(PXMessagesStackView *)self _isSpriteReferenceForPrimaryItem:spriteReference4];

        layout = v51;
        v42 = [v51 spriteIndexForSpriteReference:spriteReference3];
        numberOfItems2 = [v51 numberOfItems];
        v44 = [v51 accessoryItemForSpriteIndex:v42];

        if (v41)
        {
          tapCopy = v52;
          if (!self->_delegateRespondsTo.didSelectAdditionalItems)
          {
            goto LABEL_37;
          }

          delegate2 = [(PXMessagesStackView *)self delegate];
          [delegate2 stackViewDidSelectAdditionalItemsCard:self];
          goto LABEL_23;
        }

        v36 = v44 + numberOfItems2;
        tapCopy = v52;
        goto LABEL_27;
      }

      spriteReference5 = [v20 spriteReference];
      tungstenView3 = [(PXBaseMessagesStackView *)self tungstenView];
      v27 = [tungstenView3 viewForSpriteReference:spriteReference5];

      if (v27)
      {
        [v52 locationInView:v27];
        if ([v27 handleTapAtPoint:?])
        {

          layout = v51;
          tapCopy = v52;
          goto LABEL_25;
        }
      }
    }

    v14 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    layout = v51;
    tapCopy = v52;
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

- (void)setItemEffectViewClass:(Class)class
{
  if (class)
  {
    classCopy = class;
    v6 = objc_opt_class();
    if (([v6 isSubclassOfClass:objc_opt_class()] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXMessagesStackView.m" lineNumber:435 description:{@"Invalid parameter not satisfying: %@", @"itemEffectViewClass == nil || [itemEffectViewClass.class isSubclassOfClass:UIView.class]"}];
    }
  }

  else
  {
    classCopy = objc_opt_class();
  }

  if (classCopy != self->_itemEffectViewClass)
  {
    objc_storeStrong(&self->_itemEffectViewClass, classCopy);
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__PXMessagesStackView_setItemEffectViewClass___block_invoke;
    v10[3] = &unk_1E774B4A8;
    objc_copyWeak(&v11, &location);
    tungstenView = [(PXBaseMessagesStackView *)self tungstenView];
    [tungstenView setCustomAssetImageViewClassConfigurator:v10];

    layout = [(PXBaseMessagesStackView *)self layout];
    [layout setSpritesNeedUpdate];

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

- (void)_handleCustomAssetImageViewClassConfiguratorView:(id)view
{
  viewCopy = view;
  if ([(PXMessagesStackView *)self itemEffectViewClass])
  {
    itemEffectViewClass = [(PXMessagesStackView *)self itemEffectViewClass];
    v6 = viewCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_4:
        v7 = objc_alloc_init(itemEffectViewClass);
        [v6 setItemEffectView:v7];

        [v6 setIgnoresClipContentRequests:{-[PXMessagesStackView cornerRadiusClipsTopLevelContent](self, "cornerRadiusClipsTopLevelContent") ^ 1}];
        goto LABEL_5;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = objc_opt_class();
      v10 = NSStringFromClass(v11);
      px_descriptionForAssertionMessage = [v6 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXMessagesStackView.m" lineNumber:423 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"view", v10, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXMessagesStackView.m" lineNumber:423 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"view", v10}];
    }

    goto LABEL_4;
  }

LABEL_5:
}

- (void)_cleanupForDisplayOrReuse
{
  activityIndicatorViewUserData = self->_activityIndicatorViewUserData;
  self->_activityIndicatorViewUserData = 0;

  layout = [(PXBaseMessagesStackView *)self layout];
  [layout invalidateDecoration];

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

- (void)setAdditionalItemsCount:(id)count
{
  if (self->_additionalItemsCount.count != count.var0 || self->_additionalItemsCount.type != count.var1)
  {
    var0 = count.var0;
    self->_additionalItemsCount = count;
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

- (id)installTransitionSnapshotViewForAssetReference:(id)reference uncroppedImageFrame:(CGRect *)frame
{
  referenceCopy = reference;
  currentAssetReference = [(PXMessagesStackView *)self currentAssetReference];
  v8 = [(PXMessagesStackView *)self regionOfInterestForTransitioningAssetReference:currentAssetReference];

  placeholderViewFactory = [v8 placeholderViewFactory];

  if (placeholderViewFactory)
  {
    placeholderViewFactory2 = [v8 placeholderViewFactory];
    placeholderViewFactory = (placeholderViewFactory2)[2](placeholderViewFactory2, v8);

    [(PXMessagesStackView *)self addSubview:placeholderViewFactory];
    [(PXMessagesStackView *)self setTransitionPlaceholderView:placeholderViewFactory];
    [(PXMessagesStackView *)self setTransitionPlaceholderAssetReference:referenceCopy];
    v11 = [MEMORY[0x1E695DFD8] setWithObject:referenceCopy];
    [(PXMessagesStackView *)self setHiddenAssetReferences:v11];
  }

  if (frame)
  {
    [v8 uncroppedImageFrameInCoordinateSpace:self];
    [placeholderViewFactory convertRect:self fromView:?];
    frame->origin.x = v12;
    frame->origin.y = v13;
    frame->size.width = v14;
    frame->size.height = v15;
  }

  return placeholderViewFactory;
}

- (void)setHiddenAssetReferences:(id)references animationType:(int64_t)type
{
  referencesCopy = references;
  tungstenView = [(PXBaseMessagesStackView *)self tungstenView];
  rootLayout = [tungstenView rootLayout];
  [rootLayout hideSpritesForObjectReferences:referencesCopy];

  if (type >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PXPhotosGridHideAssetAnimationType _GridHideAssetAnimationType(PXMessagesStackHideAssetAnimationType)"];
    [currentHandler handleFailureInFunction:v15 file:@"PXMessagesStackView.m" lineNumber:77 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  tungstenView2 = [(PXBaseMessagesStackView *)self tungstenView];
  rootLayout2 = [tungstenView2 rootLayout];
  v11 = [off_1E7721808 createDecorationAnimationsForLayout:rootLayout2 animationType:type];

  v12 = [v11 count];
  if (type && !v12)
  {
    v13 = PLUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Failed to create animations for hiding/unhiding assets", v16, 2u);
    }
  }
}

- (id)_trackingContainerViewForAssetReference:(id)reference
{
  referenceCopy = reference;
  tungstenView = [(PXBaseMessagesStackView *)self tungstenView];
  rootLayout = [tungstenView rootLayout];

  v7 = [rootLayout spriteReferenceForObjectReference:referenceCopy];

  v8 = [rootLayout spriteIndexForSpriteReference:v7 options:0];
  if (v8 == -1)
  {
    v11 = 0;
  }

  else
  {
    v9 = v8;
    tungstenView2 = [(PXBaseMessagesStackView *)self tungstenView];
    v11 = [tungstenView2 trackingContainerViewForSpriteIndex:v9];
  }

  return v11;
}

- (id)_regionOfInterestForAssetReference:(id)reference forTransitioning:(BOOL)transitioning
{
  v8 = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
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
  currentVideoPresentationController = [(PXMessagesStackView *)self currentVideoPresentationController];
  v3 = [currentVideoPresentationController actualPlayState] == 2;

  return v3;
}

- (void)setAllowPlayableContentLoading:(BOOL)loading
{
  if (self->_allowPlayableContentLoading != loading)
  {
    self->_allowPlayableContentLoading = loading;
    if (!loading)
    {
      [(PXLRUMemoryCache *)self->_videoPresentationControllersByItem removeAllObjects];
    }

    layout = [(PXBaseMessagesStackView *)self layout];
    v5 = [off_1E7721450 changeDetailsWithChangedIndexRange:{0, objc_msgSend(layout, "numberOfItems")}];
    [layout setNumberOfItems:objc_msgSend(layout withChangeDetails:"numberOfItems") changeMediaVersionHandler:{v5, &__block_literal_global_251975}];
    [(PXMessagesStackView *)self _updateCurrentPresentationController];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)setShadowsDisabled:(BOOL)disabled
{
  v3.receiver = self;
  v3.super_class = PXMessagesStackView;
  [(PXBaseMessagesStackView *)&v3 setShadowsDisabled:disabled];
}

- (void)willBeginScrolling
{
  v3.receiver = self;
  v3.super_class = PXMessagesStackView;
  [(PXBaseMessagesStackView *)&v3 willBeginScrolling];
  [(PXMessagesStackView *)self removeTransitionSnapshotView];
}

- (void)primaryItemDidChange:(BOOL)change didChangeIndex:(BOOL)index
{
  indexCopy = index;
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = PXMessagesStackView;
  [PXBaseMessagesStackView primaryItemDidChange:sel_primaryItemDidChange_didChangeIndex_ didChangeIndex:?];
  [(PXMessagesStackView *)self _updateCurrentPresentationController];
  if (self->_delegateRespondsTo.didChangeCurrentAssetReference)
  {
    delegate = [(PXMessagesStackView *)self delegate];
    currentAssetReference = [(PXMessagesStackView *)self currentAssetReference];
    [delegate stackView:self didChangeCurrentAssetReference:currentAssetReference isProgrammaticChange:changeCopy didChangeIndex:indexCopy];
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
  currentDataSource = [(PXBaseMessagesStackView *)self currentDataSource];
  [(PXPhotosGridAssetDecorationSource *)assetDecorationSource setDataSource:currentDataSource section:0];

  [(PXMessagesStackView *)self _updateCurrentPresentationController];
  [(PXMessagesStackView *)self removeTransitionSnapshotView];
}

- (BOOL)contentChangedForItemBeforeDataSource:(id)source beforeIndexPath:(PXSimpleIndexPath *)path afterDataSource:(id)dataSource afterIndexPath:(PXSimpleIndexPath *)indexPath
{
  v8 = *&path->item;
  v19 = *&path->dataSourceIdentifier;
  v20 = v8;
  dataSourceCopy = dataSource;
  v10 = [source assetAtItemIndexPath:&v19];
  v11 = *&indexPath->item;
  v19 = *&indexPath->dataSourceIdentifier;
  v20 = v11;
  v12 = [dataSourceCopy assetAtItemIndexPath:&v19];

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

- (void)setMediaProvider:(id)provider
{
  providerCopy = provider;
  if (self->_mediaProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_mediaProvider, provider);
    [(PXBaseMessagesStackView *)self registerAllTextureProvidersWithMediaProvider:v6];
    providerCopy = v6;
  }
}

- (Class)customAssetImageViewContainerClass
{
  tungstenView = [(PXBaseMessagesStackView *)self tungstenView];
  customAssetImageViewClass = [tungstenView customAssetImageViewClass];

  return customAssetImageViewClass;
}

- (void)setCustomAssetImageViewContainerClass:(Class)class
{
  tungstenView = [(PXBaseMessagesStackView *)self tungstenView];
  [tungstenView setCustomAssetImageViewClass:class];
}

- (void)setCornerRadiusClipsTopLevelContent:(BOOL)content
{
  if (self->_cornerRadiusClipsTopLevelContent != content)
  {
    self->_cornerRadiusClipsTopLevelContent = content;
    layout = [(PXBaseMessagesStackView *)self layout];
    [layout setSpritesNeedUpdate];
  }
}

- (void)setItemCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = PXMessagesStackView;
  layout = [(PXBaseMessagesStackView *)&v5 layout];
  [layout setItemCornerRadius:radius];
}

- (PXMessagesStackView)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = PXMessagesStackView;
  v3 = [(PXBaseMessagesStackView *)&v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v4 = v3;
  if (v3)
  {
    layout = [(PXBaseMessagesStackView *)v3 layout];
    tungstenView = [(PXBaseMessagesStackView *)v4 tungstenView];
    v7 = objc_alloc_init(off_1E7721800);
    assetDecorationSource = v4->_assetDecorationSource;
    v4->_assetDecorationSource = v7;

    [(PXPhotosGridAssetDecorationSource *)v4->_assetDecorationSource setDecoratedLayout:layout];
    [(PXPhotosGridAssetDecorationSource *)v4->_assetDecorationSource setDurationAlwaysHidden:1];
    [(PXPhotosGridAssetDecorationSource *)v4->_assetDecorationSource setEnableSpatialBadges:1];
    [layout setDelegate:v4];
    v9 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__handleTap_];
    [(UITapGestureRecognizer *)v9 setDelegate:v4];
    [(UITapGestureRecognizer *)v9 setCancelsTouchesInView:0];
    tapGestureRecognizer = v4->_tapGestureRecognizer;
    v4->_tapGestureRecognizer = v9;
    v11 = v9;

    [tungstenView addGestureRecognizer:v11];
    v12 = objc_alloc_init(PXLRUMemoryCache);
    videoPresentationControllersByItem = v4->_videoPresentationControllersByItem;
    v4->_videoPresentationControllersByItem = v12;

    -[PXLRUMemoryCache setNumberOfSlots:](v4->_videoPresentationControllersByItem, "setNumberOfSlots:", (2 * [layout stackedItemsCount]) | 1);
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