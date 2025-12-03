@interface UIKeyboardEmojiAndStickerCollectionInputView
- (BOOL)_handleBaseKeySelectionEvent:(id)event;
- (BOOL)_handleInitialSelectionEvent:(id)event;
- (BOOL)_handleVariantSelectionEvent:(id)event;
- (BOOL)_userHasSelectedSkinToneEmoji;
- (BOOL)baseStringIsCoupleEmoji:(id)emoji;
- (BOOL)cellShouldScrollWhenSelectedAtIndexPath:(id)path;
- (BOOL)datasourceIsReady;
- (BOOL)doesShowMemoji;
- (BOOL)doesShowStickers;
- (BOOL)genderEmojiBaseStringNeedVariantSelector:(id)selector;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)handleKeyEvent:(id)event;
- (BOOL)handleKeyInputForCollectionViewNavigation:(id)navigation;
- (BOOL)handleKeyInputForFamilySelector:(id)selector;
- (BOOL)handleKeyInputForVariantSelector:(id)selector;
- (BOOL)handleSelectionEvent:(id)event;
- (BOOL)isCellMostlyOffscreen:(CGRect)offscreen;
- (BOOL)isEmojiCategory:(int64_t)category;
- (BOOL)isMemojiCategory:(int64_t)category;
- (BOOL)isRecentCategory:(int64_t)category;
- (BOOL)isSearchCategory:(int64_t)category;
- (BOOL)isStickersCategory:(int64_t)category;
- (BOOL)keySupportsVariants:(id)variants;
- (BOOL)skinToneWasUsedForEmoji:(id)emoji;
- (CGRect)cellRectToRevealFullCell:(CGRect)cell;
- (CGRect)targetRectForIndexPath:(id)path atScrollPosition:(unint64_t)position;
- (CGRect)targetRectForSectionIndex:(int64_t)index;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (NSIndexPath)tappedSkinToneEmoji;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (UIKBEmojiHitTestResponder)hitTestResponder;
- (UIKeyboardEmojiAndStickerCollectionInputView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key screenTraits:(id)traits;
- (UIKeyboardEmojiCategory)category;
- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index;
- (double)distanceInScrollingDirection:(CGSize)direction;
- (double)emojiKeyWidth;
- (double)pointInScrollingDirection:(CGPoint)direction;
- (double)scrollingEndPoint;
- (double)scrollingStartPoint;
- (id)_usageSourceFromSection:(int64_t)section;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)currentlyFocusedIndexPath;
- (id)emojiBaseFirstCharacterString:(id)string;
- (id)emojiBaseString:(id)string;
- (id)itemInRect:(CGRect)rect;
- (id)recentsIndexPath;
- (id)selectedChildSkinToneEmoji:(id)emoji;
- (id)stickerCellForIndexPath:(id)path;
- (id)subTreeHitTest:(CGPoint)test;
- (id)treeForCell:(id)cell;
- (id)treeForStickerCell:(id)cell;
- (id)trulyVisibleIndexPaths;
- (id)verticalNeighborForIndexPath:(id)path up:(BOOL)up byPage:(BOOL)page;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)currentlyFocusedSectionIndex;
- (int64_t)didInputSubTree:(id)tree;
- (int64_t)emojiCategoryTypeForSection:(int64_t)section;
- (int64_t)emojiSectionIndex;
- (int64_t)indexForPrettyCategoryDisplay:(id)display;
- (int64_t)keyCodeForCurrentEnvironmentFromKeyCode:(int64_t)code;
- (int64_t)memojiSectionIndex;
- (int64_t)numberOfPrefixCategories;
- (int64_t)numberOfPrefixSections;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (int64_t)recentSectionIndex;
- (int64_t)rowsInSection:(int64_t)section;
- (int64_t)sectionForCategoryType:(int64_t)type;
- (int64_t)stickersSectionIndex;
- (int64_t)translatedEmojiCategoryForSection:(int64_t)section;
- (int64_t)updateToCategoryWithOffsetPercentage:(double)percentage;
- (void)_addDelegate:(id)delegate;
- (void)_handleLongPress:(id)press;
- (void)_handleTap:(id)tap;
- (void)_notifyDelegatesRearrangeModeChanged:(BOOL)changed;
- (void)_removeDelegate:(id)delegate;
- (void)_setRearrangeMode:(BOOL)mode;
- (void)_setUserHasSelectedSkinToneEmoji:(BOOL)emoji;
- (void)_setupLongPressGestureRecognizer;
- (void)_setupTapGestureRecognizer;
- (void)_updateRearrangeModeForCell:(id)cell atIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)configureDataSource;
- (void)dealloc;
- (void)deleteImageGlyph:(id)glyph atPath:(id)path;
- (void)didDismissCardForKeyboardMediaController:(id)controller;
- (void)didInsertMediaForKeyboardMediaController:(id)controller;
- (void)didMoveToWindow;
- (void)didPresentCardForKeyboardMediaController:(id)controller;
- (void)didTearDownRecentsViewForKeyboardMediaController:(id)controller;
- (void)didUpdateImageGlyphPermissions;
- (void)dimKeys:(id)keys;
- (void)emojiSearchTextFieldDidBecomeActive:(id)active;
- (void)emojiSearchTextFieldDidBecomeInactive:(id)inactive;
- (void)emojiSearchTextFieldDidReset:(id)reset;
- (void)emojiSearchTextFieldWillBecomeActive:(id)active;
- (void)emojiSearchTextFieldWillBecomeInactive:(id)inactive;
- (void)emojiSearchTextFieldWillClear:(id)clear;
- (void)handleScrollViewDynamicPagination:(id)pagination;
- (void)insertImageGlyph:(id)glyph dismiss:(BOOL)dismiss;
- (void)insertSelectedEmoji:(id)emoji shouldDismissPopover:(BOOL)popover;
- (void)rearrangeStateChanged:(BOOL)changed;
- (void)resetSelectionIfNeeded;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setContentScaleFactor:(double)factor;
- (void)setHitTestResponder:(id)responder;
- (void)setSearchResults:(id)results;
- (void)shouldDismissModalDisplayView:(id)view;
- (void)updateDataSourceSnapshot;
- (void)updateDataSourceSnapshotAnimated:(BOOL)animated;
- (void)updateDataSourceWithSnapshot:(id)snapshot animated:(BOOL)animated;
- (void)updateHighlightForIndexPath:(id)path scrollIfNeeded:(BOOL)needed animateScroll:(BOOL)scroll;
- (void)updateLastSeenItemForIndexPath:(id)path;
- (void)updateOffsetForSearchResultsAnimated:(BOOL)animated;
- (void)updatePreferencesForSelectedEmoji:(id)emoji;
- (void)updateToCategory:(int64_t)category;
- (void)updateToIndexPath:(id)path;
- (void)willDisplayModalActionView:(id)view withSubTreeKeyView:(id)keyView completion:(id)completion;
@end

@implementation UIKeyboardEmojiAndStickerCollectionInputView

- (UIKeyboardEmojiAndStickerCollectionInputView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key screenTraits:(id)traits
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  keyplaneCopy = keyplane;
  keyCopy = key;
  traitsCopy = traits;
  orientation = [traitsCopy orientation];
  if (traitsCopy)
  {
    interfaceOrientation = orientation;
  }

  else
  {
    v18 = +[UIKeyboard activeKeyboard];
    interfaceOrientation = [v18 interfaceOrientation];

    v19 = +[UIKeyboardImpl keyboardScreen];
    traitsCopy = [UIKBScreenTraits traitsWithScreen:v19 orientation:interfaceOrientation];
  }

  v20 = (interfaceOrientation - 3) <= 1 && [traitsCopy idiom] != 1;
  self->_useWideAnimojiCell = v20;
  v58.receiver = self;
  v58.super_class = UIKeyboardEmojiAndStickerCollectionInputView;
  height = [(UIView *)&v58 initWithFrame:x, y, width, height];
  if (!height)
  {
    goto LABEL_22;
  }

  v22 = os_log_create("com.apple.uikit", "StickerCollectionInputView");
  logger = height->_logger;
  height->_logger = v22;

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
    sharedInstance = [v24 sharedInstance];
    imageGlyphDataSource = height->_imageGlyphDataSource;
    height->_imageGlyphDataSource = sharedInstance;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:height selector:sel_updateDataSourceSnapshot name:@"com.apple.stickerkit.ImageGlyphDataSourceDidUpdate" object:0];

    if (objc_opt_respondsToSelector())
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:height selector:sel_didUpdateImageGlyphPermissions name:@"com.apple.stickerkit.ImageGlyphPermissionsDidChange" object:0];

      height->_didAcceptRestrictedDistributionTerms = [(STKImageGlyphDataSource *)height->_imageGlyphDataSource didAcceptRestrictedDistributionTerms];
    }
  }

  else
  {
    v31 = height->_imageGlyphDataSource;
    height->_imageGlyphDataSource = 0;

    height->_didAcceptRestrictedDistributionTerms = 1;
  }

  [UIKeyboardEmojiCategory setDoesShowStickers:[(UIKeyboardEmojiAndStickerCollectionInputView *)height doesShowStickers]];
  height->_frameInset = 0.0;
  v32 = [UIKeyboardEmojiGraphicsTraits emojiGraphicsTraitsWithScreenTraits:traitsCopy];
  emojiGraphicsTraits = height->_emojiGraphicsTraits;
  height->_emojiGraphicsTraits = v32;

  v34 = +[UIColor clearColor];
  [(UIView *)height setBackgroundColor:v34];

  [(UIView *)height setOpaque:0];
  [(UIKBKeyView *)height updateForKeyplane:keyplaneCopy key:keyCopy];
  height->_isDraggingInputView = 0;
  unavailableLaunchPath = height->_unavailableLaunchPath;
  height->_unavailableLaunchPath = 0;

  v36 = objc_alloc_init(UIKeyboardEmojiLayout);
  flowLayout = height->_flowLayout;
  height->_flowLayout = &v36->super;

  [(UICollectionViewFlowLayout *)height->_flowLayout setMinimumInteritemSpacing:0.0];
  [(UICollectionViewFlowLayout *)height->_flowLayout setMinimumLineSpacing:0.0];
  -[UICollectionViewFlowLayout setScrollDirection:](height->_flowLayout, "setScrollDirection:", [traitsCopy isEmojiScrollingDirectionVertical] ^ 1);
  v38 = height->_flowLayout;
  if (objc_opt_respondsToSelector())
  {
    imageGlyphCompositionalLayout = [(STKImageGlyphDataSource *)height->_imageGlyphDataSource imageGlyphCompositionalLayout];
LABEL_18:

    v38 = imageGlyphCompositionalLayout;
    goto LABEL_19;
  }

  if (objc_opt_respondsToSelector())
  {
    v40 = objc_alloc_init(UICollectionViewCompositionalLayoutConfiguration);
    -[UICollectionViewCompositionalLayoutConfiguration setScrollDirection:](v40, "setScrollDirection:", [traitsCopy isEmojiScrollingDirectionVertical] ^ 1);
    objc_initWeak(location, height);
    v41 = [UICollectionViewCompositionalLayout alloc];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __88__UIKeyboardEmojiAndStickerCollectionInputView_initWithFrame_keyplane_key_screenTraits___block_invoke;
    v56[3] = &unk_1E711BBD8;
    objc_copyWeak(&v57, location);
    imageGlyphCompositionalLayout = [(UICollectionViewCompositionalLayout *)v41 initWithSectionProvider:v56 configuration:v40];

    objc_destroyWeak(&v57);
    objc_destroyWeak(location);
    v38 = v40;
    goto LABEL_18;
  }

LABEL_19:
  v42 = [UIKeyboardEmojiAndStickerCollectionView alloc];
  [(UIView *)height bounds];
  v43 = [(UIKeyboardEmojiAndStickerCollectionView *)v42 initWithFrame:v38 collectionViewLayout:height->_emojiGraphicsTraits emojiGraphicsTraits:?];
  collectionView = height->_collectionView;
  height->_collectionView = v43;

  [(UICollectionView *)height->_collectionView setPrefetchingEnabled:1];
  v45 = height->_collectionView;
  v46 = +[UIColor clearColor];
  [(UICollectionView *)v45 setBackgroundColor:v46];

  [(UIView *)height->_collectionView setAutoresizingMask:18];
  [(UIView *)height contentScaleFactor];
  [(UIView *)height->_collectionView setContentScaleFactor:?];
  [(UICollectionView *)height->_collectionView setDelegate:height];
  [(UIScrollView *)height->_collectionView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)height->_collectionView setShowsVerticalScrollIndicator:0];
  panGestureRecognizer = [(UIScrollView *)height->_collectionView panGestureRecognizer];
  [panGestureRecognizer setMaximumNumberOfTouches:1];

  panGestureRecognizer2 = [(UIScrollView *)height->_collectionView panGestureRecognizer];
  [panGestureRecognizer2 setMinimumNumberOfTouches:1];

  panGestureRecognizer3 = [(UIScrollView *)height->_collectionView panGestureRecognizer];
  [panGestureRecognizer3 setFailsPastMaxTouches:1];

  [(UICollectionView *)height->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"UICollectionElementKindSectionHeader" withReuseIdentifier:@"kEmojiCategoryTitleIdentifier"];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)height configureDataSource];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)height updateDataSourceSnapshotAnimated:0];
  height->_hasCompletedInitialDisplay = 0;
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)height supportsDatasourceIsReady])
  {
    [(UIView *)height->_collectionView setHidden:1];
  }

  v50 = +[UIKeyboardImpl activeInstance];
  height->_inputDelegateCanSupportAnimoji = [v50 canPasteImage];

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v52 = [standardUserDefaults valueForKey:@"com.apple.Animoji.StickerRecents.SplashVersion"];
  height->_hasShownAnimojiFirstTimeExperience = v52 != 0;

  height->_shouldRetryFetchingAnimojiRecents = 0;
  [(UIView *)height addSubview:height->_collectionView];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)height _setupLongPressGestureRecognizer];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)height _setupTapGestureRecognizer];
  v53 = [[UIKeyboardEmojiAndStickerCollectionInputViewKeylineView alloc] initWithSuperview:height];
  keylineView = height->_keylineView;
  height->_keylineView = v53;

LABEL_22:
  return height;
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

- (void)_addDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    delegates = self->_delegates;
    v8 = delegateCopy;
    if (!delegates)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v7 = self->_delegates;
      self->_delegates = weakObjectsHashTable;

      delegates = self->_delegates;
    }

    [(NSHashTable *)delegates addObject:v8];
    delegateCopy = v8;
  }
}

- (void)_removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    v7 = delegateCopy;
    [(NSHashTable *)self->_delegates removeObject:delegateCopy];
    v5 = [(NSHashTable *)self->_delegates count];
    delegateCopy = v7;
    if (!v5)
    {
      delegates = self->_delegates;
      self->_delegates = 0;

      delegateCopy = v7;
    }
  }
}

