@interface UIKeyboardEmojiSplitCharacterPicker
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (UIKeyboardEmojiSplitCharacterPicker)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5;
- (double)snappedYOffsetForOffset:(double)a3;
- (id)category;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)updateToCategory:(int64_t)a3;
@end

@implementation UIKeyboardEmojiSplitCharacterPicker

- (UIKeyboardEmojiSplitCharacterPicker)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v43.receiver = self;
  v43.super_class = UIKeyboardEmojiSplitCharacterPicker;
  v13 = [(UIView *)&v43 initWithFrame:x, y, width, height];
  if (v13)
  {
    v14 = +[UIKeyboardImpl keyboardScreen];
    v15 = +[UIKeyboard activeKeyboard];
    v16 = +[UIKBScreenTraits traitsWithScreen:orientation:](UIKBScreenTraits, "traitsWithScreen:orientation:", v14, [v15 interfaceOrientation]);

    v17 = [UIKeyboardEmojiGraphicsTraits emojiGraphicsTraitsWithScreenTraits:v16];
    emojiGraphicsTraits = v13->super._emojiGraphicsTraits;
    v13->super._emojiGraphicsTraits = v17;

    v19 = +[UIColor clearColor];
    [(UIView *)v13 setBackgroundColor:v19];

    [(UIView *)v13 setOpaque:0];
    [(UIKBKeyView *)v13 updateForKeyplane:v11 key:v12];
    v13->super._isDraggingInputView = 0;
    v20 = [(UIKeyboardEmojiKeyView *)v13 emojiKeyManager];
    v21 = [v20 lastViewedCategory];
    objc_storeWeak(&v13->_category, v21);

    v22 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
    v23 = MEMORY[0x1E696AD98];
    WeakRetained = objc_loadWeakRetained(&v13->_category);
    v25 = [v23 numberWithInteger:{objc_msgSend(WeakRetained, "categoryType")}];
    v26 = [v22 containsObject:v25];

    if ((v26 & 1) == 0)
    {
      v27 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
      v28 = [v27 firstObject];
      v29 = [v28 integerValue];

      v30 = [UIKeyboardEmojiCategory categoryForType:v29];
      objc_storeWeak(&v13->_category, v30);
    }

    v31 = objc_alloc_init(UICollectionViewFlowLayout);
    flowLayout = v13->super._flowLayout;
    v13->super._flowLayout = v31;

    [(UICollectionViewFlowLayout *)v13->super._flowLayout setScrollDirection:0];
    v33 = v13->super._flowLayout;
    [(UIKeyboardEmojiGraphicsTraits *)v13->super._emojiGraphicsTraits emojiKeyWidth];
    v35 = v34;
    [(UIKeyboardEmojiGraphicsTraits *)v13->super._emojiGraphicsTraits emojiKeyWidth];
    [(UICollectionViewFlowLayout *)v33 setItemSize:v35, v36];
    [(UICollectionViewFlowLayout *)v13->super._flowLayout setMinimumInteritemSpacing:0.0];
    [(UICollectionViewFlowLayout *)v13->super._flowLayout setMinimumLineSpacing:0.0];
    v37 = [UIKeyboardEmojiCollectionView alloc];
    [(UIView *)v13 bounds];
    v38 = [(UIKeyboardEmojiCollectionView *)v37 initWithFrame:v13->super._flowLayout collectionViewLayout:v13->super._emojiGraphicsTraits emojiGraphicsTraits:?];
    collectionView = v13->super._collectionView;
    v13->super._collectionView = v38;

    v40 = v13->super._collectionView;
    v41 = +[UIColor clearColor];
    [(UICollectionView *)v40 setBackgroundColor:v41];

    [(UIView *)v13->super._collectionView setAutoresizingMask:18];
    [(UICollectionView *)v13->super._collectionView setDelegate:v13];
    [(UICollectionView *)v13->super._collectionView setDataSource:v13];
    [(UIScrollView *)v13->super._collectionView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v13->super._collectionView setShowsVerticalScrollIndicator:0];
    [(UICollectionView *)v13->super._collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"UICollectionElementKindSectionHeader" withReuseIdentifier:@"kEmojiCategoryTitleIdentifier"];
    [(UICollectionView *)v13->super._collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kEmojiCellIdentifier"];
    [(UIView *)v13 addSubview:v13->super._collectionView];
  }

  return v13;
}

