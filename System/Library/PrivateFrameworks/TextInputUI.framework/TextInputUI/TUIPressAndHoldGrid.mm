@interface TUIPressAndHoldGrid
- (BOOL)handleNumberKey:(unint64_t)a3;
- (BOOL)handleSelection;
- (BOOL)hasAccentVariantInForwardDirection:(BOOL)a3;
- (BOOL)indexPathIsValid:(id)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)contentSize;
- (NSIndexPath)firstIndexPath;
- (NSIndexPath)lastIndexPath;
- (TUIPressAndHoldGrid)initWithFrame:(CGRect)a3 accentVariants:(id)a4;
- (TUIPressAndHoldGridDelegate)delegate;
- (id)accentAtIndexPath:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)indexPathForAccentVariantNumber:(unint64_t)a3;
- (id)indexPathInForwardDirection:(BOOL)a3;
- (id)showAccentVariantInForwardDirection:(BOOL)a3;
- (id)visibleAttributes;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (unint64_t)accentVariantNumberForIndexPath:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)forceUpdateVisibleCells;
- (void)layoutSubviews;
- (void)setSelectedIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5;
@end

@implementation TUIPressAndHoldGrid

- (TUIPressAndHoldGridDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUIPressAndHoldGrid *)self accentAtIndexPath:v6];
  v9 = +[TUIPressAndHoldViewCell reuseIdentifier];
  v10 = [v7 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v6];

  [v10 setAccentVariant:v8];
  v11 = [(TUIPressAndHoldGrid *)self selectedIndexPath];
  v12 = [v6 isEqual:v11];

  [v10 setSelected:v12];

  return v10;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(TUIPressAndHoldGrid *)self accentVariants:a3];
  v5 = [v4 count];

  return v5;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    v11 = [v13 layoutAttributesForItemAtIndexPath:v9];
    v12 = [(TUIPressAndHoldGrid *)self selectedIndexPath];
    [v10 setSelected:{objc_msgSend(v12, "isEqual:", v9)}];

    [v10 setAccentVariantNumber:{-[TUIPressAndHoldGrid accentVariantNumberForIndexPath:](self, "accentVariantNumberForIndexPath:", v9)}];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v9 = a4;
  v5 = [(TUIPressAndHoldGrid *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(TUIPressAndHoldGrid *)self delegate];
    v8 = [(TUIPressAndHoldGrid *)self accentAtIndexPath:v9];
    [v7 pressAndHoldGridDidAcceptAccentVariant:v8 atIndexPath:v9];
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v5 = 46.0;
  v6 = 30.0;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)forceUpdateVisibleCells
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(TUIPressAndHoldGrid *)self collectionView];
  v4 = [v3 indexPathsForVisibleItems];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(TUIPressAndHoldGrid *)self collectionView];
        v11 = [v10 cellForItemAtIndexPath:v9];

        v12 = [(TUIPressAndHoldGrid *)self collectionView];
        [(TUIPressAndHoldGrid *)self collectionView:v12 willDisplayCell:v11 forItemAtIndexPath:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (BOOL)handleSelection
{
  v3 = [(TUIPressAndHoldGrid *)self indexPathIsValid:self->_selectedIndexPath];
  if (v3)
  {
    v4 = [(TUIPressAndHoldGrid *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(TUIPressAndHoldGrid *)self delegate];
      v7 = [(TUIPressAndHoldGrid *)self accentAtIndexPath:self->_selectedIndexPath];
      [v6 pressAndHoldGridDidAcceptAccentVariant:v7 atIndexPath:self->_selectedIndexPath];
    }
  }

  return v3;
}

- (BOOL)handleNumberKey:(unint64_t)a3
{
  v4 = [(TUIPressAndHoldGrid *)self indexPathForAccentVariantNumber:a3];
  v5 = [(TUIPressAndHoldGrid *)self indexPathIsValid:v4];
  if (v5)
  {
    v6 = [(TUIPressAndHoldGrid *)self accentAtIndexPath:v4];
    [(TUIPressAndHoldGrid *)self setSelectedIndexPath:v4];
    v7 = [(TUIPressAndHoldGrid *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(TUIPressAndHoldGrid *)self delegate];
      [v9 pressAndHoldGridDidAcceptAccentVariant:v6 atIndexPath:v4];
    }
  }

  return v5;
}

- (id)indexPathForAccentVariantNumber:(unint64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3 - 1 > 8)
  {
    v12 = 0;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(TUIPressAndHoldGrid *)self collectionView];
    v6 = [v5 visibleCells];

    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 accentVariantNumber] == a3)
          {
            v12 = [(UICollectionView *)self->_collectionView indexPathForCell:v11];
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_13:
  }

  return v12;
}