- (void)_notifyDelegatesRearrangeModeChanged:(BOOL)changed
{
  changedCopy = changed;
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
          [v9 rearrangeStateChanged:changedCopy];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)rearrangeStateChanged:(BOOL)changed
{
  changedCopy = changed;
  v7 = *MEMORY[0x1E69E9840];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = changedCopy;
    _os_log_impl(&dword_188A29000, logger, OS_LOG_TYPE_DEFAULT, "Rearrange state changed to: %{BOOL}d", v6, 8u);
  }

  [(UIKeyboardEmojiAndStickerCollectionInputView *)self _setRearrangeMode:changedCopy];
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

- (void)_handleLongPress:(id)press
{
  pressCopy = press;
  if (self->_longPressRecognizer == pressCopy && self->_isRearranging)
  {
    v19 = pressCopy;
    state = [(UIGestureRecognizer *)pressCopy state];
    if (state <= 2)
    {
      if (state == 1)
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
        v6 = state == 2;
        pressCopy = v19;
        if (!v6)
        {
          goto LABEL_21;
        }

        [(UILongPressGestureRecognizer *)v19 locationInView:self->_collectionView];
        [(UICollectionView *)self->_collectionView updateInteractiveMovementTargetPosition:v7 + self->_touchOffsetForMovingCell.x, v8 + self->_touchOffsetForMovingCell.y];
      }

LABEL_20:
      pressCopy = v19;
      goto LABEL_21;
    }

    if (state == 3)
    {
      [(UICollectionView *)self->_collectionView endInteractiveMovement];
      goto LABEL_20;
    }

    v6 = state == 4;
    pressCopy = v19;
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

- (void)_handleTap:(id)tap
{
  tapCopy = tap;
  if (self->_tapRecognizer == tapCopy && self->_isRearranging)
  {
    collectionView = self->_collectionView;
    v7 = tapCopy;
    [(UITapGestureRecognizer *)tapCopy locationInView:collectionView];
    v6 = [(UICollectionView *)collectionView indexPathForItemAtPoint:?];
    if (!-[UIKeyboardEmojiAndStickerCollectionInputView isStickersCategory:](self, "isStickersCategory:", [v6 section]) && -[UIGestureRecognizer state](v7, "state") == UIGestureRecognizerStateEnded)
    {
      [(UIKeyboardEmojiAndStickerCollectionInputView *)self _setRearrangeMode:0];
    }

    tapCopy = v7;
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
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

- (id)_usageSourceFromSection:(int64_t)section
{
  v5 = +[_UISignalAnalytics getIAPayloadValueGenmojiUsageSourceEmojiKeyboardPicker];
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isRecentCategory:section])
  {
    v6 = +[_UISignalAnalytics getIAPayloadValueGenmojiUsageSourceRecentsTab];

    v5 = v6;
  }

  return v5;
}

- (void)_setRearrangeMode:(BOOL)mode
{
  modeCopy = mode;
  if (self->_isRearranging != mode)
  {
    self->_isRearranging = mode;
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self _notifyDelegatesRearrangeModeChanged:mode];
  }

  if (modeCopy)
  {
    hitTestResponder = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
    [hitTestResponder deactivateActiveKey];
  }

  else
  {
    [(UICollectionView *)self->_collectionView endInteractiveMovement];
  }

  [(UIGestureRecognizer *)self->_tapRecognizer setEnabled:modeCopy];
  longPressRecognizer = self->_longPressRecognizer;

  [(UIGestureRecognizer *)longPressRecognizer setEnabled:modeCopy];
}

- (void)_updateRearrangeModeForCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  LODWORD(path) = -[UIKeyboardEmojiAndStickerCollectionInputView isStickersCategory:](self, "isStickersCategory:", [path section]);
  v7 = cellCopy;
  if (path)
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
  reorderingHandlers = [(UICollectionViewDiffableDataSource *)self->_dataSource reorderingHandlers];
  [reorderingHandlers setCanReorderItemHandler:v23];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __67__UIKeyboardEmojiAndStickerCollectionInputView_configureDataSource__block_invoke_156;
  v21[3] = &unk_1E711BD28;
  objc_copyWeak(&v22, location);
  reorderingHandlers2 = [(UICollectionViewDiffableDataSource *)self->_dataSource reorderingHandlers];
  [reorderingHandlers2 setDidReorderHandler:v21];

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

- (void)updateDataSourceSnapshotAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching])
  {
    snapshot = [(STKImageGlyphDataSource *)self->_imageGlyphDataSource snapshot];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateDataSourceWithSnapshot:snapshot animated:animatedCopy];
  }
}