- (void)dealloc
{
  self->super._isDraggingInputView = 0;
  v2.receiver = self;
  v2.super_class = UIKeyboardEmojiSplitCharacterPicker;
  [(UIKeyboardEmojiCollectionInputView *)&v2 dealloc];
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = [(UICollectionView *)self->super._collectionView numberOfItemsInSection:0, a4];
  if ((a5 || v7 <= 0) && (a5 != 1 || v7))
  {
    v12 = [(UICollectionView *)self->super._collectionView numberOfSections]- 1;
    emojiGraphicsTraits = self->super._emojiGraphicsTraits;
    if (v12 == a5)
    {
      [(UIKeyboardEmojiGraphicsTraits *)emojiGraphicsTraits inputViewRightMostPadding];
    }

    else
    {
      [(UIKeyboardEmojiGraphicsTraits *)emojiGraphicsTraits sectionOffset];
    }

    v11 = v14;
    v9 = 0.0;
  }

  else
  {
    [(UIKeyboardEmojiGraphicsTraits *)self->super._emojiGraphicsTraits inputViewLeftMostPadding];
    v9 = v8;
    [(UIKeyboardEmojiGraphicsTraits *)self->super._emojiGraphicsTraits sectionOffset];
    v11 = v10;
  }

  v15 = 8.0;
  v16 = 8.0;
  v17 = v9;
  result.right = v16;
  result.bottom = v11;
  result.left = v15;
  result.top = v17;
  return result;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  self->super._isDraggingInputView = 1;
  [(UIKeyboardEmojiSplitCharacterPicker *)self snappedYOffsetForOffset:a3, a5->y, a4.y];
  a5->y = v6;
}

- (double)snappedYOffsetForOffset:(double)a3
{
  [(UIScrollView *)self->super._collectionView contentSize];
  v6 = v5;
  [(UIView *)self->super._collectionView bounds];
  v8 = v6 - v7;
  v9 = [(UIKeyboardEmojiCollectionView *)self->super._collectionView emojiGraphicsTraits];
  [v9 inputViewRightMostPadding];
  v11 = v8 - v10;

  collectionView = self->super._collectionView;
  if (v11 >= a3)
  {
    v20 = [(UIKeyboardEmojiCollectionView *)collectionView emojiGraphicsTraits];
    [v20 inputViewLeftMostPadding];
    v22 = v21;

    if (v22 <= a3)
    {
      v40 = 0;
      v41 = &v40;
      v42 = 0x3032000000;
      v43 = __Block_byref_object_copy__130;
      v44 = __Block_byref_object_dispose__130;
      v45 = 0;
      [(UIView *)self->super._collectionView bounds];
      v25 = v24;
      v26 = [(UIKeyboardEmojiCollectionView *)self->super._collectionView emojiGraphicsTraits];
      [v26 emojiKeyWidth];
      v28 = v27;
      v29 = [(UIKeyboardEmojiCollectionView *)self->super._collectionView emojiGraphicsTraits];
      [v29 columnOffset];
      v31 = v30;

      v32 = [(UICollectionView *)self->super._collectionView collectionViewLayout];
      v33 = [v32 layoutAttributesForElementsInRect:{0.0, a3, v25, v28 + v31}];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __63__UIKeyboardEmojiSplitCharacterPicker_snappedYOffsetForOffset___block_invoke;
      v39[3] = &unk_1E71160D8;
      v39[4] = &v40;
      [v33 enumerateObjectsWithOptions:2 usingBlock:v39];

      v34 = [(UICollectionView *)self->super._collectionView layoutAttributesForItemAtIndexPath:v41[5]];
      [v34 frame];
      v36 = v35;
      [(UIKeyboardEmojiGraphicsTraits *)self->super._emojiGraphicsTraits columnOffset];
      v19 = v36 - v37;

      _Block_object_dispose(&v40, 8);
      return v19;
    }

    v17 = [(UIKeyboardEmojiCollectionView *)self->super._collectionView emojiGraphicsTraits];
    [v17 inputViewLeftMostPadding];
    v19 = -v23;
  }

  else
  {
    [(UIScrollView *)collectionView contentSize];
    v14 = v13;
    [(UIView *)self->super._collectionView bounds];
    v16 = v14 - v15;
    v17 = [(UIKeyboardEmojiCollectionView *)self->super._collectionView emojiGraphicsTraits];
    [v17 inputViewRightMostPadding];
    v19 = v16 + v18;
  }

  return v19;
}

