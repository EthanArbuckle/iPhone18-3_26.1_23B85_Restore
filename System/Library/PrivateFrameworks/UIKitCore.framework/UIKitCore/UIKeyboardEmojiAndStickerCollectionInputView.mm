@interface UIKeyboardEmojiAndStickerCollectionInputView
- (BOOL)_handleBaseKeySelectionEvent:(id)a3;
- (BOOL)_handleInitialSelectionEvent:(id)a3;
- (BOOL)_handleVariantSelectionEvent:(id)a3;
- (BOOL)_userHasSelectedSkinToneEmoji;
- (BOOL)baseStringIsCoupleEmoji:(id)a3;
- (BOOL)cellShouldScrollWhenSelectedAtIndexPath:(id)a3;
- (BOOL)datasourceIsReady;
- (BOOL)doesShowMemoji;
- (BOOL)doesShowStickers;
- (BOOL)genderEmojiBaseStringNeedVariantSelector:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)handleKeyEvent:(id)a3;
- (BOOL)handleKeyInputForCollectionViewNavigation:(id)a3;
- (BOOL)handleKeyInputForFamilySelector:(id)a3;
- (BOOL)handleKeyInputForVariantSelector:(id)a3;
- (BOOL)handleSelectionEvent:(id)a3;
- (BOOL)isCellMostlyOffscreen:(CGRect)a3;
- (BOOL)isEmojiCategory:(int64_t)a3;
- (BOOL)isMemojiCategory:(int64_t)a3;
- (BOOL)isRecentCategory:(int64_t)a3;
- (BOOL)isSearchCategory:(int64_t)a3;
- (BOOL)isStickersCategory:(int64_t)a3;
- (BOOL)keySupportsVariants:(id)a3;
- (BOOL)skinToneWasUsedForEmoji:(id)a3;
- (CGRect)cellRectToRevealFullCell:(CGRect)a3;
- (CGRect)targetRectForIndexPath:(id)a3 atScrollPosition:(unint64_t)a4;
- (CGRect)targetRectForSectionIndex:(int64_t)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (NSIndexPath)tappedSkinToneEmoji;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (UIKBEmojiHitTestResponder)hitTestResponder;
- (UIKeyboardEmojiAndStickerCollectionInputView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5 screenTraits:(id)a6;
- (UIKeyboardEmojiCategory)category;
- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5;
- (double)distanceInScrollingDirection:(CGSize)a3;
- (double)emojiKeyWidth;
- (double)pointInScrollingDirection:(CGPoint)a3;
- (double)scrollingEndPoint;
- (double)scrollingStartPoint;
- (id)_usageSourceFromSection:(int64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)currentlyFocusedIndexPath;
- (id)emojiBaseFirstCharacterString:(id)a3;
- (id)emojiBaseString:(id)a3;
- (id)itemInRect:(CGRect)a3;
- (id)recentsIndexPath;
- (id)selectedChildSkinToneEmoji:(id)a3;
- (id)stickerCellForIndexPath:(id)a3;
- (id)subTreeHitTest:(CGPoint)a3;
- (id)treeForCell:(id)a3;
- (id)treeForStickerCell:(id)a3;
- (id)trulyVisibleIndexPaths;
- (id)verticalNeighborForIndexPath:(id)a3 up:(BOOL)a4 byPage:(BOOL)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)currentlyFocusedSectionIndex;
- (int64_t)didInputSubTree:(id)a3;
- (int64_t)emojiCategoryTypeForSection:(int64_t)a3;
- (int64_t)emojiSectionIndex;
- (int64_t)indexForPrettyCategoryDisplay:(id)a3;
- (int64_t)keyCodeForCurrentEnvironmentFromKeyCode:(int64_t)a3;
- (int64_t)memojiSectionIndex;
- (int64_t)numberOfPrefixCategories;
- (int64_t)numberOfPrefixSections;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (int64_t)recentSectionIndex;
- (int64_t)rowsInSection:(int64_t)a3;
- (int64_t)sectionForCategoryType:(int64_t)a3;
- (int64_t)stickersSectionIndex;
- (int64_t)translatedEmojiCategoryForSection:(int64_t)a3;
- (int64_t)updateToCategoryWithOffsetPercentage:(double)a3;
- (void)_addDelegate:(id)a3;
- (void)_handleLongPress:(id)a3;
- (void)_handleTap:(id)a3;
- (void)_notifyDelegatesRearrangeModeChanged:(BOOL)a3;
- (void)_removeDelegate:(id)a3;
- (void)_setRearrangeMode:(BOOL)a3;
- (void)_setUserHasSelectedSkinToneEmoji:(BOOL)a3;
- (void)_setupLongPressGestureRecognizer;
- (void)_setupTapGestureRecognizer;
- (void)_updateRearrangeModeForCell:(id)a3 atIndexPath:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)configureDataSource;
- (void)dealloc;
- (void)deleteImageGlyph:(id)a3 atPath:(id)a4;
- (void)didDismissCardForKeyboardMediaController:(id)a3;
- (void)didInsertMediaForKeyboardMediaController:(id)a3;
- (void)didMoveToWindow;
- (void)didPresentCardForKeyboardMediaController:(id)a3;
- (void)didTearDownRecentsViewForKeyboardMediaController:(id)a3;
- (void)didUpdateImageGlyphPermissions;
- (void)dimKeys:(id)a3;
- (void)emojiSearchTextFieldDidBecomeActive:(id)a3;
- (void)emojiSearchTextFieldDidBecomeInactive:(id)a3;
- (void)emojiSearchTextFieldDidReset:(id)a3;
- (void)emojiSearchTextFieldWillBecomeActive:(id)a3;
- (void)emojiSearchTextFieldWillBecomeInactive:(id)a3;
- (void)emojiSearchTextFieldWillClear:(id)a3;
- (void)handleScrollViewDynamicPagination:(id)a3;
- (void)insertImageGlyph:(id)a3 dismiss:(BOOL)a4;
- (void)insertSelectedEmoji:(id)a3 shouldDismissPopover:(BOOL)a4;
- (void)rearrangeStateChanged:(BOOL)a3;
- (void)resetSelectionIfNeeded;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setContentScaleFactor:(double)a3;
- (void)setHitTestResponder:(id)a3;
- (void)setSearchResults:(id)a3;
- (void)shouldDismissModalDisplayView:(id)a3;
- (void)updateDataSourceSnapshot;
- (void)updateDataSourceSnapshotAnimated:(BOOL)a3;
- (void)updateDataSourceWithSnapshot:(id)a3 animated:(BOOL)a4;
- (void)updateHighlightForIndexPath:(id)a3 scrollIfNeeded:(BOOL)a4 animateScroll:(BOOL)a5;
- (void)updateLastSeenItemForIndexPath:(id)a3;
- (void)updateOffsetForSearchResultsAnimated:(BOOL)a3;
- (void)updatePreferencesForSelectedEmoji:(id)a3;
- (void)updateToCategory:(int64_t)a3;
- (void)updateToIndexPath:(id)a3;
- (void)willDisplayModalActionView:(id)a3 withSubTreeKeyView:(id)a4 completion:(id)a5;
@end

@implementation UIKeyboardEmojiAndStickerCollectionInputView

- (UIKeyboardEmojiAndStickerCollectionInputView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5 screenTraits:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [v15 orientation];
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v18 = +[UIKeyboard activeKeyboard];
    v17 = [v18 interfaceOrientation];

    v19 = +[UIKeyboardImpl keyboardScreen];
    v15 = [UIKBScreenTraits traitsWithScreen:v19 orientation:v17];
  }

  v20 = (v17 - 3) <= 1 && [v15 idiom] != 1;
  self->_useWideAnimojiCell = v20;
  v58.receiver = self;
  v58.super_class = UIKeyboardEmojiAndStickerCollectionInputView;
  v21 = [(UIView *)&v58 initWithFrame:x, y, width, height];
  if (!v21)
  {
    goto LABEL_22;
  }

  v22 = os_log_create("com.apple.uikit", "StickerCollectionInputView");
  logger = v21->_logger;
  v21->_logger = v22;

  v61 = 0;
  v62 = &v61;
  v63 = 0x2050000000;
  v24 = getSTKImageGlyphDataSourceClass_softClass_0;
  v64 = getSTKImageGlyphDataSourceClass_softClass_0;
  if (!getSTKImageGlyphDataSourceClass_softClass_0)
  {
    location[0] = MEMORY[0x1E69E9820];
    location[1] = 3221225472;
    location[2] = __getSTKImageGlyphDataSourceClass_block_invoke_0;
    location[3] = &unk_1E70F2F20;
    v60 = &v61;
    StickerKitLibraryCore_0();
    Class = objc_getClass("STKImageGlyphDataSource");
    *(v60[1] + 24) = Class;
    getSTKImageGlyphDataSourceClass_softClass_0 = *(v60[1] + 24);
    v24 = v62[3];
  }

  v26 = v24;
  _Block_object_dispose(&v61, 8);
  if (v24)
  {
    v27 = [v24 sharedInstance];
    imageGlyphDataSource = v21->_imageGlyphDataSource;
    v21->_imageGlyphDataSource = v27;

    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    [v29 addObserver:v21 selector:sel_updateDataSourceSnapshot name:@"com.apple.stickerkit.ImageGlyphDataSourceDidUpdate" object:0];

    if (objc_opt_respondsToSelector())
    {
      v30 = [MEMORY[0x1E696AD88] defaultCenter];
      [v30 addObserver:v21 selector:sel_didUpdateImageGlyphPermissions name:@"com.apple.stickerkit.ImageGlyphPermissionsDidChange" object:0];

      v21->_didAcceptRestrictedDistributionTerms = [(STKImageGlyphDataSource *)v21->_imageGlyphDataSource didAcceptRestrictedDistributionTerms];
    }
  }

  else
  {
    v31 = v21->_imageGlyphDataSource;
    v21->_imageGlyphDataSource = 0;

    v21->_didAcceptRestrictedDistributionTerms = 1;
  }

  [UIKeyboardEmojiCategory setDoesShowStickers:[(UIKeyboardEmojiAndStickerCollectionInputView *)v21 doesShowStickers]];
  v21->_frameInset = 0.0;
  v32 = [UIKeyboardEmojiGraphicsTraits emojiGraphicsTraitsWithScreenTraits:v15];
  emojiGraphicsTraits = v21->_emojiGraphicsTraits;
  v21->_emojiGraphicsTraits = v32;

  v34 = +[UIColor clearColor];
  [(UIView *)v21 setBackgroundColor:v34];

  [(UIView *)v21 setOpaque:0];
  [(UIKBKeyView *)v21 updateForKeyplane:v13 key:v14];
  v21->_isDraggingInputView = 0;
  unavailableLaunchPath = v21->_unavailableLaunchPath;
  v21->_unavailableLaunchPath = 0;

  v36 = objc_alloc_init(UIKeyboardEmojiLayout);
  flowLayout = v21->_flowLayout;
  v21->_flowLayout = &v36->super;

  [(UICollectionViewFlowLayout *)v21->_flowLayout setMinimumInteritemSpacing:0.0];
  [(UICollectionViewFlowLayout *)v21->_flowLayout setMinimumLineSpacing:0.0];
  -[UICollectionViewFlowLayout setScrollDirection:](v21->_flowLayout, "setScrollDirection:", [v15 isEmojiScrollingDirectionVertical] ^ 1);
  v38 = v21->_flowLayout;
  if (objc_opt_respondsToSelector())
  {
    v39 = [(STKImageGlyphDataSource *)v21->_imageGlyphDataSource imageGlyphCompositionalLayout];
LABEL_18:

    v38 = v39;
    goto LABEL_19;
  }

  if (objc_opt_respondsToSelector())
  {
    v40 = objc_alloc_init(UICollectionViewCompositionalLayoutConfiguration);
    -[UICollectionViewCompositionalLayoutConfiguration setScrollDirection:](v40, "setScrollDirection:", [v15 isEmojiScrollingDirectionVertical] ^ 1);
    objc_initWeak(location, v21);
    v41 = [UICollectionViewCompositionalLayout alloc];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __88__UIKeyboardEmojiAndStickerCollectionInputView_initWithFrame_keyplane_key_screenTraits___block_invoke;
    v56[3] = &unk_1E711BBD8;
    objc_copyWeak(&v57, location);
    v39 = [(UICollectionViewCompositionalLayout *)v41 initWithSectionProvider:v56 configuration:v40];

    objc_destroyWeak(&v57);
    objc_destroyWeak(location);
    v38 = v40;
    goto LABEL_18;
  }

LABEL_19:
  v42 = [UIKeyboardEmojiAndStickerCollectionView alloc];
  [(UIView *)v21 bounds];
  v43 = [(UIKeyboardEmojiAndStickerCollectionView *)v42 initWithFrame:v38 collectionViewLayout:v21->_emojiGraphicsTraits emojiGraphicsTraits:?];
  collectionView = v21->_collectionView;
  v21->_collectionView = v43;

  [(UICollectionView *)v21->_collectionView setPrefetchingEnabled:1];
  v45 = v21->_collectionView;
  v46 = +[UIColor clearColor];
  [(UICollectionView *)v45 setBackgroundColor:v46];

  [(UIView *)v21->_collectionView setAutoresizingMask:18];
  [(UIView *)v21 contentScaleFactor];
  [(UIView *)v21->_collectionView setContentScaleFactor:?];
  [(UICollectionView *)v21->_collectionView setDelegate:v21];
  [(UIScrollView *)v21->_collectionView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)v21->_collectionView setShowsVerticalScrollIndicator:0];
  v47 = [(UIScrollView *)v21->_collectionView panGestureRecognizer];
  [v47 setMaximumNumberOfTouches:1];

  v48 = [(UIScrollView *)v21->_collectionView panGestureRecognizer];
  [v48 setMinimumNumberOfTouches:1];

  v49 = [(UIScrollView *)v21->_collectionView panGestureRecognizer];
  [v49 setFailsPastMaxTouches:1];

  [(UICollectionView *)v21->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"UICollectionElementKindSectionHeader" withReuseIdentifier:@"kEmojiCategoryTitleIdentifier"];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)v21 configureDataSource];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)v21 updateDataSourceSnapshotAnimated:0];
  v21->_hasCompletedInitialDisplay = 0;
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)v21 supportsDatasourceIsReady])
  {
    [(UIView *)v21->_collectionView setHidden:1];
  }

  v50 = +[UIKeyboardImpl activeInstance];
  v21->_inputDelegateCanSupportAnimoji = [v50 canPasteImage];

  v51 = [MEMORY[0x1E695E000] standardUserDefaults];
  v52 = [v51 valueForKey:@"com.apple.Animoji.StickerRecents.SplashVersion"];
  v21->_hasShownAnimojiFirstTimeExperience = v52 != 0;

  v21->_shouldRetryFetchingAnimojiRecents = 0;
  [(UIView *)v21 addSubview:v21->_collectionView];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)v21 _setupLongPressGestureRecognizer];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)v21 _setupTapGestureRecognizer];
  v53 = [[UIKeyboardEmojiAndStickerCollectionInputViewKeylineView alloc] initWithSuperview:v21];
  keylineView = v21->_keylineView;
  v21->_keylineView = v53;

LABEL_22:
  return v21;
}

id __88__UIKeyboardEmojiAndStickerCollectionInputView_initWithFrame_keyplane_key_screenTraits___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained[110] sectionLayoutForSectionIndex:a2 environment:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_addDelegate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    delegates = self->_delegates;
    v8 = v4;
    if (!delegates)
    {
      v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v7 = self->_delegates;
      self->_delegates = v6;

      delegates = self->_delegates;
    }

    [(NSHashTable *)delegates addObject:v8];
    v4 = v8;
  }
}

- (void)_removeDelegate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    [(NSHashTable *)self->_delegates removeObject:v4];
    v5 = [(NSHashTable *)self->_delegates count];
    v4 = v7;
    if (!v5)
    {
      delegates = self->_delegates;
      self->_delegates = 0;

      v4 = v7;
    }
  }
}

- (void)_notifyDelegatesRearrangeModeChanged:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSHashTable *)self->_delegates copy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 rearrangeStateChanged:v3];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)rearrangeStateChanged:(BOOL)a3
{
  v3 = a3;
  v7 = *MEMORY[0x1E69E9840];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_188A29000, logger, OS_LOG_TYPE_DEFAULT, "Rearrange state changed to: %{BOOL}d", v6, 8u);
  }

  [(UIKeyboardEmojiAndStickerCollectionInputView *)self _setRearrangeMode:v3];
}

- (void)_setupLongPressGestureRecognizer
{
  if (self->_longPressRecognizer)
  {
    [(UIView *)self->_collectionView removeGestureRecognizer:?];
  }

  v3 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel__handleLongPress_];
  longPressRecognizer = self->_longPressRecognizer;
  self->_longPressRecognizer = v3;

  [(UIGestureRecognizer *)self->_longPressRecognizer setDelegate:self];
  [(UIGestureRecognizer *)self->_longPressRecognizer setEnabled:0];
  collectionView = self->_collectionView;
  v6 = self->_longPressRecognizer;

  [(UIView *)collectionView addGestureRecognizer:v6];
}

- (void)_handleLongPress:(id)a3
{
  v4 = a3;
  if (self->_longPressRecognizer == v4 && self->_isRearranging)
  {
    v19 = v4;
    v5 = [(UIGestureRecognizer *)v4 state];
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        collectionView = self->_collectionView;
        [(UILongPressGestureRecognizer *)v19 locationInView:collectionView];
        v10 = [(UICollectionView *)collectionView indexPathForItemAtPoint:?];
        if (v10)
        {
          [(UICollectionView *)self->_collectionView beginInteractiveMovementForItemAtIndexPath:v10];
          v11 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v10];
          if (v11)
          {
            [(UILongPressGestureRecognizer *)v19 locationInView:v11];
            v13 = v12;
            v15 = v14;
            [v11 frame];
            v17 = v16 * 0.5;
            [v11 frame];
            self->_touchOffsetForMovingCell.x = v17 - v13;
            self->_touchOffsetForMovingCell.y = v18 * 0.5 - v15;
          }

          else
          {
            self->_touchOffsetForMovingCell = *MEMORY[0x1E695EFF8];
          }
        }

        else
        {
          [(UIKeyboardEmojiAndStickerCollectionInputView *)self _setRearrangeMode:0];
        }
      }

      else
      {
        v6 = v5 == 2;
        v4 = v19;
        if (!v6)
        {
          goto LABEL_21;
        }

        [(UILongPressGestureRecognizer *)v19 locationInView:self->_collectionView];
        [(UICollectionView *)self->_collectionView updateInteractiveMovementTargetPosition:v7 + self->_touchOffsetForMovingCell.x, v8 + self->_touchOffsetForMovingCell.y];
      }

LABEL_20:
      v4 = v19;
      goto LABEL_21;
    }

    if (v5 == 3)
    {
      [(UICollectionView *)self->_collectionView endInteractiveMovement];
      goto LABEL_20;
    }

    v6 = v5 == 4;
    v4 = v19;
    if (v6)
    {
      [(UICollectionView *)self->_collectionView cancelInteractiveMovement];
      goto LABEL_20;
    }
  }

LABEL_21:
}

- (void)_setupTapGestureRecognizer
{
  if (self->_tapRecognizer)
  {
    [(UIView *)self->_collectionView removeGestureRecognizer:?];
  }

  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__handleTap_];
  tapRecognizer = self->_tapRecognizer;
  self->_tapRecognizer = v3;

  [(UIGestureRecognizer *)self->_tapRecognizer setEnabled:0];
  [(UIGestureRecognizer *)self->_tapRecognizer setDelegate:self];
  collectionView = self->_collectionView;
  v6 = self->_tapRecognizer;

  [(UIView *)collectionView addGestureRecognizer:v6];
}