- (void)updateDataSourceWithSnapshot:(id)snapshot animated:(BOOL)animated
{
  animatedCopy = animated;
  snapshotCopy = snapshot;
  if (pthread_main_np() == 1)
  {
    if (self->_unavailableLaunchPath)
    {
      if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self supportsDatasourceIsReady])
      {
        datasourceIsReady = [(UIKeyboardEmojiAndStickerCollectionInputView *)self datasourceIsReady];
      }

      else
      {
        datasourceIsReady = 0;
      }

      unavailableLaunchPath = self->_unavailableLaunchPath;
      if (unavailableLaunchPath)
      {
        section = [(NSIndexPath *)unavailableLaunchPath section];
        if ([snapshotCopy numberOfSections] <= section || (objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", section), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(snapshotCopy, "numberOfItemsInSection:", v10), v12 = -[NSIndexPath item](self->_unavailableLaunchPath, "item"), v10, v11 <= v12))
        {
          v17 = 0;
        }

        else
        {
          category = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
          v14 = -[UIKeyboardEmojiAndStickerCollectionInputView sectionForCategoryType:](self, "sectionForCategoryType:", [category categoryType]);

          v15 = MEMORY[0x1E696AC88];
          category2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
          v17 = [v15 indexPathForItem:-[UIKeyboardEmojiAndStickerCollectionInputView indexForPrettyCategoryDisplay:](self inSection:{"indexForPrettyCategoryDisplay:", category2), v14}];

          animatedCopy = 0;
        }

        v18 = self->_unavailableLaunchPath;
        self->_unavailableLaunchPath = 0;

        goto LABEL_15;
      }
    }

    else
    {
      datasourceIsReady = 0;
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
    v28 = datasourceIsReady;
    [(UICollectionViewDiffableDataSource *)dataSource applySnapshot:snapshotCopy animatingDifferences:animatedCopy completion:v25];

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
  v22 = snapshotCopy;
  v24 = animatedCopy;
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

- (void)setContentScaleFactor:(double)factor
{
  v5.receiver = self;
  v5.super_class = UIKeyboardEmojiAndStickerCollectionInputView;
  [(UIView *)&v5 setContentScaleFactor:?];
  [(UIView *)self->_collectionView setContentScaleFactor:factor];
}

- (void)dimKeys:(id)keys
{
  keysCopy = keys;
  v7.receiver = self;
  v7.super_class = UIKeyboardEmojiAndStickerCollectionInputView;
  [(UIKBKeyView *)&v7 dimKeys:keysCopy];
  subviews = [(UIView *)self subviews];

  if (subviews)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__UIKeyboardEmojiAndStickerCollectionInputView_dimKeys___block_invoke;
    v6[3] = &unk_1E7100338;
    v6[4] = self;
    [keysCopy enumerateKeysAndObjectsUsingBlock:v6];
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

- (void)setHitTestResponder:(id)responder
{
  responderCopy = responder;
  objc_storeWeak(&self->_hitTestResponder, responderCopy);
  [(UIKeyboardEmojiAndStickerCollectionView *)self->_collectionView setHitTestResponder:responderCopy];
}

- (BOOL)_userHasSelectedSkinToneEmoji
{
  v3 = +[UIKeyboardImpl activeInstance];
  isEmojiPopoverPresented = [v3 isEmojiPopoverPresented];

  v5 = +[UIKeyboardEmojiPreferences sharedInstance];
  isFirstPartyStickers = 1;
  if (([v5 hasDisplayedSkinToneHelp] & 1) == 0 && (isEmojiPopoverPresented & 1) == 0)
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

- (void)_setUserHasSelectedSkinToneEmoji:(BOOL)emoji
{
  if (emoji)
  {
    v3 = +[UIKeyboardEmojiPreferences sharedInstance];
    [v3 didDisplaySkinToneHelp];
  }
}

- (id)emojiBaseFirstCharacterString:(id)string
{
  v3 = MEMORY[0x1E696AEC0];
  _firstLongCharacter = [string _firstLongCharacter];

  return [v3 _stringWithUnichar:_firstLongCharacter];
}

- (id)emojiBaseString:(id)string
{
  stringCopy = string;
  v4 = [getEMFStringUtilitiesClass_0() _baseStringForEmojiString:stringCopy];

  return v4;
}

- (BOOL)skinToneWasUsedForEmoji:(id)emoji
{
  emojiCopy = emoji;
  emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  v6 = [emojiKeyManager hasLastUsedVariantForEmojiString:emojiCopy];

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

- (BOOL)baseStringIsCoupleEmoji:(id)emoji
{
  emojiCopy = emoji;
  v4 = [getEMFStringUtilitiesClass_0() _baseStringForEmojiString:emojiCopy];

  LOBYTE(emojiCopy) = [getEMFEmojiCategoryClass_2() _isCoupleMultiSkinToneEmoji:v4];
  return emojiCopy;
}

- (id)subTreeHitTest:(CGPoint)test
{
  y = test.y;
  x = test.x;
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

- (BOOL)isCellMostlyOffscreen:(CGRect)offscreen
{
  height = offscreen.size.height;
  width = offscreen.size.width;
  y = offscreen.origin.y;
  x = offscreen.origin.x;
  MidX = CGRectGetMidX(offscreen);
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

- (CGRect)cellRectToRevealFullCell:(CGRect)cell
{
  height = cell.size.height;
  width = cell.size.width;
  y = cell.origin.y;
  x = cell.origin.x;
  collectionView = self->_collectionView;
  superview = [(UIView *)self superview];
  v125 = x;
  v126 = y;
  [(UIView *)collectionView convertRect:superview toView:x, y, width, height];
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
    superview2 = [(UIView *)self superview];
    [superview2 frame];
    v52 = CGRectGetMaxX(v134);

    if (MaxX <= v52)
    {
      v149.origin.x = v11;
      v149.origin.y = v13;
      v149.size.width = v15;
      v149.size.height = v17;
      MinX = CGRectGetMinX(v149);
      superview3 = [(UIView *)self superview];
      [superview3 frame];
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
      superview4 = [(UIView *)self superview];
      [superview4 frame];
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
      superview5 = [(UIView *)self superview];
      [superview5 frame];
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
      superview6 = [(UIView *)self superview];
      [superview6 frame];
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
      superview7 = [(UIView *)self superview];
      [superview7 frame];
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
      superview8 = [(UIView *)self superview];
      [superview8 frame];
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
      superview9 = [(UIView *)self superview];
      [superview9 frame];
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
  superview10 = [(UIView *)self superview];
  [superview10 frame];
  v25 = CGRectGetMaxY(v127);

  if (MaxY <= v25)
  {
    v141.origin.x = v11;
    v141.origin.y = v13;
    v141.size.width = v15;
    v141.size.height = v17;
    MinY = CGRectGetMinY(v141);
    superview11 = [(UIView *)self superview];
    [superview11 frame];
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
      superview12 = [(UIView *)self superview];
      [superview12 frame];
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
      superview13 = [(UIView *)self superview];
      [superview13 frame];
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
      superview14 = [(UIView *)self superview];
      [superview14 frame];
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
  superview15 = [(UIView *)self superview];
  [superview15 frame];
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
  superview16 = [(UIView *)self superview];
  [superview16 frame];
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
  superview17 = [(UIView *)self superview];
  [superview17 frame];
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

- (id)treeForStickerCell:(id)cell
{
  cellCopy = cell;
  collectionView = self->_collectionView;
  [cellCopy frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  superview = [(UIView *)self superview];
  [(UIView *)collectionView convertRect:superview toView:v7, v9, v11, v13];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  if (!-[UIKeyboardEmojiAndStickerCollectionInputView isCellMostlyOffscreen:](self, "isCellMostlyOffscreen:", v16, v18, v20, v22) && [cellCopy allowsDistribution] && (objc_msgSend(cellCopy, "frame"), -[UIKeyboardEmojiAndStickerCollectionInputView cellRectToRevealFullCell:](self, "cellRectToRevealFullCell:"), cellCopy))
  {
    v27 = v23;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    contentView = [cellCopy contentView];
    v32 = [UIGraphicsImageRenderer alloc];
    [contentView bounds];
    v35 = [(UIGraphicsImageRenderer *)v32 initWithSize:v33, v34];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __67__UIKeyboardEmojiAndStickerCollectionInputView_treeForStickerCell___block_invoke;
    v57[3] = &unk_1E70F6970;
    v36 = contentView;
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
    superview2 = [(UIView *)self superview];
    [(UIView *)v39 convertRect:superview2 toView:v27, v28, v29, v30];
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

    imageGlyph = [cellCopy imageGlyph];
    [v38 setObject:imageGlyph forProperty:@"UIKBAssociatedImageGlyph"];
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

- (id)treeForCell:(id)cell
{
  v143 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  collectionView = self->_collectionView;
  v122 = cellCopy;
  [cellCopy frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  selfCopy = self;
  superview = [(UIView *)self superview];
  [(UIView *)collectionView convertRect:superview toView:v7, v9, v11, v13];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)selfCopy isCellMostlyOffscreen:v16, v18, v20, v22])
  {
    [v122 frame];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)selfCopy cellRectToRevealFullCell:?];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = [(UICollectionView *)selfCopy->_collectionView indexPathForCell:v122];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)selfCopy setTappedSkinToneEmoji:v32];

    v33 = v122;
    if (!v122)
    {
      v23 = 0;
      goto LABEL_60;
    }

    emoji = [v122 emoji];
    v23 = [UIKBTree treeOfType:8];
    [v23 setState:2];
    [v23 setName:@"EmojiPopupKey"];
    emojiString = [emoji emojiString];
    [v23 setDisplayString:emojiString];
    [v23 setRepresentedString:emojiString];
    [v23 setDisplayType:0];
    [v23 setInteractionType:2];
    if (selfCopy->_selectedPopupKey)
    {
      [(UIKeyboardEmojiAndStickerCollectionInputView *)selfCopy resetSelectionIfNeeded];
    }

    if (+[UIDictationController isRunning])
    {
      v34 = +[UIDictationController sharedInstance];
      dictationTipController = [v34 dictationTipController];
      emojiString2 = [emoji emojiString];
      [dictationTipController signalDictationInsertionTip:emojiString2];
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
    emojiString3 = [emoji emojiString];
    v120 = [v37 emojiTokenWithString:emojiString3 localeData:0];

    if (![v120 supportsSkinToneVariants])
    {
      goto LABEL_47;
    }

    _skinToneVariantStrings = [v120 _skinToneVariantStrings];
    v124 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(_skinToneVariantStrings, "count") + 1}];
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    obj = _skinToneVariantStrings;
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
          representedString = [v45 representedString];
          [v45 setDisplayString:representedString];

          [v45 setDisplayType:0];
          v47 = MEMORY[0x1E696AEC0];
          name = [v23 name];
          representedString2 = [v45 representedString];
          v50 = [v47 stringWithFormat:@"%@/%@", name, representedString2];
          [v45 setName:v50];

          [v45 setOverrideDisplayString:0];
          [v124 addObject:v45];
          firstObject = [obj firstObject];
          LODWORD(representedString2) = [firstObject isEqualToString:v44];

          if (representedString2)
          {
            v52 = [UIKBTree treeOfType:8];
            [v52 setDisplayType:50];
            [v52 setInteractionType:0];
            v53 = MEMORY[0x1E696AEC0];
            name2 = [v23 name];
            v55 = [v53 stringWithFormat:@"%@/Divider", name2];
            [v52 setName:v55];

            [v52 setState:1];
            [v124 addObject:v52];
          }
        }

        v41 = [obj countByEnumeratingWithState:&v129 objects:v142 count:16];
      }

      while (v41);
    }

    emojiString4 = [emoji emojiString];
    v57 = [(UIKeyboardEmojiAndStickerCollectionInputView *)selfCopy baseStringIsCoupleEmoji:emojiString4];

    if (v57)
    {
      v58 = [v23 copy];
      EMFStringUtilitiesClass_0 = getEMFStringUtilitiesClass_0();
      emojiString5 = [emoji emojiString];
      v61 = [EMFStringUtilitiesClass_0 _baseStringForEmojiString:emojiString5];
      [v58 setRepresentedString:v61];

      representedString3 = [v58 representedString];
      [v58 setDisplayString:representedString3];

      [v58 setDisplayType:0];
      v63 = MEMORY[0x1E696AEC0];
      name3 = [v23 name];
      representedString4 = [v58 representedString];
      v66 = [v63 stringWithFormat:@"%@/%@", name3, representedString4];
      [v58 setName:v66];

      [v58 setOverrideDisplayString:0];
      [v124 insertObject:v58 atIndex:0];
    }

    emojiString6 = [emoji emojiString];
    v68 = [(UIKeyboardEmojiAndStickerCollectionInputView *)selfCopy skinToneWasUsedForEmoji:emojiString6];

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
      v127 = emoji;
      v128 = &v133;
      [v124 enumerateObjectsUsingBlock:v126];
      [v23 setSelectedVariantIndex:*(v134 + 24)];

      _Block_object_dispose(&v133, 8);
    }

    effectiveUserInterfaceLayoutDirection = [(UIView *)selfCopy effectiveUserInterfaceLayoutDirection];
    v70 = UIKBAttributeValueFixedLeftStr;
    if (effectiveUserInterfaceLayoutDirection != 1)
    {
      v70 = UIKBAttributeValueFixedRightStr;
    }

    [v23 setVariantPopupBias:*v70];
    [v23 setSubtrees:v124];
    emojiString7 = [emoji emojiString];
    v72 = [(UIKeyboardEmojiAndStickerCollectionInputView *)selfCopy baseStringIsCoupleEmoji:emojiString7];

    emojiString8 = [emoji emojiString];
    if ([(UIKeyboardEmojiAndStickerCollectionInputView *)selfCopy skinToneWasUsedForEmoji:emojiString8])
    {
      emojiGraphicsTraits = selfCopy->_emojiGraphicsTraits;
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
          isEmojiPopoverPresented = [v81 isEmojiPopoverPresented];

          if (isEmojiPopoverPresented)
          {
            objc_storeStrong(&selfCopy->_selectedPopupKey, v23);
            selfCopy->_showingVariants = 1;
            selfCopy->_currentVariantRow = 0;
            tappedSkinToneEmoji = [(UIKeyboardEmojiAndStickerCollectionInputView *)selfCopy tappedSkinToneEmoji];
            v84 = [tappedSkinToneEmoji copy];
            [(UIKeyboardEmojiAndStickerCollectionInputView *)selfCopy setSelectedIndexPath:v84];
          }

LABEL_47:
          v85 = selfCopy->_collectionView;
          superview2 = [(UIView *)selfCopy superview];
          [(UIView *)v85 convertRect:superview2 toView:v25 + 0.0, v27 + 1.0, v29, v31];
          v88 = v87;
          v90 = v89;
          v92 = v91;
          v94 = v93;

          if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 || +[UIKeyboardImpl isFloating])
          {
            [(UIKeyboardEmojiGraphicsTraits *)selfCopy->_emojiGraphicsTraits fakeEmojiKeySize];
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
            [(UIView *)selfCopy->_collectionView bounds];
            if (MaxX > v106)
            {
              if ([emoji supportsSkinToneVariants])
              {
                v107 = selfCopy->_emojiGraphicsTraits;
                if (!v107 || !v107->_isFirstPartyStickers)
                {
                  [(UIView *)selfCopy->_collectionView bounds];
                  v109 = v108;
                  v146.origin.x = v100;
                  v146.origin.y = v101;
                  v146.size.width = v96;
                  v146.size.height = v98;
                  v110 = CGRectGetMaxX(v146);
                  [(UIView *)selfCopy->_collectionView bounds];
                  if (v110 - v111 >= 0.0)
                  {
                    v112 = v110 - v111;
                  }

                  else
                  {
                    v112 = -(v110 - v111);
                  }

                  v113 = selfCopy->_collectionView;
                  [(UIScrollView *)v113 contentOffset];
                  v115 = v114;
                  [(UIScrollView *)selfCopy->_collectionView contentOffset];
                  [(UICollectionView *)v113 setContentOffset:1 animated:v115 + v112];
                  v100 = v109 - v96;
                }
              }
            }
          }

          else
          {
            [(UIKeyboardEmojiGraphicsTraits *)selfCopy->_emojiGraphicsTraits fakeEmojiKeySize];
            v96 = v95;
            v98 = v97;
            v99 = (v97 - v94) * 0.5;
            v100 = v88 - (v95 - v92) * 0.5;
            v101 = v90 - v99;
          }

          v116 = [[UIKBShape alloc] initWithGeometry:0 frame:v100 paddedFrame:v101, v96, v98, v100, v101, v96, v98];
          [v23 setShape:v116];

          v117 = [(UIKBKeyView *)selfCopy key];
          [v23 setParentKey:v117];

          [v23 setObject:emoji forProperty:@"UIKBAssociatedEmoji"];
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
      tappedSkinToneEmoji2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)selfCopy tappedSkinToneEmoji];
      if ([tappedSkinToneEmoji2 section] || !-[UIKeyboardEmojiAndStickerCollectionInputView _userHasSelectedSkinToneEmoji](selfCopy, "_userHasSelectedSkinToneEmoji"))
      {

        goto LABEL_40;
      }

      v79 = selfCopy->_emojiGraphicsTraits;
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

- (BOOL)genderEmojiBaseStringNeedVariantSelector:(id)selector
{
  selectorCopy = selector;
  if ([selectorCopy isEqualToString:@"⛹"] & 1) != 0 || (objc_msgSend(selectorCopy, "isEqualToString:", @"🏋"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [selectorCopy isEqualToString:@"🕵"];
  }

  return v4;
}

- (id)selectedChildSkinToneEmoji:(id)emoji
{
  emojiCopy = emoji;
  if ([emojiCopy selectedVariantIndex] == 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend(emojiCopy, "subtrees"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectAtIndex:", objc_msgSend(emojiCopy, "selectedVariantIndex")), v5 = objc_claimAutoreleasedReturnValue(), v4, objc_msgSend(v5, "displayString"), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v8 = [emojiCopy objectForProperty:@"UIKBAssociatedEmoji"];
  }

  else
  {
    v7 = [emojiCopy objectForProperty:@"UIKBAssociatedEmoji"];
    v8 = +[UIKeyboardEmoji emojiWithString:withVariantMask:](UIKeyboardEmoji, "emojiWithString:withVariantMask:", v6, [v7 variantMask]);
  }

  return v8;
}

- (int64_t)didInputSubTree:(id)tree
{
  v79[3] = *MEMORY[0x1E69E9840];
  treeCopy = tree;
  v75.receiver = self;
  v75.super_class = UIKeyboardEmojiAndStickerCollectionInputView;
  v5 = [(UIKBKeyView *)&v75 didInputSubTree:treeCopy];
  v6 = [treeCopy objectForProperty:@"UIKBAssociatedEmoji"];
  v7 = [treeCopy objectForProperty:@"UIKBAssociatedImageGlyph"];
  v8 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self _usageSourceFromSection:[(NSIndexPath *)self->_currentIndexPath section]];
  if (v6)
  {
    v74 = treeCopy;
    v70 = v7;
    if ([v6 supportsSkinToneVariants])
    {
      if ([treeCopy state] == 16)
      {
        selectedVariantIndex = [treeCopy selectedVariantIndex];
        [treeCopy subtrees];
        v11 = v10 = v8;
        v12 = selectedVariantIndex < [v11 count];

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
      v25 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedChildSkinToneEmoji:treeCopy];

      if (v12)
      {
        subtrees = [treeCopy subtrees];
        v27 = [subtrees objectAtIndex:0];
        representedString = [v27 representedString];

        emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
        emojiString = [v25 emojiString];
        [emojiKeyManager updateSkinToneBaseKey:representedString variantUsed:emojiString];
      }

      collectionView = self->_collectionView;
      tappedSkinToneEmoji = [(UIKeyboardEmojiAndStickerCollectionInputView *)self tappedSkinToneEmoji];
      v33 = [(UICollectionView *)collectionView cellForItemAtIndexPath:tappedSkinToneEmoji];

      emoji = [v33 emoji];
      emojiString2 = [emoji emojiString];
      v36 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiBaseString:emojiString2];
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
          emojiString3 = [v20 emojiString];
          [v33 setUnreleasedHighlight:{objc_msgSend(v66, "shouldHighlightEmoji:", emojiString3)}];
        }
      }
    }

    else
    {
      v73 = v5;
      v20 = v6;
    }

    v40 = +[UIKeyboardInputModeController sharedInputModeController];
    lastUsedInputModeForCurrentContext = [v40 lastUsedInputModeForCurrentContext];
    primaryLanguage = [lastUsedInputModeForCurrentContext primaryLanguage];
    v43 = [primaryLanguage stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

    v44 = @"en_US";
    if (v43)
    {
      v44 = v43;
    }

    v45 = +[UIKeyboardImpl activeInstance];
    isEmojiPopoverVisibleOrDismissing = [v45 isEmojiPopoverVisibleOrDismissing];

    if (!isEmojiPopoverVisibleOrDismissing)
    {
      goto LABEL_28;
    }

    emojiSearchField = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiSearchField];
    text = [emojiSearchField text];
    if ([text length])
    {
      tappedSkinToneEmoji2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self tappedSkinToneEmoji];
      section = [tappedSkinToneEmoji2 section];

      if (!section)
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

        bundleId = [(UIKeyboardEmojiAndStickerCollectionInputView *)self bundleId];

        if (bundleId)
        {
          bundleId2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self bundleId];
          v62 = +[_UISignalAnalytics getIAPayloadKeyGenmojiBundleID];
          [v59 setObject:bundleId2 forKeyedSubscript:v62];
        }

        v63 = +[_UISignalAnalytics getIASignalGenmojiUsage];
        [_UISignalAnalytics sendGenmojiSignal:v63 payload:v59];

        emojiKeyManager2 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
        [emojiKeyManager2 emojiUsed:v20 language:v68];

        v7 = v70;
        v5 = v73;
LABEL_31:
        v8 = v69;

        treeCopy = v74;
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
    v74 = treeCopy;
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

    bundleId3 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self bundleId];

    if (bundleId3)
    {
      bundleId4 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self bundleId];
      v23 = +[_UISignalAnalytics getIAPayloadKeyGenmojiBundleID];
      [v20 setObject:bundleId4 forKeyedSubscript:v23];
    }

    v24 = +[_UISignalAnalytics getIASignalGenmojiUsage];
    [_UISignalAnalytics sendGenmojiSignal:v24 payload:v20];

    v7 = v71;
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self insertImageGlyph:v71 dismiss:1];
    v5 = v72;
    goto LABEL_31;
  }

LABEL_32:
  [treeCopy setObject:0 forProperty:@"UIKBAssociatedImageGlyph"];
  [treeCopy setObject:0 forProperty:@"UIKBAssociatedEmoji"];

  return v5;
}

- (void)insertImageGlyph:(id)glyph dismiss:(BOOL)dismiss
{
  glyphCopy = glyph;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__UIKeyboardEmojiAndStickerCollectionInputView_insertImageGlyph_dismiss___block_invoke;
  v7[3] = &unk_1E711BD50;
  dismissCopy = dismiss;
  objc_copyWeak(&v8, &location);
  [glyphCopy createUIStickerWithLoadAllRepresentations:1 completionHandler:v7];
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

- (void)shouldDismissModalDisplayView:(id)view
{
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self _setUserHasSelectedSkinToneEmoji:1];
  completionBlock = [(UIKeyboardEmojiAndStickerCollectionInputView *)self completionBlock];
  if (completionBlock)
  {
    v5 = completionBlock;
    completionBlock[2]();
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self setCompletionBlock:0];
    completionBlock = v5;
  }
}

