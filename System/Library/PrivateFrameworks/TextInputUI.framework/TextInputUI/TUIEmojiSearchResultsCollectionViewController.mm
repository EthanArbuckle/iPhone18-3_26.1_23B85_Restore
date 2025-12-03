@interface TUIEmojiSearchResultsCollectionViewController
+ (id)emojiTextAttributes;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (TUIEmojiSearchResultsCollectionViewController)init;
- (TUIEmojiSearchResultsCollectionViewControllerDelegate)delegate;
- (id)_userPreferredEmojiStringVariantForToken:(id)token;
- (id)configuredEmojiCollectionViewCellForCollectionView:(id)view atIndexPath:(id)path forEmojiString:(id)string;
- (void)_didRecognizeLongPressGesture:(id)gesture;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path;
- (void)resetScrollPositionAnimated:(BOOL)animated;
- (void)setCellHighlightFrozen:(BOOL)frozen;
- (void)setDisplayedEmojis:(id)emojis verbatimSkinTones:(BOOL)tones animated:(BOOL)animated;
- (void)setDisplayingNoResultsLabel:(BOOL)label animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation TUIEmojiSearchResultsCollectionViewController

- (TUIEmojiSearchResultsCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)collectionView:(id)view didUnhighlightItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(TUIEmojiSearchResultsCollectionViewController *)self isCellHighlightFrozen])
  {
    v7 = [viewCopy cellForItemAtIndexPath:pathCopy];
    [v7 setHighlighted:1];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(TUIEmojiSearchResultsCollectionViewController *)self dataSource];
  v6 = [dataSource itemIdentifierForIndexPath:pathCopy];

  v7 = -[NSArray objectAtIndex:](self->_displayedEmojis, "objectAtIndex:", [v6 unsignedIntegerValue]);
  string = [v7 string];
  if (!self->_displayingVerbatimResults)
  {
    v9 = [(TUIEmojiSearchResultsCollectionViewController *)self _userPreferredEmojiStringVariantForToken:v7];

    string = v9;
  }

  delegate = [(TUIEmojiSearchResultsCollectionViewController *)self delegate];
  [delegate emojiSearchResultsController:self didSelectEmoji:string indexPath:pathCopy];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__TUIEmojiSearchResultsCollectionViewController_collectionView_layout_sizeForItemAtIndexPath___block_invoke;
  block[3] = &unk_1E72D83A0;
  block[4] = self;
  if (collectionView_layout_sizeForItemAtIndexPath__onceToken != -1)
  {
    dispatch_once(&collectionView_layout_sizeForItemAtIndexPath__onceToken, block);
  }

  collectionView = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
  [collectionView bounds];
  Height = CGRectGetHeight(v12);

  v8 = *&collectionView_layout_sizeForItemAtIndexPath__emojiWidth;
  v9 = Height;
  result.height = v9;
  result.width = v8;
  return result;
}

void __94__TUIEmojiSearchResultsCollectionViewController_collectionView_layout_sizeForItemAtIndexPath___block_invoke()
{
  v1 = [objc_opt_class() emojiTextAttributes];
  [@"😀" sizeWithAttributes:v1];
  collectionView_layout_sizeForItemAtIndexPath__emojiWidth = ceil(v0);
}

- (void)_didRecognizeLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  collectionView = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
  [gestureCopy locationInView:collectionView];
  v7 = v6;
  v9 = v8;

  collectionView2 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
  v27 = [collectionView2 indexPathForItemAtPoint:{v7, v9}];

  if (v27 && [(TUIEmojiSearchResultsCollectionViewController *)self _isSelectableEmojiTokenAtIndexPath:v27])
  {
    v11 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v27];
    v12 = -[NSArray objectAtIndex:](self->_displayedEmojis, "objectAtIndex:", [v11 unsignedIntegerValue]);
    if ([v12 supportsSkinToneVariants])
    {
      v13 = MEMORY[0x1E699BB10];
      string = [v12 string];
      v15 = [v13 _baseStringForEmojiString:string];

      if (([MEMORY[0x1E699BAC8] _isCoupleMultiSkinToneEmoji:v15] & 1) == 0)
      {
        collectionView3 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
        v17 = [collectionView3 layoutAttributesForItemAtIndexPath:v27];
        [v17 frame];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        delegate = [(TUIEmojiSearchResultsCollectionViewController *)self delegate];
        [delegate emojiSearchResultsController:self didRequestVariantSelectorForEmojiToken:v12 fromRect:{v19, v21, v23, v25}];
      }
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v7.receiver = self;
  v7.super_class = TUIEmojiSearchResultsCollectionViewController;
  coordinatorCopy = coordinator;
  [(TUIEmojiSearchResultsCollectionViewController *)&v7 viewDidLayoutSubviews];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __100__TUIEmojiSearchResultsCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v6[3] = &unk_1E72D8008;
  v6[4] = self;
  [coordinatorCopy animateAlongsideTransition:v6 completion:0];
}

void __100__TUIEmojiSearchResultsCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) flowLayout];
  [v1 invalidateLayout];
}

- (void)setCellHighlightFrozen:(BOOL)frozen
{
  v14 = *MEMORY[0x1E69E9840];
  self->_cellHighlightFrozen = frozen;
  if (!frozen)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    collectionView = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
    visibleCells = [collectionView visibleCells];

    v5 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(visibleCells);
          }

          [*(*(&v9 + 1) + 8 * i) setHighlighted:0];
        }

        v6 = [visibleCells countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)resetScrollPositionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  collectionView = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
  [collectionView setContentOffset:animatedCopy animated:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
}

- (void)setDisplayingNoResultsLabel:(BOOL)label animated:(BOOL)animated
{
  v33[2] = *MEMORY[0x1E69E9840];
  if (self->_displayingNoResultsLabel != label)
  {
    animatedCopy = animated;
    labelCopy = label;
    self->_displayingNoResultsLabel = label;
    if (label && !self->_noResultsLabel)
    {
      v7 = objc_alloc(MEMORY[0x1E69DCC10]);
      v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      noResultsLabel = self->_noResultsLabel;
      self->_noResultsLabel = v8;

      [(UILabel *)self->_noResultsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringInDeviceLanguageForKey:@"NO_RESULTS"];
      [(UILabel *)self->_noResultsLabel setText:v11];

      v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8]];
      [(UILabel *)self->_noResultsLabel setFont:v12];

      [(UILabel *)self->_noResultsLabel setTextAlignment:1];
      v13 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_1415];
      [(UILabel *)self->_noResultsLabel setTextColor:v13];

      collectionView = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
      superview = [collectionView superview];
      v16 = self->_noResultsLabel;
      collectionView2 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
      [superview insertSubview:v16 belowSubview:collectionView2];

      v27 = MEMORY[0x1E696ACD8];
      centerXAnchor = [(UILabel *)self->_noResultsLabel centerXAnchor];
      collectionView3 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
      centerXAnchor2 = [collectionView3 centerXAnchor];
      v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v33[0] = v18;
      centerYAnchor = [(UILabel *)self->_noResultsLabel centerYAnchor];
      collectionView4 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
      centerYAnchor2 = [collectionView4 centerYAnchor];
      v22 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v33[1] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
      [v27 activateConstraints:v23];

      [(UILabel *)self->_noResultsLabel setAlpha:0.0];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__TUIEmojiSearchResultsCollectionViewController_setDisplayingNoResultsLabel_animated___block_invoke_2;
    aBlock[3] = &unk_1E72D85B8;
    aBlock[4] = self;
    v32 = labelCopy;
    v24 = _Block_copy(aBlock);
    v25 = v24;
    if (animatedCopy)
    {
      v26 = 0.2;
      if (labelCopy)
      {
        v26 = 0.33;
      }

      [MEMORY[0x1E69DD250] animateWithDuration:v24 animations:v26];
    }

    else
    {
      (*(v24 + 2))(v24);
    }
  }
}

uint64_t __86__TUIEmojiSearchResultsCollectionViewController_setDisplayingNoResultsLabel_animated___block_invoke_2(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 1088) setAlpha:v1];
}

id __86__TUIEmojiSearchResultsCollectionViewController_setDisplayingNoResultsLabel_animated___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 1)
  {
    [MEMORY[0x1E69DC888] colorWithRed:0.518 green:0.553 blue:0.6 alpha:1.0];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v2 = ;

  return v2;
}

