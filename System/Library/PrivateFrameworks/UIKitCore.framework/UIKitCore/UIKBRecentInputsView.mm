@interface UIKBRecentInputsView
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIKBRecentInputsView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)selectedRecentInputString;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (unint64_t)focusableVariantCount;
- (void)refreshSelectedRecent;
- (void)scrollViewDidChangeContentSize:(id)size;
- (void)setRecentInputs:(id)inputs;
- (void)setVerticalLayout:(BOOL)layout;
- (void)setupCollectionView;
@end

@implementation UIKBRecentInputsView

- (UIKBRecentInputsView)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key
{
  v8.receiver = self;
  v8.super_class = UIKBRecentInputsView;
  v5 = [(UIKBKeyView *)&v8 initWithFrame:keyplane keyplane:key key:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(UIView *)v5 setUserInteractionEnabled:1];
    [(UIKBRecentInputsView *)v6 setupCollectionView];
  }

  return v6;
}

- (void)refreshSelectedRecent
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(UIKBKeyView *)self key];
  selectedVariantIndex = [v3 selectedVariantIndex];

  if (selectedVariantIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    collectionView = [(UIKBRecentInputsView *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = indexPathsForSelectedItems;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          collectionView2 = [(UIKBRecentInputsView *)self collectionView];
          [collectionView2 deselectItemAtIndexPath:v12 animated:1];
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }

  else
  {
    recentInputStrings = [(UIKBRecentInputsView *)self recentInputStrings];
    v15 = [recentInputStrings count];

    if (selectedVariantIndex >= v15)
    {
      recentInputStrings2 = [(UIKBRecentInputsView *)self recentInputStrings];
      selectedVariantIndex = [recentInputStrings2 count] - 1;
    }

    collectionView3 = [(UIKBRecentInputsView *)self collectionView];
    v17 = [MEMORY[0x1E696AC88] indexPathForRow:selectedVariantIndex inSection:0];
    [collectionView3 selectItemAtIndexPath:v17 animated:1 scrollPosition:16];
  }
}

- (id)selectedRecentInputString
{
  v3 = [(UIKBKeyView *)self key];
  selectedVariantIndex = [v3 selectedVariantIndex];

  if (selectedVariantIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(UIKBKeyView *)self key];
    selectedVariantIndex2 = [v6 selectedVariantIndex];
    recentInputStrings = [(UIKBRecentInputsView *)self recentInputStrings];
    v9 = [recentInputStrings count] - 1;

    if (selectedVariantIndex2 == v9)
    {
      v5 = @"⊗";
    }

    else
    {
      recentInputStrings2 = [(UIKBRecentInputsView *)self recentInputStrings];
      v11 = [(UIKBKeyView *)self key];
      v5 = [recentInputStrings2 objectAtIndex:{objc_msgSend(v11, "selectedVariantIndex")}];
    }
  }

  return v5;
}

- (unint64_t)focusableVariantCount
{
  recentInputStrings = [(UIKBRecentInputsView *)self recentInputStrings];
  v3 = [recentInputStrings count];

  return v3;
}

- (void)setVerticalLayout:(BOOL)layout
{
  layoutCopy = layout;
  self->_verticalLayout = layout;
  flowLayout = [(UIKBRecentInputsView *)self flowLayout];
  [flowLayout setScrollDirection:!layoutCopy];
}

- (void)setRecentInputs:(id)inputs
{
  v4 = MEMORY[0x1E695DF70];
  inputsCopy = inputs;
  array = [v4 array];
  entries = [inputsCopy entries];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__UIKBRecentInputsView_setRecentInputs___block_invoke;
  v11[3] = &unk_1E7114240;
  v8 = array;
  v12 = v8;
  [entries enumerateObjectsUsingBlock:v11];

  if (self->_verticalLayout)
  {
    v9 = UIKeyboardLocalizedString(@"UI-ClearRecentInputs", 0, 0, 0);
    [v8 addObject:v9];
  }

  else
  {
    [v8 addObject:@"⊗"];
  }

  [(UIKBRecentInputsView *)self setRecentInputStrings:v8];
  collectionView = [(UIKBRecentInputsView *)self collectionView];
  [collectionView reloadData];
}

void __40__UIKBRecentInputsView_setRecentInputs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 documentText];
  [v2 addObject:v3];
}

- (void)setupCollectionView
{
  v3 = objc_alloc_init(UICollectionViewFlowLayout);
  [(UIKBRecentInputsView *)self setFlowLayout:v3];

  [(UIKBRecentInputsView *)self setVerticalLayout:0];
  v4 = [UICollectionView alloc];
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  flowLayout = [(UIKBRecentInputsView *)self flowLayout];
  v14 = [(UICollectionView *)v4 initWithFrame:flowLayout collectionViewLayout:v6, v8, v10, v12];

  [(UICollectionView *)v14 setDataSource:self];
  [(UICollectionView *)v14 setDelegate:self];
  [(UICollectionView *)v14 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"recentInputCell"];
  [(UIScrollView *)v14 setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)v14 setShowsVerticalScrollIndicator:0];
  [(UIView *)v14 setClipsToBounds:0];
  [(UIView *)self addSubview:v14];
  [(UIKBRecentInputsView *)self setCollectionView:v14];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(UIKBRecentInputsView *)self recentInputStrings:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"recentInputCell" forIndexPath:pathCopy];
  recentInputStrings = [(UIKBRecentInputsView *)self recentInputStrings];
  v9 = [pathCopy row];

  v10 = [recentInputStrings objectAtIndex:v9];

  [v7 setInputText:v10];

  return v7;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  recentInputStrings = [(UIKBRecentInputsView *)self recentInputStrings];
  v8 = [pathCopy row];

  v9 = [recentInputStrings objectAtIndex:v8];

  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  v11 = [UIKBRecentInputCell titleAttributesForRenderConfig:_inheritedRenderConfig];
  [v9 sizeWithAttributes:v11];
  v13 = v12;
  v15 = v14;

  if (self->_verticalLayout)
  {
    [(UIView *)self bounds];
    v17 = v16;
  }

  else
  {
    if (v13 + 40.0 <= 1400.0)
    {
      v17 = v13 + 40.0;
    }

    else
    {
      v17 = 1400.0;
    }

    *&v15 = 60.0;
  }

  v18 = v17;
  v19 = *&v15;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)scrollViewDidChangeContentSize:(id)size
{
  sizeCopy = size;
  [sizeCopy contentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [sizeCopy contentSize];
  v10 = v9;
  [sizeCopy frame];
  v11 = 0.0;
  v13 = v10 < v12;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  if (v13)
  {
    [sizeCopy frame];
    v18 = v17;
    [sizeCopy contentSize];
    v14 = (v18 - v19) * 0.5;
    v11 = v4;
    v15 = v6;
    v16 = v8;
  }

  [sizeCopy setContentInset:{v11, v14, v15, v16}];
}

@end