- (id)visibleAttributes
{
  v3 = [(TUIPressAndHoldGrid *)self collectionView];
  [v3 visibleBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(TUIPressAndHoldGrid *)self collectionView];
  v13 = [v12 collectionViewLayout];
  v14 = [v13 layoutAttributesForElementsInRect:{v5, v7, v9, v11}];

  v15 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_8732];
  v16 = [v14 filteredArrayUsingPredicate:v15];

  v17 = [v16 sortedArrayUsingComparator:&__block_literal_global_12];

  return v17;
}

uint64_t __40__TUIPressAndHoldGrid_visibleAttributes__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 indexPath];
  v6 = [v4 indexPath];

  v7 = [v5 compare:v6];
  return v7;
}

- (unint64_t)accentVariantNumberForIndexPath:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(TUIPressAndHoldGrid *)self visibleAttributes];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = [*(*(&v15 + 1) + 8 * v10) indexPath];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          v8 = v11;
          goto LABEL_12;
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_12:

  return v8 + 1;
}

- (id)showAccentVariantInForwardDirection:(BOOL)a3
{
  v3 = a3;
  v5 = [(TUIPressAndHoldGrid *)self indexPathInForwardDirection:?];
  if (v5)
  {
LABEL_2:
    [(TUIPressAndHoldGrid *)self setSelectedIndexPath:v5 animated:0 scrollPosition:0];
    goto LABEL_5;
  }

  v6 = [(TUIPressAndHoldGrid *)self selectedIndexPath];

  if (!v6)
  {
    if (v3)
    {
      [(TUIPressAndHoldGrid *)self firstIndexPath];
    }

    else
    {
      [(TUIPressAndHoldGrid *)self lastIndexPath];
    }
    v5 = ;
    if (!v5)
    {
      goto LABEL_5;
    }

    goto LABEL_2;
  }

  v5 = 0;
LABEL_5:
  v7 = [(TUIPressAndHoldGrid *)self accentAtIndexPath:v5];

  return v7;
}

- (BOOL)hasAccentVariantInForwardDirection:(BOOL)a3
{
  v3 = [(TUIPressAndHoldGrid *)self accentVariants];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)indexPathInForwardDirection:(BOOL)a3
{
  v3 = a3;
  v5 = [(TUIPressAndHoldGrid *)self selectedIndexPath];
  if ([(TUIPressAndHoldGrid *)self indexPathIsValid:v5])
  {
    v6 = [v5 section];
    v7 = [v5 row];
    if (v3)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 - 1;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 = [(TUIPressAndHoldGrid *)self accentVariants];
      v10 = [v9 count];

      if (v8 < v10)
      {
        v11 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:v6];
        goto LABEL_10;
      }
    }

    [(TUIPressAndHoldGrid *)self setSelectedIndexPath:0];
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (BOOL)indexPathIsValid:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || [v4 section] || objc_msgSend(v5, "row") < 0)
  {
    v6 = 0;
  }

  else
  {
    v8 = [(TUIPressAndHoldGrid *)self accentVariants];
    v9 = [v8 count];
    v6 = v9 > [v5 row];
  }

  return v6;
}