- (void)willDisplayModalActionView:(id)view withSubTreeKeyView:(id)keyView completion:(id)completion
{
  v83[2] = *MEMORY[0x1E69E9840];
  keyViewCopy = keyView;
  viewCopy = view;
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self setCompletionBlock:completion];
  array = [MEMORY[0x1E695DF70] array];
  renderConfig = [(UIKBKeyView *)self renderConfig];
  whiteText = [renderConfig whiteText];

  if (whiteText)
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
    renderConfig2 = [(UIKBKeyView *)self renderConfig];
    v77 = [renderConfig2 isFloating] ^ 1;
  }

  v76 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1;
  selfCopy = self;
  v16 = [(UIView *)self _keyboardOrientation]- 3;
  v17 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v17 preferencesActions];
  [preferencesActions rivenSizeFactor:1.0];
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
  [viewCopy addSubview:v26];
  v27 = [MEMORY[0x1E69977A0] constraintWithItem:v26 attribute:3 relatedBy:0 toItem:viewCopy attribute:3 multiplier:1.0 constant:0.0];
  [array addObject:v27];

  v28 = [MEMORY[0x1E69977A0] constraintWithItem:v26 attribute:1 relatedBy:0 toItem:viewCopy attribute:1 multiplier:1.0 constant:0.0];
  [array addObject:v28];

  v29 = [MEMORY[0x1E69977A0] constraintWithItem:v26 attribute:2 relatedBy:0 toItem:viewCopy attribute:2 multiplier:1.0 constant:0.0];
  [array addObject:v29];

  v30 = [MEMORY[0x1E69977A0] constraintWithItem:v26 attribute:8 relatedBy:0 toItem:viewCopy attribute:8 multiplier:v22 constant:0.0];
  [array addObject:v30];

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
  localizedSkinToneEmojiDescription = [getEMFEmojiCategoryClass_2() localizedSkinToneEmojiDescription];
  v73 = [v35 initWithString:localizedSkinToneEmojiDescription attributes:v74];

  [(UILabel *)v31 setNumberOfLines:0];
  [(UILabel *)v31 setTextAlignment:1];
  [(UILabel *)v31 setAttributedText:v73];
  [(UIView *)v26 addSubview:v31];
  v37 = [MEMORY[0x1E69977A0] constraintWithItem:v31 attribute:9 relatedBy:0 toItem:v26 attribute:9 multiplier:v25 constant:0.0];
  [array addObject:v37];

  v72 = v26;
  v38 = [MEMORY[0x1E69977A0] constraintWithItem:v31 attribute:3 relatedBy:0 toItem:v26 attribute:3 multiplier:1.0 constant:0.0];
  [array addObject:v38];

  v39 = [MEMORY[0x1E69977A0] constraintWithItem:v31 attribute:4 relatedBy:0 toItem:v26 attribute:4 multiplier:1.0 constant:0.0];
  [array addObject:v39];

  v40 = MEMORY[0x1E69977A0];
  [(UIKeyboardEmojiGraphicsTraits *)selfCopy->_emojiGraphicsTraits alertTextWidth];
  v42 = [v40 constraintWithItem:v31 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v41 - v23];
  [array addObject:v42];

  v43 = objc_alloc_init(UIView);
  [(UIView *)v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  [viewCopy addSubview:v43];
  v44 = [MEMORY[0x1E69977A0] constraintWithItem:v43 attribute:4 relatedBy:0 toItem:viewCopy attribute:4 multiplier:1.0 constant:0.0];
  [array addObject:v44];

  v45 = [MEMORY[0x1E69977A0] constraintWithItem:v43 attribute:8 relatedBy:0 toItem:viewCopy attribute:8 multiplier:0.086 constant:0.0];
  [array addObject:v45];

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
  [v46 addTarget:selfCopy action:sel_shouldDismissModalDisplayView_ forControlEvents:64];
  [viewCopy addSubview:v46];
  v50 = [MEMORY[0x1E69977A0] constraintWithItem:v46 attribute:9 relatedBy:0 toItem:viewCopy attribute:9 multiplier:v25 constant:0.0];
  [array addObject:v50];

  v51 = [MEMORY[0x1E69977A0] constraintWithItem:v46 attribute:4 relatedBy:0 toItem:v43 attribute:3 multiplier:1.0 constant:6.0];
  [array addObject:v51];

  v52 = [MEMORY[0x1E69977A0] constraintWithItem:v46 attribute:7 relatedBy:0 toItem:v31 attribute:7 multiplier:1.0 constant:0.0];
  [array addObject:v52];

  v53 = [keyViewCopy snapshotViewAfterScreenUpdates:1];

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

  [viewCopy addSubview:{v54, v68}];
  LODWORD(v56) = 1148829696;
  [(UIView *)v54 setContentHuggingPriority:1 forAxis:v56];
  v57 = [MEMORY[0x1E69977A0] constraintWithItem:v54 attribute:9 relatedBy:0 toItem:viewCopy attribute:9 multiplier:v25 constant:0.0];
  [array addObject:v57];

  v58 = [MEMORY[0x1E69977A0] constraintWithItem:v54 attribute:3 relatedBy:0 toItem:v31 attribute:4 multiplier:1.0 constant:v55];
  [array addObject:v58];

  v59 = objc_alloc_init(UILayoutGuide);
  [viewCopy addLayoutGuide:v59];

  topAnchor = [(UILayoutGuide *)v59 topAnchor];
  bottomAnchor = [(UIView *)v54 bottomAnchor];
  v62 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  [array addObject:v62];

  bottomAnchor2 = [(UILayoutGuide *)v59 bottomAnchor];
  topAnchor2 = [v46 topAnchor];
  v65 = [bottomAnchor2 constraintEqualToAnchor:topAnchor2];
  [array addObject:v65];

  heightAnchor = [(UILayoutGuide *)v59 heightAnchor];
  v67 = [heightAnchor constraintGreaterThanOrEqualToConstant:6.0];
  [array addObject:v67];

  [MEMORY[0x1E69977A0] activateConstraints:array];
}

- (void)didTearDownRecentsViewForKeyboardMediaController:(id)controller
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__UIKeyboardEmojiAndStickerCollectionInputView_didTearDownRecentsViewForKeyboardMediaController___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)didInsertMediaForKeyboardMediaController:(id)controller
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 dismissEmojiPopoverIfNecessaryWithCompletion:0];
}

- (void)didPresentCardForKeyboardMediaController:(id)controller
{
  emojiSearchField = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiSearchField];
  isActive = [emojiSearchField isActive];

  if (isActive)
  {
    emojiSearchField2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiSearchField];
    [emojiSearchField2 resignFirstResponder];
  }

  v7 = +[UIKeyboardImpl activeInstance];
  [v7 didPresentMemojiCard];
}

- (void)didDismissCardForKeyboardMediaController:(id)controller
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
  doesSupportImageGlyph = [(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph];
  if (doesSupportImageGlyph)
  {
    imageGlyphDataSource = self->_imageGlyphDataSource;

    LOBYTE(doesSupportImageGlyph) = [(STKImageGlyphDataSource *)imageGlyphDataSource canShowMemoji];
  }

  return doesSupportImageGlyph;
}

- (BOOL)doesShowStickers
{
  doesSupportImageGlyph = [(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph];
  if (doesSupportImageGlyph)
  {
    imageGlyphDataSource = self->_imageGlyphDataSource;

    LOBYTE(doesSupportImageGlyph) = [(STKImageGlyphDataSource *)imageGlyphDataSource canShowStickers];
  }

  return doesSupportImageGlyph;
}

- (BOOL)isMemojiCategory:(int64_t)category
{
  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph]|| [(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching])
  {
    return 0;
  }

  imageGlyphDataSource = self->_imageGlyphDataSource;

  return [(STKImageGlyphDataSource *)imageGlyphDataSource isMemojiSection:category];
}

- (BOOL)isStickersCategory:(int64_t)category
{
  doesSupportImageGlyph = [(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph];
  if (doesSupportImageGlyph)
  {
    imageGlyphDataSource = self->_imageGlyphDataSource;

    LOBYTE(doesSupportImageGlyph) = [(STKImageGlyphDataSource *)imageGlyphDataSource isStickerSection:category];
  }

  return doesSupportImageGlyph;
}

- (BOOL)isSearchCategory:(int64_t)category
{
  isSearching = [(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching];
  if (isSearching)
  {
    LOBYTE(isSearching) = [(UIKeyboardEmojiAndStickerCollectionInputView *)self numberOfPrefixSections]== category;
  }

  return isSearching;
}

- (BOOL)isRecentCategory:(int64_t)category
{
  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  imageGlyphDataSource = self->_imageGlyphDataSource;

  return [(STKImageGlyphDataSource *)imageGlyphDataSource isRecentSection:category];
}

- (BOOL)isEmojiCategory:(int64_t)category
{
  doesSupportImageGlyph = [(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph];
  v6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearchCategory:category];
  if (!doesSupportImageGlyph)
  {
    return !v6;
  }

  if (v6)
  {
    return 0;
  }

  imageGlyphDataSource = self->_imageGlyphDataSource;

  return [(STKImageGlyphDataSource *)imageGlyphDataSource isEmojiSection:category];
}

- (int64_t)memojiSectionIndex
{
  v2 = [(STKImageGlyphDataSource *)self->_imageGlyphDataSource indexPathForCategoryIndex:[(UIKeyboardEmojiAndStickerCollectionInputView *)self memojiCategoryIndex]];
  v3 = v2;
  if (v2)
  {
    section = [v2 section];
  }

  else
  {
    section = 0;
  }

  return section;
}

- (int64_t)stickersSectionIndex
{
  v3 = [(STKImageGlyphDataSource *)self->_imageGlyphDataSource indexPathForCategoryIndex:[(UIKeyboardEmojiAndStickerCollectionInputView *)self stickersCategoryIndex]];
  v4 = v3;
  if (v3)
  {
    section = [v3 section];
  }

  else
  {
    numberOfPrefixSections = [(UIKeyboardEmojiAndStickerCollectionInputView *)self numberOfPrefixSections];
    v7 = 2;
    if (numberOfPrefixSections > 2)
    {
      v7 = numberOfPrefixSections;
    }

    section = v7 - 2;
  }

  return section;
}

- (int64_t)recentSectionIndex
{
  v3 = [(STKImageGlyphDataSource *)self->_imageGlyphDataSource indexPathForCategoryIndex:[(UIKeyboardEmojiAndStickerCollectionInputView *)self recentCategoryIndex]];
  v4 = v3;
  if (v3)
  {
    section = [v3 section];
  }

  else
  {
    numberOfPrefixSections = [(UIKeyboardEmojiAndStickerCollectionInputView *)self numberOfPrefixSections];
    if (numberOfPrefixSections <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = numberOfPrefixSections;
    }

    section = v7 - 1;
  }

  return section;
}

- (int64_t)emojiSectionIndex
{
  v3 = [(STKImageGlyphDataSource *)self->_imageGlyphDataSource indexPathForCategoryIndex:[(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiCategoryIndex]];
  v4 = v3;
  if (v3)
  {
    section = [v3 section];
  }

  else
  {
    section = [(UIKeyboardEmojiAndStickerCollectionInputView *)self numberOfPrefixSections];
  }

  v6 = section;

  return v6;
}

- (id)recentsIndexPath
{
  v2 = MEMORY[0x1E696AC88];
  recentSectionIndex = [(UIKeyboardEmojiAndStickerCollectionInputView *)self recentSectionIndex];

  return [v2 indexPathForItem:0 inSection:recentSectionIndex];
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

- (int64_t)numberOfSectionsInCollectionView:(id)view
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

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  proposedIndexPathCopy = proposedIndexPath;
  v12 = proposedIndexPathCopy;
  if (!-[UIKeyboardEmojiAndStickerCollectionInputView isStickersCategory:](self, "isStickersCategory:", [proposedIndexPathCopy section]))
  {
    if (-[UIKeyboardEmojiAndStickerCollectionInputView isStickersCategory:](self, "isStickersCategory:", [indexPathCopy section]))
    {
      v12 = indexPathCopy;
    }

    else
    {
      v12 = pathCopy;
    }
  }

  v13 = v12;

  return v12;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearchCategory:section]&& [(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching])
  {
    searchResults = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
    v7 = [searchResults count];

    if (!v7)
    {
      return 1;
    }

    prepolulatedRecentCount = [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits prepolulatedRecentCount];
    searchResults2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
    v10 = [searchResults2 count];

    if (v10 > prepolulatedRecentCount)
    {
      searchResults3 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
      prepolulatedRecentCount = [searchResults3 count];
    }

    return prepolulatedRecentCount;
  }

  else if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph])
  {
    imageGlyphDataSource = self->_imageGlyphDataSource;

    return [(STKImageGlyphDataSource *)imageGlyphDataSource numberOfItemsInSection:section];
  }

  else
  {
    v14 = [UIKeyboardEmojiCategory categoryForType:[(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiCategoryTypeForSection:section]];
    emoji = [v14 emoji];
    v16 = [emoji count];

    return v16;
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  item = [pathCopy item];
  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearchCategory:section]&& ![(UIKeyboardEmojiAndStickerCollectionInputView *)self isEmojiCategory:section])
  {
    v32 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self stickerCellForIndexPath:pathCopy];
    goto LABEL_31;
  }

  v8 = [(UICollectionView *)self->_collectionView dequeueReusableCellWithReuseIdentifier:@"kEmojiCellIdentifier" forIndexPath:pathCopy];
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearchCategory:section])
  {
    searchResults = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];

    if (searchResults)
    {
      v10 = [(UICollectionView *)self->_collectionView dequeueReusableCellWithReuseIdentifier:@"kEmojiCellIdentifier" forIndexPath:pathCopy];

      searchResults2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
      v12 = [searchResults2 count];

      if (!v12)
      {
        [v10 setEmoji:0];
        [v10 setNoResultsCell:1];
        goto LABEL_25;
      }

      searchResults3 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
      v14 = [searchResults3 count];

      if (item >= v14)
      {
        [v10 setEmoji:0];
        goto LABEL_25;
      }

      searchResults4 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
      emoji = [searchResults4 objectAtIndex:item];

      if (objc_opt_respondsToSelector())
      {
        type = [emoji type];
        if (type == 1)
        {
          v32 = [(UICollectionView *)self->_collectionView dequeueReusableCellWithReuseIdentifier:@"kStickerCellIdentifier" forIndexPath:pathCopy];
          [v32 setImageGlyph:emoji];
          goto LABEL_30;
        }

        if (type == 3)
        {
          toString = [emoji toString];
          if (toString)
          {
            toString2 = toString;
            v20 = [UIKeyboardEmoji emojiWithString:toString withVariantMask:[UIKeyboardEmojiCategory hasVariantsForEmoji:toString]];
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
    v24 = [UIKeyboardEmojiCategory categoryForType:[(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiCategoryTypeForSection:section]];
    emoji = [v24 emoji];

    if (emoji)
    {
      v25 = [emoji objectAtIndex:item];
      if (v25)
      {
        v20 = v25;
        emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
        emojiString = [v20 emojiString];
        v28 = [emojiKeyManager lastUsedVariantEmojiForEmojiString:emojiString];
        [v20 setEmojiString:v28];

LABEL_20:
        [v8 setEmoji:v20];
        [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiKeyWidth];
        [v8 setEmojiFontSize:v29];
        if (os_variant_has_internal_diagnostics())
        {
          v30 = objc_opt_class();
          emojiString2 = [v20 emojiString];
          [v8 setUnreleasedHighlight:{objc_msgSend(v30, "shouldHighlightEmoji:", emojiString2)}];
        }

        goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  v21 = [(STKImageGlyphDataSource *)self->_imageGlyphDataSource itemAtIndexPath:pathCopy];
  emoji = v21;
  if (!v21)
  {
    goto LABEL_27;
  }

  toString2 = [v21 toString];
  emojiKeyManager2 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  v23 = [emojiKeyManager2 lastUsedVariantEmojiForEmojiString:toString2];
  v20 = [UIKeyboardEmoji emojiWithString:toString2 withVariantMask:v23];

  v10 = v8;
LABEL_15:

  if (v20)
  {
    v8 = v10;
    goto LABEL_20;
  }

LABEL_29:
  v10 = v10;
  emoji = v20;
  v32 = v10;
LABEL_30:

LABEL_31:

  return v32;
}

- (id)stickerCellForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(UICollectionView *)self->_collectionView dequeueReusableCellWithReuseIdentifier:@"kStickerCellIdentifier" forIndexPath:pathCopy];
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph])
  {
    v6 = [(STKImageGlyphDataSource *)self->_imageGlyphDataSource itemAtIndexPath:pathCopy];
    [v5 setImageGlyph:v6];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self _updateRearrangeModeForCell:v5 atIndexPath:pathCopy];
  }

  return v5;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  v11 = pathCopy;
  emojiGraphicsTraits = self->_emojiGraphicsTraits;
  if (emojiGraphicsTraits && emojiGraphicsTraits->_isFirstPartyStickers && ![pathCopy section])
  {
    v13 = 0;
    goto LABEL_23;
  }

  v13 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:@"kEmojiCategoryTitleIdentifier" forIndexPath:v11];
  if ([(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection]== UICollectionViewScrollDirectionVertical)
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewLeftMostPadding];
    v15 = v14;
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewRightMostPadding];
    [v13 setInsets:{0.0, v15, 0.0, v16}];
  }

  section = [v11 section];
  v18 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiCategoryTypeForSection:section];
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isMemojiCategory:section])
  {
    v19 = @"Memoji";
LABEL_12:
    v20 = _UILocalizedStringInSystemLanguage(v19, v19);
    goto LABEL_13;
  }

  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isStickersCategory:section])
  {
    v19 = @"Stickers";
    goto LABEL_12;
  }

  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearchCategory:section])
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
  _keyboardGraphicsQuality = [v22 _keyboardGraphicsQuality];

  renderConfig = [(UIKBKeyView *)self renderConfig];
  whiteText = [renderConfig whiteText];
  if (_keyboardGraphicsQuality == 10)
  {
    if ((whiteText & 1) == 0)
    {
      v26 = 0.51372549;
      v27 = 0.517647059;
      v28 = 0.529411765;
LABEL_19:
      v29 = [UIColor colorWithRed:v26 green:v27 blue:v28 alpha:1.0];
      goto LABEL_20;
    }
  }

  else if ((whiteText & 1) == 0)
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

  renderConfig2 = [(UIKBKeyView *)self renderConfig];
  whiteText2 = [renderConfig2 whiteText];
  v33 = 0.4;
  if (!whiteText2)
  {
    v33 = 1.0;
  }

  [v13 setHeaderOpacity:v33];

  renderConfig3 = [(UIKBKeyView *)self renderConfig];
  [v13 setUseVibrantBlend:{objc_msgSend(renderConfig3, "whiteText")}];