void __63__UIKeyboardEmojiSplitCharacterPicker_snappedYOffsetForOffset___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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

- (void)didMoveToWindow
{
  v22.receiver = self;
  v22.super_class = UIKeyboardEmojiSplitCharacterPicker;
  [(UIKeyboardEmojiCollectionInputView *)&v22 didMoveToWindow];
  WeakRetained = objc_loadWeakRetained(&self->_category);
  v4 = +[UIKeyboardEmojiCategory categoryIndexForCategoryType:](UIKeyboardEmojiCategory, "categoryIndexForCategoryType:", [WeakRetained categoryType]);

  collectionView = self->super._collectionView;
  v6 = MEMORY[0x1E696AC88];
  v7 = objc_loadWeakRetained(&self->_category);
  v8 = [v6 indexPathForItem:-[UIKeyboardEmojiCollectionInputView indexForPrettyCategoryDisplay:](self inSection:{"indexForPrettyCategoryDisplay:", v7), v4}];
  v9 = [(UICollectionView *)collectionView layoutAttributesForItemAtIndexPath:v8];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = self->super._collectionView;
  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  MinY = CGRectGetMinY(v23);
  v20 = [(UIKeyboardEmojiCollectionView *)self->super._collectionView emojiGraphicsTraits];
  [v20 inputViewLeftMostPadding];
  [(UICollectionView *)v18 setContentOffset:0 animated:0.0, MinY - v21];

  [(UIView *)self->super._collectionView layoutIfNeeded];
}

- (void)updateToCategory:(int64_t)a3
{
  v5 = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
  [v5 deactivateActiveKey];

  if ([(UICollectionView *)self->super._collectionView numberOfItemsInSection:[UIKeyboardEmojiCategory categoryIndexForCategoryType:a3]]>= 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_category);
    v7 = [WeakRetained categoryType];

    if (v7 == a3)
    {
      v8 = objc_loadWeakRetained(&self->_category);
      [v8 setLastVisibleFirstEmojiIndex:0];

      obj = objc_loadWeakRetained(&self->_category);
      v9 = 0;
    }

    else
    {
      obj = [UIKeyboardEmojiCategory categoryForType:a3];
      v10 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
      [obj setLastVisibleFirstEmojiIndex:{objc_msgSend(v10, "lastVisibleFirstEmojiIndexforCategory:", obj)}];

      v11 = objc_storeWeak(&self->_category, obj);
      v9 = [(UIKeyboardEmojiCollectionInputView *)self indexForPrettyCategoryDisplay:obj];
    }

    v12 = objc_loadWeakRetained(&self->_category);
    v13 = +[UIKeyboardEmojiCategory categoryIndexForCategoryType:](UIKeyboardEmojiCategory, "categoryIndexForCategoryType:", [v12 categoryType]);

    collectionView = self->super._collectionView;
    v15 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:v13];
    v16 = [(UICollectionView *)collectionView layoutAttributesForItemAtIndexPath:v15];
    [v16 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = self->super._collectionView;
    [(UIScrollView *)v25 contentOffset];
    v27 = v26;
    v34.origin.x = v18;
    v34.origin.y = v20;
    v34.size.width = v22;
    v34.size.height = v24;
    MinY = CGRectGetMinY(v34);
    v29 = [(UIKeyboardEmojiCollectionView *)self->super._collectionView emojiGraphicsTraits];
    [v29 inputViewLeftMostPadding];
    [(UICollectionView *)v25 setContentOffset:0 animated:v27, MinY - v30];

    v31 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
    [v31 setLastViewedCategory:obj];
  }
}

- (id)category
{
  WeakRetained = objc_loadWeakRetained(&self->_category);

  return WeakRetained;
}

@end