- (void)_handleTap:(id)a3
{
  v4 = a3;
  if (self->_tapRecognizer == v4 && self->_isRearranging)
  {
    collectionView = self->_collectionView;
    v7 = v4;
    [(UITapGestureRecognizer *)v4 locationInView:collectionView];
    v6 = [(UICollectionView *)collectionView indexPathForItemAtPoint:?];
    if (!-[UIKeyboardEmojiAndStickerCollectionInputView isStickersCategory:](self, "isStickersCategory:", [v6 section]) && -[UIGestureRecognizer state](v7, "state") == UIGestureRecognizerStateEnded)
    {
      [(UIKeyboardEmojiAndStickerCollectionInputView *)self _setRearrangeMode:0];
    }

    v4 = v7;
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();
  }

  else
  {
    v8 = 0;
  }

  v9 = isKindOfClass | v8;

  return v9 & 1;
}

- (id)_usageSourceFromSection:(int64_t)a3
{
  v5 = +[_UISignalAnalytics getIAPayloadValueGenmojiUsageSourceEmojiKeyboardPicker];
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isRecentCategory:a3])
  {
    v6 = +[_UISignalAnalytics getIAPayloadValueGenmojiUsageSourceRecentsTab];

    v5 = v6;
  }

  return v5;
}

- (void)_setRearrangeMode:(BOOL)a3
{
  v3 = a3;
  if (self->_isRearranging != a3)
  {
    self->_isRearranging = a3;
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self _notifyDelegatesRearrangeModeChanged:a3];
  }

  if (v3)
  {
    v5 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
    [v5 deactivateActiveKey];
  }

  else
  {
    [(UICollectionView *)self->_collectionView endInteractiveMovement];
  }

  [(UIGestureRecognizer *)self->_tapRecognizer setEnabled:v3];
  longPressRecognizer = self->_longPressRecognizer;

  [(UIGestureRecognizer *)longPressRecognizer setEnabled:v3];
}

- (void)_updateRearrangeModeForCell:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  LODWORD(a4) = -[UIKeyboardEmojiAndStickerCollectionInputView isStickersCategory:](self, "isStickersCategory:", [a4 section]);
  v7 = v6;
  if (a4)
  {
    [v7 setDelegate:self];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self _addDelegate:v7];
  }

  else
  {
    [v7 setDelegate:0];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self _removeDelegate:v7];
  }

  [v7 setRearrangeMode:self->_isRearranging];
}

- (void)configureDataSource
{
  objc_initWeak(location, self);
  v3 = objc_opt_class();
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __67__UIKeyboardEmojiAndStickerCollectionInputView_configureDataSource__block_invoke;
  v34[3] = &unk_1E711BC00;
  objc_copyWeak(&v35, location);
  v4 = [UICollectionViewCellRegistration registrationWithCellClass:v3 configurationHandler:v34];
  v5 = objc_opt_class();
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __67__UIKeyboardEmojiAndStickerCollectionInputView_configureDataSource__block_invoke_2;
  v32[3] = &unk_1E711BC28;
  objc_copyWeak(&v33, location);
  v6 = [UICollectionViewCellRegistration registrationWithCellClass:v5 configurationHandler:v32];
  v7 = [UICollectionViewDiffableDataSource alloc];
  collectionView = self->_collectionView;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __67__UIKeyboardEmojiAndStickerCollectionInputView_configureDataSource__block_invoke_3;
  v29[3] = &unk_1E711BC50;
  v9 = v6;
  v30 = v9;
  v10 = v4;
  v31 = v10;
  v11 = [(UICollectionViewDiffableDataSource *)v7 initWithCollectionView:collectionView cellProvider:v29];
  dataSource = self->_dataSource;
  self->_dataSource = v11;

  v13 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:objc_opt_class() elementKind:@"UICollectionElementKindSectionHeader" configurationHandler:&__block_literal_global_470];
  v14 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:objc_opt_class() elementKind:@"UICollectionElementKindStickerButton" configurationHandler:&__block_literal_global_149_0];
  v15 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:objc_opt_class() elementKind:@"UICollectionElementKindStickerEmptyContent" configurationHandler:&__block_literal_global_153_1];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __67__UIKeyboardEmojiAndStickerCollectionInputView_configureDataSource__block_invoke_7;
  v25[3] = &unk_1E711BCD8;
  v16 = v14;
  v26 = v16;
  v17 = v15;
  v27 = v17;
  v18 = v13;
  v28 = v18;
  [(UICollectionViewDiffableDataSource *)self->_dataSource setSupplementaryViewProvider:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __67__UIKeyboardEmojiAndStickerCollectionInputView_configureDataSource__block_invoke_8;
  v23[3] = &unk_1E711BD00;
  objc_copyWeak(&v24, location);
  v19 = [(UICollectionViewDiffableDataSource *)self->_dataSource reorderingHandlers];
  [v19 setCanReorderItemHandler:v23];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __67__UIKeyboardEmojiAndStickerCollectionInputView_configureDataSource__block_invoke_156;
  v21[3] = &unk_1E711BD28;
  objc_copyWeak(&v22, location);
  v20 = [(UICollectionViewDiffableDataSource *)self->_dataSource reorderingHandlers];
  [v20 setDidReorderHandler:v21];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);
  objc_destroyWeak(location);
}

void __67__UIKeyboardEmojiAndStickerCollectionInputView_configureDataSource__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [v11 setCellDelegate:WeakRetained];
    if (os_variant_has_internal_diagnostics() && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v11 setIsRestrictedContent:{objc_msgSend(WeakRetained[110], "isRestrictedImageGlyph:", v8)}];
    }

    [v11 setImageGlyph:v8];
    v10 = [WeakRetained _usageSourceFromSection:{objc_msgSend(v7, "section")}];
    [v11 setUsageSource:v10];
    [WeakRetained _updateRearrangeModeForCell:v11 atIndexPath:v7];
  }
}

void __67__UIKeyboardEmojiAndStickerCollectionInputView_configureDataSource__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = [v8 toString];
    if ([v10 length])
    {
      if ([v8 stickerSourceType] != 2)
      {
        v11 = [WeakRetained emojiKeyManager];
        v12 = [v11 lastUsedVariantEmojiForEmojiString:v10];

        v10 = v12;
      }

      v13 = [UIKeyboardEmoji emojiWithString:v10 withVariantMask:[UIKeyboardEmojiCategory hasVariantsForEmoji:v10]];
    }

    else
    {
      v13 = 0;
    }

    [v19 setEmoji:v13];
    v14 = [WeakRetained _usageSourceFromSection:{objc_msgSend(v7, "section")}];
    [v19 setUsageSource:v14];
    v15 = [WeakRetained bundleId];
    [v19 setBundleID:v15];

    if (v13)
    {
      [WeakRetained emojiKeyWidth];
      [v19 setEmojiFontSize:v16];
      [v19 setHighlightPadding:0.0];
      if (os_variant_has_internal_diagnostics())
      {
        v17 = objc_opt_class();
        v18 = [v13 emojiString];
        [v19 setUnreleasedHighlight:{objc_msgSend(v17, "shouldHighlightEmoji:", v18)}];
      }
    }

    else
    {
      [v19 setNoResultsCell:1];
    }
  }
}

id __67__UIKeyboardEmojiAndStickerCollectionInputView_configureDataSource__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [getSTKImageGlyphClass() imageGlyphForGlyphIdentifier:v9];

  if ([v10 type] == 3)
  {
    v11 = 32;
  }

  else
  {
    v12 = [v10 type];
    v11 = 40;
    if (!v12)
    {
      v11 = 32;
    }
  }

  v13 = [v7 dequeueConfiguredReusableCellWithRegistration:*(a1 + v11) forIndexPath:v8 item:v10];

  return v13;
}

id __67__UIKeyboardEmojiAndStickerCollectionInputView_configureDataSource__block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v8 isEqualToString:@"UICollectionElementKindStickerButton"])
  {
    v10 = 32;
  }

  else
  {
    v11 = [v8 isEqualToString:@"UICollectionElementKindStickerEmptyContent"];
    v10 = 48;
    if (v11)
    {
      v10 = 40;
    }
  }

  v12 = [v7 dequeueConfiguredReusableSupplementaryViewWithRegistration:*(a1 + v10) forIndexPath:v9];

  return v12;
}

uint64_t __67__UIKeyboardEmojiAndStickerCollectionInputView_configureDataSource__block_invoke_8(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(WeakRetained + 792))
  {
    v5 = 0;
  }

  else
  {
    v6 = [getSTKImageGlyphClass() imageGlyphForGlyphIdentifier:v3];
    v7 = [*(WeakRetained + 110) indexPathForItem:v6];
    v8 = [WeakRetained isStickersCategory:{objc_msgSend(v7, "section")}];
    v5 = *(WeakRetained + 694) & v8;
    v9 = *(WeakRetained + 97);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138413058;
      v12 = v3;
      v13 = 1024;
      v14 = v8 & 1;
      v15 = 1024;
      v16 = v5 & 1;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Attempted to reorder item identifier: %@, isSticker: %{BOOL}d, canReorder: %{BOOL}d, path:%@", &v11, 0x22u);
    }
  }

  return v5 & 1;
}

void __67__UIKeyboardEmojiAndStickerCollectionInputView_configureDataSource__block_invoke_156(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v3 difference];
    v6 = [v5 insertions];

    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if (![v11 changeType])
          {
            v12 = [v11 associatedIndex];
            v13 = [v11 index];
            if (v12 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_16;
            }

            v15 = v13;
            if (objc_opt_respondsToSelector())
            {
              [WeakRetained[110] moveItemFromIndex:v12 toIndex:v15 completionHandler:&__block_literal_global_162_0];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

LABEL_16:
  }
}

- (void)updateDataSourceSnapshot
{
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateDataSourceSnapshotAnimated:self->_hasCompletedInitialDisplay];
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self supportsDatasourceIsReady])
  {
    if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self datasourceIsReady])
    {
      self->_hasCompletedInitialDisplay = 1;
    }
  }

  else
  {
    v3 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__UIKeyboardEmojiAndStickerCollectionInputView_updateDataSourceSnapshot__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_after(v3, MEMORY[0x1E69E96A0], block);
  }
}

- (void)didUpdateImageGlyphPermissions
{
  if (pthread_main_np() == 1)
  {
    self->_didAcceptRestrictedDistributionTerms = [(STKImageGlyphDataSource *)self->_imageGlyphDataSource didAcceptRestrictedDistributionTerms];
    collectionView = self->_collectionView;

    [(UICollectionView *)collectionView reloadData];
  }

  else
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __78__UIKeyboardEmojiAndStickerCollectionInputView_didUpdateImageGlyphPermissions__block_invoke;
    v4[3] = &unk_1E70F5A28;
    objc_copyWeak(&v5, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __78__UIKeyboardEmojiAndStickerCollectionInputView_didUpdateImageGlyphPermissions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained didUpdateImageGlyphPermissions];
    WeakRetained = v2;
  }
}

- (void)updateDataSourceSnapshotAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching])
  {
    v5 = [(STKImageGlyphDataSource *)self->_imageGlyphDataSource snapshot];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateDataSourceWithSnapshot:v5 animated:v3];
  }
}

- (void)updateDataSourceWithSnapshot:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (pthread_main_np() == 1)
  {
    if (self->_unavailableLaunchPath)
    {
      if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self supportsDatasourceIsReady])
      {
        v7 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self datasourceIsReady];
      }

      else
      {
        v7 = 0;
      }

      unavailableLaunchPath = self->_unavailableLaunchPath;
      if (unavailableLaunchPath)
      {
        v9 = [(NSIndexPath *)unavailableLaunchPath section];
        if ([v6 numberOfSections] <= v9 || (objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v9), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v6, "numberOfItemsInSection:", v10), v12 = -[NSIndexPath item](self->_unavailableLaunchPath, "item"), v10, v11 <= v12))
        {
          v17 = 0;
        }

        else
        {
          v13 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
          v14 = -[UIKeyboardEmojiAndStickerCollectionInputView sectionForCategoryType:](self, "sectionForCategoryType:", [v13 categoryType]);

          v15 = MEMORY[0x1E696AC88];
          v16 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
          v17 = [v15 indexPathForItem:-[UIKeyboardEmojiAndStickerCollectionInputView indexForPrettyCategoryDisplay:](self inSection:{"indexForPrettyCategoryDisplay:", v16), v14}];

          v4 = 0;
        }

        v18 = self->_unavailableLaunchPath;
        self->_unavailableLaunchPath = 0;

        goto LABEL_15;
      }
    }

    else
    {
      v7 = 0;
    }

    v17 = 0;
LABEL_15:
    objc_initWeak(&location, self);
    dataSource = self->_dataSource;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __86__UIKeyboardEmojiAndStickerCollectionInputView_updateDataSourceWithSnapshot_animated___block_invoke;
    v25[3] = &unk_1E7108F18;
    objc_copyWeak(&v27, &location);
    v20 = v17;
    v26 = v20;
    v28 = v7;
    [(UICollectionViewDiffableDataSource *)dataSource applySnapshot:v6 animatingDifferences:v4 completion:v25];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);

    goto LABEL_16;
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__UIKeyboardEmojiAndStickerCollectionInputView_updateDataSourceWithSnapshot_animated___block_invoke_2;
  block[3] = &unk_1E7108F18;
  objc_copyWeak(&v23, &location);
  v22 = v6;
  v24 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
LABEL_16:
}

void __86__UIKeyboardEmojiAndStickerCollectionInputView_updateDataSourceWithSnapshot_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    if (*(a1 + 32))
    {
      [WeakRetained updateToIndexPath:?];
      v4 = [v8 emojiKeyManager];
      [v4 reloadCategoryForIndexPath:*(a1 + 32) withSender:v8];

      v5 = [v8 emojiKeyManager];
      [v5 reloadForCategory:objc_msgSend(v8 withSender:{"emojiCategoryTypeForSection:", objc_msgSend(*(a1 + 32), "section")), v8}];

      v3 = v8;
    }

    if (*(a1 + 48) == 1)
    {
      v6 = v3[109];
      v3[109] = 0;

      v3 = v8;
    }

    v7 = [v3[80] isHidden];
    v3 = v8;
    if (v7 && !v8[109])
    {
      [v8[80] setHidden:0];
      v3 = v8;
    }
  }
}

void __86__UIKeyboardEmojiAndStickerCollectionInputView_updateDataSourceWithSnapshot_animated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained updateDataSourceWithSnapshot:*(a1 + 32) animated:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (BOOL)datasourceIsReady
{
  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self supportsDatasourceIsReady])
  {
    return 1;
  }

  imageGlyphDataSource = self->_imageGlyphDataSource;

  return [(STKImageGlyphDataSource *)imageGlyphDataSource isReady];
}

- (void)dealloc
{
  v3 = +[UIKeyboardMediaController sharedKeyboardMediaController];
  [v3 setDelegate:0];

  [(UICollectionView *)self->_collectionView setDataSource:0];
  [(UICollectionView *)self->_collectionView setDelegate:0];
  self->_isDraggingInputView = 0;
  self->_showingVariants = 0;
  v4 = +[UIKeyboardEmojiPreferences sharedInstance];
  [v4 clearEmojiKeyboardPreferenceClient];

  v5.receiver = self;
  v5.super_class = UIKeyboardEmojiAndStickerCollectionInputView;
  [(UIKBKeyView *)&v5 dealloc];
}

- (void)setContentScaleFactor:(double)a3
{
  v5.receiver = self;
  v5.super_class = UIKeyboardEmojiAndStickerCollectionInputView;
  [(UIView *)&v5 setContentScaleFactor:?];
  [(UIView *)self->_collectionView setContentScaleFactor:a3];
}

- (void)dimKeys:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIKeyboardEmojiAndStickerCollectionInputView;
  [(UIKBKeyView *)&v7 dimKeys:v4];
  v5 = [(UIView *)self subviews];

  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__UIKeyboardEmojiAndStickerCollectionInputView_dimKeys___block_invoke;
    v6[3] = &unk_1E7100338;
    v6[4] = self;
    [v4 enumerateKeysAndObjectsUsingBlock:v6];
  }
}

void __56__UIKeyboardEmojiAndStickerCollectionInputView_dimKeys___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if (([a2 integerValue] & 4) != 0)
  {
    [v7 doubleValue];
    [*(a1 + 32) setAlpha:?];
    *a4 = 1;
  }
}

- (void)setHitTestResponder:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_hitTestResponder, v4);
  [(UIKeyboardEmojiAndStickerCollectionView *)self->_collectionView setHitTestResponder:v4];
}

- (BOOL)_userHasSelectedSkinToneEmoji
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 isEmojiPopoverPresented];

  v5 = +[UIKeyboardEmojiPreferences sharedInstance];
  isFirstPartyStickers = 1;
  if (([v5 hasDisplayedSkinToneHelp] & 1) == 0 && (v4 & 1) == 0)
  {
    emojiGraphicsTraits = self->_emojiGraphicsTraits;
    if (emojiGraphicsTraits)
    {
      isFirstPartyStickers = emojiGraphicsTraits->_isFirstPartyStickers;
    }

    else
    {
      isFirstPartyStickers = 0;
    }
  }

  return isFirstPartyStickers & 1;
}

- (void)_setUserHasSelectedSkinToneEmoji:(BOOL)a3
{
  if (a3)
  {
    v3 = +[UIKeyboardEmojiPreferences sharedInstance];
    [v3 didDisplaySkinToneHelp];
  }
}

- (id)emojiBaseFirstCharacterString:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a3 _firstLongCharacter];

  return [v3 _stringWithUnichar:v4];
}

- (id)emojiBaseString:(id)a3
{
  v3 = a3;
  v4 = [getEMFStringUtilitiesClass_0() _baseStringForEmojiString:v3];

  return v4;
}

- (BOOL)skinToneWasUsedForEmoji:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  v6 = [v5 hasLastUsedVariantForEmojiString:v4];

  if (v6)
  {
    emojiGraphicsTraits = self->_emojiGraphicsTraits;
    if (emojiGraphicsTraits)
    {
      v8 = !emojiGraphicsTraits->_isFirstPartyStickers;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (BOOL)baseStringIsCoupleEmoji:(id)a3
{
  v3 = a3;
  v4 = [getEMFStringUtilitiesClass_0() _baseStringForEmojiString:v3];

  LOBYTE(v3) = [getEMFEmojiCategoryClass_2() _isCoupleMultiSkinToneEmoji:v4];
  return v3;
}

- (id)subTreeHitTest:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(UIView *)self pointInside:0 withEvent:?]|| self->_isRearranging)
  {
    v6 = 0;
    goto LABEL_15;
  }

  collectionView = self->_collectionView;
  [(UIView *)collectionView convertPoint:self fromView:x, y];
  v8 = [(UIKeyboardEmojiAndStickerCollectionView *)collectionView closestCellForPoint:?];
  if (v8)
  {
    v9 = [(UICollectionView *)self->_collectionView indexPathForCell:v8];
    currentIndexPath = self->_currentIndexPath;
    self->_currentIndexPath = v9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self treeForStickerCell:v8];
  }

  else
  {
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v8 emoji], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
    {
      v6 = 0;
      goto LABEL_14;
    }

    v11 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self treeForCell:v8];
  }

  v6 = v11;
LABEL_14:

LABEL_15:

  return v6;
}

- (BOOL)isCellMostlyOffscreen:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  MidX = CGRectGetMidX(a3);
  [(UIView *)self frame];
  if (MidX < CGRectGetMinX(v13))
  {
    return 1;
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = CGRectGetMidX(v14);
  [(UIView *)self frame];
  if (v9 > CGRectGetMaxX(v15))
  {
    return 1;
  }

  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MidY = CGRectGetMidY(v16);
  [(UIView *)self frame];
  if (MidY < CGRectGetMinY(v17))
  {
    return 1;
  }

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v12 = CGRectGetMidY(v18);
  [(UIView *)self frame];
  return v12 > CGRectGetMaxY(v19);
}