LABEL_23:

  return v13;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  layoutCopy = layout;
  objc_opt_class();
  v10 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    v11 = 0.0;
    if (![layoutCopy scrollDirection])
    {
      emojiGraphicsTraits = self->_emojiGraphicsTraits;
      if (emojiGraphicsTraits && !section && emojiGraphicsTraits->_isFirstPartyStickers)
      {
        v10 = *MEMORY[0x1E695F060];
        v11 = *(MEMORY[0x1E695F060] + 8);
      }

      else
      {
        [viewCopy bounds];
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

- (void)deleteImageGlyph:(id)glyph atPath:(id)path
{
  glyphCopy = glyph;
  pathCopy = path;
  objc_initWeak(&location, self);
  v8 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:pathCopy];
  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__UIKeyboardEmojiAndStickerCollectionInputView_deleteImageGlyph_atPath___block_invoke;
    v9[3] = &unk_1E70F2F80;
    objc_copyWeak(&v11, &location);
    v10 = glyphCopy;
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

- (int64_t)emojiCategoryTypeForSection:(int64_t)section
{
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isMemojiCategory:?])
  {
    return 13;
  }

  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isStickersCategory:section])
  {
    return 14;
  }

  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isRecentCategory:section])
  {
    return 0;
  }

  return [(UIKeyboardEmojiAndStickerCollectionInputView *)self translatedEmojiCategoryForSection:section];
}

- (int64_t)translatedEmojiCategoryForSection:(int64_t)section
{
  numberOfPrefixSections = [(UIKeyboardEmojiAndStickerCollectionInputView *)self numberOfPrefixSections];
  numberOfPrefixCategories = [(UIKeyboardEmojiAndStickerCollectionInputView *)self numberOfPrefixCategories];

  return [UIKeyboardEmojiCategory categoryTypeForCategoryIndex:(section - numberOfPrefixSections + numberOfPrefixCategories) & ~((section - numberOfPrefixSections + numberOfPrefixCategories) >> 63)];
}

- (int64_t)sectionForCategoryType:(int64_t)type
{
  if (type)
  {
    if (type == 14)
    {

      return [(UIKeyboardEmojiAndStickerCollectionInputView *)self stickersSectionIndex];
    }

    else if (type == 13)
    {

      return [(UIKeyboardEmojiAndStickerCollectionInputView *)self memojiSectionIndex];
    }

    else
    {
      v5 = [UIKeyboardEmojiCategory categoryIndexForCategoryType:?];
      emojiSectionIndex = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiSectionIndex];
      return emojiSectionIndex + v5 - [(UIKeyboardEmojiAndStickerCollectionInputView *)self numberOfPrefixCategories];
    }
  }

  else
  {

    return [(UIKeyboardEmojiAndStickerCollectionInputView *)self recentSectionIndex];
  }
}

- (BOOL)handleKeyEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy keyCode])
  {
    emojiSearchField = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiSearchField];
    markedTextRange = [emojiSearchField markedTextRange];

    if (!markedTextRange)
    {
      if (([eventCopy keyCode] == 44 || objc_msgSend(eventCopy, "keyCode") == 40) && -[UIKeyboardEmojiAndStickerCollectionInputView handleSelectionEvent:](self, "handleSelectionEvent:", eventCopy))
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
            if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self handleKeyInputForFamilySelector:eventCopy])
            {
              goto LABEL_16;
            }

LABEL_8:
            v7 = 1;
            goto LABEL_4;
          }

          if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self handleKeyInputForVariantSelector:eventCopy])
          {
            goto LABEL_8;
          }
        }
      }

LABEL_16:
      v7 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self handleKeyInputForCollectionViewNavigation:eventCopy];
      goto LABEL_4;
    }
  }

  v7 = 0;
LABEL_4:

  return v7;
}

- (BOOL)handleKeyInputForVariantSelector:(id)selector
{
  selectorCopy = selector;
  if ([selectorCopy modifiersEqual:0])
  {
    v5 = -[UIKeyboardEmojiAndStickerCollectionInputView keyCodeForCurrentEnvironmentFromKeyCode:](self, "keyCodeForCurrentEnvironmentFromKeyCode:", [selectorCopy keyCode]);
    if (v5 > 80)
    {
      if (v5 == 82)
      {
        if ([(UIKBTree *)self->_selectedPopupKey selectedVariantIndex]== 0x7FFFFFFFFFFFFFFFLL)
        {
          selectedVariantIndex = 0;
        }

        else
        {
          selectedVariantIndex = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndex];
        }

        self->_selectedVariant = selectedVariantIndex;
        [(UIKBTree *)self->_selectedPopupKey setSelectedVariantIndex:?];
        hitTestResponder = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
        selectedIndexPath = hitTestResponder;
        selectedPopupKey = self->_selectedPopupKey;
        goto LABEL_30;
      }

      if (v5 == 81)
      {
        hitTestResponder2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
        [hitTestResponder2 updateState:2 forKey:self->_selectedPopupKey];

        self->_showingVariants = 0;
        v7 = self->_selectedPopupKey;
        self->_selectedPopupKey = 0;

        selectedIndexPath = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
        [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateHighlightForIndexPath:selectedIndexPath scrollIfNeeded:0 animateScroll:0];
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
        subtrees = [(UIKBTree *)self->_selectedPopupKey subtrees];
        v16 = [subtrees objectAtIndex:self->_selectedVariant];
        interactionType = [v16 interactionType];

        v18 = self->_selectedVariant;
        if (interactionType)
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
            subtrees2 = [(UIKBTree *)self->_selectedPopupKey subtrees];
            self->_selectedVariant = [subtrees2 count] - 1;
          }

          else
          {
            self->_selectedVariant = v21;
          }
        }

        subtrees3 = [(UIKBTree *)self->_selectedPopupKey subtrees];
        v26 = [subtrees3 objectAtIndex:self->_selectedVariant];
        interactionType2 = [v26 interactionType];

        v18 = self->_selectedVariant;
        if (interactionType2)
        {
          goto LABEL_29;
        }

        --v18;
LABEL_28:
        self->_selectedVariant = v18;
LABEL_29:
        [(UIKBTree *)self->_selectedPopupKey setSelectedVariantIndex:v18];
        hitTestResponder = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
        selectedIndexPath = hitTestResponder;
        selectedPopupKey = self->_selectedPopupKey;
LABEL_30:
        [hitTestResponder updateState:16 forKey:selectedPopupKey];
        goto LABEL_31;
      }
    }

    if (self->_selectedPopupKey)
    {
      selectedIndexPath = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
      [selectedIndexPath updateState:2 forKey:self->_selectedPopupKey];
      v9 = 0;
LABEL_32:

      goto LABEL_33;
    }
  }

  v9 = 0;
LABEL_33:

  return v9;
}

- (id)verticalNeighborForIndexPath:(id)path up:(BOOL)up byPage:(BOOL)page
{
  pageCopy = page;
  upCopy = up;
  v72 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v9 = [(UICollectionView *)self->_collectionView layoutAttributesForItemAtIndexPath:pathCopy];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v13 + v17 * 0.5;
  [(UIView *)self->_collectionView frame];
  v21 = v20;
  if (upCopy)
  {
    v22 = -1.0;
  }

  else
  {
    v22 = 1.0;
  }

  if (pageCopy)
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
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  v32 = [collectionViewLayout layoutAttributesForElementsInRect:{x, y, width, height}];

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

  indexPath = [v35 indexPath];

  return indexPath;
}

- (BOOL)handleKeyInputForCollectionViewNavigation:(id)navigation
{
  navigationCopy = navigation;
  if ([navigationCopy unmodifiedKeyCodeEquals:44] & 1) != 0 || (objc_msgSend(navigationCopy, "unmodifiedKeyCodeEquals:", 158))
  {
    goto LABEL_3;
  }

  if ([navigationCopy unmodifiedKeyCodeEquals:79])
  {
    v6 = 1;
  }

  else
  {
    v6 = [navigationCopy equalsKeyCode:79 modifiers:0x100000];
  }

  if ([navigationCopy unmodifiedKeyCodeEquals:80])
  {
    v7 = 1;
  }

  else
  {
    v7 = [navigationCopy equalsKeyCode:80 modifiers:0x100000];
  }

  if ([navigationCopy unmodifiedKeyCodeEquals:82])
  {
    v8 = 1;
  }

  else
  {
    v8 = [navigationCopy equalsKeyCode:82 modifiers:0x100000];
  }

  if ([navigationCopy unmodifiedKeyCodeEquals:81])
  {
    v9 = 1;
  }

  else
  {
    v9 = [navigationCopy equalsKeyCode:81 modifiers:0x100000];
  }

  hasVerticalScrolling = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hasVerticalScrolling];
  effectiveUserInterfaceLayoutDirection = [(UIView *)self effectiveUserInterfaceLayoutDirection];
  if (hasVerticalScrolling)
  {
    if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
    {
      v12 = v6;
    }

    else
    {
      v12 = v7;
    }

    v57 = v9;
    if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
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
    if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
    {
      v13 = v7;
    }

    else
    {
      v13 = v6;
    }

    v57 = v13;
    v12 = v8;
    if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }
  }

  selectedIndexPath = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];

  v56 = v12;
  if (selectedIndexPath)
  {
    selectedIndexPath2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
    section = [selectedIndexPath2 section];

    selectedIndexPath3 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
    item = [selectedIndexPath3 item];
  }

  else
  {
    if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching])
    {
      if (hasVerticalScrolling)
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
    indexPathsForVisibleItems = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
    v20 = [indexPathsForVisibleItems sortedArrayUsingSelector:sel_compare_];

    firstObject = [v20 firstObject];
    section = [firstObject section];
    item = [firstObject item];
    if (!(section | item))
    {
      item = [(UIKeyboardEmojiAndStickerCollectionInputView *)self _shouldShowRecentlyUsedMedia];
    }

    if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching])
    {
      [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
      v54 = v20;
      v23 = v22 = section;
      v24 = [v23 count];

      section = v22;
      v20 = v54;
      if (!v24)
      {
        section = [(UIKeyboardEmojiAndStickerCollectionInputView *)self recentSectionIndex]+ 1;
      }
    }

    v25 = [MEMORY[0x1E696AC88] indexPathForItem:item inSection:section];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self setSelectedIndexPath:v25];

    v8 = v55;
  }

  v26 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:section];
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph])
  {
    selectedIndexPath4 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
    -[UIKeyboardEmojiAndStickerCollectionInputView rowsInSection:](self, "rowsInSection:", [selectedIndexPath4 section]);
  }

  if (v9)
  {
    if (selectedIndexPath)
    {
      if (item >= v26 - 1)
      {
        v28 = 0;
        if (section < [(UICollectionView *)self->_collectionView numberOfSections]- 1)
        {
          item = 0;
          ++section;
        }
      }

      else
      {
        v28 = 0;
        ++item;
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
    _shouldShowRecentlyUsedMedia = [(UIKeyboardEmojiAndStickerCollectionInputView *)self _shouldShowRecentlyUsedMedia];
    if (selectedIndexPath)
    {
      v30 = section < 2 && _shouldShowRecentlyUsedMedia;
      if (item > v30)
      {
        v28 = 0;
        --item;
LABEL_74:
        LODWORD(v8) = 1;
LABEL_75:
        v38 = 1;
        goto LABEL_76;
      }

      if (section >= 1)
      {
        v28 = 0;
        item = [(UICollectionView *)self->_collectionView numberOfItemsInSection:section - 1]- 1;
        LODWORD(v8) = 1;
        v38 = 1;
        --section;
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
    v32 = [navigationCopy modifiersEqual:0x100000];
    v28 = v32 | v31;
    if (selectedIndexPath)
    {
      v33 = v32;
      selectedIndexPath5 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];

      v35 = v57;
      if (selectedIndexPath5)
      {
        selectedIndexPath6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
        v37 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self verticalNeighborForIndexPath:selectedIndexPath6 up:v8 byPage:v33];

        if (v37)
        {
          section = [v37 section];
          item = [v37 item];
        }
      }

      goto LABEL_65;
    }

    goto LABEL_75;
  }

  v39 = [navigationCopy unmodifiedKeyCodeEquals:43];
  v40 = [navigationCopy equalsKeyCode:43 modifiers:0x20000];
  if ((v39 & 1) != 0 || v40)
  {
    if (v40)
    {
      if (section > 0)
      {
        --section;
        goto LABEL_92;
      }

      LODWORD(v8) = 0;
      v35 = 0;
      v28 = 0;
      section = 0;
      item = [(UIKeyboardEmojiAndStickerCollectionInputView *)self _shouldShowRecentlyUsedMedia];
    }

    else
    {
      if (section < [(UICollectionView *)self->_collectionView numberOfSections]- 1)
      {
        ++section;
LABEL_92:
        v50 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiCategoryTypeForSection:section];
        emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
        [emojiKeyManager reloadForCategory:v50 withSender:self];

        v52 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:section];
        [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateToIndexPath:v52];

        category = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
        item = [category lastVisibleFirstEmojiIndex];

        LODWORD(v8) = 0;
        v35 = 0;
        v28 = 0;
        v38 = 0;
        if (!(item | section))
        {
          section = 0;
          item = [(UIKeyboardEmojiAndStickerCollectionInputView *)self _shouldShowRecentlyUsedMedia];
        }

LABEL_77:
        if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching]&& section == [(UIKeyboardEmojiAndStickerCollectionInputView *)self recentSectionIndex])
        {
          searchResults = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
          v42 = [searchResults count];

          v43 = (item < v42) | v35;
          if (item < v42)
          {
            v44 = section;
          }

          else
          {
            item = 0;
            v44 = 1;
          }

          if (v43 & 1) != 0 || ((v8 ^ 1))
          {
            goto LABEL_87;
          }

          searchResults2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
          v46 = [searchResults2 count];

          if (!v46)
          {
            item = 0;
            v44 = 1;
            goto LABEL_87;
          }

          searchResults3 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
          item = [searchResults3 count] - 1;
        }

        v44 = section;
LABEL_87:
        v48 = [MEMORY[0x1E696AC88] indexPathForItem:item inSection:v44];
        [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateHighlightForIndexPath:v48 scrollIfNeeded:v38 animateScroll:v28 & v38];

        v5 = 1;
        goto LABEL_88;
      }

      section = [(UICollectionView *)self->_collectionView numberOfSections]- 1;
      LODWORD(v8) = 0;
      v35 = 0;
      v28 = 0;
      item = [(UICollectionView *)self->_collectionView numberOfItemsInSection:section]- 1;
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

