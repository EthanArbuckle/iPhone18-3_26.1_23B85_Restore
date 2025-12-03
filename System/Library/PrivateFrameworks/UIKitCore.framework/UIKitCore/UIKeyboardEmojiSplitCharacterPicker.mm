@interface UIKeyboardEmojiSplitCharacterPicker
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (UIKeyboardEmojiSplitCharacterPicker)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key;
- (double)snappedYOffsetForOffset:(double)offset;
- (id)category;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)updateToCategory:(int64_t)category;
@end

@implementation UIKeyboardEmojiSplitCharacterPicker

- (UIKeyboardEmojiSplitCharacterPicker)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  keyplaneCopy = keyplane;
  keyCopy = key;
  v43.receiver = self;
  v43.super_class = UIKeyboardEmojiSplitCharacterPicker;
  height = [(UIView *)&v43 initWithFrame:x, y, width, height];
  if (height)
  {
    v14 = +[UIKeyboardImpl keyboardScreen];
    v15 = +[UIKeyboard activeKeyboard];
    v16 = +[UIKBScreenTraits traitsWithScreen:orientation:](UIKBScreenTraits, "traitsWithScreen:orientation:", v14, [v15 interfaceOrientation]);

    v17 = [UIKeyboardEmojiGraphicsTraits emojiGraphicsTraitsWithScreenTraits:v16];
    emojiGraphicsTraits = height->super._emojiGraphicsTraits;
    height->super._emojiGraphicsTraits = v17;

    v19 = +[UIColor clearColor];
    [(UIView *)height setBackgroundColor:v19];

    [(UIView *)height setOpaque:0];
    [(UIKBKeyView *)height updateForKeyplane:keyplaneCopy key:keyCopy];
    height->super._isDraggingInputView = 0;
    emojiKeyManager = [(UIKeyboardEmojiKeyView *)height emojiKeyManager];
    lastViewedCategory = [emojiKeyManager lastViewedCategory];
    objc_storeWeak(&height->_category, lastViewedCategory);

    v22 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
    v23 = MEMORY[0x1E696AD98];
    WeakRetained = objc_loadWeakRetained(&height->_category);
    v25 = [v23 numberWithInteger:{objc_msgSend(WeakRetained, "categoryType")}];
    v26 = [v22 containsObject:v25];

    if ((v26 & 1) == 0)
    {
      v27 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
      firstObject = [v27 firstObject];
      integerValue = [firstObject integerValue];

      v30 = [UIKeyboardEmojiCategory categoryForType:integerValue];
      objc_storeWeak(&height->_category, v30);
    }

    v31 = objc_alloc_init(UICollectionViewFlowLayout);
    flowLayout = height->super._flowLayout;
    height->super._flowLayout = v31;

    [(UICollectionViewFlowLayout *)height->super._flowLayout setScrollDirection:0];
    v33 = height->super._flowLayout;
    [(UIKeyboardEmojiGraphicsTraits *)height->super._emojiGraphicsTraits emojiKeyWidth];
    v35 = v34;
    [(UIKeyboardEmojiGraphicsTraits *)height->super._emojiGraphicsTraits emojiKeyWidth];
    [(UICollectionViewFlowLayout *)v33 setItemSize:v35, v36];
    [(UICollectionViewFlowLayout *)height->super._flowLayout setMinimumInteritemSpacing:0.0];
    [(UICollectionViewFlowLayout *)height->super._flowLayout setMinimumLineSpacing:0.0];
    v37 = [UIKeyboardEmojiCollectionView alloc];
    [(UIView *)height bounds];
    v38 = [(UIKeyboardEmojiCollectionView *)v37 initWithFrame:height->super._flowLayout collectionViewLayout:height->super._emojiGraphicsTraits emojiGraphicsTraits:?];
    collectionView = height->super._collectionView;
    height->super._collectionView = v38;

    v40 = height->super._collectionView;
    v41 = +[UIColor clearColor];
    [(UICollectionView *)v40 setBackgroundColor:v41];

    [(UIView *)height->super._collectionView setAutoresizingMask:18];
    [(UICollectionView *)height->super._collectionView setDelegate:height];
    [(UICollectionView *)height->super._collectionView setDataSource:height];
    [(UIScrollView *)height->super._collectionView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)height->super._collectionView setShowsVerticalScrollIndicator:0];
    [(UICollectionView *)height->super._collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"UICollectionElementKindSectionHeader" withReuseIdentifier:@"kEmojiCategoryTitleIdentifier"];
    [(UICollectionView *)height->super._collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kEmojiCellIdentifier"];
    [(UIView *)height addSubview:height->super._collectionView];
  }

  return height;
}

