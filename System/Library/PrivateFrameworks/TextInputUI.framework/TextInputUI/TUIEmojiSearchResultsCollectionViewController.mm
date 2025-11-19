@interface TUIEmojiSearchResultsCollectionViewController
+ (id)emojiTextAttributes;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (TUIEmojiSearchResultsCollectionViewController)init;
- (TUIEmojiSearchResultsCollectionViewControllerDelegate)delegate;
- (id)_userPreferredEmojiStringVariantForToken:(id)a3;
- (id)configuredEmojiCollectionViewCellForCollectionView:(id)a3 atIndexPath:(id)a4 forEmojiString:(id)a5;
- (void)_didRecognizeLongPressGesture:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4;
- (void)resetScrollPositionAnimated:(BOOL)a3;
- (void)setCellHighlightFrozen:(BOOL)a3;
- (void)setDisplayedEmojis:(id)a3 verbatimSkinTones:(BOOL)a4 animated:(BOOL)a5;
- (void)setDisplayingNoResultsLabel:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation TUIEmojiSearchResultsCollectionViewController

- (TUIEmojiSearchResultsCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)collectionView:(id)a3 didUnhighlightItemAtIndexPath:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(TUIEmojiSearchResultsCollectionViewController *)self isCellHighlightFrozen])
  {
    v7 = [v8 cellForItemAtIndexPath:v6];
    [v7 setHighlighted:1];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v11 = a4;
  v5 = [(TUIEmojiSearchResultsCollectionViewController *)self dataSource];
  v6 = [v5 itemIdentifierForIndexPath:v11];

  v7 = -[NSArray objectAtIndex:](self->_displayedEmojis, "objectAtIndex:", [v6 unsignedIntegerValue]);
  v8 = [v7 string];
  if (!self->_displayingVerbatimResults)
  {
    v9 = [(TUIEmojiSearchResultsCollectionViewController *)self _userPreferredEmojiStringVariantForToken:v7];

    v8 = v9;
  }

  v10 = [(TUIEmojiSearchResultsCollectionViewController *)self delegate];
  [v10 emojiSearchResultsController:self didSelectEmoji:v8 indexPath:v11];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
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

  v6 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
  [v6 bounds];
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

- (void)_didRecognizeLongPressGesture:(id)a3
{
  v4 = a3;
  v5 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
  v27 = [v10 indexPathForItemAtPoint:{v7, v9}];

  if (v27 && [(TUIEmojiSearchResultsCollectionViewController *)self _isSelectableEmojiTokenAtIndexPath:v27])
  {
    v11 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v27];
    v12 = -[NSArray objectAtIndex:](self->_displayedEmojis, "objectAtIndex:", [v11 unsignedIntegerValue]);
    if ([v12 supportsSkinToneVariants])
    {
      v13 = MEMORY[0x1E699BB10];
      v14 = [v12 string];
      v15 = [v13 _baseStringForEmojiString:v14];

      if (([MEMORY[0x1E699BAC8] _isCoupleMultiSkinToneEmoji:v15] & 1) == 0)
      {
        v16 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
        v17 = [v16 layoutAttributesForItemAtIndexPath:v27];
        [v17 frame];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        v26 = [(TUIEmojiSearchResultsCollectionViewController *)self delegate];
        [v26 emojiSearchResultsController:self didRequestVariantSelectorForEmojiToken:v12 fromRect:{v19, v21, v23, v25}];
      }
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v7.receiver = self;
  v7.super_class = TUIEmojiSearchResultsCollectionViewController;
  v5 = a4;
  [(TUIEmojiSearchResultsCollectionViewController *)&v7 viewDidLayoutSubviews];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __100__TUIEmojiSearchResultsCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v6[3] = &unk_1E72D8008;
  v6[4] = self;
  [v5 animateAlongsideTransition:v6 completion:0];
}

void __100__TUIEmojiSearchResultsCollectionViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) flowLayout];
  [v1 invalidateLayout];
}