- (CGRect)cellRectToRevealFullCell:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  collectionView = self->_collectionView;
  v9 = [(UIView *)self superview];
  v125 = x;
  v126 = y;
  [(UIView *)collectionView convertRect:v9 toView:x, y, width, height];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = +[UIKeyboardImpl isSplit];
  v19 = v11;
  v20 = v13;
  v21 = v15;
  v22 = v17;
  if (!v18)
  {
    MaxX = CGRectGetMaxX(*&v19);
    v51 = [(UIView *)self superview];
    [v51 frame];
    v52 = CGRectGetMaxX(v134);

    if (MaxX <= v52)
    {
      v149.origin.x = v11;
      v149.origin.y = v13;
      v149.size.width = v15;
      v149.size.height = v17;
      MinX = CGRectGetMinX(v149);
      v97 = [(UIView *)self superview];
      [v97 frame];
      v98 = CGRectGetMinX(v150);

      if (MinX >= v98)
      {
        goto LABEL_38;
      }

      v99 = self->_collectionView;
      [(UIScrollView *)v99 contentOffset];
      v101 = v100;
      v151.origin.x = v11;
      v151.origin.y = v13;
      v151.size.width = v15;
      v151.size.height = v17;
      v102 = CGRectGetMinX(v151);
      v103 = [(UIView *)self superview];
      [v103 frame];
      v104 = v102 - CGRectGetMinX(v152);

      v105 = -v104;
      if (v104 >= 0.0)
      {
        v105 = v104;
      }

      v106 = v101 - v105;
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
      v108 = v106 - v107;
      [(UIScrollView *)self->_collectionView contentOffset];
      [(UICollectionView *)v99 setContentOffset:1 animated:v108];
      v153.origin.x = v11;
      v153.origin.y = v13;
      v153.size.width = v15;
      v153.size.height = v17;
      v109 = CGRectGetMinX(v153);
      v110 = [(UIView *)self superview];
      [v110 frame];
      v111 = v109 - CGRectGetMinX(v154);

      if (v111 >= 0.0)
      {
        v111 = -v111;
      }

      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
      v113 = v111 - v112;
      v155.origin.x = v11;
      v155.origin.y = v13;
      v155.size.width = v15;
      v155.size.height = v17;
      v114 = CGRectGetMinX(v155);
      v115 = [(UIView *)self superview];
      [v115 frame];
      v116 = v114 + CGRectGetMinX(v156);

      if (v116 < 0.0)
      {
        v116 = -v116;
      }

      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
      v118 = v116 + v117;
      v47 = v125 + v118;
      v71 = v113 + v118;
    }

    else
    {
      v53 = self->_collectionView;
      [(UIScrollView *)v53 contentOffset];
      v55 = v54;
      v135.origin.x = v11;
      v135.origin.y = v13;
      v135.size.width = v15;
      v135.size.height = v17;
      v56 = CGRectGetMaxX(v135);
      v57 = [(UIView *)self superview];
      [v57 frame];
      v58 = v56 - CGRectGetMaxX(v136);

      if (v58 < 0.0)
      {
        v58 = -v58;
      }

      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
      v60 = v55 + v58 + v59;
      [(UIScrollView *)self->_collectionView contentOffset];
      [(UICollectionView *)v53 setContentOffset:1 animated:v60];
      v137.origin.x = v11;
      v137.origin.y = v13;
      v137.size.width = v15;
      v137.size.height = v17;
      v61 = CGRectGetMaxX(v137);
      v62 = [(UIView *)self superview];
      [v62 frame];
      v63 = v61 - CGRectGetMaxX(v138);

      if (v63 < 0.0)
      {
        v63 = -v63;
      }

      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
      v65 = v63 + v64;
      v139.origin.x = v11;
      v139.origin.y = v13;
      v139.size.width = v15;
      v139.size.height = v17;
      v66 = CGRectGetMaxX(v139);
      v67 = [(UIView *)self superview];
      [v67 frame];
      v68 = v66 - CGRectGetMaxX(v140);

      if (v68 < 0.0)
      {
        v68 = -v68;
      }

      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
      v70 = v68 + v69;
      v47 = v125 - v70;
      v71 = v65 - v70;
    }

    width = width - v71;
    v48 = v126 + 0.0;
    goto LABEL_39;
  }

  MaxY = CGRectGetMaxY(*&v19);
  v24 = [(UIView *)self superview];
  [v24 frame];
  v25 = CGRectGetMaxY(v127);

  if (MaxY <= v25)
  {
    v141.origin.x = v11;
    v141.origin.y = v13;
    v141.size.width = v15;
    v141.size.height = v17;
    MinY = CGRectGetMinY(v141);
    v73 = [(UIView *)self superview];
    [v73 frame];
    v74 = CGRectGetMinY(v142);

    if (MinY < v74)
    {
      v75 = self->_collectionView;
      [(UIScrollView *)v75 contentOffset];
      v122 = v76;
      [(UIScrollView *)self->_collectionView contentOffset];
      v78 = v77;
      v143.origin.x = v11;
      v143.origin.y = v13;
      v143.size.width = v15;
      v143.size.height = v17;
      v124 = height;
      v79 = CGRectGetMinY(v143);
      v80 = [(UIView *)self superview];
      [v80 frame];
      v81 = CGRectGetMinY(v144);

      v82 = 0.0;
      if (v79 < v81)
      {
        v82 = 1.0;
      }

      v83 = v78 - v82;
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
      [(UICollectionView *)v75 setContentOffset:1 animated:v122, v83 - v84];
      v145.origin.x = v11;
      v145.origin.y = v13;
      v145.size.width = v15;
      v145.size.height = v17;
      v85 = CGRectGetMinY(v145);
      v86 = [(UIView *)self superview];
      [v86 frame];
      v87 = CGRectGetMinY(v146);

      if (v85 >= v87)
      {
        v88 = 0.0;
      }

      else
      {
        v88 = 1.0;
      }

      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
      v90 = v89 + v88;
      v147.origin.x = v11;
      v147.origin.y = v13;
      v147.size.width = v15;
      v147.size.height = v17;
      v91 = CGRectGetMinY(v147);
      v92 = [(UIView *)self superview];
      [v92 frame];
      v93 = CGRectGetMinY(v148);

      if (v91 >= v93)
      {
        v94 = 0.0;
      }

      else
      {
        v94 = -1.0;
      }

      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
      v47 = v125 + 0.0;
      v48 = v126 + v90;
      v49 = v90 + v94 - v95;
      v37 = v124;
      goto LABEL_28;
    }

LABEL_38:
    v47 = v125;
    v48 = v126;
    goto LABEL_39;
  }

  v26 = self->_collectionView;
  [(UIScrollView *)v26 contentOffset];
  v123 = v27;
  [(UIScrollView *)self->_collectionView contentOffset];
  v29 = v28;
  v128.origin.x = v11;
  v128.origin.y = v13;
  v128.size.width = v15;
  v128.size.height = v17;
  v30 = width;
  v31 = height;
  v32 = CGRectGetMaxY(v128);
  v33 = [(UIView *)self superview];
  [v33 frame];
  v34 = v32 - CGRectGetMaxY(v129);

  if (v34 < 0.0)
  {
    v34 = -v34;
  }

  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
  v36 = v34 + v35;
  v37 = v31;
  width = v30;
  [(UICollectionView *)v26 setContentOffset:1 animated:v123, v29 + v36];
  v130.origin.x = v11;
  v130.origin.y = v13;
  v130.size.width = v15;
  v130.size.height = v17;
  v38 = CGRectGetMaxY(v130);
  v39 = [(UIView *)self superview];
  [v39 frame];
  v40 = v38 - CGRectGetMaxY(v131);

  if (v40 < 0.0)
  {
    v40 = -v40;
  }

  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
  v42 = v40 + v41;
  v132.origin.x = v11;
  v132.origin.y = v13;
  v132.size.width = v15;
  v132.size.height = v17;
  v43 = CGRectGetMaxY(v132);
  v44 = [(UIView *)self superview];
  [v44 frame];
  v45 = v43 - CGRectGetMaxY(v133);

  if (v45 < 0.0)
  {
    v45 = -v45;
  }

  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
  v47 = v125 + 0.0;
  v48 = v126 - v42;
  v49 = v45 + v46 - v42;
LABEL_28:
  height = v37 - v49;
LABEL_39:
  v119 = v47;
  v120 = width;
  v121 = height;
  result.size.height = v121;
  result.size.width = v120;
  result.origin.y = v48;
  result.origin.x = v119;
  return result;
}

- (id)treeForStickerCell:(id)a3
{
  v4 = a3;
  collectionView = self->_collectionView;
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(UIView *)self superview];
  [(UIView *)collectionView convertRect:v14 toView:v7, v9, v11, v13];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  if (!-[UIKeyboardEmojiAndStickerCollectionInputView isCellMostlyOffscreen:](self, "isCellMostlyOffscreen:", v16, v18, v20, v22) && [v4 allowsDistribution] && (objc_msgSend(v4, "frame"), -[UIKeyboardEmojiAndStickerCollectionInputView cellRectToRevealFullCell:](self, "cellRectToRevealFullCell:"), v4))
  {
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    v31 = [v4 contentView];
    v32 = [UIGraphicsImageRenderer alloc];
    [v31 bounds];
    v35 = [(UIGraphicsImageRenderer *)v32 initWithSize:v33, v34];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __67__UIKeyboardEmojiAndStickerCollectionInputView_treeForStickerCell___block_invoke;
    v57[3] = &unk_1E70F6970;
    v36 = v31;
    v58 = v36;
    v37 = [(UIGraphicsImageRenderer *)v35 imageWithActions:v57];
    v38 = [UIKBTree treeOfType:8];
    [v38 setState:2];
    [v38 setDisplayImage:v37];
    [v38 setName:@"EmojiPopupKey"];
    [v38 setDisplayType:57];
    [v38 setInteractionType:2];
    if (self->_selectedPopupKey)
    {
      [(UIKeyboardEmojiAndStickerCollectionInputView *)self resetSelectionIfNeeded];
    }

    v39 = self->_collectionView;
    v40 = [(UIView *)self superview];
    [(UIView *)v39 convertRect:v40 toView:v27, v28, v29, v30];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;

    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      +[UIKeyboardImpl isFloating];
    }

    v60.origin.y = v44 - (v48 - v48) * 0.5;
    v60.origin.x = v42 - (v46 - v46) * 0.5;
    v60.size.width = v46;
    v60.size.height = v48;
    v61 = CGRectInset(v60, -2.0, -2.0);
    x = v61.origin.x;
    y = v61.origin.y;
    width = v61.size.width;
    height = v61.size.height;
    v62 = CGRectInset(v61, -1.0, -1.0);
    v53 = [[UIKBShape alloc] initWithGeometry:0 frame:x paddedFrame:y, width, height, v62.origin.x, v62.origin.y, v62.size.width, v62.size.height];
    [v38 setShape:v53];

    v54 = [(UIKBKeyView *)self key];
    [v38 setParentKey:v54];

    v55 = [v4 imageGlyph];
    [v38 setObject:v55 forProperty:@"UIKBAssociatedImageGlyph"];
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

uint64_t __67__UIKeyboardEmojiAndStickerCollectionInputView_treeForStickerCell___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:0 afterScreenUpdates:?];
}

- (id)treeForCell:(id)a3
{
  v143 = *MEMORY[0x1E69E9840];
  v4 = a3;
  collectionView = self->_collectionView;
  v122 = v4;
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v123 = self;
  v14 = [(UIView *)self superview];
  [(UIView *)collectionView convertRect:v14 toView:v7, v9, v11, v13];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)v123 isCellMostlyOffscreen:v16, v18, v20, v22])
  {
    [v122 frame];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)v123 cellRectToRevealFullCell:?];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = [(UICollectionView *)v123->_collectionView indexPathForCell:v122];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)v123 setTappedSkinToneEmoji:v32];

    v33 = v122;
    if (!v122)
    {
      v23 = 0;
      goto LABEL_60;
    }

    v121 = [v122 emoji];
    v23 = [UIKBTree treeOfType:8];
    [v23 setState:2];
    [v23 setName:@"EmojiPopupKey"];
    v119 = [v121 emojiString];
    [v23 setDisplayString:v119];
    [v23 setRepresentedString:v119];
    [v23 setDisplayType:0];
    [v23 setInteractionType:2];
    if (v123->_selectedPopupKey)
    {
      [(UIKeyboardEmojiAndStickerCollectionInputView *)v123 resetSelectionIfNeeded];
    }

    if (+[UIDictationController isRunning])
    {
      v34 = +[UIDictationController sharedInstance];
      v35 = [v34 dictationTipController];
      v36 = [v121 emojiString];
      [v35 signalDictationInsertionTip:v36];
    }

    v138 = 0;
    v139 = &v138;
    v140 = 0x2050000000;
    v37 = getEMFEmojiTokenClass_softClass_2;
    v141 = getEMFEmojiTokenClass_softClass_2;
    if (!getEMFEmojiTokenClass_softClass_2)
    {
      v133 = MEMORY[0x1E69E9820];
      v134 = 3221225472;
      v135 = __getEMFEmojiTokenClass_block_invoke_4;
      v136 = &unk_1E70F2F20;
      v137 = &v138;
      __getEMFEmojiTokenClass_block_invoke_4(&v133);
      v37 = v139[3];
    }

    v38 = v37;
    _Block_object_dispose(&v138, 8);
    v39 = [v121 emojiString];
    v120 = [v37 emojiTokenWithString:v39 localeData:0];

    if (![v120 supportsSkinToneVariants])
    {
      goto LABEL_47;
    }

    v40 = [v120 _skinToneVariantStrings];
    v124 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v40, "count") + 1}];
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    obj = v40;
    v41 = [obj countByEnumeratingWithState:&v129 objects:v142 count:16];
    if (v41)
    {
      v42 = *v130;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v130 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v129 + 1) + 8 * i);
          v45 = [v23 copy];
          [v45 setRepresentedString:v44];
          v46 = [v45 representedString];
          [v45 setDisplayString:v46];

          [v45 setDisplayType:0];
          v47 = MEMORY[0x1E696AEC0];
          v48 = [v23 name];
          v49 = [v45 representedString];
          v50 = [v47 stringWithFormat:@"%@/%@", v48, v49];
          [v45 setName:v50];

          [v45 setOverrideDisplayString:0];
          [v124 addObject:v45];
          v51 = [obj firstObject];
          LODWORD(v49) = [v51 isEqualToString:v44];

          if (v49)
          {
            v52 = [UIKBTree treeOfType:8];
            [v52 setDisplayType:50];
            [v52 setInteractionType:0];
            v53 = MEMORY[0x1E696AEC0];
            v54 = [v23 name];
            v55 = [v53 stringWithFormat:@"%@/Divider", v54];
            [v52 setName:v55];

            [v52 setState:1];
            [v124 addObject:v52];
          }
        }

        v41 = [obj countByEnumeratingWithState:&v129 objects:v142 count:16];
      }

      while (v41);
    }

    v56 = [v121 emojiString];
    v57 = [(UIKeyboardEmojiAndStickerCollectionInputView *)v123 baseStringIsCoupleEmoji:v56];

    if (v57)
    {
      v58 = [v23 copy];
      EMFStringUtilitiesClass_0 = getEMFStringUtilitiesClass_0();
      v60 = [v121 emojiString];
      v61 = [EMFStringUtilitiesClass_0 _baseStringForEmojiString:v60];
      [v58 setRepresentedString:v61];

      v62 = [v58 representedString];
      [v58 setDisplayString:v62];

      [v58 setDisplayType:0];
      v63 = MEMORY[0x1E696AEC0];
      v64 = [v23 name];
      v65 = [v58 representedString];
      v66 = [v63 stringWithFormat:@"%@/%@", v64, v65];
      [v58 setName:v66];

      [v58 setOverrideDisplayString:0];
      [v124 insertObject:v58 atIndex:0];
    }

    v67 = [v121 emojiString];
    v68 = [(UIKeyboardEmojiAndStickerCollectionInputView *)v123 skinToneWasUsedForEmoji:v67];

    if (v68)
    {
      v133 = 0;
      v134 = &v133;
      v135 = 0x2020000000;
      v136 = 0x7FFFFFFFFFFFFFFFLL;
      v126[0] = MEMORY[0x1E69E9820];
      v126[1] = 3221225472;
      v126[2] = __60__UIKeyboardEmojiAndStickerCollectionInputView_treeForCell___block_invoke;
      v126[3] = &unk_1E710FF58;
      v127 = v121;
      v128 = &v133;
      [v124 enumerateObjectsUsingBlock:v126];
      [v23 setSelectedVariantIndex:*(v134 + 24)];

      _Block_object_dispose(&v133, 8);
    }

    v69 = [(UIView *)v123 effectiveUserInterfaceLayoutDirection];
    v70 = UIKBAttributeValueFixedLeftStr;
    if (v69 != 1)
    {
      v70 = UIKBAttributeValueFixedRightStr;
    }

    [v23 setVariantPopupBias:*v70];
    [v23 setSubtrees:v124];
    v71 = [v121 emojiString];
    v72 = [(UIKeyboardEmojiAndStickerCollectionInputView *)v123 baseStringIsCoupleEmoji:v71];

    v73 = [v121 emojiString];
    if ([(UIKeyboardEmojiAndStickerCollectionInputView *)v123 skinToneWasUsedForEmoji:v73])
    {
      emojiGraphicsTraits = v123->_emojiGraphicsTraits;
      if (emojiGraphicsTraits)
      {
        isFirstPartyStickers = emojiGraphicsTraits->_isFirstPartyStickers;

        if (!isFirstPartyStickers)
        {
LABEL_29:
          if (v72)
          {
            v76 = 13;
          }

          else
          {
            v76 = 11;
          }

          v77 = 4;
LABEL_44:
          [v23 setVariantType:v76];
          [v23 setState:v77];
          v81 = +[UIKeyboardImpl activeInstance];
          v82 = [v81 isEmojiPopoverPresented];

          if (v82)
          {
            objc_storeStrong(&v123->_selectedPopupKey, v23);
            v123->_showingVariants = 1;
            v123->_currentVariantRow = 0;
            v83 = [(UIKeyboardEmojiAndStickerCollectionInputView *)v123 tappedSkinToneEmoji];
            v84 = [v83 copy];
            [(UIKeyboardEmojiAndStickerCollectionInputView *)v123 setSelectedIndexPath:v84];
          }

LABEL_47:
          v85 = v123->_collectionView;
          v86 = [(UIView *)v123 superview];
          [(UIView *)v85 convertRect:v86 toView:v25 + 0.0, v27 + 1.0, v29, v31];
          v88 = v87;
          v90 = v89;
          v92 = v91;
          v94 = v93;

          if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 || +[UIKeyboardImpl isFloating])
          {
            [(UIKeyboardEmojiGraphicsTraits *)v123->_emojiGraphicsTraits fakeEmojiKeySize];
            v104 = v90 - (v103 - v94) * 0.5;
            v100 = v88 - (v102 - v92) * 0.5 + 0.0;
            v96 = v102 + 1.0;
            v101 = v104 + -2.0;
            v98 = v103 + 3.0;
            v145.origin.x = v100;
            v145.origin.y = v104 + -2.0;
            v145.size.width = v96;
            v145.size.height = v98;
            MaxX = CGRectGetMaxX(v145);
            [(UIView *)v123->_collectionView bounds];
            if (MaxX > v106)
            {
              if ([v121 supportsSkinToneVariants])
              {
                v107 = v123->_emojiGraphicsTraits;
                if (!v107 || !v107->_isFirstPartyStickers)
                {
                  [(UIView *)v123->_collectionView bounds];
                  v109 = v108;
                  v146.origin.x = v100;
                  v146.origin.y = v101;
                  v146.size.width = v96;
                  v146.size.height = v98;
                  v110 = CGRectGetMaxX(v146);
                  [(UIView *)v123->_collectionView bounds];
                  if (v110 - v111 >= 0.0)
                  {
                    v112 = v110 - v111;
                  }

                  else
                  {
                    v112 = -(v110 - v111);
                  }

                  v113 = v123->_collectionView;
                  [(UIScrollView *)v113 contentOffset];
                  v115 = v114;
                  [(UIScrollView *)v123->_collectionView contentOffset];
                  [(UICollectionView *)v113 setContentOffset:1 animated:v115 + v112];
                  v100 = v109 - v96;
                }
              }
            }
          }

          else
          {
            [(UIKeyboardEmojiGraphicsTraits *)v123->_emojiGraphicsTraits fakeEmojiKeySize];
            v96 = v95;
            v98 = v97;
            v99 = (v97 - v94) * 0.5;
            v100 = v88 - (v95 - v92) * 0.5;
            v101 = v90 - v99;
          }

          v116 = [[UIKBShape alloc] initWithGeometry:0 frame:v100 paddedFrame:v101, v96, v98, v100, v101, v96, v98];
          [v23 setShape:v116];

          v117 = [(UIKBKeyView *)v123 key];
          [v23 setParentKey:v117];

          [v23 setObject:v121 forProperty:@"UIKBAssociatedEmoji"];
          goto LABEL_59;
        }

LABEL_40:
        if (v72)
        {
          v76 = 12;
        }

        else
        {
          v76 = 10;
        }

        v77 = 16;
        goto LABEL_44;
      }
    }

    else
    {
      v78 = [(UIKeyboardEmojiAndStickerCollectionInputView *)v123 tappedSkinToneEmoji];
      if ([v78 section] || !-[UIKeyboardEmojiAndStickerCollectionInputView _userHasSelectedSkinToneEmoji](v123, "_userHasSelectedSkinToneEmoji"))
      {

        goto LABEL_40;
      }

      v79 = v123->_emojiGraphicsTraits;
      if (v79)
      {
        v80 = v79->_isFirstPartyStickers;

        if (!v80)
        {
          goto LABEL_29;
        }

        goto LABEL_40;
      }
    }

    goto LABEL_29;
  }

  v23 = 0;