- (void)dealloc
{
  self->super._isDraggingInputView = 0;
  v2.receiver = self;
  v2.super_class = UIKeyboardEmojiSplitCharacterPicker;
  [(UIKeyboardEmojiCollectionInputView *)&v2 dealloc];
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  layout = [(UICollectionView *)self->super._collectionView numberOfItemsInSection:0, layout];
  if ((index || layout <= 0) && (index != 1 || layout))
  {
    v12 = [(UICollectionView *)self->super._collectionView numberOfSections]- 1;
    emojiGraphicsTraits = self->super._emojiGraphicsTraits;
    if (v12 == index)
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

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  self->super._isDraggingInputView = 1;
  [(UIKeyboardEmojiSplitCharacterPicker *)self snappedYOffsetForOffset:dragging, offset->y, velocity.y];
  offset->y = v6;
}

- (double)snappedYOffsetForOffset:(double)offset
{
  [(UIScrollView *)self->super._collectionView contentSize];
  v6 = v5;
  [(UIView *)self->super._collectionView bounds];
  v8 = v6 - v7;
  emojiGraphicsTraits = [(UIKeyboardEmojiCollectionView *)self->super._collectionView emojiGraphicsTraits];
  [emojiGraphicsTraits inputViewRightMostPadding];
  v11 = v8 - v10;

  collectionView = self->super._collectionView;
  if (v11 >= offset)
  {
    emojiGraphicsTraits2 = [(UIKeyboardEmojiCollectionView *)collectionView emojiGraphicsTraits];
    [emojiGraphicsTraits2 inputViewLeftMostPadding];
    v22 = v21;

    if (v22 <= offset)
    {
      v40 = 0;
      v41 = &v40;
      v42 = 0x3032000000;
      v43 = __Block_byref_object_copy__130;
      v44 = __Block_byref_object_dispose__130;
      v45 = 0;
      [(UIView *)self->super._collectionView bounds];
      v25 = v24;
      emojiGraphicsTraits3 = [(UIKeyboardEmojiCollectionView *)self->super._collectionView emojiGraphicsTraits];
      [emojiGraphicsTraits3 emojiKeyWidth];
      v28 = v27;
      emojiGraphicsTraits4 = [(UIKeyboardEmojiCollectionView *)self->super._collectionView emojiGraphicsTraits];
      [emojiGraphicsTraits4 columnOffset];
      v31 = v30;

      collectionViewLayout = [(UICollectionView *)self->super._collectionView collectionViewLayout];
      v33 = [collectionViewLayout layoutAttributesForElementsInRect:{0.0, offset, v25, v28 + v31}];
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

    emojiGraphicsTraits5 = [(UIKeyboardEmojiCollectionView *)self->super._collectionView emojiGraphicsTraits];
    [emojiGraphicsTraits5 inputViewLeftMostPadding];
    v19 = -v23;
  }

  else
  {
    [(UIScrollView *)collectionView contentSize];
    v14 = v13;
    [(UIView *)self->super._collectionView bounds];
    v16 = v14 - v15;
    emojiGraphicsTraits5 = [(UIKeyboardEmojiCollectionView *)self->super._collectionView emojiGraphicsTraits];
    [emojiGraphicsTraits5 inputViewRightMostPadding];
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
  emojiGraphicsTraits = [(UIKeyboardEmojiCollectionView *)self->super._collectionView emojiGraphicsTraits];
  [emojiGraphicsTraits inputViewLeftMostPadding];
  [(UICollectionView *)v18 setContentOffset:0 animated:0.0, MinY - v21];

  [(UIView *)self->super._collectionView layoutIfNeeded];
}

- (void)updateToCategory:(int64_t)category
{
  hitTestResponder = [(UIKeyboardEmojiCollectionInputView *)self hitTestResponder];
  [hitTestResponder deactivateActiveKey];

  if ([(UICollectionView *)self->super._collectionView numberOfItemsInSection:[UIKeyboardEmojiCategory categoryIndexForCategoryType:category]]>= 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_category);
    categoryType = [WeakRetained categoryType];

    if (categoryType == category)
    {
      v8 = objc_loadWeakRetained(&self->_category);
      [v8 setLastVisibleFirstEmojiIndex:0];

      obj = objc_loadWeakRetained(&self->_category);
      v9 = 0;
    }

    else
    {
      obj = [UIKeyboardEmojiCategory categoryForType:category];
      emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
      [obj setLastVisibleFirstEmojiIndex:{objc_msgSend(emojiKeyManager, "lastVisibleFirstEmojiIndexforCategory:", obj)}];

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
    emojiGraphicsTraits = [(UIKeyboardEmojiCollectionView *)self->super._collectionView emojiGraphicsTraits];
    [emojiGraphicsTraits inputViewLeftMostPadding];
    [(UICollectionView *)v25 setContentOffset:0 animated:v27, MinY - v30];

    emojiKeyManager2 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
    [emojiKeyManager2 setLastViewedCategory:obj];
  }
}

- (id)category
{
  WeakRetained = objc_loadWeakRetained(&self->_category);

  return WeakRetained;
}

@end