- (void)setCellHighlightFrozen:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  self->_cellHighlightFrozen = a3;
  if (!a3)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
    v4 = [v3 visibleCells];

    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * i) setHighlighted:0];
        }

        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)resetScrollPositionAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
  [v4 setContentOffset:v3 animated:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
}

- (void)setDisplayingNoResultsLabel:(BOOL)a3 animated:(BOOL)a4
{
  v33[2] = *MEMORY[0x1E69E9840];
  if (self->_displayingNoResultsLabel != a3)
  {
    v4 = a4;
    v5 = a3;
    self->_displayingNoResultsLabel = a3;
    if (a3 && !self->_noResultsLabel)
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

      v14 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
      v15 = [v14 superview];
      v16 = self->_noResultsLabel;
      v17 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
      [v15 insertSubview:v16 belowSubview:v17];

      v27 = MEMORY[0x1E696ACD8];
      v29 = [(UILabel *)self->_noResultsLabel centerXAnchor];
      v30 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
      v28 = [v30 centerXAnchor];
      v18 = [v29 constraintEqualToAnchor:v28];
      v33[0] = v18;
      v19 = [(UILabel *)self->_noResultsLabel centerYAnchor];
      v20 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
      v21 = [v20 centerYAnchor];
      v22 = [v19 constraintEqualToAnchor:v21];
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
    v32 = v5;
    v24 = _Block_copy(aBlock);
    v25 = v24;
    if (v4)
    {
      v26 = 0.2;
      if (v5)
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

- (void)setDisplayedEmojis:(id)a3 verbatimSkinTones:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  self->_animatingCellUpdates = v5;
  self->_animationBeginOffset = -1;
  self->_displayingVerbatimResults = a4;
  v9 = objc_alloc_init(MEMORY[0x1E69955A0]);
  [v9 appendSectionsWithIdentifiers:&unk_1F03D8F00];
  v10 = MEMORY[0x1E695DF70];
  v11 = v8;
  v12 = [v10 array];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __AsIdentifiers_block_invoke;
  v38[3] = &unk_1E72D2AA8;
  v39 = v12;
  v13 = v12;
  [(NSArray *)v11 enumerateObjectsUsingBlock:v38];

  [v9 appendItemsWithIdentifiers:v13 intoSectionWithIdentifier:&unk_1F03D8BE8];
  if (self->_placeholderIdentifiers)
  {
    [v9 deleteItemsWithIdentifiers:?];
    placeholderIdentifiers = self->_placeholderIdentifiers;
    self->_placeholderIdentifiers = 0;
  }

  v15 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
  v16 = [v15 visibleCells];
  v17 = [v16 count];
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

  v24 = [(TUIEmojiSearchResultsCollectionViewController *)self dataSource];
  [v24 applySnapshotUsingReloadData:v9];

  [(TUIEmojiSearchResultsCollectionViewController *)self setDisplayingNoResultsLabel:[(NSArray *)v23 count]== 0 animated:v5];
  v25 = [(NSArray *)v23 count];

  self->_lastAnimatedCellCount = v25;
  self->_animatingCellUpdates = 0;
  v26 = [(TUIEmojiSearchResultsCollectionViewController *)self flowLayout];
  [v26 collectionViewContentSize];
  v28 = v27;
  v30 = v29;

  if (v28 > 0.0)
  {
    v31 = [(TUIEmojiSearchResultsCollectionViewController *)self flowLayout];
    [v31 minimumLineSpacing];
    v33 = v32;
    v34 = [(TUIEmojiSearchResultsCollectionViewController *)self flowLayout];
    [v34 itemSize];
    v36 = v28 - (v33 + v35) * v18;

    v37 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
    [v37 setContentSize:{v36, v30}];
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
    v5 = [(TUIEmojiSearchResultsCollectionViewController *)self collectionView];
    [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:v4];
  }
}

- (id)configuredEmojiCollectionViewCellForCollectionView:(id)a3 atIndexPath:(id)a4 forEmojiString:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  if ([v9 integerValue] < 0)
  {
    v11 = 0;
    v16 = 0;
  }

  else
  {
    v11 = -[NSArray objectAtIndex:](self->_displayedEmojis, "objectAtIndex:", [v9 unsignedIntegerValue]);
    v12 = [v11 string];
    if (!self->_displayingVerbatimResults)
    {
      v13 = [(TUIEmojiSearchResultsCollectionViewController *)self _userPreferredEmojiStringVariantForToken:v11];

      v12 = v13;
    }

    v14 = objc_alloc(MEMORY[0x1E696AAB0]);
    v15 = +[TUIEmojiSearchResultsCollectionViewController emojiTextAttributes];
    v16 = [v14 initWithString:v12 attributes:v15];
  }

  v17 = [v8 row];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"emojistr__%lu", v17 % 0x14];
  v19 = [v10 dequeueReusableCellWithReuseIdentifier:v18 forIndexPath:v8];

  if ([v8 row] >= self->_lastAnimatedCellCount)
  {
    [v19 setDisplayedEmojiString:0];
  }

  if (!self->_animatingCellUpdates)
  {
    v23 = [v8 row];
    goto LABEL_13;
  }

  v20 = [v19 displayedEmojiString];
  if ([v20 length])
  {
    v21 = [v19 displayedEmojiString];
    v22 = [v16 isEqualToAttributedString:v21];

    v23 = [v8 row];
    if ((v22 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_13:
    v24 = 0;
    goto LABEL_18;
  }

  v23 = [v8 row];
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

- (id)_userPreferredEmojiStringVariantForToken:(id)a3
{
  v3 = MEMORY[0x1E69DCBD8];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v4 string];

  v7 = [v5 lastUsedVariantEmojiForEmojiString:v6];

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
    v7 = [(TUIEmojiSearchResultsCollectionViewController *)v5 collectionView];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __53__TUIEmojiSearchResultsCollectionViewController_init__block_invoke;
    v23[3] = &unk_1E72D2A80;
    v8 = v5;
    v24 = v8;
    v9 = [v6 initWithCollectionView:v7 cellProvider:v23];
    [(TUIEmojiSearchResultsCollectionViewController *)v8 setDataSource:v9];

    v10 = [(TUIEmojiSearchResultsCollectionViewController *)v8 dataSource];
    v11 = [v10 snapshot];

    [v11 appendSectionsWithIdentifiers:&unk_1F03D8EE8];
    v12 = [(TUIEmojiSearchResultsCollectionViewController *)v8 dataSource];
    [v12 applySnapshotUsingReloadData:v11];

    v13 = [MEMORY[0x1E69DC888] clearColor];
    v14 = [(TUIEmojiSearchResultsCollectionViewController *)v8 collectionView];
    [v14 setBackgroundColor:v13];

    v15 = [(TUIEmojiSearchResultsCollectionViewController *)v8 collectionView];
    [v15 setShowsHorizontalScrollIndicator:0];

    v16 = [(TUIEmojiSearchResultsCollectionViewController *)v8 collectionView];
    [v16 setShowsVerticalScrollIndicator:0];

    v17 = [(TUIEmojiSearchResultsCollectionViewController *)v8 collectionView];
    [v17 setDelegate:v8];

    [(UICollectionViewFlowLayout *)v3 setScrollDirection:1];
    [(UICollectionViewFlowLayout *)v3 setSectionInsetReference:2];
    v18 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v8 action:sel__didRecognizeLongPressGesture_];
    [(TUIEmojiSearchResultsCollectionViewController *)v8 setLongPressGestureRecognizer:v18];

    v19 = [(TUIEmojiSearchResultsCollectionViewController *)v8 collectionView];
    v20 = [(TUIEmojiSearchResultsCollectionViewController *)v8 longPressGestureRecognizer];
    [v19 addGestureRecognizer:v20];

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