LABEL_59:
  v33 = v122;
LABEL_60:

  return v23;
}

void __60__UIKeyboardEmojiAndStickerCollectionInputView_treeForCell___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 representedString];
  v8 = [*(a1 + 32) emojiString];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (BOOL)genderEmojiBaseStringNeedVariantSelector:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"⛹"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"🏋"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"🕵"];
  }

  return v4;
}

- (id)selectedChildSkinToneEmoji:(id)a3
{
  v3 = a3;
  if ([v3 selectedVariantIndex] == 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend(v3, "subtrees"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectAtIndex:", objc_msgSend(v3, "selectedVariantIndex")), v5 = objc_claimAutoreleasedReturnValue(), v4, objc_msgSend(v5, "displayString"), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v8 = [v3 objectForProperty:@"UIKBAssociatedEmoji"];
  }

  else
  {
    v7 = [v3 objectForProperty:@"UIKBAssociatedEmoji"];
    v8 = +[UIKeyboardEmoji emojiWithString:withVariantMask:](UIKeyboardEmoji, "emojiWithString:withVariantMask:", v6, [v7 variantMask]);
  }

  return v8;
}

- (int64_t)didInputSubTree:(id)a3
{
  v79[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v75.receiver = self;
  v75.super_class = UIKeyboardEmojiAndStickerCollectionInputView;
  v5 = [(UIKBKeyView *)&v75 didInputSubTree:v4];
  v6 = [v4 objectForProperty:@"UIKBAssociatedEmoji"];
  v7 = [v4 objectForProperty:@"UIKBAssociatedImageGlyph"];
  v8 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self _usageSourceFromSection:[(NSIndexPath *)self->_currentIndexPath section]];
  if (v6)
  {
    v74 = v4;
    v70 = v7;
    if ([v6 supportsSkinToneVariants])
    {
      if ([v4 state] == 16)
      {
        v9 = [v4 selectedVariantIndex];
        [v4 subtrees];
        v11 = v10 = v8;
        v12 = v9 < [v11 count];

        v8 = v10;
      }

      else
      {
        v12 = 0;
      }

      if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self _userHasSelectedSkinToneEmoji])
      {
        v5 = 1;
      }

      v73 = v5;
      v25 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedChildSkinToneEmoji:v4];

      if (v12)
      {
        v26 = [v4 subtrees];
        v27 = [v26 objectAtIndex:0];
        v28 = [v27 representedString];

        v29 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
        v30 = [v25 emojiString];
        [v29 updateSkinToneBaseKey:v28 variantUsed:v30];
      }

      collectionView = self->_collectionView;
      v32 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self tappedSkinToneEmoji];
      v33 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v32];

      v34 = [v33 emoji];
      v35 = [v34 emojiString];
      v36 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiBaseString:v35];
      [v25 emojiString];
      v37 = v20 = v25;
      v38 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiBaseString:v37];
      v39 = [v36 isEqualToString:v38];

      if (v39)
      {
        [v33 setEmoji:v20];
        if (os_variant_has_internal_diagnostics())
        {
          v66 = objc_opt_class();
          v67 = [v20 emojiString];
          [v33 setUnreleasedHighlight:{objc_msgSend(v66, "shouldHighlightEmoji:", v67)}];
        }
      }
    }

    else
    {
      v73 = v5;
      v20 = v6;
    }

    v40 = +[UIKeyboardInputModeController sharedInputModeController];
    v41 = [v40 lastUsedInputModeForCurrentContext];
    v42 = [v41 primaryLanguage];
    v43 = [v42 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

    v44 = @"en_US";
    if (v43)
    {
      v44 = v43;
    }

    v45 = +[UIKeyboardImpl activeInstance];
    v46 = [v45 isEmojiPopoverVisibleOrDismissing];

    if (!v46)
    {
      goto LABEL_28;
    }

    v47 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiSearchField];
    v48 = [v47 text];
    if ([v48 length])
    {
      v49 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self tappedSkinToneEmoji];
      v50 = [v49 section];

      if (!v50)
      {
        v51 = UIKBAnalyticsEmojiInputTypePopoverSearch;
LABEL_27:
        [UIKBAnalyticsDispatcher emojiInsertedByMethod:@"Touch" inputType:*v51];
LABEL_28:
        v52 = objc_alloc(MEMORY[0x1E695DF90]);
        v53 = +[_UISignalAnalytics getIAPayloadKeyGenmojiImageType];
        v78[0] = v53;
        v54 = +[_UISignalAnalytics getIAPayloadValueGenmojiImageTypeEmoji];
        v79[0] = v54;
        v55 = +[_UISignalAnalytics getIAPayloadKeyGenmojiUsageSource];
        v78[1] = v55;
        v69 = v8;
        v79[1] = v8;
        v56 = +[_UISignalAnalytics getIAPayloadKeyGenmojiUsageType];
        v78[2] = v56;
        v57 = +[_UISignalAnalytics getIAPayloadValueGenmojiUsageTypeTap];
        v79[2] = v57;
        v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:3];
        v59 = [v52 initWithDictionary:v58];

        v60 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self bundleId];

        if (v60)
        {
          v61 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self bundleId];
          v62 = +[_UISignalAnalytics getIAPayloadKeyGenmojiBundleID];
          [v59 setObject:v61 forKeyedSubscript:v62];
        }

        v63 = +[_UISignalAnalytics getIASignalGenmojiUsage];
        [_UISignalAnalytics sendGenmojiSignal:v63 payload:v59];

        v64 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
        [v64 emojiUsed:v20 language:v68];

        v7 = v70;
        v5 = v73;
LABEL_31:
        v8 = v69;

        v4 = v74;
        goto LABEL_32;
      }
    }

    else
    {
    }

    v51 = UIKBAnalyticsEmojiInputTypePopover;
    goto LABEL_27;
  }

  if (v7)
  {
    v72 = v5;
    v74 = v4;
    v13 = objc_alloc(MEMORY[0x1E695DF90]);
    v14 = +[_UISignalAnalytics getIAPayloadKeyGenmojiImageType];
    v76[0] = v14;
    v71 = v7;
    v15 = [_UISignalAnalytics getIAGenmojiImageTypeFromImageGlyph:v7];
    v77[0] = v15;
    v16 = +[_UISignalAnalytics getIAPayloadKeyGenmojiUsageSource];
    v76[1] = v16;
    v69 = v8;
    v77[1] = v8;
    v17 = +[_UISignalAnalytics getIAPayloadKeyGenmojiUsageType];
    v76[2] = v17;
    v18 = +[_UISignalAnalytics getIAPayloadValueGenmojiUsageTypeTap];
    v77[2] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:3];
    v20 = [v13 initWithDictionary:v19];

    v21 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self bundleId];

    if (v21)
    {
      v22 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self bundleId];
      v23 = +[_UISignalAnalytics getIAPayloadKeyGenmojiBundleID];
      [v20 setObject:v22 forKeyedSubscript:v23];
    }

    v24 = +[_UISignalAnalytics getIASignalGenmojiUsage];
    [_UISignalAnalytics sendGenmojiSignal:v24 payload:v20];

    v7 = v71;
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self insertImageGlyph:v71 dismiss:1];
    v5 = v72;
    goto LABEL_31;
  }

LABEL_32:
  [v4 setObject:0 forProperty:@"UIKBAssociatedImageGlyph"];
  [v4 setObject:0 forProperty:@"UIKBAssociatedEmoji"];

  return v5;
}

- (void)insertImageGlyph:(id)a3 dismiss:(BOOL)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__UIKeyboardEmojiAndStickerCollectionInputView_insertImageGlyph_dismiss___block_invoke;
  v7[3] = &unk_1E711BD50;
  v9 = a4;
  objc_copyWeak(&v8, &location);
  [v6 createUIStickerWithLoadAllRepresentations:1 completionHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __73__UIKeyboardEmojiAndStickerCollectionInputView_insertImageGlyph_dismiss___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E695DF90];
    v4 = a2;
    v13 = objc_alloc_init(v3);
    v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
    [v13 setObject:v5 forKeyedSubscript:@"UIEmojiAndStickerShouldInsertNotificationUserInfoShouldDismissKey"];

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = [WeakRetained window];
      v9 = [v8 windowScene];

      if (v9)
      {
        v10 = [v7 window];
        v11 = [v10 windowScene];
        [v13 setObject:v11 forKeyedSubscript:@"UIEmojiAndStickerShouldInsertNotificationUserInfoSceneKey"];
      }
    }

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 postNotificationName:@"UIEmojiAndStickerShouldInsertNotification" object:v4 userInfo:v13];
  }
}

- (void)shouldDismissModalDisplayView:(id)a3
{
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self _setUserHasSelectedSkinToneEmoji:1];
  v4 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self completionBlock];
  if (v4)
  {
    v5 = v4;
    v4[2]();
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self setCompletionBlock:0];
    v4 = v5;
  }
}

- (void)willDisplayModalActionView:(id)a3 withSubTreeKeyView:(id)a4 completion:(id)a5
{
  v83[2] = *MEMORY[0x1E69E9840];
  v78 = a4;
  v8 = a3;
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self setCompletionBlock:a5];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [(UIKBKeyView *)self renderConfig];
  v11 = [v10 whiteText];

  if (v11)
  {
    v12 = +[UIColor whiteColor];
    v13 = v12;
  }

  else
  {
    v13 = [UIColor colorWithCGColor:UIKBGetNamedColor(@"UIKBEmojiLightControlSymbolColor")];
    v12 = +[UIColor systemBlueColor];
  }

  v79 = v12;
  v14 = +[UIKeyboardImpl isSplit];
  if (+[UIKeyboardImpl isFloating])
  {
    v77 = 0;
  }

  else
  {
    v15 = [(UIKBKeyView *)self renderConfig];
    v77 = [v15 isFloating] ^ 1;
  }

  v76 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1;
  v71 = self;
  v16 = [(UIView *)self _keyboardOrientation]- 3;
  v17 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v18 = [v17 preferencesActions];
  [v18 rivenSizeFactor:1.0];
  v20 = v19;

  v21 = 1.67;
  if (v16 < 2)
  {
    v21 = 1.75;
  }

  if (v14)
  {
    v22 = 0.423;
  }

  else
  {
    v22 = 0.366;
  }

  if (v14)
  {
    v23 = 50.0;
  }

  else
  {
    v23 = 0.0;
  }

  if (!v14)
  {
    v21 = 1.0;
  }

  v24 = 0.96;
  if (v20 <= 1.0)
  {
    v24 = 1.0;
  }

  v25 = v21 * v24;
  v26 = objc_alloc_init(UIView);
  [(UIView *)v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 addSubview:v26];
  v27 = [MEMORY[0x1E69977A0] constraintWithItem:v26 attribute:3 relatedBy:0 toItem:v8 attribute:3 multiplier:1.0 constant:0.0];
  [v9 addObject:v27];

  v28 = [MEMORY[0x1E69977A0] constraintWithItem:v26 attribute:1 relatedBy:0 toItem:v8 attribute:1 multiplier:1.0 constant:0.0];
  [v9 addObject:v28];

  v29 = [MEMORY[0x1E69977A0] constraintWithItem:v26 attribute:2 relatedBy:0 toItem:v8 attribute:2 multiplier:1.0 constant:0.0];
  [v9 addObject:v29];

  v30 = [MEMORY[0x1E69977A0] constraintWithItem:v26 attribute:8 relatedBy:0 toItem:v8 attribute:8 multiplier:v22 constant:0.0];
  [v9 addObject:v30];

  v31 = objc_alloc_init(UILabel);
  [(UIView *)v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)v31 setUserInteractionEnabled:0];
  v33 = *off_1E70EC918;
  v82[0] = *off_1E70EC920;
  v32 = v82[0];
  v82[1] = v33;
  v83[0] = v13;
  v34 = [off_1E70ECC18 systemFontOfSize:13.0];
  v83[1] = v34;
  v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:2];

  v75 = v13;
  v35 = objc_alloc(MEMORY[0x1E696AAB0]);
  v36 = [getEMFEmojiCategoryClass_2() localizedSkinToneEmojiDescription];
  v73 = [v35 initWithString:v36 attributes:v74];

  [(UILabel *)v31 setNumberOfLines:0];
  [(UILabel *)v31 setTextAlignment:1];
  [(UILabel *)v31 setAttributedText:v73];
  [(UIView *)v26 addSubview:v31];
  v37 = [MEMORY[0x1E69977A0] constraintWithItem:v31 attribute:9 relatedBy:0 toItem:v26 attribute:9 multiplier:v25 constant:0.0];
  [v9 addObject:v37];

  v72 = v26;
  v38 = [MEMORY[0x1E69977A0] constraintWithItem:v31 attribute:3 relatedBy:0 toItem:v26 attribute:3 multiplier:1.0 constant:0.0];
  [v9 addObject:v38];

  v39 = [MEMORY[0x1E69977A0] constraintWithItem:v31 attribute:4 relatedBy:0 toItem:v26 attribute:4 multiplier:1.0 constant:0.0];
  [v9 addObject:v39];

  v40 = MEMORY[0x1E69977A0];
  [(UIKeyboardEmojiGraphicsTraits *)v71->_emojiGraphicsTraits alertTextWidth];
  v42 = [v40 constraintWithItem:v31 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v41 - v23];
  [v9 addObject:v42];

  v43 = objc_alloc_init(UIView);
  [(UIView *)v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 addSubview:v43];
  v44 = [MEMORY[0x1E69977A0] constraintWithItem:v43 attribute:4 relatedBy:0 toItem:v8 attribute:4 multiplier:1.0 constant:0.0];
  [v9 addObject:v44];

  v45 = [MEMORY[0x1E69977A0] constraintWithItem:v43 attribute:8 relatedBy:0 toItem:v8 attribute:8 multiplier:0.086 constant:0.0];
  [v9 addObject:v45];

  v46 = [UIButton buttonWithType:1];
  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
  v80[1] = v33;
  v81[0] = v79;
  v80[0] = v32;
  v47 = [off_1E70ECC18 systemFontOfSize:16.0];
  v81[1] = v47;
  v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:2];

  v48 = objc_alloc(MEMORY[0x1E696AAB0]);
  v49 = _UILocalizedStringInSystemLanguage(@"OK", @"OK");
  v68 = [v48 initWithString:v49 attributes:v70];

  [v46 setAttributedTitle:v68 forState:0];
  [v46 addTarget:v71 action:sel_shouldDismissModalDisplayView_ forControlEvents:64];
  [v8 addSubview:v46];
  v50 = [MEMORY[0x1E69977A0] constraintWithItem:v46 attribute:9 relatedBy:0 toItem:v8 attribute:9 multiplier:v25 constant:0.0];
  [v9 addObject:v50];

  v51 = [MEMORY[0x1E69977A0] constraintWithItem:v46 attribute:4 relatedBy:0 toItem:v43 attribute:3 multiplier:1.0 constant:6.0];
  [v9 addObject:v51];

  v52 = [MEMORY[0x1E69977A0] constraintWithItem:v46 attribute:7 relatedBy:0 toItem:v31 attribute:7 multiplier:1.0 constant:0.0];
  [v9 addObject:v52];

  v53 = [v78 snapshotViewAfterScreenUpdates:1];

  [v53 setUserInteractionEnabled:0];
  v54 = [[UIKBEmojiAndStickerSnapshotSizingView alloc] initWithSnapshotView:v53];
  [(UIView *)v54 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ((v76 & v77) != 0)
  {
    v55 = -25.0;
  }

  else
  {
    v55 = 0.0;
  }

  [v8 addSubview:{v54, v68}];
  LODWORD(v56) = 1148829696;
  [(UIView *)v54 setContentHuggingPriority:1 forAxis:v56];
  v57 = [MEMORY[0x1E69977A0] constraintWithItem:v54 attribute:9 relatedBy:0 toItem:v8 attribute:9 multiplier:v25 constant:0.0];
  [v9 addObject:v57];

  v58 = [MEMORY[0x1E69977A0] constraintWithItem:v54 attribute:3 relatedBy:0 toItem:v31 attribute:4 multiplier:1.0 constant:v55];
  [v9 addObject:v58];

  v59 = objc_alloc_init(UILayoutGuide);
  [v8 addLayoutGuide:v59];

  v60 = [(UILayoutGuide *)v59 topAnchor];
  v61 = [(UIView *)v54 bottomAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];
  [v9 addObject:v62];

  v63 = [(UILayoutGuide *)v59 bottomAnchor];
  v64 = [v46 topAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];
  [v9 addObject:v65];

  v66 = [(UILayoutGuide *)v59 heightAnchor];
  v67 = [v66 constraintGreaterThanOrEqualToConstant:6.0];
  [v9 addObject:v67];

  [MEMORY[0x1E69977A0] activateConstraints:v9];
}

- (void)didTearDownRecentsViewForKeyboardMediaController:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__UIKeyboardEmojiAndStickerCollectionInputView_didTearDownRecentsViewForKeyboardMediaController___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)didInsertMediaForKeyboardMediaController:(id)a3
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 dismissEmojiPopoverIfNecessaryWithCompletion:0];
}

- (void)didPresentCardForKeyboardMediaController:(id)a3
{
  v4 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiSearchField];
  v5 = [v4 isActive];

  if (v5)
  {
    v6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiSearchField];
    [v6 resignFirstResponder];
  }

  v7 = +[UIKeyboardImpl activeInstance];
  [v7 didPresentMemojiCard];
}

- (void)didDismissCardForKeyboardMediaController:(id)a3
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 didDismissMemojiCard];
}

- (int64_t)numberOfPrefixCategories
{
  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph])
  {
    return 0;
  }

  imageGlyphDataSource = self->_imageGlyphDataSource;

  return [(STKImageGlyphDataSource *)imageGlyphDataSource emojiCategoryIndex];
}

- (int64_t)numberOfPrefixSections
{
  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph])
  {
    return 0;
  }

  imageGlyphDataSource = self->_imageGlyphDataSource;

  return [(STKImageGlyphDataSource *)imageGlyphDataSource emojiPrefixSectionCount];
}

