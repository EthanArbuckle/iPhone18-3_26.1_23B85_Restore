@interface UIKBRecentInputsView
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIKBRecentInputsView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)selectedRecentInputString;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (unint64_t)focusableVariantCount;
- (void)refreshSelectedRecent;
- (void)scrollViewDidChangeContentSize:(id)a3;
- (void)setRecentInputs:(id)a3;
- (void)setVerticalLayout:(BOOL)a3;
- (void)setupCollectionView;
@end

@implementation UIKBRecentInputsView

- (UIKBRecentInputsView)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5
{
  v8.receiver = self;
  v8.super_class = UIKBRecentInputsView;
  v5 = [(UIKBKeyView *)&v8 initWithFrame:a4 keyplane:a5 key:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v4 = [v3 selectedVariantIndex];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(UIKBRecentInputsView *)self collectionView];
    v6 = [v5 indexPathsForSelectedItems];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v6;
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
          v13 = [(UIKBRecentInputsView *)self collectionView];
          [v13 deselectItemAtIndexPath:v12 animated:1];
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v14 = [(UIKBRecentInputsView *)self recentInputStrings];
    v15 = [v14 count];

    if (v4 >= v15)
    {
      v16 = [(UIKBRecentInputsView *)self recentInputStrings];
      v4 = [v16 count] - 1;
    }

    v18 = [(UIKBRecentInputsView *)self collectionView];
    v17 = [MEMORY[0x1E696AC88] indexPathForRow:v4 inSection:0];
    [v18 selectItemAtIndexPath:v17 animated:1 scrollPosition:16];
  }
}

- (id)selectedRecentInputString
{
  v3 = [(UIKBKeyView *)self key];
  v4 = [v3 selectedVariantIndex];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(UIKBKeyView *)self key];
    v7 = [v6 selectedVariantIndex];
    v8 = [(UIKBRecentInputsView *)self recentInputStrings];
    v9 = [v8 count] - 1;

    if (v7 == v9)
    {
      v5 = @"⊗";
    }

    else
    {
      v10 = [(UIKBRecentInputsView *)self recentInputStrings];
      v11 = [(UIKBKeyView *)self key];
      v5 = [v10 objectAtIndex:{objc_msgSend(v11, "selectedVariantIndex")}];
    }
  }

  return v5;
}

- (unint64_t)focusableVariantCount
{
  v2 = [(UIKBRecentInputsView *)self recentInputStrings];
  v3 = [v2 count];

  return v3;
}

- (void)setVerticalLayout:(BOOL)a3
{
  v3 = a3;
  self->_verticalLayout = a3;
  v4 = [(UIKBRecentInputsView *)self flowLayout];
  [v4 setScrollDirection:!v3];
}

- (void)setRecentInputs:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
  v7 = [v5 entries];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__UIKBRecentInputsView_setRecentInputs___block_invoke;
  v11[3] = &unk_1E7114240;
  v8 = v6;
  v12 = v8;
  [v7 enumerateObjectsUsingBlock:v11];

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
  v10 = [(UIKBRecentInputsView *)self collectionView];
  [v10 reloadData];
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
  v13 = [(UIKBRecentInputsView *)self flowLayout];
  v14 = [(UICollectionView *)v4 initWithFrame:v13 collectionViewLayout:v6, v8, v10, v12];

  [(UICollectionView *)v14 setDataSource:self];
  [(UICollectionView *)v14 setDelegate:self];
  [(UICollectionView *)v14 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"recentInputCell"];
  [(UIScrollView *)v14 setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)v14 setShowsVerticalScrollIndicator:0];
  [(UIView *)v14 setClipsToBounds:0];
  [(UIView *)self addSubview:v14];
  [(UIKBRecentInputsView *)self setCollectionView:v14];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(UIKBRecentInputsView *)self recentInputStrings:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"recentInputCell" forIndexPath:v6];
  v8 = [(UIKBRecentInputsView *)self recentInputStrings];
  v9 = [v6 row];

  v10 = [v8 objectAtIndex:v9];

  [v7 setInputText:v10];

  return v7;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(UIKBRecentInputsView *)self recentInputStrings];
  v8 = [v6 row];

  v9 = [v7 objectAtIndex:v8];

  v10 = [(UIView *)self _inheritedRenderConfig];
  v11 = [UIKBRecentInputCell titleAttributesForRenderConfig:v10];
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

- (void)scrollViewDidChangeContentSize:(id)a3
{
  v20 = a3;
  [v20 contentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v20 contentSize];
  v10 = v9;
  [v20 frame];
  v11 = 0.0;
  v13 = v10 < v12;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  if (v13)
  {
    [v20 frame];
    v18 = v17;
    [v20 contentSize];
    v14 = (v18 - v19) * 0.5;
    v11 = v4;
    v15 = v6;
    v16 = v8;
  }

  [v20 setContentInset:{v11, v14, v15, v16}];
}

@end