- (void)setDisplayedEmojis:(id)emojis verbatimSkinTones:(BOOL)tones animated:(BOOL)animated
{
  animatedCopy = animated;
  emojisCopy = emojis;
  self->_animatingCellUpdates = animatedCopy;
  self->_animationBeginOffset = -1;
  self->_displayingVerbatimResults = tones;
  v9 = objc_alloc_init(MEMORY[0x1E69955A0]);
  [v9 appendSectionsWithIdentifiers:&unk_1F03D8F00];
  v10 = MEMORY[0x1E695DF70];
  v11 = emojisCopy;
  array = [v10 array];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __AsIdentifiers_block_invoke;
  v38[3] = &unk_1E72D2AA8;
  v39 = array;
  v13 = array;
  [(NSArray *)v11 enumerateObjectsUsingBlock:v38];

  [v9 appendItemsWithIdentifiers:v13 intoSectionWithIdentifier:&unk_1F03D8BE8];
  if (self->_placeholderIdentifiers)
  {
    [v9 deleteItemsWithIdentifiers:?];
    placeholderIdentifiers = self->_placeholderIdentifiers;
    self->_placeholderIdentifiers = 0;
  }

  collectionView = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
  visibleCells = [collectionView visibleCells];
  v17 = [visibleCells count];
  v18 = v17 - [v9 numberOfItems];

  if (v18 >= 1)
  {
    if (AnimationPlaceholderCellIdentifiersWithCount_onceToken != -1)
    {
      dispatch_once(&AnimationPlaceholderCellIdentifiersWithCount_onceToken, &__block_literal_global_312);
    }

    if (v18 >= 0x14)
    {
      v19 = 20;
    }

    else
    {
      v19 = v18;
    }

    v20 = [AnimationPlaceholderCellIdentifiersWithCount_placeholderIdentifiers subarrayWithRange:{0, v19}];
    v21 = self->_placeholderIdentifiers;
    self->_placeholderIdentifiers = v20;

    [v9 appendItemsWithIdentifiers:self->_placeholderIdentifiers];
  }

  displayedEmojis = self->_displayedEmojis;
  self->_displayedEmojis = v11;
  v23 = v11;

  dataSource = [(TUIEmojiSearchResultsCollectionViewController *)self dataSource];
  [dataSource applySnapshotUsingReloadData:v9];

  [(TUIEmojiSearchResultsCollectionViewController *)self setDisplayingNoResultsLabel:[(NSArray *)v23 count]== 0 animated:animatedCopy];
  v25 = [(NSArray *)v23 count];

  self->_lastAnimatedCellCount = v25;
  self->_animatingCellUpdates = 0;
  flowLayout = [(TUIEmojiSearchResultsCollectionViewController *)self flowLayout];
  [flowLayout collectionViewContentSize];
  v28 = v27;
  v30 = v29;

  if (v28 > 0.0)
  {
    flowLayout2 = [(TUIEmojiSearchResultsCollectionViewController *)self flowLayout];
    [flowLayout2 minimumLineSpacing];
    v33 = v32;
    flowLayout3 = [(TUIEmojiSearchResultsCollectionViewController *)self flowLayout];
    [flowLayout3 itemSize];
    v36 = v28 - (v33 + v35) * v18;

    collectionView2 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
    [collectionView2 setContentSize:{v36, v30}];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = TUIEmojiSearchResultsCollectionViewController;
  [(TUIEmojiSearchResultsCollectionViewController *)&v6 viewDidLoad];
  for (i = 0; i != 20; ++i)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"emojistr__%lu", i];
    collectionView = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
    [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:v4];
  }
}