- (BOOL)doesShowMemoji
{
  v3 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph];
  if (v3)
  {
    imageGlyphDataSource = self->_imageGlyphDataSource;

    LOBYTE(v3) = [(STKImageGlyphDataSource *)imageGlyphDataSource canShowMemoji];
  }

  return v3;
}

- (BOOL)doesShowStickers
{
  v3 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph];
  if (v3)
  {
    imageGlyphDataSource = self->_imageGlyphDataSource;

    LOBYTE(v3) = [(STKImageGlyphDataSource *)imageGlyphDataSource canShowStickers];
  }

  return v3;
}

- (BOOL)isMemojiCategory:(int64_t)a3
{
  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph]|| [(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching])
  {
    return 0;
  }

  imageGlyphDataSource = self->_imageGlyphDataSource;

  return [(STKImageGlyphDataSource *)imageGlyphDataSource isMemojiSection:a3];
}

- (BOOL)isStickersCategory:(int64_t)a3
{
  v5 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph];
  if (v5)
  {
    imageGlyphDataSource = self->_imageGlyphDataSource;

    LOBYTE(v5) = [(STKImageGlyphDataSource *)imageGlyphDataSource isStickerSection:a3];
  }

  return v5;
}

- (BOOL)isSearchCategory:(int64_t)a3
{
  v5 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching];
  if (v5)
  {
    LOBYTE(v5) = [(UIKeyboardEmojiAndStickerCollectionInputView *)self numberOfPrefixSections]== a3;
  }

  return v5;
}

- (BOOL)isRecentCategory:(int64_t)a3
{
  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  imageGlyphDataSource = self->_imageGlyphDataSource;

  return [(STKImageGlyphDataSource *)imageGlyphDataSource isRecentSection:a3];
}

- (BOOL)isEmojiCategory:(int64_t)a3
{
  v5 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph];
  v6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearchCategory:a3];
  if (!v5)
  {
    return !v6;
  }

  if (v6)
  {
    return 0;
  }

  imageGlyphDataSource = self->_imageGlyphDataSource;

  return [(STKImageGlyphDataSource *)imageGlyphDataSource isEmojiSection:a3];
}

- (int64_t)memojiSectionIndex
{
  v2 = [(STKImageGlyphDataSource *)self->_imageGlyphDataSource indexPathForCategoryIndex:[(UIKeyboardEmojiAndStickerCollectionInputView *)self memojiCategoryIndex]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 section];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)stickersSectionIndex
{
  v3 = [(STKImageGlyphDataSource *)self->_imageGlyphDataSource indexPathForCategoryIndex:[(UIKeyboardEmojiAndStickerCollectionInputView *)self stickersCategoryIndex]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 section];
  }

  else
  {
    v6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self numberOfPrefixSections];
    v7 = 2;
    if (v6 > 2)
    {
      v7 = v6;
    }

    v5 = v7 - 2;
  }

  return v5;
}

- (int64_t)recentSectionIndex
{
  v3 = [(STKImageGlyphDataSource *)self->_imageGlyphDataSource indexPathForCategoryIndex:[(UIKeyboardEmojiAndStickerCollectionInputView *)self recentCategoryIndex]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 section];
  }

  else
  {
    v6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self numberOfPrefixSections];
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v5 = v7 - 1;
  }

  return v5;
}

- (int64_t)emojiSectionIndex
{
  v3 = [(STKImageGlyphDataSource *)self->_imageGlyphDataSource indexPathForCategoryIndex:[(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiCategoryIndex]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 section];
  }

  else
  {
    v5 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self numberOfPrefixSections];
  }

  v6 = v5;

  return v6;
}

- (id)recentsIndexPath
{
  v2 = MEMORY[0x1E696AC88];
  v3 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self recentSectionIndex];

  return [v2 indexPathForItem:0 inSection:v3];
}

- (double)emojiKeyWidth
{
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits emojiKeyWidth];
  v4 = v3;
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits screenToNativeScaleRatio];
  if (v5 < 1.0)
  {
    v5 = 1.0;
  }

  return v4 * v5;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph])
  {
    imageGlyphDataSource = self->_imageGlyphDataSource;

    return [(STKImageGlyphDataSource *)imageGlyphDataSource numberOfSections];
  }

  else
  {
    v6 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
    v7 = [v6 count];

    if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self showingRecents])
    {
      v7 += [(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching];
    }

    return v7;
  }
}

- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (!-[UIKeyboardEmojiAndStickerCollectionInputView isStickersCategory:](self, "isStickersCategory:", [v11 section]))
  {
    if (-[UIKeyboardEmojiAndStickerCollectionInputView isStickersCategory:](self, "isStickersCategory:", [v10 section]))
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }
  }

  v13 = v12;

  return v12;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearchCategory:a4]&& [(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching])
  {
    v6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
    v7 = [v6 count];

    if (!v7)
    {
      return 1;
    }

    v8 = [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits prepolulatedRecentCount];
    v9 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
    v10 = [v9 count];

    if (v10 > v8)
    {
      v11 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
      v8 = [v11 count];
    }

    return v8;
  }

  else if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph])
  {
    imageGlyphDataSource = self->_imageGlyphDataSource;

    return [(STKImageGlyphDataSource *)imageGlyphDataSource numberOfItemsInSection:a4];
  }

  else
  {
    v14 = [UIKeyboardEmojiCategory categoryForType:[(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiCategoryTypeForSection:a4]];
    v15 = [v14 emoji];
    v16 = [v15 count];

    return v16;
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  v7 = [v5 item];
  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearchCategory:v6]&& ![(UIKeyboardEmojiAndStickerCollectionInputView *)self isEmojiCategory:v6])
  {
    v32 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self stickerCellForIndexPath:v5];
    goto LABEL_31;
  }

  v8 = [(UICollectionView *)self->_collectionView dequeueReusableCellWithReuseIdentifier:@"kEmojiCellIdentifier" forIndexPath:v5];
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearchCategory:v6])
  {
    v9 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];

    if (v9)
    {
      v10 = [(UICollectionView *)self->_collectionView dequeueReusableCellWithReuseIdentifier:@"kEmojiCellIdentifier" forIndexPath:v5];

      v11 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
      v12 = [v11 count];

      if (!v12)
      {
        [v10 setEmoji:0];
        [v10 setNoResultsCell:1];
        goto LABEL_25;
      }

      v13 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
      v14 = [v13 count];

      if (v7 >= v14)
      {
        [v10 setEmoji:0];
        goto LABEL_25;
      }

      v15 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
      v16 = [v15 objectAtIndex:v7];

      if (objc_opt_respondsToSelector())
      {
        v17 = [v16 type];
        if (v17 == 1)
        {
          v32 = [(UICollectionView *)self->_collectionView dequeueReusableCellWithReuseIdentifier:@"kStickerCellIdentifier" forIndexPath:v5];
          [v32 setImageGlyph:v16];
          goto LABEL_30;
        }

        if (v17 == 3)
        {
          v18 = [v16 toString];
          if (v18)
          {
            v19 = v18;
            v20 = [UIKeyboardEmoji emojiWithString:v18 withVariantMask:[UIKeyboardEmojiCategory hasVariantsForEmoji:v18]];
            goto LABEL_15;
          }

LABEL_25:
          v20 = 0;
          goto LABEL_29;
        }
      }

      v8 = v10;
LABEL_27:

      v20 = 0;
LABEL_28:
      v10 = v8;
      goto LABEL_29;
    }
  }

  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph])
  {
    v24 = [UIKeyboardEmojiCategory categoryForType:[(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiCategoryTypeForSection:v6]];
    v16 = [v24 emoji];

    if (v16)
    {
      v25 = [v16 objectAtIndex:v7];
      if (v25)
      {
        v20 = v25;
        v26 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
        v27 = [v20 emojiString];
        v28 = [v26 lastUsedVariantEmojiForEmojiString:v27];
        [v20 setEmojiString:v28];

LABEL_20:
        [v8 setEmoji:v20];
        [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiKeyWidth];
        [v8 setEmojiFontSize:v29];
        if (os_variant_has_internal_diagnostics())
        {
          v30 = objc_opt_class();
          v31 = [v20 emojiString];
          [v8 setUnreleasedHighlight:{objc_msgSend(v30, "shouldHighlightEmoji:", v31)}];
        }

        goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  v21 = [(STKImageGlyphDataSource *)self->_imageGlyphDataSource itemAtIndexPath:v5];
  v16 = v21;
  if (!v21)
  {
    goto LABEL_27;
  }

  v19 = [v21 toString];
  v22 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  v23 = [v22 lastUsedVariantEmojiForEmojiString:v19];
  v20 = [UIKeyboardEmoji emojiWithString:v19 withVariantMask:v23];

  v10 = v8;
LABEL_15:

  if (v20)
  {
    v8 = v10;
    goto LABEL_20;
  }

LABEL_29:
  v10 = v10;
  v16 = v20;
  v32 = v10;
LABEL_30:

LABEL_31:

  return v32;
}

- (id)stickerCellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(UICollectionView *)self->_collectionView dequeueReusableCellWithReuseIdentifier:@"kStickerCellIdentifier" forIndexPath:v4];
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph])
  {
    v6 = [(STKImageGlyphDataSource *)self->_imageGlyphDataSource itemAtIndexPath:v4];
    [v5 setImageGlyph:v6];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self _updateRearrangeModeForCell:v5 atIndexPath:v4];
  }

  return v5;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  emojiGraphicsTraits = self->_emojiGraphicsTraits;
  if (emojiGraphicsTraits && emojiGraphicsTraits->_isFirstPartyStickers && ![v10 section])
  {
    v13 = 0;
    goto LABEL_23;
  }

  v13 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"kEmojiCategoryTitleIdentifier" forIndexPath:v11];
  if ([(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection]== UICollectionViewScrollDirectionVertical)
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewLeftMostPadding];
    v15 = v14;
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewRightMostPadding];
    [v13 setInsets:{0.0, v15, 0.0, v16}];
  }

  v17 = [v11 section];
  v18 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiCategoryTypeForSection:v17];
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isMemojiCategory:v17])
  {
    v19 = @"Memoji";
LABEL_12:
    v20 = _UILocalizedStringInSystemLanguage(v19, v19);
    goto LABEL_13;
  }

  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isStickersCategory:v17])
  {
    v19 = @"Stickers";
    goto LABEL_12;
  }

  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearchCategory:v17])
  {
    v19 = @"Results";
    goto LABEL_12;
  }

  v20 = [UIKeyboardEmojiCategory displayName:v18];
LABEL_13:
  v21 = v20;
  [v13 setHeaderName:v20];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self categoryHeaderFontSize];
  [v13 setHeaderFontSize:?];
  v22 = +[UIDevice currentDevice];
  v23 = [v22 _keyboardGraphicsQuality];

  v24 = [(UIKBKeyView *)self renderConfig];
  v25 = [v24 whiteText];
  if (v23 == 10)
  {
    if ((v25 & 1) == 0)
    {
      v26 = 0.51372549;
      v27 = 0.517647059;
      v28 = 0.529411765;
LABEL_19:
      v29 = [UIColor colorWithRed:v26 green:v27 blue:v28 alpha:1.0];
      goto LABEL_20;
    }
  }

  else if ((v25 & 1) == 0)
  {
    v26 = 0.647;
    v27 = 0.651;
    v28 = 0.663;
    goto LABEL_19;
  }

  v29 = +[UIColor whiteColor];
LABEL_20:
  v30 = v29;
  [v13 setHeaderTextColor:v29];

  v31 = [(UIKBKeyView *)self renderConfig];
  v32 = [v31 whiteText];
  v33 = 0.4;
  if (!v32)
  {
    v33 = 1.0;
  }

  [v13 setHeaderOpacity:v33];

  v34 = [(UIKBKeyView *)self renderConfig];
  [v13 setUseVibrantBlend:{objc_msgSend(v34, "whiteText")}];

LABEL_23:

  return v13;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  v10 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    v11 = 0.0;
    if (![v9 scrollDirection])
    {
      emojiGraphicsTraits = self->_emojiGraphicsTraits;
      if (emojiGraphicsTraits && !a5 && emojiGraphicsTraits->_isFirstPartyStickers)
      {
        v10 = *MEMORY[0x1E695F060];
        v11 = *(MEMORY[0x1E695F060] + 8);
      }

      else
      {
        [v8 bounds];
        v10 = v15;
        [(UIKeyboardEmojiAndStickerCollectionInputView *)self categoryHeaderHeight];
        v11 = v16;
      }
    }
  }

  else
  {
    v11 = 0.0;
  }

  v13 = v10;
  v14 = v11;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)deleteImageGlyph:(id)a3 atPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v7];
  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__UIKeyboardEmojiAndStickerCollectionInputView_deleteImageGlyph_atPath___block_invoke;
    v9[3] = &unk_1E70F2F80;
    objc_copyWeak(&v11, &location);
    v10 = v6;
    [v8 performDeleteWithCompletionHandler:v9];

    objc_destroyWeak(&v11);
  }

  objc_destroyWeak(&location);
}

void __72__UIKeyboardEmojiAndStickerCollectionInputView_deleteImageGlyph_atPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[110] deleteItem:*(a1 + 32) completionHandler:&__block_literal_global_255_0];
}

- (int64_t)emojiCategoryTypeForSection:(int64_t)a3
{
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isMemojiCategory:?])
  {
    return 13;
  }

  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isStickersCategory:a3])
  {
    return 14;
  }

  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isRecentCategory:a3])
  {
    return 0;
  }

  return [(UIKeyboardEmojiAndStickerCollectionInputView *)self translatedEmojiCategoryForSection:a3];
}

- (int64_t)translatedEmojiCategoryForSection:(int64_t)a3
{
  v5 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self numberOfPrefixSections];
  v6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self numberOfPrefixCategories];

  return [UIKeyboardEmojiCategory categoryTypeForCategoryIndex:(a3 - v5 + v6) & ~((a3 - v5 + v6) >> 63)];
}

- (int64_t)sectionForCategoryType:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 14)
    {

      return [(UIKeyboardEmojiAndStickerCollectionInputView *)self stickersSectionIndex];
    }

    else if (a3 == 13)
    {

      return [(UIKeyboardEmojiAndStickerCollectionInputView *)self memojiSectionIndex];
    }

    else
    {
      v5 = [UIKeyboardEmojiCategory categoryIndexForCategoryType:?];
      v6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiSectionIndex];
      return v6 + v5 - [(UIKeyboardEmojiAndStickerCollectionInputView *)self numberOfPrefixCategories];
    }
  }

  else
  {

    return [(UIKeyboardEmojiAndStickerCollectionInputView *)self recentSectionIndex];
  }
}

- (BOOL)handleKeyEvent:(id)a3
{
  v4 = a3;
  if ([v4 keyCode])
  {
    v5 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiSearchField];
    v6 = [v5 markedTextRange];

    if (!v6)
    {
      if (([v4 keyCode] == 44 || objc_msgSend(v4, "keyCode") == 40) && -[UIKeyboardEmojiAndStickerCollectionInputView handleSelectionEvent:](self, "handleSelectionEvent:", v4))
      {
        goto LABEL_8;
      }

      if (self->_showingVariants)
      {
        selectedPopupKey = self->_selectedPopupKey;
        if (selectedPopupKey)
        {
          if ([(UIKBTree *)selectedPopupKey variantType]== 12 || [(UIKBTree *)self->_selectedPopupKey variantType]== 13)
          {
            if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self handleKeyInputForFamilySelector:v4])
            {
              goto LABEL_16;
            }

LABEL_8:
            v7 = 1;
            goto LABEL_4;
          }

          if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self handleKeyInputForVariantSelector:v4])
          {
            goto LABEL_8;
          }
        }
      }

LABEL_16:
      v7 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self handleKeyInputForCollectionViewNavigation:v4];
      goto LABEL_4;
    }
  }

  v7 = 0;
LABEL_4:

  return v7;
}

- (BOOL)handleKeyInputForVariantSelector:(id)a3
{
  v4 = a3;
  if ([v4 modifiersEqual:0])
  {
    v5 = -[UIKeyboardEmojiAndStickerCollectionInputView keyCodeForCurrentEnvironmentFromKeyCode:](self, "keyCodeForCurrentEnvironmentFromKeyCode:", [v4 keyCode]);
    if (v5 > 80)
    {
      if (v5 == 82)
      {
        if ([(UIKBTree *)self->_selectedPopupKey selectedVariantIndex]== 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = 0;
        }

        else
        {
          v14 = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndex];
        }

        self->_selectedVariant = v14;
        [(UIKBTree *)self->_selectedPopupKey setSelectedVariantIndex:?];
        v22 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
        v8 = v22;
        selectedPopupKey = self->_selectedPopupKey;
        goto LABEL_30;
      }

      if (v5 == 81)
      {
        v6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
        [v6 updateState:2 forKey:self->_selectedPopupKey];

        self->_showingVariants = 0;
        v7 = self->_selectedPopupKey;
        self->_selectedPopupKey = 0;

        v8 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
        [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateHighlightForIndexPath:v8 scrollIfNeeded:0 animateScroll:0];
LABEL_31:
        v9 = 1;
        goto LABEL_32;
      }
    }

    else
    {
      if (v5 == 79)
      {
        if (-[UIKBTree selectedVariantIndex](self->_selectedPopupKey, "selectedVariantIndex") == 0x7FFFFFFFFFFFFFFFLL || (selectedVariant = self->_selectedVariant, -[UIKBTree subtrees](self->_selectedPopupKey, "subtrees"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 count] - 1, v11, selectedVariant >= v12))
        {
          v13 = 0;
        }

        else
        {
          v13 = self->_selectedVariant + 1;
        }

        self->_selectedVariant = v13;
        v15 = [(UIKBTree *)self->_selectedPopupKey subtrees];
        v16 = [v15 objectAtIndex:self->_selectedVariant];
        v17 = [v16 interactionType];

        v18 = self->_selectedVariant;
        if (v17)
        {
          goto LABEL_29;
        }

        ++v18;
        goto LABEL_28;
      }

      if (v5 == 80)
      {
        if ([(UIKBTree *)self->_selectedPopupKey selectedVariantIndex]== 0x7FFFFFFFFFFFFFFFLL)
        {
          self->_selectedVariant = 0;
        }

        else
        {
          v19 = self->_selectedVariant;
          v20 = v19 < 1;
          v21 = v19 - 1;
          if (v20)
          {
            v24 = [(UIKBTree *)self->_selectedPopupKey subtrees];
            self->_selectedVariant = [v24 count] - 1;
          }

          else
          {
            self->_selectedVariant = v21;
          }
        }

        v25 = [(UIKBTree *)self->_selectedPopupKey subtrees];
        v26 = [v25 objectAtIndex:self->_selectedVariant];
        v27 = [v26 interactionType];

        v18 = self->_selectedVariant;
        if (v27)
        {
          goto LABEL_29;
        }

        --v18;
LABEL_28:
        self->_selectedVariant = v18;
LABEL_29:
        [(UIKBTree *)self->_selectedPopupKey setSelectedVariantIndex:v18];
        v22 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
        v8 = v22;
        selectedPopupKey = self->_selectedPopupKey;
LABEL_30:
        [v22 updateState:16 forKey:selectedPopupKey];
        goto LABEL_31;
      }
    }

    if (self->_selectedPopupKey)
    {
      v8 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
      [v8 updateState:2 forKey:self->_selectedPopupKey];
      v9 = 0;
LABEL_32:

      goto LABEL_33;
    }
  }

  v9 = 0;
LABEL_33:

  return v9;
}

