@interface TUIPressAndHoldGrid
- (BOOL)handleNumberKey:(unint64_t)key;
- (BOOL)handleSelection;
- (BOOL)hasAccentVariantInForwardDirection:(BOOL)direction;
- (BOOL)indexPathIsValid:(id)valid;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)contentSize;
- (NSIndexPath)firstIndexPath;
- (NSIndexPath)lastIndexPath;
- (TUIPressAndHoldGrid)initWithFrame:(CGRect)frame accentVariants:(id)variants;
- (TUIPressAndHoldGridDelegate)delegate;
- (id)accentAtIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)indexPathForAccentVariantNumber:(unint64_t)number;
- (id)indexPathInForwardDirection:(BOOL)direction;
- (id)showAccentVariantInForwardDirection:(BOOL)direction;
- (id)visibleAttributes;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (unint64_t)accentVariantNumberForIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)forceUpdateVisibleCells;
- (void)layoutSubviews;
- (void)setSelectedIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position;
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(TUIPressAndHoldGrid *)self accentAtIndexPath:pathCopy];
  v9 = +[TUIPressAndHoldViewCell reuseIdentifier];
  v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:pathCopy];

  [v10 setAccentVariant:v8];
  selectedIndexPath = [(TUIPressAndHoldGrid *)self selectedIndexPath];
  v12 = [pathCopy isEqual:selectedIndexPath];

  [v10 setSelected:v12];

  return v10;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(TUIPressAndHoldGrid *)self accentVariants:view];
  v5 = [v4 count];

  return v5;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = cellCopy;
    v11 = [viewCopy layoutAttributesForItemAtIndexPath:pathCopy];
    selectedIndexPath = [(TUIPressAndHoldGrid *)self selectedIndexPath];
    [v10 setSelected:{objc_msgSend(selectedIndexPath, "isEqual:", pathCopy)}];

    [v10 setAccentVariantNumber:{-[TUIPressAndHoldGrid accentVariantNumberForIndexPath:](self, "accentVariantNumberForIndexPath:", pathCopy)}];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(TUIPressAndHoldGrid *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(TUIPressAndHoldGrid *)self delegate];
    v8 = [(TUIPressAndHoldGrid *)self accentAtIndexPath:pathCopy];
    [delegate2 pressAndHoldGridDidAcceptAccentVariant:v8 atIndexPath:pathCopy];
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
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
  collectionView = [(TUIPressAndHoldGrid *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v5 = [indexPathsForVisibleItems countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        collectionView2 = [(TUIPressAndHoldGrid *)self collectionView];
        v11 = [collectionView2 cellForItemAtIndexPath:v9];

        collectionView3 = [(TUIPressAndHoldGrid *)self collectionView];
        [(TUIPressAndHoldGrid *)self collectionView:collectionView3 willDisplayCell:v11 forItemAtIndexPath:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (BOOL)handleSelection
{
  v3 = [(TUIPressAndHoldGrid *)self indexPathIsValid:self->_selectedIndexPath];
  if (v3)
  {
    delegate = [(TUIPressAndHoldGrid *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(TUIPressAndHoldGrid *)self delegate];
      v7 = [(TUIPressAndHoldGrid *)self accentAtIndexPath:self->_selectedIndexPath];
      [delegate2 pressAndHoldGridDidAcceptAccentVariant:v7 atIndexPath:self->_selectedIndexPath];
    }
  }

  return v3;
}

- (BOOL)handleNumberKey:(unint64_t)key
{
  v4 = [(TUIPressAndHoldGrid *)self indexPathForAccentVariantNumber:key];
  v5 = [(TUIPressAndHoldGrid *)self indexPathIsValid:v4];
  if (v5)
  {
    v6 = [(TUIPressAndHoldGrid *)self accentAtIndexPath:v4];
    [(TUIPressAndHoldGrid *)self setSelectedIndexPath:v4];
    delegate = [(TUIPressAndHoldGrid *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(TUIPressAndHoldGrid *)self delegate];
      [delegate2 pressAndHoldGridDidAcceptAccentVariant:v6 atIndexPath:v4];
    }
  }

  return v5;
}

- (id)indexPathForAccentVariantNumber:(unint64_t)number
{
  v19 = *MEMORY[0x1E69E9840];
  if (number - 1 > 8)
  {
    v12 = 0;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    collectionView = [(TUIPressAndHoldGrid *)self collectionView];
    visibleCells = [collectionView visibleCells];

    v7 = [visibleCells countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(visibleCells);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 accentVariantNumber] == number)
          {
            v12 = [(UICollectionView *)self->_collectionView indexPathForCell:v11];
            goto LABEL_13;
          }
        }

        v8 = [visibleCells countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  collectionView = [(TUIPressAndHoldGrid *)self collectionView];
  [collectionView visibleBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  collectionView2 = [(TUIPressAndHoldGrid *)self collectionView];
  collectionViewLayout = [collectionView2 collectionViewLayout];
  v14 = [collectionViewLayout layoutAttributesForElementsInRect:{v5, v7, v9, v11}];

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

- (unint64_t)accentVariantNumberForIndexPath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
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

        indexPath = [*(*(&v15 + 1) + 8 * v10) indexPath];
        v13 = [indexPath isEqual:pathCopy];

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

- (id)showAccentVariantInForwardDirection:(BOOL)direction
{
  directionCopy = direction;
  v5 = [(TUIPressAndHoldGrid *)self indexPathInForwardDirection:?];
  if (v5)
  {
LABEL_2:
    [(TUIPressAndHoldGrid *)self setSelectedIndexPath:v5 animated:0 scrollPosition:0];
    goto LABEL_5;
  }

  selectedIndexPath = [(TUIPressAndHoldGrid *)self selectedIndexPath];

  if (!selectedIndexPath)
  {
    if (directionCopy)
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

- (BOOL)hasAccentVariantInForwardDirection:(BOOL)direction
{
  accentVariants = [(TUIPressAndHoldGrid *)self accentVariants];
  v4 = [accentVariants count] != 0;

  return v4;
}

- (id)indexPathInForwardDirection:(BOOL)direction
{
  directionCopy = direction;
  selectedIndexPath = [(TUIPressAndHoldGrid *)self selectedIndexPath];
  if ([(TUIPressAndHoldGrid *)self indexPathIsValid:selectedIndexPath])
  {
    section = [selectedIndexPath section];
    v7 = [selectedIndexPath row];
    if (directionCopy)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 - 1;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      accentVariants = [(TUIPressAndHoldGrid *)self accentVariants];
      v10 = [accentVariants count];

      if (v8 < v10)
      {
        v11 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:section];
        goto LABEL_10;
      }
    }

    [(TUIPressAndHoldGrid *)self setSelectedIndexPath:0];
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (BOOL)indexPathIsValid:(id)valid
{
  validCopy = valid;
  v5 = validCopy;
  if (!validCopy || [validCopy section] || objc_msgSend(v5, "row") < 0)
  {
    v6 = 0;
  }

  else
  {
    accentVariants = [(TUIPressAndHoldGrid *)self accentVariants];
    v9 = [accentVariants count];
    v6 = v9 > [v5 row];
  }

  return v6;
}

- (void)setSelectedIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position
{
  animatedCopy = animated;
  pathCopy = path;
  selectedIndexPath = self->_selectedIndexPath;
  if (selectedIndexPath != pathCopy || [(NSIndexPath *)selectedIndexPath isEqual:pathCopy])
  {
    objc_storeStrong(&self->_selectedIndexPath, path);
    if (pathCopy && [(TUIPressAndHoldGrid *)self indexPathIsValid:pathCopy])
    {
      collectionView = [(TUIPressAndHoldGrid *)self collectionView];
      [collectionView selectItemAtIndexPath:pathCopy animated:animatedCopy scrollPosition:position];

      collectionView2 = [(TUIPressAndHoldGrid *)self collectionView];
      firstObject = [collectionView2 layoutAttributesForItemAtIndexPath:pathCopy];
    }

    else
    {
      collectionView3 = [(TUIPressAndHoldGrid *)self collectionView];
      indexPathsForSelectedItems = [collectionView3 indexPathsForSelectedItems];
      firstObject = [indexPathsForSelectedItems firstObject];

      if (!firstObject)
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

      collectionView2 = [(TUIPressAndHoldGrid *)self collectionView];
      [collectionView2 deselectItemAtIndexPath:firstObject animated:0];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (NSIndexPath)lastIndexPath
{
  accentVariants = [(TUIPressAndHoldGrid *)self accentVariants];
  v4 = [accentVariants count];

  if (v4)
  {
    v5 = MEMORY[0x1E696AC88];
    accentVariants2 = [(TUIPressAndHoldGrid *)self accentVariants];
    v7 = [v5 indexPathForRow:objc_msgSend(accentVariants2 inSection:{"count") - 1, 0}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSIndexPath)firstIndexPath
{
  accentVariants = [(TUIPressAndHoldGrid *)self accentVariants];
  v3 = [accentVariants count];

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

- (id)accentAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(TUIPressAndHoldGrid *)self indexPathIsValid:pathCopy])
  {
    accentVariants = [(TUIPressAndHoldGrid *)self accentVariants];
    v6 = [accentVariants objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
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
  collectionView = [(TUIPressAndHoldGrid *)self collectionView];
  [collectionView setFrame:{v4, v6, v8, v10}];
}

- (TUIPressAndHoldGrid)initWithFrame:(CGRect)frame accentVariants:(id)variants
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  variantsCopy = variants;
  v22.receiver = self;
  v22.super_class = TUIPressAndHoldGrid;
  height = [(TUIPressAndHoldGrid *)&v22 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_accentVariants, variants);
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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)v12->_collectionView setBackgroundColor:clearColor];

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