- (void)setSelectedIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5
{
  v6 = a4;
  v9 = a3;
  selectedIndexPath = self->_selectedIndexPath;
  if (selectedIndexPath != v9 || [(NSIndexPath *)selectedIndexPath isEqual:v9])
  {
    objc_storeStrong(&self->_selectedIndexPath, a3);
    if (v9 && [(TUIPressAndHoldGrid *)self indexPathIsValid:v9])
    {
      v11 = [(TUIPressAndHoldGrid *)self collectionView];
      [v11 selectItemAtIndexPath:v9 animated:v6 scrollPosition:a5];

      v12 = [(TUIPressAndHoldGrid *)self collectionView];
      v13 = [v12 layoutAttributesForItemAtIndexPath:v9];
    }

    else
    {
      v14 = [(TUIPressAndHoldGrid *)self collectionView];
      v15 = [v14 indexPathsForSelectedItems];
      v13 = [v15 firstObject];

      if (!v13)
      {
LABEL_9:

        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __68__TUIPressAndHoldGrid_setSelectedIndexPath_animated_scrollPosition___block_invoke;
        v16[3] = &unk_1E72D83A0;
        v16[4] = self;
        [MEMORY[0x1E69DD250] performWithoutAnimation:v16];
        goto LABEL_10;
      }

      v12 = [(TUIPressAndHoldGrid *)self collectionView];
      [v12 deselectItemAtIndexPath:v13 animated:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (NSIndexPath)lastIndexPath
{
  v3 = [(TUIPressAndHoldGrid *)self accentVariants];
  v4 = [v3 count];

  if (v4)
  {
    v5 = MEMORY[0x1E696AC88];
    v6 = [(TUIPressAndHoldGrid *)self accentVariants];
    v7 = [v5 indexPathForRow:objc_msgSend(v6 inSection:{"count") - 1, 0}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSIndexPath)firstIndexPath
{
  v2 = [(TUIPressAndHoldGrid *)self accentVariants];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accentAtIndexPath:(id)a3
{
  v4 = a3;
  if ([(TUIPressAndHoldGrid *)self indexPathIsValid:v4])
  {
    v5 = [(TUIPressAndHoldGrid *)self accentVariants];
    v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = TUIPressAndHoldGrid;
  [(TUIPressAndHoldGrid *)&v12 layoutSubviews];
  [(TUIPressAndHoldGrid *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(TUIPressAndHoldGrid *)self collectionView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (TUIPressAndHoldGrid)initWithFrame:(CGRect)a3 accentVariants:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v22.receiver = self;
  v22.super_class = TUIPressAndHoldGrid;
  v11 = [(TUIPressAndHoldGrid *)&v22 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_accentVariants, a4);
    v13 = objc_alloc_init(MEMORY[0x1E69DC840]);
    [v13 setMinimumInteritemSpacing:0.0];
    [v13 setSectionInset:{5.0, 5.0, 5.0, 5.0}];
    v14 = objc_alloc(MEMORY[0x1E69DC7F0]);
    [(TUIPressAndHoldGrid *)v12 bounds];
    v15 = [v14 initWithFrame:v13 collectionViewLayout:?];
    collectionView = v12->_collectionView;
    v12->_collectionView = v15;

    [(UICollectionView *)v12->_collectionView setDelegate:v12];
    [(UICollectionView *)v12->_collectionView setDataSource:v12];
    v17 = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)v12->_collectionView setBackgroundColor:v17];

    v18 = v12->_collectionView;
    v19 = objc_opt_class();
    v20 = +[TUIPressAndHoldViewCell reuseIdentifier];
    [(UICollectionView *)v18 registerClass:v19 forCellWithReuseIdentifier:v20];

    [(UICollectionView *)v12->_collectionView setContentInset:0.0, 0.0, 0.0, 0.0];
    [(TUIPressAndHoldGrid *)v12 addSubview:v12->_collectionView];
  }

  return v12;
}

@end