- (id)verticalNeighborForIndexPath:(id)a3 up:(BOOL)a4 byPage:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v72 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(UICollectionView *)self->_collectionView layoutAttributesForItemAtIndexPath:v8];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v13 + v17 * 0.5;
  [(UIView *)self->_collectionView frame];
  v21 = v20;
  if (v6)
  {
    v22 = -1.0;
  }

  else
  {
    v22 = 1.0;
  }

  if (v5)
  {
    v23 = v19;
  }

  else
  {
    v23 = v17;
  }

  v64 = v23;
  v65 = v15;
  v24 = v18 + v22 * v19 + v22 * v19;
  v25 = 0;
  v26 = 0;
  v66 = v11;
  v74.origin.x = v11;
  v74.origin.y = v13;
  v74.size.width = v15;
  v74.size.height = v17;
  v75 = CGRectUnion(v74, *(&v21 - 2));
  x = v75.origin.x;
  y = v75.origin.y;
  width = v75.size.width;
  height = v75.size.height;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v31 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  v32 = [v31 layoutAttributesForElementsInRect:{x, y, width, height}];

  v33 = [v32 countByEnumeratingWithState:&v67 objects:v71 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = 0;
    v36 = v66 + v65 * 0.5;
    v37 = v18 + v22 * v64;
    v38 = *v68;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v68 != v38)
        {
          objc_enumerationMutation(v32);
        }

        v40 = *(*(&v67 + 1) + 8 * i);
        [v40 frame];
        if (v42 != v13)
        {
          if (v35)
          {
            [v40 frame];
            v44 = v43;
            v46 = v45;
            v49 = v48 + v47 * 0.5;
            [v35 frame];
            v54 = v53 + v52 * 0.5;
            v55 = v37 - v49;
            if (v37 - v49 < 0.0)
            {
              v55 = -(v37 - v49);
            }

            v56 = v37 - v54;
            if (v56 < 0.0)
            {
              v56 = -v56;
            }

            v57 = v55 - v56;
            if (v57 < 0.0)
            {
              goto LABEL_28;
            }

            v58 = v50 + v51 * 0.5;
            v59 = v36 - (v44 + v46 * 0.5);
            if (v59 < 0.0)
            {
              v59 = -v59;
            }

            v41 = v36 - v58;
            if (v41 < 0.0)
            {
              v41 = -v41;
            }

            if (v57 == 0.0 && v59 < v41)
            {
LABEL_28:
              v61 = v40;

              v35 = v61;
            }
          }

          else
          {
            v35 = v40;
          }
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v67 objects:v71 count:{16, v41}];
    }

    while (v34);
  }

  else
  {
    v35 = 0;
  }

  v62 = [v35 indexPath];

  return v62;
}

- (BOOL)handleKeyInputForCollectionViewNavigation:(id)a3
{
  v4 = a3;
  if ([v4 unmodifiedKeyCodeEquals:44] & 1) != 0 || (objc_msgSend(v4, "unmodifiedKeyCodeEquals:", 158))
  {
    goto LABEL_3;
  }

  if ([v4 unmodifiedKeyCodeEquals:79])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 equalsKeyCode:79 modifiers:0x100000];
  }

  if ([v4 unmodifiedKeyCodeEquals:80])
  {
    v7 = 1;
  }

  else
  {
    v7 = [v4 equalsKeyCode:80 modifiers:0x100000];
  }

  if ([v4 unmodifiedKeyCodeEquals:82])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v4 equalsKeyCode:82 modifiers:0x100000];
  }

  if ([v4 unmodifiedKeyCodeEquals:81])
  {
    v9 = 1;
  }

  else
  {
    v9 = [v4 equalsKeyCode:81 modifiers:0x100000];
  }

  v10 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hasVerticalScrolling];
  v11 = [(UIView *)self effectiveUserInterfaceLayoutDirection];
  if (v10)
  {
    if (v11 == UIUserInterfaceLayoutDirectionRightToLeft)
    {
      v12 = v6;
    }

    else
    {
      v12 = v7;
    }

    v57 = v9;
    if (v11 == UIUserInterfaceLayoutDirectionRightToLeft)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }
  }

  else
  {
    if (v11 == UIUserInterfaceLayoutDirectionRightToLeft)
    {
      v13 = v7;
    }

    else
    {
      v13 = v6;
    }

    v57 = v13;
    v12 = v8;
    if (v11 == UIUserInterfaceLayoutDirectionRightToLeft)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }
  }

  v14 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];

  v56 = v12;
  if (v14)
  {
    v15 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
    v16 = [v15 section];

    v17 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
    v18 = [v17 item];
  }

  else
  {
    if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching])
    {
      if (v10)
      {
        if ((v9 | v12))
        {
          goto LABEL_3;
        }
      }

      else if ((v57 | v8))
      {
        goto LABEL_3;
      }
    }

    v55 = v8;
    v19 = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
    v20 = [v19 sortedArrayUsingSelector:sel_compare_];

    v21 = [v20 firstObject];
    v16 = [v21 section];
    v18 = [v21 item];
    if (!(v16 | v18))
    {
      v18 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self _shouldShowRecentlyUsedMedia];
    }

    if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching])
    {
      [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
      v54 = v20;
      v23 = v22 = v16;
      v24 = [v23 count];

      v16 = v22;
      v20 = v54;
      if (!v24)
      {
        v16 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self recentSectionIndex]+ 1;
      }
    }

    v25 = [MEMORY[0x1E696AC88] indexPathForItem:v18 inSection:v16];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self setSelectedIndexPath:v25];

    v8 = v55;
  }

  v26 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:v16];
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph])
  {
    v27 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
    -[UIKeyboardEmojiAndStickerCollectionInputView rowsInSection:](self, "rowsInSection:", [v27 section]);
  }

  if (v9)
  {
    if (v14)
    {
      if (v18 >= v26 - 1)
      {
        v28 = 0;
        if (v16 < [(UICollectionView *)self->_collectionView numberOfSections]- 1)
        {
          v18 = 0;
          ++v16;
        }
      }

      else
      {
        v28 = 0;
        ++v18;
      }
    }

    else
    {
      v28 = 0;
    }

    v35 = 1;
    goto LABEL_65;
  }

  if (v56)
  {
    v29 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self _shouldShowRecentlyUsedMedia];
    if (v14)
    {
      v30 = v16 < 2 && v29;
      if (v18 > v30)
      {
        v28 = 0;
        --v18;
LABEL_74:
        LODWORD(v8) = 1;
LABEL_75:
        v38 = 1;
        goto LABEL_76;
      }

      if (v16 >= 1)
      {
        v28 = 0;
        v18 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:v16 - 1]- 1;
        LODWORD(v8) = 1;
        v38 = 1;
        --v16;
LABEL_76:
        v35 = v57;
        goto LABEL_77;
      }
    }

    v28 = 0;
    goto LABEL_74;
  }

  if ((v57 | v8))
  {
    v31 = ![(UIScrollView *)self->_collectionView isScrollAnimating];
    v32 = [v4 modifiersEqual:0x100000];
    v28 = v32 | v31;
    if (v14)
    {
      v33 = v32;
      v34 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];

      v35 = v57;
      if (v34)
      {
        v36 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
        v37 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self verticalNeighborForIndexPath:v36 up:v8 byPage:v33];

        if (v37)
        {
          v16 = [v37 section];
          v18 = [v37 item];
        }
      }

      goto LABEL_65;
    }

    goto LABEL_75;
  }

  v39 = [v4 unmodifiedKeyCodeEquals:43];
  v40 = [v4 equalsKeyCode:43 modifiers:0x20000];
  if ((v39 & 1) != 0 || v40)
  {
    if (v40)
    {
      if (v16 > 0)
      {
        --v16;
        goto LABEL_92;
      }

      LODWORD(v8) = 0;
      v35 = 0;
      v28 = 0;
      v16 = 0;
      v18 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self _shouldShowRecentlyUsedMedia];
    }

    else
    {
      if (v16 < [(UICollectionView *)self->_collectionView numberOfSections]- 1)
      {
        ++v16;
LABEL_92:
        v50 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiCategoryTypeForSection:v16];
        v51 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
        [v51 reloadForCategory:v50 withSender:self];

        v52 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v16];
        [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateToIndexPath:v52];

        v53 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
        v18 = [v53 lastVisibleFirstEmojiIndex];

        LODWORD(v8) = 0;
        v35 = 0;
        v28 = 0;
        v38 = 0;
        if (!(v18 | v16))
        {
          v16 = 0;
          v18 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self _shouldShowRecentlyUsedMedia];
        }

LABEL_77:
        if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching]&& v16 == [(UIKeyboardEmojiAndStickerCollectionInputView *)self recentSectionIndex])
        {
          v41 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
          v42 = [v41 count];

          v43 = (v18 < v42) | v35;
          if (v18 < v42)
          {
            v44 = v16;
          }

          else
          {
            v18 = 0;
            v44 = 1;
          }

          if (v43 & 1) != 0 || ((v8 ^ 1))
          {
            goto LABEL_87;
          }

          v45 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
          v46 = [v45 count];

          if (!v46)
          {
            v18 = 0;
            v44 = 1;
            goto LABEL_87;
          }

          v47 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
          v18 = [v47 count] - 1;
        }

        v44 = v16;
LABEL_87:
        v48 = [MEMORY[0x1E696AC88] indexPathForItem:v18 inSection:v44];
        [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateHighlightForIndexPath:v48 scrollIfNeeded:v38 animateScroll:v28 & v38];

        v5 = 1;
        goto LABEL_88;
      }

      v16 = [(UICollectionView *)self->_collectionView numberOfSections]- 1;
      LODWORD(v8) = 0;
      v35 = 0;
      v28 = 0;
      v18 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:v16]- 1;
    }

LABEL_65:
    v38 = 1;
    goto LABEL_77;
  }

LABEL_3:
  v5 = 0;
LABEL_88:

  return v5;
}

- (BOOL)handleKeyInputForFamilySelector:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 modifiersEqual:0];
  if (v5)
  {
    v6 = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndices];
    v7 = [v6 mutableCopy];

    if (!v7)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:&unk_1EFE2D2B8];
    }

    currentVariantRow = self->_currentVariantRow;
    if (currentVariantRow <= [v7 count] - 1)
    {
      v9 = self->_currentVariantRow;
    }

    else
    {
      v9 = 0;
      self->_currentVariantRow = 0;
    }

    v10 = [v7 objectAtIndex:v9];
    self->_selectedVariant = [v10 integerValue];

    v11 = -[UIKeyboardEmojiAndStickerCollectionInputView keyCodeForCurrentEnvironmentFromKeyCode:](self, "keyCodeForCurrentEnvironmentFromKeyCode:", [v4 keyCode]);
    if (v11 <= 80)
    {
      if (v11 == 79)
      {
        selectedVariant = self->_selectedVariant;
        if (selectedVariant == 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = 0;
        }

        else
        {
          v13 = selectedVariant + 1;
        }

        goto LABEL_31;
      }

      if (v11 == 80)
      {
        v12 = self->_selectedVariant;
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = 0;
        }

        else
        {
          if (v12 < 1)
          {
LABEL_32:
            v26 = self->_currentVariantRow;
            v27 = MEMORY[0x1E696AD98];
LABEL_33:
            v28 = [v27 numberWithInteger:?];
            [v7 replaceObjectAtIndex:v26 withObject:v28];

            goto LABEL_34;
          }

          v13 = v12 - 1;
        }

LABEL_31:
        self->_selectedVariant = v13;
        goto LABEL_32;
      }

LABEL_34:
      [(UIKBTree *)self->_selectedPopupKey setSelectedVariantIndices:v7];
      v23 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
      [v23 updateState:16 forKey:self->_selectedPopupKey];
      goto LABEL_35;
    }

    if (v11 == 82)
    {
      v19 = [(UIKBTree *)self->_selectedPopupKey popupDirection];
      v20 = self->_currentVariantRow;
      if (v19 != 2 || v20)
      {
        v24 = v20 < 1;
        v25 = v20 - 1;
        if (v24)
        {
          if ([(UIKBTree *)self->_selectedPopupKey popupDirection]== 1)
          {
            v42 = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndex];
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            obj = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndices];
            v30 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v45;
              while (2)
              {
                for (i = 0; i != v31; ++i)
                {
                  if (*v45 != v32)
                  {
                    objc_enumerationMutation(obj);
                  }

                  if ([*(*(&v44 + 1) + 8 * i) integerValue] == 0x7FFFFFFFFFFFFFFFLL)
                  {

                    goto LABEL_58;
                  }
                }

                v31 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
                if (v31)
                {
                  continue;
                }

                break;
              }
            }

            if (v42)
            {
              self->_currentVariantRow = [v7 count];
              [v7 addObject:&unk_1EFE32380];
            }

            else
            {
LABEL_58:
              self->_currentVariantRow = 0;
            }
          }
        }

        else
        {
          self->_currentVariantRow = v25;
        }

        v41 = [v7 objectAtIndex:self->_currentVariantRow];
        self->_selectedVariant = [v41 integerValue];

        if (self->_selectedVariant != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_34;
        }

        self->_selectedVariant = 0;
        v26 = self->_currentVariantRow;
        v27 = MEMORY[0x1E696AD98];
        goto LABEL_33;
      }
    }

    else
    {
      if (v11 != 81)
      {
        goto LABEL_34;
      }

      v14 = [(UIKBTree *)self->_selectedPopupKey popupDirection];
      v15 = self->_currentVariantRow;
      if (v15 < [v7 count] && (self->_selectedVariant != 0x7FFFFFFFFFFFFFFFLL || -[UIKBTree popupDirection](self->_selectedPopupKey, "popupDirection") == 2))
      {
        v16 = [(UIKBTree *)self->_selectedPopupKey popupDirection];
        v17 = self->_currentVariantRow;
        if (v16 == 2 && !v17)
        {
          if (self->_selectedVariant == 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = -1;
            self->_currentVariantRow = -1;
          }

          else
          {
            v17 = 0;
          }
        }

        if (v17 == [v7 count] - 1)
        {
          [v7 addObject:&unk_1EFE32380];
        }

        ++self->_currentVariantRow;
        v34 = [v7 objectAtIndex:?];
        self->_selectedVariant = [v34 integerValue];

        if (self->_selectedVariant == 0x7FFFFFFFFFFFFFFFLL)
        {
          self->_selectedVariant = 0;
          v35 = self->_currentVariantRow;
          v36 = [MEMORY[0x1E696AD98] numberWithInteger:0];
          [v7 replaceObjectAtIndex:v35 withObject:v36];
        }

        [(UIKBTree *)self->_selectedPopupKey setSelectedVariantIndices:v7];
        v37 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
        [v37 updateState:16 forKey:self->_selectedPopupKey];

        if (v14 != 1)
        {
          goto LABEL_36;
        }

        v38 = [v7 count];
        v39 = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndices];
        v40 = [v39 count];

        if (v38 <= v40)
        {
          goto LABEL_36;
        }
      }
    }

    v21 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
    [v21 updateState:2 forKey:self->_selectedPopupKey];

    self->_showingVariants = 0;
    selectedPopupKey = self->_selectedPopupKey;
    self->_selectedPopupKey = 0;

    v23 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateHighlightForIndexPath:v23 scrollIfNeeded:0 animateScroll:0];
LABEL_35:

LABEL_36:
  }

  return v5;
}

- (BOOL)_handleInitialSelectionEvent:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiSearchField];
  v6 = [v5 text];

  if ([v4 unmodifiedKeyCodeEquals:44] && !objc_msgSend(v6, "length") || objc_msgSend(v4, "unmodifiedKeyCodeEquals:", 40) && objc_msgSend(v6, "length") && (-[UIKeyboardEmojiAndStickerCollectionInputView searchResults](self, "searchResults"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8))
  {
    v9 = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
    v10 = [v9 sortedArrayUsingSelector:sel_compare_];

    v11 = [v10 firstObject];
    if (!v11)
    {
      v14 = 0;
      goto LABEL_15;
    }

    v12 = v11;
    if (-[UIKeyboardEmojiAndStickerCollectionInputView _shouldShowRecentlyUsedMedia](self, "_shouldShowRecentlyUsedMedia") && ![v12 section] && !objc_msgSend(v12, "item"))
    {
      v13 = [MEMORY[0x1E696AC88] indexPathForItem:1 inSection:0];

      v12 = v13;
    }

    [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateHighlightForIndexPath:v12 scrollIfNeeded:0 animateScroll:0];
  }

  else
  {
    if (![v4 unmodifiedKeyCodeEquals:40])
    {
      v14 = 0;
      goto LABEL_17;
    }

    [(UIKeyboardEmojiAndStickerCollectionInputView *)self setIsSearching:0];
    v10 = +[UIKeyboardImpl activeInstance];
    [v10 dismissEmojiPopoverIfNecessaryWithCompletion:&__block_literal_global_263_1];
  }

  v14 = 1;
LABEL_15:

LABEL_17:
  return v14;
}

void __77__UIKeyboardEmojiAndStickerCollectionInputView__handleInitialSelectionEvent___block_invoke()
{
  v0 = +[UIKeyboardImpl activeInstance];
  [v0 clearForwardingInputDelegateAndResign:0];
}

- (BOOL)_handleVariantSelectionEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 unmodifiedKeyCodeEquals:44];
  v6 = [v4 unmodifiedKeyCodeEquals:40];

  v7 = v5 | v6;
  if ((v5 | v6))
  {
    collectionView = self->_collectionView;
    v9 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
    v10 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v9];

    v11 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedChildSkinToneEmoji:self->_selectedPopupKey];
    v12 = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndices];
    v13 = [v12 count];

    if (v13)
    {
      v14 = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndices];
      v15 = [v14 lastObject];
      v16 = [v15 integerValue];

      if (!v16)
      {
        [(UIKBTree *)self->_selectedPopupKey setSelectedVariantIndex:0];
        v17 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedChildSkinToneEmoji:self->_selectedPopupKey];

        v11 = v17;
      }
    }

    [(UIKBTree *)self->_selectedPopupKey setObject:v11 forProperty:@"UIKBAssociatedEmoji"];
    [v10 setEmoji:v11];
    v18 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
    [v18 updateState:2 forKey:self->_selectedPopupKey];

    [(UIKeyboardEmojiAndStickerCollectionInputView *)self didInputSubTree:self->_selectedPopupKey];
    if (v5)
    {
      v19 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
      [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateHighlightForIndexPath:v19 scrollIfNeeded:0 animateScroll:0];
    }

    else if ((v6 & 1) == 0)
    {
LABEL_9:

      return v7 & 1;
    }

    [(UIKeyboardEmojiAndStickerCollectionInputView *)self insertSelectedEmoji:v11 shouldDismissPopover:v5 ^ 1u];
    goto LABEL_9;
  }

  return v7 & 1;
}