- (BOOL)handleKeyInputForFamilySelector:(id)selector
{
  v49 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  v5 = [selectorCopy modifiersEqual:0];
  if (v5)
  {
    selectedVariantIndices = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndices];
    v7 = [selectedVariantIndices mutableCopy];

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

    v11 = -[UIKeyboardEmojiAndStickerCollectionInputView keyCodeForCurrentEnvironmentFromKeyCode:](self, "keyCodeForCurrentEnvironmentFromKeyCode:", [selectorCopy keyCode]);
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
      hitTestResponder = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
      [hitTestResponder updateState:16 forKey:self->_selectedPopupKey];
      goto LABEL_35;
    }

    if (v11 == 82)
    {
      popupDirection = [(UIKBTree *)self->_selectedPopupKey popupDirection];
      v20 = self->_currentVariantRow;
      if (popupDirection != 2 || v20)
      {
        v24 = v20 < 1;
        v25 = v20 - 1;
        if (v24)
        {
          if ([(UIKBTree *)self->_selectedPopupKey popupDirection]== 1)
          {
            selectedVariantIndex = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndex];
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

            if (selectedVariantIndex)
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

      popupDirection2 = [(UIKBTree *)self->_selectedPopupKey popupDirection];
      v15 = self->_currentVariantRow;
      if (v15 < [v7 count] && (self->_selectedVariant != 0x7FFFFFFFFFFFFFFFLL || -[UIKBTree popupDirection](self->_selectedPopupKey, "popupDirection") == 2))
      {
        popupDirection3 = [(UIKBTree *)self->_selectedPopupKey popupDirection];
        v17 = self->_currentVariantRow;
        if (popupDirection3 == 2 && !v17)
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
        hitTestResponder2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
        [hitTestResponder2 updateState:16 forKey:self->_selectedPopupKey];

        if (popupDirection2 != 1)
        {
          goto LABEL_36;
        }

        v38 = [v7 count];
        selectedVariantIndices2 = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndices];
        v40 = [selectedVariantIndices2 count];

        if (v38 <= v40)
        {
          goto LABEL_36;
        }
      }
    }

    hitTestResponder3 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
    [hitTestResponder3 updateState:2 forKey:self->_selectedPopupKey];

    self->_showingVariants = 0;
    selectedPopupKey = self->_selectedPopupKey;
    self->_selectedPopupKey = 0;

    hitTestResponder = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateHighlightForIndexPath:hitTestResponder scrollIfNeeded:0 animateScroll:0];
LABEL_35:

LABEL_36:
  }

  return v5;
}

- (BOOL)_handleInitialSelectionEvent:(id)event
{
  eventCopy = event;
  emojiSearchField = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiSearchField];
  text = [emojiSearchField text];

  if ([eventCopy unmodifiedKeyCodeEquals:44] && !objc_msgSend(text, "length") || objc_msgSend(eventCopy, "unmodifiedKeyCodeEquals:", 40) && objc_msgSend(text, "length") && (-[UIKeyboardEmojiAndStickerCollectionInputView searchResults](self, "searchResults"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8))
  {
    indexPathsForVisibleItems = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
    v10 = [indexPathsForVisibleItems sortedArrayUsingSelector:sel_compare_];

    firstObject = [v10 firstObject];
    if (!firstObject)
    {
      v14 = 0;
      goto LABEL_15;
    }

    v12 = firstObject;
    if (-[UIKeyboardEmojiAndStickerCollectionInputView _shouldShowRecentlyUsedMedia](self, "_shouldShowRecentlyUsedMedia") && ![v12 section] && !objc_msgSend(v12, "item"))
    {
      v13 = [MEMORY[0x1E696AC88] indexPathForItem:1 inSection:0];

      v12 = v13;
    }

    [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateHighlightForIndexPath:v12 scrollIfNeeded:0 animateScroll:0];
  }

  else
  {
    if (![eventCopy unmodifiedKeyCodeEquals:40])
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

- (BOOL)_handleVariantSelectionEvent:(id)event
{
  eventCopy = event;
  v5 = [eventCopy unmodifiedKeyCodeEquals:44];
  v6 = [eventCopy unmodifiedKeyCodeEquals:40];

  v7 = v5 | v6;
  if ((v5 | v6))
  {
    collectionView = self->_collectionView;
    selectedIndexPath = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
    v10 = [(UICollectionView *)collectionView cellForItemAtIndexPath:selectedIndexPath];

    v11 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedChildSkinToneEmoji:self->_selectedPopupKey];
    selectedVariantIndices = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndices];
    v13 = [selectedVariantIndices count];

    if (v13)
    {
      selectedVariantIndices2 = [(UIKBTree *)self->_selectedPopupKey selectedVariantIndices];
      lastObject = [selectedVariantIndices2 lastObject];
      integerValue = [lastObject integerValue];

      if (!integerValue)
      {
        [(UIKBTree *)self->_selectedPopupKey setSelectedVariantIndex:0];
        v17 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedChildSkinToneEmoji:self->_selectedPopupKey];

        v11 = v17;
      }
    }

    [(UIKBTree *)self->_selectedPopupKey setObject:v11 forProperty:@"UIKBAssociatedEmoji"];
    [v10 setEmoji:v11];
    hitTestResponder = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
    [hitTestResponder updateState:2 forKey:self->_selectedPopupKey];

    [(UIKeyboardEmojiAndStickerCollectionInputView *)self didInputSubTree:self->_selectedPopupKey];
    if (v5)
    {
      selectedIndexPath2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
      [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateHighlightForIndexPath:selectedIndexPath2 scrollIfNeeded:0 animateScroll:0];
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

- (BOOL)_handleBaseKeySelectionEvent:(id)event
{
  eventCopy = event;
  v5 = [eventCopy unmodifiedKeyCodeEquals:44];
  v6 = [eventCopy equalsKeyCode:44 modifiers:0x80000];
  v7 = [eventCopy unmodifiedKeyCodeEquals:40];
  v8 = [eventCopy equalsKeyCode:40 modifiers:0x80000];
  collectionView = self->_collectionView;
  selectedIndexPath = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
  v11 = [(UICollectionView *)collectionView cellForItemAtIndexPath:selectedIndexPath];

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

    emoji = [v11 emoji];
    v14 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self treeForCell:v11];
    if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self keySupportsVariants:v14])
    {
      factory = [(UIKBKeyView *)self factory];
      if ([factory popupKeyUsesCustomKeyContentView:v14])
      {
        if ([v14 selectedVariantIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {

LABEL_24:
          self->_currentVariantRow = 0;
          selectedVariantIndices = [v14 selectedVariantIndices];
          v21 = selectedVariantIndices;
          if (selectedVariantIndices)
          {
            firstObject = [selectedVariantIndices firstObject];
            integerValue = [firstObject integerValue];

            if (integerValue == 0x7FFFFFFFFFFFFFFFLL)
            {
              v24 = 0;
            }

            else
            {
              v24 = integerValue;
            }

            self->_selectedVariant = v24;
          }

          [v11 setSelected:0];
          objc_storeStrong(&self->_selectedPopupKey, v14);
          v17 = 1;
          self->_showingVariants = 1;
          hitTestResponder = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
          [hitTestResponder updateState:16 forKey:v14];

          goto LABEL_30;
        }

        v28 = [eventCopy modifiersEqual:0x80000];

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
        hitTestResponder2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
        [hitTestResponder2 updateState:16 forKey:v14];

        goto LABEL_30;
      }
    }

    if (v5)
    {
      selectedIndexPath2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
      [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateHighlightForIndexPath:selectedIndexPath2 scrollIfNeeded:0 animateScroll:0];

      [(UIKeyboardEmojiAndStickerCollectionInputView *)self insertSelectedEmoji:emoji shouldDismissPopover:0];
      v17 = 1;
    }

    else if (v7)
    {
      v17 = 1;
      [(UIKeyboardEmojiAndStickerCollectionInputView *)self insertSelectedEmoji:emoji shouldDismissPopover:1];
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
    imageGlyph = [v11 imageGlyph];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self insertImageGlyph:imageGlyph dismiss:v7];
  }

LABEL_12:
  v17 = 1;
LABEL_31:

  return v17;
}

- (BOOL)handleSelectionEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy modifierFlags] && !objc_msgSend(eventCopy, "modifiersEqual:", 0x80000))
  {
    v7 = 0;
  }

  else
  {
    selectedIndexPath = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];

    if (selectedIndexPath)
    {
      if (self->_showingVariants)
      {
        v6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self _handleVariantSelectionEvent:eventCopy];
      }

      else
      {
        v6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self _handleBaseKeySelectionEvent:eventCopy];
      }
    }

    else
    {
      v6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self _handleInitialSelectionEvent:eventCopy];
    }

    v7 = v6;
  }

  return v7;
}

- (void)updateHighlightForIndexPath:(id)path scrollIfNeeded:(BOOL)needed animateScroll:(BOOL)scroll
{
  scrollCopy = scroll;
  neededCopy = needed;
  pathCopy = path;
  selectedIndexPath = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
  section = [selectedIndexPath section];
  section2 = [pathCopy section];

  if (section != section2)
  {
    v11 = -[UIKeyboardEmojiAndStickerCollectionInputView emojiCategoryTypeForSection:](self, "emojiCategoryTypeForSection:", [pathCopy section]);
    emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
    [emojiKeyManager reloadCategoryForIndexPath:pathCopy withSender:self];

    emojiKeyManager2 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
    [emojiKeyManager2 reloadForCategory:v11 withSender:self];

    v14 = [UIKeyboardEmojiCategory categoryForType:v11];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self setCategory:v14];
  }

  [(UIKeyboardEmojiAndStickerCollectionInputView *)self setSelectedIndexPath:pathCopy];
  v15 = -[UICollectionView numberOfItemsInSection:](self->_collectionView, "numberOfItemsInSection:", [pathCopy section]);
  if (v15 > [pathCopy item])
  {
    collectionView = self->_collectionView;
    selectedIndexPath2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
    [(UICollectionView *)collectionView selectItemAtIndexPath:selectedIndexPath2 animated:0 scrollPosition:0];

    if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self cellShouldScrollWhenSelectedAtIndexPath:pathCopy]&& neededCopy)
    {
      v18 = self->_collectionView;
      selectedIndexPath3 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
      if ([(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection])
      {
        v20 = 16;
      }

      else
      {
        v20 = 2;
      }

      [(UICollectionView *)v18 scrollToItemAtIndexPath:selectedIndexPath3 atScrollPosition:v20 animated:scrollCopy];
    }

    [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateLastSeenItemForIndexPath:pathCopy];
  }
}

- (void)insertSelectedEmoji:(id)emoji shouldDismissPopover:(BOOL)popover
{
  popoverCopy = popover;
  emojiCopy = emoji;
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self updatePreferencesForSelectedEmoji:emojiCopy];
  emojiSearchInputViewController = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiSearchInputViewController];
  textDocumentProxy = [emojiSearchInputViewController textDocumentProxy];
  emojiString = [emojiCopy emojiString];
  [textDocumentProxy insertText:emojiString];

  emojiSearchField = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiSearchField];
  text = [emojiSearchField text];

  selectedIndexPath = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
  section = [selectedIndexPath section];

  v13 = +[UIKeyboardImpl activeInstance];
  v14 = v13;
  if (section)
  {
    v15 = UIKBAnalyticsEmojiSelectionMethodReturnKey;
    if (!popoverCopy)
    {
      v15 = UIKBAnalyticsEmojiSelectionMethodSpaceBar;
    }

    [v13 insertedEmojiFromPopover:emojiCopy selectionMethod:*v15];
  }

  else
  {
    emojiString2 = [emojiCopy emojiString];
    v17 = UIKBAnalyticsEmojiSelectionMethodReturnKey;
    if (!popoverCopy)
    {
      v17 = UIKBAnalyticsEmojiSelectionMethodSpaceBar;
    }

    [v14 emojiSearchWillInsertEmoji:emojiString2 forSearchQuery:text selectionMethod:*v17 inputType:@"PopoverSearch"];
  }

  v18 = +[UIKeyboardImpl activeInstance];
  activeLayout = [v18 activeLayout];

  delegate = [activeLayout delegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    emojiString3 = [emojiCopy emojiString];
    v23 = [activeLayout createKeyEventForStringAction:emojiString3 forKey:0 inputFlags:0];

    delegate2 = [activeLayout delegate];
    [delegate2 handleKeyUIEvent:v23 dismiss:popoverCopy];
  }

  if (popoverCopy)
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