- (id)configuredEmojiCollectionViewCellForCollectionView:(id)view atIndexPath:(id)path forEmojiString:(id)string
{
  pathCopy = path;
  stringCopy = string;
  viewCopy = view;
  if ([stringCopy integerValue] < 0)
  {
    v11 = 0;
    v16 = 0;
  }

  else
  {
    v11 = -[NSArray objectAtIndex:](self->_displayedEmojis, "objectAtIndex:", [stringCopy unsignedIntegerValue]);
    string = [v11 string];
    if (!self->_displayingVerbatimResults)
    {
      v13 = [(TUIEmojiSearchResultsCollectionViewController *)self _userPreferredEmojiStringVariantForToken:v11];

      string = v13;
    }

    v14 = objc_alloc(MEMORY[0x1E696AAB0]);
    v15 = +[TUIEmojiSearchResultsCollectionViewController emojiTextAttributes];
    v16 = [v14 initWithString:string attributes:v15];
  }

  v17 = [pathCopy row];
  0x14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"emojistr__%lu", v17 % 0x14];
  v19 = [viewCopy dequeueReusableCellWithReuseIdentifier:0x14 forIndexPath:pathCopy];

  if ([pathCopy row] >= self->_lastAnimatedCellCount)
  {
    [v19 setDisplayedEmojiString:0];
  }

  if (!self->_animatingCellUpdates)
  {
    v23 = [pathCopy row];
    goto LABEL_13;
  }

  displayedEmojiString = [v19 displayedEmojiString];
  if ([displayedEmojiString length])
  {
    displayedEmojiString2 = [v19 displayedEmojiString];
    v22 = [v16 isEqualToAttributedString:displayedEmojiString2];

    v23 = [pathCopy row];
    if ((v22 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_13:
    v24 = 0;
    goto LABEL_18;
  }

  v23 = [pathCopy row];
LABEL_15:
  animationBeginOffset = self->_animationBeginOffset;
  if (v23 < animationBeginOffset)
  {
    self->_animationBeginOffset = v23;
    animationBeginOffset = v23;
  }

  v23 -= animationBeginOffset;
  v24 = 1;
LABEL_18:
  if (_os_feature_enabled_impl())
  {
    v26 = [v11 supportsSkinToneVariants] ^ 1;
  }

  else
  {
    v26 = 0;
  }

  [v19 setDragEnabled:v26];
  [v19 setDisplayedEmojiString:v16 animated:v24 withAnimationOffset:v23];

  return v19;
}

- (id)_userPreferredEmojiStringVariantForToken:(id)token
{
  v3 = MEMORY[0x1E69DCBD8];
  tokenCopy = token;
  sharedInstance = [v3 sharedInstance];
  string = [tokenCopy string];

  v7 = [sharedInstance lastUsedVariantEmojiForEmojiString:string];

  return v7;
}

- (TUIEmojiSearchResultsCollectionViewController)init
{
  v3 = objc_alloc_init(_InvertibleFlowLayout);
  v25.receiver = self;
  v25.super_class = TUIEmojiSearchResultsCollectionViewController;
  v4 = [(TUIEmojiSearchResultsCollectionViewController *)&v25 initWithCollectionViewLayout:v3];
  v5 = v4;
  if (v4)
  {
    [(TUIEmojiSearchResultsCollectionViewController *)v4 setFlowLayout:v3];
    v6 = objc_alloc(MEMORY[0x1E69DC820]);
    collectionView = [(TUIEmojiSearchResultsCollectionViewController *)v5 collectionView];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __53__TUIEmojiSearchResultsCollectionViewController_init__block_invoke;
    v23[3] = &unk_1E72D2A80;
    v8 = v5;
    v24 = v8;
    v9 = [v6 initWithCollectionView:collectionView cellProvider:v23];
    [(TUIEmojiSearchResultsCollectionViewController *)v8 setDataSource:v9];

    dataSource = [(TUIEmojiSearchResultsCollectionViewController *)v8 dataSource];
    snapshot = [dataSource snapshot];

    [snapshot appendSectionsWithIdentifiers:&unk_1F03D8EE8];
    dataSource2 = [(TUIEmojiSearchResultsCollectionViewController *)v8 dataSource];
    [dataSource2 applySnapshotUsingReloadData:snapshot];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    collectionView2 = [(TUIEmojiSearchResultsCollectionViewController *)v8 collectionView];
    [collectionView2 setBackgroundColor:clearColor];

    collectionView3 = [(TUIEmojiSearchResultsCollectionViewController *)v8 collectionView];
    [collectionView3 setShowsHorizontalScrollIndicator:0];

    collectionView4 = [(TUIEmojiSearchResultsCollectionViewController *)v8 collectionView];
    [collectionView4 setShowsVerticalScrollIndicator:0];

    collectionView5 = [(TUIEmojiSearchResultsCollectionViewController *)v8 collectionView];
    [collectionView5 setDelegate:v8];

    [(UICollectionViewFlowLayout *)v3 setScrollDirection:1];
    [(UICollectionViewFlowLayout *)v3 setSectionInsetReference:2];
    v18 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v8 action:sel__didRecognizeLongPressGesture_];
    [(TUIEmojiSearchResultsCollectionViewController *)v8 setLongPressGestureRecognizer:v18];

    collectionView6 = [(TUIEmojiSearchResultsCollectionViewController *)v8 collectionView];
    longPressGestureRecognizer = [(TUIEmojiSearchResultsCollectionViewController *)v8 longPressGestureRecognizer];
    [collectionView6 addGestureRecognizer:longPressGestureRecognizer];

    v8->_animationBeginOffset = -1;
    v8->_lastAnimatedCellCount = -1;
    v8->_animatingCellUpdates = 0;
    displayedEmojis = v8->_displayedEmojis;
    v8->_displayedEmojis = MEMORY[0x1E695E0F0];
  }

  return v5;
}

+ (id)emojiTextAttributes
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69DB648];
  v2 = [MEMORY[0x1E69DB878] systemFontOfSize:38.0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end