- (BOOL)_handleBaseKeySelectionEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 unmodifiedKeyCodeEquals:44];
  v6 = [v4 equalsKeyCode:44 modifiers:0x80000];
  v7 = [v4 unmodifiedKeyCodeEquals:40];
  v8 = [v4 equalsKeyCode:40 modifiers:0x80000];
  collectionView = self->_collectionView;
  v10 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
  v11 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v10];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v27 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          *v30 = 0;
          _os_log_fault_impl(&dword_188A29000, v27, OS_LOG_TYPE_FAULT, "Memoji cell is selected. Unsupported.", v30, 2u);
        }
      }

      else
      {
        v16 = *(__UILogGetCategoryCachedImpl("Assert", &_handleBaseKeySelectionEvent____s_category_0) + 8);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Memoji cell is selected. Unsupported.", buf, 2u);
        }
      }

      goto LABEL_12;
    }

    v13 = [v11 emoji];
    v14 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self treeForCell:v11];
    if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self keySupportsVariants:v14])
    {
      v15 = [(UIKBKeyView *)self factory];
      if ([v15 popupKeyUsesCustomKeyContentView:v14])
      {
        if ([v14 selectedVariantIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {

LABEL_24:
          self->_currentVariantRow = 0;
          v20 = [v14 selectedVariantIndices];
          v21 = v20;
          if (v20)
          {
            v22 = [v20 firstObject];
            v23 = [v22 integerValue];

            if (v23 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v24 = 0;
            }

            else
            {
              v24 = v23;
            }

            self->_selectedVariant = v24;
          }

          [v11 setSelected:0];
          objc_storeStrong(&self->_selectedPopupKey, v14);
          v17 = 1;
          self->_showingVariants = 1;
          v25 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
          [v25 updateState:16 forKey:v14];

          goto LABEL_30;
        }

        v28 = [v4 modifiersEqual:0x80000];

        if (v28)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }

      if (([v14 selectedVariantIndex] == 0x7FFFFFFFFFFFFFFFLL) & (v5 | v7) | (v6 | v8) & 1)
      {
        [v11 setSelected:0];
        if ([v14 selectedVariantIndex] != 0x7FFFFFFFFFFFFFFFLL)
        {
          self->_selectedVariant = [v14 selectedVariantIndex];
        }

        objc_storeStrong(&self->_selectedPopupKey, v14);
        v17 = 1;
        self->_showingVariants = 1;
        v18 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
        [v18 updateState:16 forKey:v14];

        goto LABEL_30;
      }
    }

    if (v5)
    {
      v19 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
      [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateHighlightForIndexPath:v19 scrollIfNeeded:0 animateScroll:0];

      [(UIKeyboardEmojiAndStickerCollectionInputView *)self insertSelectedEmoji:v13 shouldDismissPopover:0];
      v17 = 1;
    }

    else if (v7)
    {
      v17 = 1;
      [(UIKeyboardEmojiAndStickerCollectionInputView *)self insertSelectedEmoji:v13 shouldDismissPopover:1];
    }

    else
    {
      v17 = 0;
    }

LABEL_30:

    goto LABEL_31;
  }

  if ((v5 | v7))
  {
    v12 = [v11 imageGlyph];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self insertImageGlyph:v12 dismiss:v7];
  }

LABEL_12:
  v17 = 1;
LABEL_31:

  return v17;
}

- (BOOL)handleSelectionEvent:(id)a3
{
  v4 = a3;
  if ([v4 modifierFlags] && !objc_msgSend(v4, "modifiersEqual:", 0x80000))
  {
    v7 = 0;
  }

  else
  {
    v5 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];

    if (v5)
    {
      if (self->_showingVariants)
      {
        v6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self _handleVariantSelectionEvent:v4];
      }

      else
      {
        v6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self _handleBaseKeySelectionEvent:v4];
      }
    }

    else
    {
      v6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self _handleInitialSelectionEvent:v4];
    }

    v7 = v6;
  }

  return v7;
}

- (void)updateHighlightForIndexPath:(id)a3 scrollIfNeeded:(BOOL)a4 animateScroll:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v21 = a3;
  v8 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
  v9 = [v8 section];
  v10 = [v21 section];

  if (v9 != v10)
  {
    v11 = -[UIKeyboardEmojiAndStickerCollectionInputView emojiCategoryTypeForSection:](self, "emojiCategoryTypeForSection:", [v21 section]);
    v12 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
    [v12 reloadCategoryForIndexPath:v21 withSender:self];

    v13 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
    [v13 reloadForCategory:v11 withSender:self];

    v14 = [UIKeyboardEmojiCategory categoryForType:v11];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self setCategory:v14];
  }

  [(UIKeyboardEmojiAndStickerCollectionInputView *)self setSelectedIndexPath:v21];
  v15 = -[UICollectionView numberOfItemsInSection:](self->_collectionView, "numberOfItemsInSection:", [v21 section]);
  if (v15 > [v21 item])
  {
    collectionView = self->_collectionView;
    v17 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
    [(UICollectionView *)collectionView selectItemAtIndexPath:v17 animated:0 scrollPosition:0];

    if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self cellShouldScrollWhenSelectedAtIndexPath:v21]&& v6)
    {
      v18 = self->_collectionView;
      v19 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
      if ([(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection])
      {
        v20 = 16;
      }

      else
      {
        v20 = 2;
      }

      [(UICollectionView *)v18 scrollToItemAtIndexPath:v19 atScrollPosition:v20 animated:v5];
    }

    [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateLastSeenItemForIndexPath:v21];
  }
}

- (void)insertSelectedEmoji:(id)a3 shouldDismissPopover:(BOOL)a4
{
  v4 = a4;
  v27 = a3;
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self updatePreferencesForSelectedEmoji:v27];
  v6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiSearchInputViewController];
  v7 = [v6 textDocumentProxy];
  v8 = [v27 emojiString];
  [v7 insertText:v8];

  v9 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiSearchField];
  v10 = [v9 text];

  v11 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
  v12 = [v11 section];

  v13 = +[UIKeyboardImpl activeInstance];
  v14 = v13;
  if (v12)
  {
    v15 = UIKBAnalyticsEmojiSelectionMethodReturnKey;
    if (!v4)
    {
      v15 = UIKBAnalyticsEmojiSelectionMethodSpaceBar;
    }

    [v13 insertedEmojiFromPopover:v27 selectionMethod:*v15];
  }

  else
  {
    v16 = [v27 emojiString];
    v17 = UIKBAnalyticsEmojiSelectionMethodReturnKey;
    if (!v4)
    {
      v17 = UIKBAnalyticsEmojiSelectionMethodSpaceBar;
    }

    [v14 emojiSearchWillInsertEmoji:v16 forSearchQuery:v10 selectionMethod:*v17 inputType:@"PopoverSearch"];
  }

  v18 = +[UIKeyboardImpl activeInstance];
  v19 = [v18 activeLayout];

  v20 = [v19 delegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = [v27 emojiString];
    v23 = [v19 createKeyEventForStringAction:v22 forKey:0 inputFlags:0];

    v24 = [v19 delegate];
    [v24 handleKeyUIEvent:v23 dismiss:v4];
  }

  if (v4)
  {
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self resetSelectionIfNeeded];
    v25 = +[UIKeyboardImpl activeInstance];
    [v25 dismissEmojiPopoverIfNecessaryWithCompletion:&__block_literal_global_268];
  }

  selectedPopupKey = self->_selectedPopupKey;
  self->_selectedPopupKey = 0;

  self->_showingVariants = 0;
}

void __89__UIKeyboardEmojiAndStickerCollectionInputView_insertSelectedEmoji_shouldDismissPopover___block_invoke()
{
  v0 = +[UIKeyboardImpl activeInstance];
  [v0 clearForwardingInputDelegateAndResign:0];
}

- (int64_t)keyCodeForCurrentEnvironmentFromKeyCode:(int64_t)a3
{
  v4 = [(UIView *)self effectiveUserInterfaceLayoutDirection];
  v5 = 80;
  v6 = 79;
  if (a3 != 80)
  {
    v6 = a3;
  }

  if (a3 != 79)
  {
    v5 = v6;
  }

  if (v4 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    return v5;
  }

  else
  {
    return a3;
  }
}

- (void)updatePreferencesForSelectedEmoji:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  v6 = [v5 lastUsedInputModeForCurrentContext];
  v7 = [v6 primaryLanguage];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"en_US";
  }

  v13 = v9;
  v10 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  [v10 emojiUsed:v4 language:v13];

  v11 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];

  if (v11)
  {
    v12 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateLastSeenItemForIndexPath:v12];
  }
}

- (void)updateLastSeenItemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardEmojiCategory categoryForType:](UIKeyboardEmojiCategory, "categoryForType:", -[UIKeyboardEmojiAndStickerCollectionInputView emojiCategoryTypeForSection:](self, "emojiCategoryTypeForSection:", [v4 section]));
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self setCategory:v5];

  v6 = [v4 item];
  v7 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
  [v7 setLastVisibleFirstEmojiIndex:v6];

  v9 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
  v8 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  [v8 setLastViewedCategory:v9];
}

- (void)resetSelectionIfNeeded
{
  v3 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];

  if (v3)
  {
    collectionView = self->_collectionView;
    v5 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
    [(UICollectionView *)collectionView deselectItemAtIndexPath:v5 animated:0];

    selectedIndexPath = self->_selectedIndexPath;
    self->_selectedIndexPath = 0;

    selectedPopupKey = self->_selectedPopupKey;
    self->_selectedPopupKey = 0;

    self->_showingVariants = 0;
  }
}

- (BOOL)keySupportsVariants:(id)a3
{
  v3 = a3;
  v4 = [v3 variantType] == 10 || objc_msgSend(v3, "variantType") == 12 || objc_msgSend(v3, "variantType") == 11 || objc_msgSend(v3, "variantType") == 13;

  return v4;
}

- (BOOL)cellShouldScrollWhenSelectedAtIndexPath:(id)a3
{
  collectionView = self->_collectionView;
  v5 = a3;
  [(UIView *)collectionView bounds];
  v22 = CGRectInset(v21, 0.0, -1.0);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v10 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v5];

  v11 = self->_collectionView;
  [v10 bounds];
  [(UIView *)v11 convertRect:v10 fromView:?];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v25.origin.x = v13;
  v25.origin.y = v15;
  v25.size.width = v17;
  v25.size.height = v19;
  v26 = CGRectIntersection(v23, v25);
  v24.origin.x = v13;
  v24.origin.y = v15;
  v24.size.width = v17;
  v24.size.height = v19;
  LOBYTE(v11) = CGRectEqualToRect(v24, v26);

  return v11 ^ 1;
}

- (void)emojiSearchTextFieldWillBecomeActive:(id)a3
{
  v4 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiSearchField];
  v5 = [(UIKBKeyView *)self renderConfig];
  [v4 _setRenderConfig:v5];

  collectionView = self->_collectionView;

  [(UIKeyboardEmojiAndStickerCollectionView *)collectionView setIsInSearchPopover:1];
}

- (void)emojiSearchTextFieldDidBecomeActive:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  [v4 changePreferredEmojiSearchInputModeForInputDelegate:v3];
}

- (void)emojiSearchTextFieldWillBecomeInactive:(id)a3
{
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self setIsSearching:0];
  [(UIKeyboardEmojiAndStickerCollectionView *)self->_collectionView setIsInSearchPopover:0];
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 clearForwardingInputDelegateAndResign:0];
}

- (void)emojiSearchTextFieldDidBecomeInactive:(id)a3
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 updateAssistantView];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"UIKeyboardSwitchedAwayFromEmoji" object:0];

  v7 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  v6 = [v5 hardwareInputMode];
  [v7 setCurrentInputMode:v6];
}

- (void)emojiSearchTextFieldWillClear:(id)a3
{
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self setIsSearching:0];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self setSearchResults:MEMORY[0x1E695E0F0]];

  [(UIKeyboardEmojiAndStickerCollectionInputView *)self resetSelectionIfNeeded];
}

- (void)emojiSearchTextFieldDidReset:(id)a3
{
  v4 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self setIsSearching:0];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self resetSelectionIfNeeded];
  if (v4)
  {
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self setSearchResults:MEMORY[0x1E695E0F0]];
    if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self showingRecents])
    {
      collectionView = self->_collectionView;
      v6[4] = self;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __77__UIKeyboardEmojiAndStickerCollectionInputView_emojiSearchTextFieldDidReset___block_invoke;
      v7[3] = &unk_1E70F3590;
      v7[4] = self;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __77__UIKeyboardEmojiAndStickerCollectionInputView_emojiSearchTextFieldDidReset___block_invoke_2;
      v6[3] = &unk_1E70F5AC0;
      [(UICollectionView *)collectionView performBatchUpdates:v7 completion:v6];
    }
  }
}

void __77__UIKeyboardEmojiAndStickerCollectionInputView_emojiSearchTextFieldDidReset___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 640);
  v2 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  [v1 deleteSections:v2];
}

uint64_t __77__UIKeyboardEmojiAndStickerCollectionInputView_emojiSearchTextFieldDidReset___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __77__UIKeyboardEmojiAndStickerCollectionInputView_emojiSearchTextFieldDidReset___block_invoke_3;
  v2[3] = &unk_1E70F3590;
  v2[4] = *(a1 + 32);
  return [UIView performWithoutAnimation:v2];
}

- (void)setSearchResults:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self _setRearrangeMode:0];
  v5 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      [(UIKeyboardEmojiAndStickerCollectionInputView *)self setIsSearching:1];
      v7 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
      v8 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self recentsIndexPath];
      [v7 reloadCategoryForIndexPath:v8 withSender:self];

      [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateOffsetForSearchResultsAnimated:1];
    }

    [(UIKeyboardEmojiAndStickerCollectionInputView *)self resetSelectionIfNeeded];
    v9 = [v4 copy];
    searchResults = self->_searchResults;
    self->_searchResults = v9;

    v11 = [(STKImageGlyphDataSource *)self->_imageGlyphDataSource snapshot];
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[UIKeyboardEmojiAndStickerCollectionInputView recentSectionIndex](self, "recentSectionIndex")}];
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[UIKeyboardEmojiAndStickerCollectionInputView emojiSectionIndex](self, "emojiSectionIndex")}];
    v21[0] = v12;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [v11 deleteSectionsWithIdentifiers:v14];

    v20 = v12;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    [v11 insertSectionsWithIdentifiers:v15 beforeSectionWithIdentifier:v13];

    if ([v4 count])
    {
      v16 = [v4 bs_compactMap:&__block_literal_global_276];
    }

    else
    {
      v19 = @"emoji:::";
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    }

    v18 = v16;
    [v11 appendItemsWithIdentifiers:v16 intoSectionWithIdentifier:v12];

    [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateDataSourceWithSnapshot:v11 animated:0];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateOffsetForSearchResultsAnimated:0];

    goto LABEL_10;
  }

  [(UIKeyboardEmojiAndStickerCollectionInputView *)self setIsSearching:0];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self resetSelectionIfNeeded];
  v17 = self->_searchResults;
  self->_searchResults = MEMORY[0x1E695E0F0];

  [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateDataSourceSnapshotAnimated:0];
  if (v6)
  {
    v11 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
    v12 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self recentsIndexPath];
    [v11 reloadCategoryForIndexPath:v12 withSender:self];
LABEL_10:
  }
}

id __65__UIKeyboardEmojiAndStickerCollectionInputView_setSearchResults___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 identifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self topPadding];
  v10 = v9;
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self categoryHeaderHeight];
  v12 = v11;
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching])
  {
    v13 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
    if ([v13 count])
    {
    }

    else
    {
      v14 = [v8 section];

      if (!v14)
      {
        [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiKeyWidth];
        v25 = v24;
        [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumInteritemSpacing];
        v27 = (v25 + v26 + 1.0) * 6.0;
        [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
        v18 = v27 + v28 + v28;
        [v7 bounds];
        v29 = CGRectGetHeight(v40) - v12;
        [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits bottomPadding];
        v19 = v29 - v30;
        goto LABEL_11;
      }
    }
  }

  if (!-[UIKeyboardEmojiAndStickerCollectionInputView _shouldShowRecentlyUsedMedia](self, "_shouldShowRecentlyUsedMedia") || [v8 section] || objc_msgSend(v8, "item"))
  {
    if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph])
    {
      v15 = -[UIKeyboardEmojiAndStickerCollectionInputView rowsInSection:](self, "rowsInSection:", [v8 section]);
      [v7 bounds];
      v16 = (CGRectGetHeight(v39) - v12) / v15;
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits bottomPadding];
      v18 = v16 - v17 - v10;
      v19 = v18;
    }

    else
    {
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits emojiKeyWidth];
      v18 = v20;
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits emojiKeyWidth];
      v19 = v21;
    }
  }

  else
  {
    [v7 bounds];
    Height = CGRectGetHeight(v41);
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits bottomPadding];
    v33 = v32;
    if ([(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection])
    {
      v19 = Height - v12 - v33;
      if (self->_useWideAnimojiCell)
      {
        v18 = v19 + v19;
      }

      else
      {
        v18 = v19;
      }
    }

    else
    {
      [v7 bounds];
      Width = CGRectGetWidth(v42);
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewLeftMostPadding];
      v36 = Width - v35;
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewRightMostPadding];
      v18 = v36 - v37;
      [v7 bounds];
      v19 = CGRectGetWidth(v43) * 0.166666667;
    }
  }

LABEL_11:

  v22 = v18;
  v23 = v19;
  result.height = v23;
  result.width = v22;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:0, a4];
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits sectionOffset];
  v9 = v8;
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits bottomPadding];
  v11 = v10;
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self topPadding];
  v13 = v12;
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self categoryHeaderHeight];
  v15 = v14;
  v16 = [(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection];
  if (a5)
  {
    v17 = 1;
  }

  else
  {
    v17 = v7 <= 0;
  }

  v18 = !v17;
  if (v16 == UICollectionViewScrollDirectionVertical)
  {
    if ((v18 & 1) != 0 || a5 == 1 && !v7)
    {
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewLeftMostPadding];
      v20 = v21;
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewRightMostPadding];
      v11 = v9;
    }

    else
    {
      v23 = [(UICollectionView *)self->_collectionView numberOfSections]- 1;
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewLeftMostPadding];
      v20 = v24;
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewRightMostPadding];
      if (v23 != a5)
      {
        v11 = v9;
      }
    }

    goto LABEL_20;
  }

  if ((v18 & 1) == 0 && (a5 != 1 || v7))
  {
    v13 = v13 + v15;
    v20 = 0.0;
    if ([(UICollectionView *)self->_collectionView numberOfSections]- 1 != a5)
    {
      goto LABEL_21;
    }

    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewRightMostPadding];
LABEL_20:
    v9 = v22;
    goto LABEL_21;
  }

  v13 = v13 + v15;
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewLeftMostPadding];
  v20 = v19;
LABEL_21:
  v25 = v13;
  v26 = v20;
  v27 = v11;
  v28 = v9;
  result.right = v28;
  result.bottom = v27;
  result.left = v26;
  result.top = v25;
  return result;
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (!a5 && [(UIKeyboardEmojiAndStickerCollectionInputView *)self _shouldShowRecentlyUsedMedia])
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumInteritemSpacing];
LABEL_6:
    v11 = v10;
    goto LABEL_7;
  }

  v11 = 0.0;
  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self isMemojiCategory:a5])
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (!a5 && [(UIKeyboardEmojiAndStickerCollectionInputView *)self _shouldShowRecentlyUsedMedia])
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
LABEL_6:
    v11 = v10;
    goto LABEL_7;
  }

  v11 = 0.0;
  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self isMemojiCategory:a5])
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumInteritemSpacing];
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a4;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 willDisplay];
  }

  if (!self->_hasShownAnimojiCell && -[UIKeyboardEmojiAndStickerCollectionInputView _shouldShowRecentlyUsedMedia](self, "_shouldShowRecentlyUsedMedia") && ![v7 item] && !objc_msgSend(v7, "section"))
  {
    self->_hasShownAnimojiCell = 1;
    ADClientAddValueForScalarKey();
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 didEndDisplaying];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self handleScrollViewDynamicPagination:v4];
  if (_UIApplicationIsFirstPartyStickers())
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v18 = @"contentOffsetY";
    v6 = MEMORY[0x1E696AD98];
    [v4 contentOffset];
    v8 = [v6 numberWithDouble:v7];
    v19[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [v5 postNotificationName:@"UIKeyboardEmojiCollectionInputViewDidScroll" object:0 userInfo:v9];
  }

  if (!self->_isRearranging)
  {
    v10 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
    [v10 deactivateActiveKey];
  }

  v11 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self currentlyFocusedIndexPath];
  v12 = [v11 section];
  if (self->_currentSection != v12)
  {
    v13 = v12;
    self->_currentSection = v12;
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self _setRearrangeMode:0];
    if (self->_isDraggingInputView)
    {
      v14 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
      [v14 reloadCategoryForIndexPath:v11 withSender:self];

      v15 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
      [v15 reloadForCategory:-[UIKeyboardEmojiAndStickerCollectionInputView emojiCategoryTypeForSection:](self withSender:{"emojiCategoryTypeForSection:", v13), self}];
    }
  }

  keylineView = self->_keylineView;
  [v4 contentOffset];
  [(UIKeyboardEmojiAndStickerCollectionInputViewKeylineView *)keylineView updateAlphaForScrollDistance:v17];
}