- (int64_t)keyCodeForCurrentEnvironmentFromKeyCode:(int64_t)code
{
  effectiveUserInterfaceLayoutDirection = [(UIView *)self effectiveUserInterfaceLayoutDirection];
  v5 = 80;
  codeCopy = 79;
  if (code != 80)
  {
    codeCopy = code;
  }

  if (code != 79)
  {
    v5 = codeCopy;
  }

  if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    return v5;
  }

  else
  {
    return code;
  }
}

- (void)updatePreferencesForSelectedEmoji:(id)emoji
{
  emojiCopy = emoji;
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  lastUsedInputModeForCurrentContext = [v5 lastUsedInputModeForCurrentContext];
  primaryLanguage = [lastUsedInputModeForCurrentContext primaryLanguage];
  v8 = [primaryLanguage stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"en_US";
  }

  v13 = v9;
  emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  [emojiKeyManager emojiUsed:emojiCopy language:v13];

  selectedIndexPath = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];

  if (selectedIndexPath)
  {
    selectedIndexPath2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateLastSeenItemForIndexPath:selectedIndexPath2];
  }
}

- (void)updateLastSeenItemForIndexPath:(id)path
{
  pathCopy = path;
  v5 = +[UIKeyboardEmojiCategory categoryForType:](UIKeyboardEmojiCategory, "categoryForType:", -[UIKeyboardEmojiAndStickerCollectionInputView emojiCategoryTypeForSection:](self, "emojiCategoryTypeForSection:", [pathCopy section]));
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self setCategory:v5];

  item = [pathCopy item];
  category = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
  [category setLastVisibleFirstEmojiIndex:item];

  category2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
  emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  [emojiKeyManager setLastViewedCategory:category2];
}

- (void)resetSelectionIfNeeded
{
  selectedIndexPath = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];

  if (selectedIndexPath)
  {
    collectionView = self->_collectionView;
    selectedIndexPath2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self selectedIndexPath];
    [(UICollectionView *)collectionView deselectItemAtIndexPath:selectedIndexPath2 animated:0];

    selectedIndexPath = self->_selectedIndexPath;
    self->_selectedIndexPath = 0;

    selectedPopupKey = self->_selectedPopupKey;
    self->_selectedPopupKey = 0;

    self->_showingVariants = 0;
  }
}

- (BOOL)keySupportsVariants:(id)variants
{
  variantsCopy = variants;
  v4 = [variantsCopy variantType] == 10 || objc_msgSend(variantsCopy, "variantType") == 12 || objc_msgSend(variantsCopy, "variantType") == 11 || objc_msgSend(variantsCopy, "variantType") == 13;

  return v4;
}

- (BOOL)cellShouldScrollWhenSelectedAtIndexPath:(id)path
{
  collectionView = self->_collectionView;
  pathCopy = path;
  [(UIView *)collectionView bounds];
  v22 = CGRectInset(v21, 0.0, -1.0);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  v10 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:pathCopy];

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

- (void)emojiSearchTextFieldWillBecomeActive:(id)active
{
  emojiSearchField = [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiSearchField];
  renderConfig = [(UIKBKeyView *)self renderConfig];
  [emojiSearchField _setRenderConfig:renderConfig];

  collectionView = self->_collectionView;

  [(UIKeyboardEmojiAndStickerCollectionView *)collectionView setIsInSearchPopover:1];
}

- (void)emojiSearchTextFieldDidBecomeActive:(id)active
{
  activeCopy = active;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  [v4 changePreferredEmojiSearchInputModeForInputDelegate:activeCopy];
}

- (void)emojiSearchTextFieldWillBecomeInactive:(id)inactive
{
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self setIsSearching:0];
  [(UIKeyboardEmojiAndStickerCollectionView *)self->_collectionView setIsInSearchPopover:0];
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 clearForwardingInputDelegateAndResign:0];
}

- (void)emojiSearchTextFieldDidBecomeInactive:(id)inactive
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 updateAssistantView];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIKeyboardSwitchedAwayFromEmoji" object:0];

  v7 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  hardwareInputMode = [v5 hardwareInputMode];
  [v7 setCurrentInputMode:hardwareInputMode];
}

- (void)emojiSearchTextFieldWillClear:(id)clear
{
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self setIsSearching:0];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self setSearchResults:MEMORY[0x1E695E0F0]];

  [(UIKeyboardEmojiAndStickerCollectionInputView *)self resetSelectionIfNeeded];
}

- (void)emojiSearchTextFieldDidReset:(id)reset
{
  isSearching = [(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self setIsSearching:0];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self resetSelectionIfNeeded];
  if (isSearching)
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

- (void)setSearchResults:(id)results
{
  v21[1] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self _setRearrangeMode:0];
  isSearching = [(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching];
  v6 = isSearching;
  if (resultsCopy)
  {
    if (!isSearching)
    {
      [(UIKeyboardEmojiAndStickerCollectionInputView *)self setIsSearching:1];
      emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
      recentsIndexPath = [(UIKeyboardEmojiAndStickerCollectionInputView *)self recentsIndexPath];
      [emojiKeyManager reloadCategoryForIndexPath:recentsIndexPath withSender:self];

      [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateOffsetForSearchResultsAnimated:1];
    }

    [(UIKeyboardEmojiAndStickerCollectionInputView *)self resetSelectionIfNeeded];
    v9 = [resultsCopy copy];
    searchResults = self->_searchResults;
    self->_searchResults = v9;

    snapshot = [(STKImageGlyphDataSource *)self->_imageGlyphDataSource snapshot];
    recentsIndexPath2 = [MEMORY[0x1E696AD98] numberWithInt:{-[UIKeyboardEmojiAndStickerCollectionInputView recentSectionIndex](self, "recentSectionIndex")}];
    v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[UIKeyboardEmojiAndStickerCollectionInputView emojiSectionIndex](self, "emojiSectionIndex")}];
    v21[0] = recentsIndexPath2;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [snapshot deleteSectionsWithIdentifiers:v14];

    v20 = recentsIndexPath2;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    [snapshot insertSectionsWithIdentifiers:v15 beforeSectionWithIdentifier:v13];

    if ([resultsCopy count])
    {
      v16 = [resultsCopy bs_compactMap:&__block_literal_global_276];
    }

    else
    {
      v19 = @"emoji:::";
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    }

    v18 = v16;
    [snapshot appendItemsWithIdentifiers:v16 intoSectionWithIdentifier:recentsIndexPath2];

    [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateDataSourceWithSnapshot:snapshot animated:0];
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
    snapshot = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
    recentsIndexPath2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self recentsIndexPath];
    [snapshot reloadCategoryForIndexPath:recentsIndexPath2 withSender:self];
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

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self topPadding];
  v10 = v9;
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self categoryHeaderHeight];
  v12 = v11;
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isSearching])
  {
    searchResults = [(UIKeyboardEmojiAndStickerCollectionInputView *)self searchResults];
    if ([searchResults count])
    {
    }

    else
    {
      section = [pathCopy section];

      if (!section)
      {
        [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiKeyWidth];
        v25 = v24;
        [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumInteritemSpacing];
        v27 = (v25 + v26 + 1.0) * 6.0;
        [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
        v18 = v27 + v28 + v28;
        [viewCopy bounds];
        v29 = CGRectGetHeight(v40) - v12;
        [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits bottomPadding];
        v19 = v29 - v30;
        goto LABEL_11;
      }
    }
  }

  if (!-[UIKeyboardEmojiAndStickerCollectionInputView _shouldShowRecentlyUsedMedia](self, "_shouldShowRecentlyUsedMedia") || [pathCopy section] || objc_msgSend(pathCopy, "item"))
  {
    if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph])
    {
      v15 = -[UIKeyboardEmojiAndStickerCollectionInputView rowsInSection:](self, "rowsInSection:", [pathCopy section]);
      [viewCopy bounds];
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
    [viewCopy bounds];
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
      [viewCopy bounds];
      Width = CGRectGetWidth(v42);
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewLeftMostPadding];
      v36 = Width - v35;
      [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits inputViewRightMostPadding];
      v18 = v36 - v37;
      [viewCopy bounds];
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

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  layout = [(UICollectionView *)self->_collectionView numberOfItemsInSection:0, layout];
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits sectionOffset];
  v9 = v8;
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits bottomPadding];
  v11 = v10;
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self topPadding];
  v13 = v12;
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self categoryHeaderHeight];
  v15 = v14;
  scrollDirection = [(UICollectionViewFlowLayout *)self->_flowLayout scrollDirection];
  if (index)
  {
    v17 = 1;
  }

  else
  {
    v17 = layout <= 0;
  }

  v18 = !v17;
  if (scrollDirection == UICollectionViewScrollDirectionVertical)
  {
    if ((v18 & 1) != 0 || index == 1 && !layout)
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
      if (v23 != index)
      {
        v11 = v9;
      }
    }

    goto LABEL_20;
  }

  if ((v18 & 1) == 0 && (index != 1 || layout))
  {
    v13 = v13 + v15;
    v20 = 0.0;
    if ([(UICollectionView *)self->_collectionView numberOfSections]- 1 != index)
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

- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  if (!index && [(UIKeyboardEmojiAndStickerCollectionInputView *)self _shouldShowRecentlyUsedMedia])
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumInteritemSpacing];
LABEL_6:
    v11 = v10;
    goto LABEL_7;
  }

  v11 = 0.0;
  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self isMemojiCategory:index])
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  if (!index && [(UIKeyboardEmojiAndStickerCollectionInputView *)self _shouldShowRecentlyUsedMedia])
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumLineSpacing];
LABEL_6:
    v11 = v10;
    goto LABEL_7;
  }

  v11 = 0.0;
  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self isMemojiCategory:index])
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits minimumInteritemSpacing];
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy willDisplay];
  }

  if (!self->_hasShownAnimojiCell && -[UIKeyboardEmojiAndStickerCollectionInputView _shouldShowRecentlyUsedMedia](self, "_shouldShowRecentlyUsedMedia") && ![pathCopy item] && !objc_msgSend(pathCopy, "section"))
  {
    self->_hasShownAnimojiCell = 1;
    ADClientAddValueForScalarKey();
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy didEndDisplaying];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  v19[1] = *MEMORY[0x1E69E9840];
  scrollCopy = scroll;
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self handleScrollViewDynamicPagination:scrollCopy];
  if (_UIApplicationIsFirstPartyStickers())
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v18 = @"contentOffsetY";
    v6 = MEMORY[0x1E696AD98];
    [scrollCopy contentOffset];
    v8 = [v6 numberWithDouble:v7];
    v19[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [defaultCenter postNotificationName:@"UIKeyboardEmojiCollectionInputViewDidScroll" object:0 userInfo:v9];
  }

  if (!self->_isRearranging)
  {
    hitTestResponder = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
    [hitTestResponder deactivateActiveKey];
  }

  currentlyFocusedIndexPath = [(UIKeyboardEmojiAndStickerCollectionInputView *)self currentlyFocusedIndexPath];
  section = [currentlyFocusedIndexPath section];
  if (self->_currentSection != section)
  {
    v13 = section;
    self->_currentSection = section;
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self _setRearrangeMode:0];
    if (self->_isDraggingInputView)
    {
      emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
      [emojiKeyManager reloadCategoryForIndexPath:currentlyFocusedIndexPath withSender:self];

      emojiKeyManager2 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
      [emojiKeyManager2 reloadForCategory:-[UIKeyboardEmojiAndStickerCollectionInputView emojiCategoryTypeForSection:](self withSender:{"emojiCategoryTypeForSection:", v13), self}];
    }
  }

  keylineView = self->_keylineView;
  [scrollCopy contentOffset];
  [(UIKeyboardEmojiAndStickerCollectionInputViewKeylineView *)keylineView updateAlphaForScrollDistance:v17];
}

- (void)handleScrollViewDynamicPagination:(id)pagination
{
  paginationCopy = pagination;
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  if (objc_opt_respondsToSelector())
  {
    [paginationCopy contentOffset];
    v5 = [collectionViewLayout paginationOriginForCurrentOffset:?];
    if (v5)
    {
      [paginationCopy setPagingEnabled:1];
      [v5 CGPointValue];
    }

    else
    {
      [paginationCopy setPagingEnabled:0];
      v6 = *MEMORY[0x1E695EFF8];
      v7 = *(MEMORY[0x1E695EFF8] + 8);
    }

    [paginationCopy _setPagingOrigin:{v6, v7}];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  self->_isDraggingInputView = 1;
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self snappedXOffsetForOffset:0 scrubbing:offset->x, velocity.y];
  offset->x = v6;
}

- (id)itemInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__162;
  v16 = __Block_byref_object_dispose__162;
  v17 = 0;
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  v8 = [collectionViewLayout layoutAttributesForElementsInRect:{x, y, width, height}];
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
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  if (objc_opt_respondsToSelector())
  {
    currentlyFocusedSectionIndex = [collectionViewLayout currentlyFocusedSectionIndex];
  }

  else
  {
    currentlyFocusedIndexPath = [(UIKeyboardEmojiAndStickerCollectionInputView *)self currentlyFocusedIndexPath];
    currentlyFocusedSectionIndex = [currentlyFocusedIndexPath section];
  }

  return currentlyFocusedSectionIndex;
}

- (id)currentlyFocusedIndexPath
{
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  if (objc_opt_respondsToSelector())
  {
    currentlyFocusedIndexPath = [collectionViewLayout currentlyFocusedIndexPath];
  }

  else
  {
    currentlyFocusedIndexPath = [MEMORY[0x1E696AC88] indexPathWithIndex:self->_currentSection];
    trulyVisibleIndexPaths = [(UIKeyboardEmojiAndStickerCollectionInputView *)self trulyVisibleIndexPaths];
    if ([trulyVisibleIndexPaths count])
    {
      v6 = [trulyVisibleIndexPaths objectAtIndexedSubscript:{((2 * ((5 * objc_msgSend(trulyVisibleIndexPaths, "count")) & 0x1FFFFFFFFFFFFFFFuLL) * 0x28F5C28F5C28F5C3uLL) >> 64) >> 2}];

      firstObject = [trulyVisibleIndexPaths firstObject];
      if ([firstObject section] || objc_msgSend(firstObject, "item"))
      {
        v8 = [(UICollectionView *)self->_collectionView numberOfSections]- 1;
        v9 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:v8];
        v10 = [MEMORY[0x1E696AC88] indexPathForItem:v9 - 1 inSection:v8];
        lastObject = [trulyVisibleIndexPaths lastObject];

        if (v10 == lastObject)
        {
          lastObject2 = [trulyVisibleIndexPaths lastObject];

          v6 = lastObject2;
        }
      }

      else
      {
        v10 = v6;
        v6 = firstObject;
      }

      currentlyFocusedIndexPath = v6;
    }
  }

  return currentlyFocusedIndexPath;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  self->_isDraggingInputView = 0;
  currentlyFocusedIndexPath = [(UIKeyboardEmojiAndStickerCollectionInputView *)self currentlyFocusedIndexPath];
  trulyVisibleIndexPaths = [(UIKeyboardEmojiAndStickerCollectionInputView *)self trulyVisibleIndexPaths];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__UIKeyboardEmojiAndStickerCollectionInputView_scrollViewDidEndDecelerating___block_invoke;
  v9[3] = &unk_1E711BD98;
  v10 = currentlyFocusedIndexPath;
  v6 = currentlyFocusedIndexPath;
  v7 = [trulyVisibleIndexPaths bs_filter:v9];
  firstObject = [v7 firstObject];

  [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateLastSeenItemForIndexPath:firstObject];
}