- (void)handleScrollViewDynamicPagination:(id)a3
{
  v8 = a3;
  v4 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  if (objc_opt_respondsToSelector())
  {
    [v8 contentOffset];
    v5 = [v4 paginationOriginForCurrentOffset:?];
    if (v5)
    {
      [v8 setPagingEnabled:1];
      [v5 CGPointValue];
    }

    else
    {
      [v8 setPagingEnabled:0];
      v6 = *MEMORY[0x1E695EFF8];
      v7 = *(MEMORY[0x1E695EFF8] + 8);
    }

    [v8 _setPagingOrigin:{v6, v7}];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  self->_isDraggingInputView = 1;
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self snappedXOffsetForOffset:0 scrubbing:a5->x, a4.y];
  a5->x = v6;
}

- (id)itemInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__162;
  v16 = __Block_byref_object_dispose__162;
  v17 = 0;
  v7 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  v8 = [v7 layoutAttributesForElementsInRect:{x, y, width, height}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__UIKeyboardEmojiAndStickerCollectionInputView_itemInRect___block_invoke;
  v11[3] = &unk_1E71160D8;
  v11[4] = &v12;
  [v8 enumerateObjectsWithOptions:2 usingBlock:v11];

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __59__UIKeyboardEmojiAndStickerCollectionInputView_itemInRect___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if (![v9 representedElementCategory])
  {
    v6 = [v9 indexPath];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

- (int64_t)currentlyFocusedSectionIndex
{
  v3 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 currentlyFocusedSectionIndex];
  }

  else
  {
    v5 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self currentlyFocusedIndexPath];
    v4 = [v5 section];
  }

  return v4;
}

- (id)currentlyFocusedIndexPath
{
  v3 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 currentlyFocusedIndexPath];
  }

  else
  {
    v4 = [MEMORY[0x1E696AC88] indexPathWithIndex:self->_currentSection];
    v5 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self trulyVisibleIndexPaths];
    if ([v5 count])
    {
      v6 = [v5 objectAtIndexedSubscript:{((2 * ((5 * objc_msgSend(v5, "count")) & 0x1FFFFFFFFFFFFFFFuLL) * 0x28F5C28F5C28F5C3uLL) >> 64) >> 2}];

      v7 = [v5 firstObject];
      if ([v7 section] || objc_msgSend(v7, "item"))
      {
        v8 = [(UICollectionView *)self->_collectionView numberOfSections]- 1;
        v9 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:v8];
        v10 = [MEMORY[0x1E696AC88] indexPathForItem:v9 - 1 inSection:v8];
        v11 = [v5 lastObject];

        if (v10 == v11)
        {
          v12 = [v5 lastObject];

          v6 = v12;
        }
      }

      else
      {
        v10 = v6;
        v6 = v7;
      }

      v4 = v6;
    }
  }

  return v4;
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  self->_isDraggingInputView = 0;
  v4 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self currentlyFocusedIndexPath];
  v5 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self trulyVisibleIndexPaths];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__UIKeyboardEmojiAndStickerCollectionInputView_scrollViewDidEndDecelerating___block_invoke;
  v9[3] = &unk_1E711BD98;
  v10 = v4;
  v6 = v4;
  v7 = [v5 bs_filter:v9];
  v8 = [v7 firstObject];

  [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateLastSeenItemForIndexPath:v8];
}

- (id)trulyVisibleIndexPaths
{
  [(UIScrollView *)self->_collectionView contentOffset];
  v4 = v3;
  v6 = v5;
  [(UIView *)self->_collectionView bounds];
  v8 = v7;
  v10 = v9;
  v11 = [(UICollectionView *)self->_collectionView visibleCells];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__UIKeyboardEmojiAndStickerCollectionInputView_trulyVisibleIndexPaths__block_invoke;
  v15[3] = &unk_1E711BDC0;
  v15[5] = v4;
  v15[6] = v6;
  v15[7] = v8;
  v15[8] = v10;
  v15[4] = self;
  v12 = [v11 bs_compactMap:v15];
  v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_290_0];

  return v13;
}

id __70__UIKeyboardEmojiAndStickerCollectionInputView_trulyVisibleIndexPaths__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 frame];
  v8 = CGRectIntersection(v7, *(a1 + 40));
  if (CGRectIsNull(v8))
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(*(a1 + 32) + 640) indexPathForCell:v3];
  }

  return v4;
}

uint64_t __70__UIKeyboardEmojiAndStickerCollectionInputView_trulyVisibleIndexPaths__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 section];
  if (v6 == [v5 section])
  {
    v7 = [v4 item];
    if (v7 == [v5 item])
    {
      v8 = 0;
      goto LABEL_9;
    }

    v9 = [v4 item];
    v10 = [v5 item];
  }

  else
  {
    v9 = [v4 section];
    v10 = [v5 section];
  }

  if (v9 < v10)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

LABEL_9:

  return v8;
}

- (int64_t)indexForPrettyCategoryDisplay:(id)a3
{
  v4 = a3;
  if (self->_collectionView && (-[UIKeyboardEmojiAndStickerCollectionInputView category](self, "category"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 categoryType], v5, v7 = -[UIKeyboardEmojiAndStickerCollectionInputView sectionForCategoryType:](self, "sectionForCategoryType:", v6), v7 < -[UICollectionView numberOfSections](self->_collectionView, "numberOfSections")) && (v8 = -[UICollectionView numberOfItemsInSection:](self->_collectionView, "numberOfItemsInSection:", v7), objc_msgSend(v4, "lastVisibleFirstEmojiIndex") >= v8))
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = [v4 lastVisibleFirstEmojiIndex];
  }

  return v9;
}

- (int64_t)rowsInSection:(int64_t)a3
{
  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph])
  {
    return 4;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self isEmojiCategory:a3])
    {
      if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isRecentCategory:a3])
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }

    return 4;
  }

  imageGlyphDataSource = self->_imageGlyphDataSource;

  return [(STKImageGlyphDataSource *)imageGlyphDataSource numberOfRowsInSection:a3];
}

- (void)didMoveToWindow
{
  v2 = self;
  v34.receiver = self;
  v34.super_class = UIKeyboardEmojiAndStickerCollectionInputView;
  [(UIView *)&v34 didMoveToWindow];
  [(UIView *)v2->_collectionView layoutIfNeeded];
  v3 = [(UIKeyboardEmojiKeyView *)v2 emojiKeyManager];
  v4 = [v3 lastViewedCategory];
  objc_storeWeak(&v2->_category, v4);

  v5 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
  v6 = MEMORY[0x1E696AD98];
  WeakRetained = objc_loadWeakRetained(&v2->_category);
  v8 = [v6 numberWithInteger:{objc_msgSend(WeakRetained, "categoryType")}];
  v9 = [v5 containsObject:v8];

  if ((v9 & 1) == 0)
  {
    v10 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
    v11 = [v10 firstObject];
    v12 = [v11 integerValue];

    v13 = [UIKeyboardEmojiCategory categoryForType:v12];
    objc_storeWeak(&v2->_category, v13);
  }

  v14 = objc_loadWeakRetained(&v2->_category);
  v2->_currentSection = -[UIKeyboardEmojiAndStickerCollectionInputView sectionForCategoryType:](v2, "sectionForCategoryType:", [v14 categoryType]);

  v15 = [(UIView *)v2 window];

  if (v15)
  {
    [(UIKeyboardEmojiAndStickerCollectionInputView *)v2 updateDataSourceSnapshot];
    if (v2->_inputDelegateCanSupportAnimoji && !v2->_hasShownAnimojiFirstTimeExperience && [(UIKeyboardEmojiAndStickerCollectionInputView *)v2 _shouldShowRecentlyUsedMedia])
    {
      v16 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    }

    else
    {
      v17 = [(UIKeyboardEmojiAndStickerCollectionInputView *)v2 category];
      v18 = -[UIKeyboardEmojiAndStickerCollectionInputView sectionForCategoryType:](v2, "sectionForCategoryType:", [v17 categoryType]);

      v19 = MEMORY[0x1E696AC88];
      v20 = [(UIKeyboardEmojiAndStickerCollectionInputView *)v2 category];
      v16 = [v19 indexPathForItem:-[UIKeyboardEmojiAndStickerCollectionInputView indexForPrettyCategoryDisplay:](v2 inSection:{"indexForPrettyCategoryDisplay:", v20), v18}];
    }

    v21 = [(UICollectionView *)v2->_collectionView layoutAttributesForItemAtIndexPath:v16];
    [v21 frame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    if (v2->_hasCompletedInitialDisplay && (v35.origin.x = v23, v35.origin.y = v25, v35.size.width = v27, v35.size.height = v29, !CGRectEqualToRect(v35, *MEMORY[0x1E695F058])))
    {
      [(UIKeyboardEmojiAndStickerCollectionInputView *)v2 updateToIndexPath:v16];
      unavailableLaunchPath = [(UIKeyboardEmojiKeyView *)v2 emojiKeyManager];
      [unavailableLaunchPath reloadCategoryForIndexPath:v16 withSender:v2];
    }

    else
    {
      v30 = v16;
      unavailableLaunchPath = v2->_unavailableLaunchPath;
      v2->_unavailableLaunchPath = v30;
    }
  }

  v32 = [(UIView *)v2 window];
  if (!v32)
  {
    v2 = 0;
  }

  v33 = +[UIKeyboardMediaController sharedKeyboardMediaController];
  [v33 setDelegate:v2];
}

- (void)updateToCategory:(int64_t)a3
{
  v5 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
  [v5 deactivateActiveKey];

  [(UIKeyboardEmojiAndStickerCollectionInputView *)self resetSelectionIfNeeded];
  v6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
  v7 = [v6 categoryType];

  if (v7 == a3)
  {
    if (a3)
    {
      v8 = 1;
    }

    else
    {
      v12 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
      v8 = [v12 lastVisibleFirstEmojiIndex] != 1 || self->_isDraggingInputView;
    }

    v13 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
    [v13 setLastVisibleFirstEmojiIndex:v8];

    v11 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
  }

  else
  {
    v49 = [UIKeyboardEmojiCategory categoryForType:a3];
    v9 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
    [v49 setLastVisibleFirstEmojiIndex:{objc_msgSend(v9, "lastVisibleFirstEmojiIndexforCategory:", v49)}];

    if (!a3 && ![v49 lastVisibleFirstEmojiIndex])
    {
      [v49 setLastVisibleFirstEmojiIndex:1];
    }

    [(UIKeyboardEmojiAndStickerCollectionInputView *)self setCategory:v49];
    v10 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
    v8 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self indexForPrettyCategoryDisplay:v10];

    v11 = v49;
  }

  v50 = v11;
  v14 = +[UIKeyboardEmojiCategory categoryIndexForCategoryType:](UIKeyboardEmojiCategory, "categoryIndexForCategoryType:", [v11 categoryType]);
  collectionView = self->_collectionView;
  v16 = [MEMORY[0x1E696AC88] indexPathForItem:v8 inSection:v14];
  v17 = [(UICollectionView *)collectionView layoutAttributesForItemAtIndexPath:v16];
  [v17 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hasVerticalScrolling];
  v27 = v19;
  v28 = v21;
  v29 = v23;
  v30 = v25;
  if (v26)
  {
    MinY = CGRectGetMinY(*&v27);
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self categoryHeaderHeight];
    v33 = MinY - v32;
    v34 = [(UIKeyboardEmojiAndStickerCollectionView *)self->_collectionView emojiGraphicsTraits];
    [v34 sectionOffset];
    v36 = v33 - v35;

    [(UIScrollView *)self->_collectionView contentOffset];
    v38 = v37;
  }

  else
  {
    MinX = CGRectGetMinX(*&v27);
    v40 = [(UIKeyboardEmojiAndStickerCollectionView *)self->_collectionView emojiGraphicsTraits];
    [v40 inputViewLeftMostPadding];
    v42 = MinX - v41;

    [(UIKeyboardEmojiAndStickerCollectionInputView *)self snappedXOffsetForOffset:0 scrubbing:v42];
    v38 = v43;
    [(UIScrollView *)self->_collectionView contentOffset];
    v36 = v44;
  }

  [(UIView *)self->_collectionView bounds];
  v46 = v45;
  [(UIView *)self->_collectionView bounds];
  [(UIScrollView *)self->_collectionView scrollRectToVisible:0 animated:v38, v36, v46];
  v47 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
  v48 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  [v48 setLastViewedCategory:v47];
}

- (void)updateToIndexPath:(id)a3
{
  v6 = a3;
  [(UIView *)self effectiveUserInterfaceLayoutDirection];
  if (-[UIKeyboardEmojiAndStickerCollectionInputView isEmojiCategory:](self, "isEmojiCategory:", [v6 section]) || -[UIKeyboardEmojiAndStickerCollectionInputView isRecentCategory:](self, "isRecentCategory:", objc_msgSend(v6, "section")))
  {
    v4 = 8;
  }

  else
  {
    v4 = 32;
  }

  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self hasVerticalScrolling])
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  [(UIKeyboardEmojiAndStickerCollectionInputView *)self targetRectForIndexPath:v6 atScrollPosition:v5];
  [(UIScrollView *)self->_collectionView scrollRectToVisible:0 animated:?];
  self->_currentSection = [v6 section];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateLastSeenItemForIndexPath:v6];
}

- (CGRect)targetRectForIndexPath:(id)a3 atScrollPosition:(unint64_t)a4
{
  v6 = a3;
  v7 = [(UICollectionView *)self->_collectionView layoutAttributesForItemAtIndexPath:v6];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v48.origin.x = v9;
  v48.origin.y = v11;
  v48.size.width = v13;
  v48.size.height = v15;
  if (CGRectEqualToRect(v48, *MEMORY[0x1E695F058]))
  {
    -[UIKeyboardEmojiAndStickerCollectionInputView targetRectForSectionIndex:](self, "targetRectForSectionIndex:", [v6 section]);
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v23 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hasVerticalScrolling];
    v24 = v9;
    v25 = v11;
    v26 = v13;
    v27 = v15;
    if (v23)
    {
      MinY = CGRectGetMinY(*&v24);
      v29 = [(UIKeyboardEmojiAndStickerCollectionView *)self->_collectionView emojiGraphicsTraits];
      [v29 sectionOffset];
      v20 = MinY - v30;

      [(UIScrollView *)self->_collectionView contentOffset];
      v18 = v31;
    }

    else
    {
      if (a4 == 32)
      {
        MaxX = CGRectGetMaxX(*&v24);
        v33 = [(UIKeyboardEmojiAndStickerCollectionView *)self->_collectionView emojiGraphicsTraits];
        [v33 inputViewRightMostPadding];
        v35 = MaxX + v34;
        [(UIView *)self->_collectionView bounds];
        v37 = v35 - v36;
      }

      else
      {
        MinX = CGRectGetMinX(*&v24);
        v33 = [(UIKeyboardEmojiAndStickerCollectionView *)self->_collectionView emojiGraphicsTraits];
        [v33 inputViewLeftMostPadding];
        v37 = MinX - v39;
      }

      [(UIKeyboardEmojiAndStickerCollectionInputView *)self snappedXOffsetForOffset:0 scrubbing:v37];
      v18 = v40;
      [(UIScrollView *)self->_collectionView contentOffset];
      v20 = v41;
    }

    [(UIView *)self->_collectionView bounds];
    v22 = v42;
    [(UIView *)self->_collectionView bounds];
  }

  v43 = v16;

  v44 = v18;
  v45 = v20;
  v46 = v22;
  v47 = v43;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

- (CGRect)targetRectForSectionIndex:(int64_t)a3
{
  v4 = [(UICollectionView *)self->_collectionView collectionViewLayout];
  if (objc_opt_respondsToSelector())
  {
    [v4 targetRectForSectionIndex:a3];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)updateOffsetForSearchResultsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
  [v5 deactivateActiveKey];

  [(UIKeyboardEmojiAndStickerCollectionInputView *)self resetSelectionIfNeeded];
  if ([(UIView *)self effectiveUserInterfaceLayoutDirection]== UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v6 = 32;
  }

  else
  {
    v6 = 8;
  }

  v7 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hasVerticalScrolling];
  collectionView = self->_collectionView;
  v9 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self recentsIndexPath];
  [(UICollectionView *)collectionView scrollToItemAtIndexPath:v9 atScrollPosition:v6 | v7 animated:v3];
}

- (double)pointInScrollingDirection:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self hasVerticalScrolling])
  {
    return y;
  }

  else
  {
    return x;
  }
}

- (double)distanceInScrollingDirection:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self hasVerticalScrolling])
  {
    return height;
  }

  else
  {
    return width;
  }
}

- (double)scrollingStartPoint
{
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self hasVerticalScrolling])
  {
    return 0.0;
  }

  emojiGraphicsTraits = self->_emojiGraphicsTraits;

  [(UIKeyboardEmojiGraphicsTraits *)emojiGraphicsTraits inputViewLeftMostPadding];
  return result;
}

- (double)scrollingEndPoint
{
  v3 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hasVerticalScrolling];
  emojiGraphicsTraits = self->_emojiGraphicsTraits;
  if (v3)
  {

    [(UIKeyboardEmojiGraphicsTraits *)emojiGraphicsTraits bottomPadding];
  }

  else
  {

    [(UIKeyboardEmojiGraphicsTraits *)emojiGraphicsTraits inputViewRightMostPadding];
  }

  return result;
}

- (int64_t)updateToCategoryWithOffsetPercentage:(double)a3
{
  [(UIView *)self->_collectionView bounds];
  Height = CGRectGetHeight(v34);
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self categoryHeaderHeight];
  v7 = v6;
  v8 = 0.0;
  v9 = 0.0;
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self _shouldShowRecentlyUsedMedia])
  {
    if (self->_useWideAnimojiCell)
    {
      v9 = Height - v7 + Height - v7;
    }

    else
    {
      v9 = Height - v7;
    }
  }

  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self _shouldShowRecentlyUsedMedia])
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits sectionOffset];
    v8 = v9 + v10 - self->_frameInset;
  }

  [(UIScrollView *)self->_collectionView contentSize];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self distanceInScrollingDirection:?];
  v12 = v11 - v8;
  [(UIView *)self->_collectionView bounds];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self distanceInScrollingDirection:v13, v14];
  v16 = v15 * 0.5 * round(ceil(v12 / (v15 * 0.5)) * a3);
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiKeyWidth];
  v18 = v17;
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits columnOffset];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self snappedXOffsetForOffset:1 scrubbing:(v18 + v19 + v19) * round(v16 / (v18 + v19 + v19))];
  v21 = v8 + v20;
  v22 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hasVerticalScrolling];
  [(UIScrollView *)self->_collectionView contentOffset];
  if (v22)
  {
    v25 = v23;
  }

  else
  {
    v25 = v21;
  }

  if (!v22)
  {
    v21 = v24;
  }

  collectionView = self->_collectionView;
  [(UIView *)collectionView bounds];
  v28 = v27;
  [(UIView *)self->_collectionView bounds];
  [(UIScrollView *)collectionView scrollRectToVisible:0 animated:v25, v21, v28];
  v29 = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
  v30 = [v29 sortedArrayUsingSelector:sel_compare_];

  if ([v30 count])
  {
    v31 = [v30 objectAtIndex:0];
    v32 = -[UIKeyboardEmojiAndStickerCollectionInputView emojiCategoryTypeForSection:](self, "emojiCategoryTypeForSection:", [v31 section]);
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (UIKeyboardEmojiCategory)category
{
  WeakRetained = objc_loadWeakRetained(&self->_category);

  return WeakRetained;
}

- (UIKBEmojiHitTestResponder)hitTestResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_hitTestResponder);

  return WeakRetained;
}

- (NSIndexPath)tappedSkinToneEmoji
{
  WeakRetained = objc_loadWeakRetained(&self->_tappedSkinToneEmoji);

  return WeakRetained;
}

@end