- (id)trulyVisibleIndexPaths
{
  [(UIScrollView *)self->_collectionView contentOffset];
  v4 = v3;
  v6 = v5;
  [(UIView *)self->_collectionView bounds];
  v8 = v7;
  v10 = v9;
  visibleCells = [(UICollectionView *)self->_collectionView visibleCells];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__UIKeyboardEmojiAndStickerCollectionInputView_trulyVisibleIndexPaths__block_invoke;
  v15[3] = &unk_1E711BDC0;
  v15[5] = v4;
  v15[6] = v6;
  v15[7] = v8;
  v15[8] = v10;
  v15[4] = self;
  v12 = [visibleCells bs_compactMap:v15];
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

- (int64_t)indexForPrettyCategoryDisplay:(id)display
{
  displayCopy = display;
  if (self->_collectionView && (-[UIKeyboardEmojiAndStickerCollectionInputView category](self, "category"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 categoryType], v5, v7 = -[UIKeyboardEmojiAndStickerCollectionInputView sectionForCategoryType:](self, "sectionForCategoryType:", v6), v7 < -[UICollectionView numberOfSections](self->_collectionView, "numberOfSections")) && (v8 = -[UICollectionView numberOfItemsInSection:](self->_collectionView, "numberOfItemsInSection:", v7), objc_msgSend(displayCopy, "lastVisibleFirstEmojiIndex") >= v8))
  {
    lastVisibleFirstEmojiIndex = v8 - 1;
  }

  else
  {
    lastVisibleFirstEmojiIndex = [displayCopy lastVisibleFirstEmojiIndex];
  }

  return lastVisibleFirstEmojiIndex;
}

- (int64_t)rowsInSection:(int64_t)section
{
  if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self doesSupportImageGlyph])
  {
    return 4;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (![(UIKeyboardEmojiAndStickerCollectionInputView *)self isEmojiCategory:section])
    {
      if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self isRecentCategory:section])
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

  return [(STKImageGlyphDataSource *)imageGlyphDataSource numberOfRowsInSection:section];
}

- (void)didMoveToWindow
{
  selfCopy = self;
  v34.receiver = self;
  v34.super_class = UIKeyboardEmojiAndStickerCollectionInputView;
  [(UIView *)&v34 didMoveToWindow];
  [(UIView *)selfCopy->_collectionView layoutIfNeeded];
  emojiKeyManager = [(UIKeyboardEmojiKeyView *)selfCopy emojiKeyManager];
  lastViewedCategory = [emojiKeyManager lastViewedCategory];
  objc_storeWeak(&selfCopy->_category, lastViewedCategory);

  v5 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
  v6 = MEMORY[0x1E696AD98];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_category);
  v8 = [v6 numberWithInteger:{objc_msgSend(WeakRetained, "categoryType")}];
  v9 = [v5 containsObject:v8];

  if ((v9 & 1) == 0)
  {
    v10 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
    firstObject = [v10 firstObject];
    integerValue = [firstObject integerValue];

    v13 = [UIKeyboardEmojiCategory categoryForType:integerValue];
    objc_storeWeak(&selfCopy->_category, v13);
  }

  v14 = objc_loadWeakRetained(&selfCopy->_category);
  selfCopy->_currentSection = -[UIKeyboardEmojiAndStickerCollectionInputView sectionForCategoryType:](selfCopy, "sectionForCategoryType:", [v14 categoryType]);

  window = [(UIView *)selfCopy window];

  if (window)
  {
    [(UIKeyboardEmojiAndStickerCollectionInputView *)selfCopy updateDataSourceSnapshot];
    if (selfCopy->_inputDelegateCanSupportAnimoji && !selfCopy->_hasShownAnimojiFirstTimeExperience && [(UIKeyboardEmojiAndStickerCollectionInputView *)selfCopy _shouldShowRecentlyUsedMedia])
    {
      v16 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    }

    else
    {
      category = [(UIKeyboardEmojiAndStickerCollectionInputView *)selfCopy category];
      v18 = -[UIKeyboardEmojiAndStickerCollectionInputView sectionForCategoryType:](selfCopy, "sectionForCategoryType:", [category categoryType]);

      v19 = MEMORY[0x1E696AC88];
      category2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)selfCopy category];
      v16 = [v19 indexPathForItem:-[UIKeyboardEmojiAndStickerCollectionInputView indexForPrettyCategoryDisplay:](selfCopy inSection:{"indexForPrettyCategoryDisplay:", category2), v18}];
    }

    v21 = [(UICollectionView *)selfCopy->_collectionView layoutAttributesForItemAtIndexPath:v16];
    [v21 frame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    if (selfCopy->_hasCompletedInitialDisplay && (v35.origin.x = v23, v35.origin.y = v25, v35.size.width = v27, v35.size.height = v29, !CGRectEqualToRect(v35, *MEMORY[0x1E695F058])))
    {
      [(UIKeyboardEmojiAndStickerCollectionInputView *)selfCopy updateToIndexPath:v16];
      unavailableLaunchPath = [(UIKeyboardEmojiKeyView *)selfCopy emojiKeyManager];
      [unavailableLaunchPath reloadCategoryForIndexPath:v16 withSender:selfCopy];
    }

    else
    {
      v30 = v16;
      unavailableLaunchPath = selfCopy->_unavailableLaunchPath;
      selfCopy->_unavailableLaunchPath = v30;
    }
  }

  window2 = [(UIView *)selfCopy window];
  if (!window2)
  {
    selfCopy = 0;
  }

  v33 = +[UIKeyboardMediaController sharedKeyboardMediaController];
  [v33 setDelegate:selfCopy];
}

- (void)updateToCategory:(int64_t)category
{
  hitTestResponder = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
  [hitTestResponder deactivateActiveKey];

  [(UIKeyboardEmojiAndStickerCollectionInputView *)self resetSelectionIfNeeded];
  category = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
  categoryType = [category categoryType];

  if (categoryType == category)
  {
    if (category)
    {
      v8 = 1;
    }

    else
    {
      category2 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
      v8 = [category2 lastVisibleFirstEmojiIndex] != 1 || self->_isDraggingInputView;
    }

    category3 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
    [category3 setLastVisibleFirstEmojiIndex:v8];

    category4 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
  }

  else
  {
    v49 = [UIKeyboardEmojiCategory categoryForType:category];
    emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
    [v49 setLastVisibleFirstEmojiIndex:{objc_msgSend(emojiKeyManager, "lastVisibleFirstEmojiIndexforCategory:", v49)}];

    if (!category && ![v49 lastVisibleFirstEmojiIndex])
    {
      [v49 setLastVisibleFirstEmojiIndex:1];
    }

    [(UIKeyboardEmojiAndStickerCollectionInputView *)self setCategory:v49];
    category5 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
    v8 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self indexForPrettyCategoryDisplay:category5];

    category4 = v49;
  }

  v50 = category4;
  v14 = +[UIKeyboardEmojiCategory categoryIndexForCategoryType:](UIKeyboardEmojiCategory, "categoryIndexForCategoryType:", [category4 categoryType]);
  collectionView = self->_collectionView;
  v16 = [MEMORY[0x1E696AC88] indexPathForItem:v8 inSection:v14];
  v17 = [(UICollectionView *)collectionView layoutAttributesForItemAtIndexPath:v16];
  [v17 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  hasVerticalScrolling = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hasVerticalScrolling];
  v27 = v19;
  v28 = v21;
  v29 = v23;
  v30 = v25;
  if (hasVerticalScrolling)
  {
    MinY = CGRectGetMinY(*&v27);
    [(UIKeyboardEmojiAndStickerCollectionInputView *)self categoryHeaderHeight];
    v33 = MinY - v32;
    emojiGraphicsTraits = [(UIKeyboardEmojiAndStickerCollectionView *)self->_collectionView emojiGraphicsTraits];
    [emojiGraphicsTraits sectionOffset];
    v36 = v33 - v35;

    [(UIScrollView *)self->_collectionView contentOffset];
    v38 = v37;
  }

  else
  {
    MinX = CGRectGetMinX(*&v27);
    emojiGraphicsTraits2 = [(UIKeyboardEmojiAndStickerCollectionView *)self->_collectionView emojiGraphicsTraits];
    [emojiGraphicsTraits2 inputViewLeftMostPadding];
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
  category6 = [(UIKeyboardEmojiAndStickerCollectionInputView *)self category];
  emojiKeyManager2 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  [emojiKeyManager2 setLastViewedCategory:category6];
}

- (void)updateToIndexPath:(id)path
{
  pathCopy = path;
  [(UIView *)self effectiveUserInterfaceLayoutDirection];
  if (-[UIKeyboardEmojiAndStickerCollectionInputView isEmojiCategory:](self, "isEmojiCategory:", [pathCopy section]) || -[UIKeyboardEmojiAndStickerCollectionInputView isRecentCategory:](self, "isRecentCategory:", objc_msgSend(pathCopy, "section")))
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

  [(UIKeyboardEmojiAndStickerCollectionInputView *)self targetRectForIndexPath:pathCopy atScrollPosition:v5];
  [(UIScrollView *)self->_collectionView scrollRectToVisible:0 animated:?];
  self->_currentSection = [pathCopy section];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self updateLastSeenItemForIndexPath:pathCopy];
}

- (CGRect)targetRectForIndexPath:(id)path atScrollPosition:(unint64_t)position
{
  pathCopy = path;
  v7 = [(UICollectionView *)self->_collectionView layoutAttributesForItemAtIndexPath:pathCopy];
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
    -[UIKeyboardEmojiAndStickerCollectionInputView targetRectForSectionIndex:](self, "targetRectForSectionIndex:", [pathCopy section]);
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  else
  {
    hasVerticalScrolling = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hasVerticalScrolling];
    v24 = v9;
    v25 = v11;
    v26 = v13;
    v27 = v15;
    if (hasVerticalScrolling)
    {
      MinY = CGRectGetMinY(*&v24);
      emojiGraphicsTraits = [(UIKeyboardEmojiAndStickerCollectionView *)self->_collectionView emojiGraphicsTraits];
      [emojiGraphicsTraits sectionOffset];
      v20 = MinY - v30;

      [(UIScrollView *)self->_collectionView contentOffset];
      v18 = v31;
    }

    else
    {
      if (position == 32)
      {
        MaxX = CGRectGetMaxX(*&v24);
        emojiGraphicsTraits2 = [(UIKeyboardEmojiAndStickerCollectionView *)self->_collectionView emojiGraphicsTraits];
        [emojiGraphicsTraits2 inputViewRightMostPadding];
        v35 = MaxX + v34;
        [(UIView *)self->_collectionView bounds];
        v37 = v35 - v36;
      }

      else
      {
        MinX = CGRectGetMinX(*&v24);
        emojiGraphicsTraits2 = [(UIKeyboardEmojiAndStickerCollectionView *)self->_collectionView emojiGraphicsTraits];
        [emojiGraphicsTraits2 inputViewLeftMostPadding];
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

- (CGRect)targetRectForSectionIndex:(int64_t)index
{
  collectionViewLayout = [(UICollectionView *)self->_collectionView collectionViewLayout];
  if (objc_opt_respondsToSelector())
  {
    [collectionViewLayout targetRectForSectionIndex:index];
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

- (void)updateOffsetForSearchResultsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  hitTestResponder = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hitTestResponder];
  [hitTestResponder deactivateActiveKey];

  [(UIKeyboardEmojiAndStickerCollectionInputView *)self resetSelectionIfNeeded];
  if ([(UIView *)self effectiveUserInterfaceLayoutDirection]== UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v6 = 32;
  }

  else
  {
    v6 = 8;
  }

  hasVerticalScrolling = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hasVerticalScrolling];
  collectionView = self->_collectionView;
  recentsIndexPath = [(UIKeyboardEmojiAndStickerCollectionInputView *)self recentsIndexPath];
  [(UICollectionView *)collectionView scrollToItemAtIndexPath:recentsIndexPath atScrollPosition:v6 | hasVerticalScrolling animated:animatedCopy];
}

- (double)pointInScrollingDirection:(CGPoint)direction
{
  y = direction.y;
  x = direction.x;
  if ([(UIKeyboardEmojiAndStickerCollectionInputView *)self hasVerticalScrolling])
  {
    return y;
  }

  else
  {
    return x;
  }
}

- (double)distanceInScrollingDirection:(CGSize)direction
{
  height = direction.height;
  width = direction.width;
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
  hasVerticalScrolling = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hasVerticalScrolling];
  emojiGraphicsTraits = self->_emojiGraphicsTraits;
  if (hasVerticalScrolling)
  {

    [(UIKeyboardEmojiGraphicsTraits *)emojiGraphicsTraits bottomPadding];
  }

  else
  {

    [(UIKeyboardEmojiGraphicsTraits *)emojiGraphicsTraits inputViewRightMostPadding];
  }

  return result;
}

- (int64_t)updateToCategoryWithOffsetPercentage:(double)percentage
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
  v16 = v15 * 0.5 * round(ceil(v12 / (v15 * 0.5)) * percentage);
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self emojiKeyWidth];
  v18 = v17;
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits columnOffset];
  [(UIKeyboardEmojiAndStickerCollectionInputView *)self snappedXOffsetForOffset:1 scrubbing:(v18 + v19 + v19) * round(v16 / (v18 + v19 + v19))];
  v21 = v8 + v20;
  hasVerticalScrolling = [(UIKeyboardEmojiAndStickerCollectionInputView *)self hasVerticalScrolling];
  [(UIScrollView *)self->_collectionView contentOffset];
  if (hasVerticalScrolling)
  {
    v25 = v23;
  }

  else
  {
    v25 = v21;
  }

  if (!hasVerticalScrolling)
  {
    v21 = v24;
  }

  collectionView = self->_collectionView;
  [(UIView *)collectionView bounds];
  v28 = v27;
  [(UIView *)self->_collectionView bounds];
  [(UIScrollView *)collectionView scrollRectToVisible:0 animated:v25, v21, v28];
  indexPathsForVisibleItems = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
  v30 = [indexPathsForVisibleItems sortedArrayUsingSelector:sel_compare_];

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