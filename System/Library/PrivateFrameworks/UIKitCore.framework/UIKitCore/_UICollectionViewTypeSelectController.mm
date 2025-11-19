@interface _UICollectionViewTypeSelectController
- ($CB060080E1D36F6A7982298CA50D388E)_metadataForTypeSelectInteraction:(SEL)a3;
- (id)_itemsForTypeSelectInteraction:(id)a3 forRange:(_NSRange)a4;
- (uint64_t)_setTypeSelectStateOnCell:(uint64_t)a3 withFirstMatchingRange:;
- (void)_cellUpdateAtIndexPath:(void *)a3 withItemResult:(uint64_t)a4 animator:;
- (void)_typeSelectInteraction:(id)a3 didUpdateResult:(id)a4 animator:(id)a5;
- (void)configureTypeSelectDisplayForCell:(uint64_t)a3 indexPath:;
- (void)initWithCollectionView:(void *)a1;
- (void)reloadData;
- (void)setEnabled:(uint64_t)a1;
@end

@implementation _UICollectionViewTypeSelectController

- (void)reloadData
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2 && (*(v2 + 101) & 1) != 0)
    {
      v3 = *(a1 + 40);
      *(a1 + 40) = 0;
    }

    else
    {
      *(a1 + 48) = 0;
      [(_UITypeSelectInteraction *)v2 _updateResultsAnimated:?];
      *(a1 + 48) = 1;
    }
  }
}

- (void)initWithCollectionView:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = _UICollectionViewTypeSelectController;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[7] = a2;
    v5 = [[_UITypeSelectInteraction alloc] initWithDelegate:v3];
    v6 = v4[4];
    v4[4] = v5;

    *(v4 + 48) = 1;
  }

  return v4;
}

- (void)setEnabled:(uint64_t)a1
{
  if (a1 && *(a1 + 49) != a2)
  {
    *(a1 + 49) = a2;
    v5 = *(a1 + 56);
    [*(a1 + 32) setEnabled:a2];
    v4 = *(a1 + 32);
    if (a2)
    {
      [v5 addInteraction:v4];
    }

    else if (v4)
    {
      [v5 removeInteraction:?];
    }
  }
}

- ($CB060080E1D36F6A7982298CA50D388E)_metadataForTypeSelectInteraction:(SEL)a3
{
  typeSelectResult = self->_typeSelectResult;
  self->_typeSelectResult = 0;

  v7 = self->_collectionView;
  self->_currentTypeSelectMetadata.preferredItemsRange.location = [(UICollectionView *)v7 _globalIndexRangeOfVisibleItems];
  self->_currentTypeSelectMetadata.preferredItemsRange.length = v8;
  v9 = [(UICollectionView *)v7 _totalItemCount];

  self->_currentTypeSelectMetadata.numberOfItems = v9;
  retstr->var1 = v9;
  retstr->var0 = self->_currentTypeSelectMetadata.preferredItemsRange;
  return result;
}

- (id)_itemsForTypeSelectInteraction:(id)a3 forRange:(_NSRange)a4
{
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    v17 = a2;
    v19 = self;
    if (self)
    {
      collectionView = self->_collectionView;
    }

    else
    {
      collectionView = 0;
    }

    v7 = collectionView;
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:length];
    if (location < location + length)
    {
      v9 = length;
      do
      {
        v10 = [(UICollectionView *)v7 _indexPathForGlobalIndex:location, v17, v19];
        v11 = [(UICollectionView *)v7 _delegateProxy];
        v12 = [v11 _collectionView:v7 typeSelectStringForItemAtIndexPath:v10];

        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = &stru_1EFB14550;
        }

        v14 = [[_UICollectionViewTypeSelectItem alloc] initWithTypeSelectString:v13 atIndexPath:v10];
        [v8 addObject:v14];

        ++location;
        --v9;
      }

      while (v9);
    }

    if ([v8 count] != length)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:v18 object:v20 file:@"_UICollectionViewTypeSelectController.m" lineNumber:137 description:@"items and indexPaths have different amount of items"];
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (void)_typeSelectInteraction:(id)a3 didUpdateResult:(id)a4 animator:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_typeSelectResult, a4);
  if (self->_shouldApplyTypeSelectResultToCell)
  {
    v8 = self->_collectionView;
    v9 = v8;
    if (self->_typeSelectResult)
    {
      v27 = [a4 preferredItem];
      v10 = [(UICollectionView *)v9 _delegateProxy];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v12 = [(UICollectionView *)v9 _delegateProxy];
        [v12 _collectionView:v9 typeSelectResultDidUpdate:a4];
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = [a4 typeSelectItemResults];
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v29;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v28 + 1) + 8 * i);
            v19 = [v18 item];
            v20 = [v19 indexPath];
            [(_UICollectionViewTypeSelectController *)self _cellUpdateAtIndexPath:v20 withItemResult:v18 animator:a5];
          }

          v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v15);
      }

      if (v27)
      {
        v21 = [v27 indexPath];
        if (self)
        {
          v22 = self->_collectionView;
          if (!v21)
          {
            v26 = [MEMORY[0x1E696AAA8] currentHandler];
            [v26 handleFailureInMethod:sel__focusOnFirstMatchedOptionAtIndexPath_ object:self file:@"_UICollectionViewTypeSelectController.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];
          }

          [(UICollectionView *)v22 scrollToItemAtIndexPath:v21 atScrollPosition:0 animated:1];
          [(UIView *)v22 layoutIfNeeded];
          [(UICollectionView *)v22 _requestFocusOnItemAtIndexPath:v21];
        }

        v23 = [(UIView *)self->_collectionView _focusSystem];
        [v23 updateFocusIfNeeded];
      }
    }

    else if ([(UICollectionView *)v8 _totalItemCount]>= 1)
    {
      v24 = 0;
      do
      {
        v25 = [(UICollectionView *)v9 _indexPathForGlobalIndex:v24];
        [(_UICollectionViewTypeSelectController *)self _cellUpdateAtIndexPath:v25 withItemResult:0 animator:a5];

        ++v24;
      }

      while (v24 < [(UICollectionView *)v9 _totalItemCount]);
    }
  }
}

- (void)_cellUpdateAtIndexPath:(void *)a3 withItemResult:(uint64_t)a4 animator:
{
  if (a1)
  {
    v12 = *(a1 + 56);
    v8 = [v12 _cellForItemAtIndexPath:a2];
    v9 = v8;
    if (v8)
    {
      if (a3)
      {
        v10 = [a3 matchingRanges];
        [(_UICollectionViewTypeSelectController *)a1 _setTypeSelectStateOnCell:v9 withFirstMatchingRange:v10];
      }

      else
      {
        [v8 _setTypeSelectState:0];
      }

      v11 = [v12 _delegateProxy];
      [v11 _collectionView:v12 updateTypeSelectResultForCell:v9 atIndexPath:a2 withItemResult:a3 animator:a4];
    }
  }
}

- (void)configureTypeSelectDisplayForCell:(uint64_t)a3 indexPath:
{
  if (a1)
  {
    v6 = *(a1 + 56);
    v7 = [*(a1 + 40) typeSelectItemResults];
    v8 = [v7 count];
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      [a2 _setTypeSelectState:0];
    }

    else
    {
      v10 = [v6 _globalIndexPathForItemAtIndexPath:a3];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = *(a1 + 8);
        if (v10 >= v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = *(a1 + 16);
        }

        if ((v10 - v11) < *(a1 + 16) && v10 >= v11)
        {
          v14 = v10 - v11;
        }

        else
        {
          v14 = v12 + v10;
        }

        v15 = [v7 objectAtIndexedSubscript:v14];
        v16 = [v15 matchingRanges];
        [(_UICollectionViewTypeSelectController *)a1 _setTypeSelectStateOnCell:a2 withFirstMatchingRange:v16];

        v17 = objc_opt_new();
        v18 = [v6 _delegateProxy];
        [v18 _collectionView:v6 updateTypeSelectResultForCell:a2 atIndexPath:a3 withItemResult:v15 animator:v17];

        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __85___UICollectionViewTypeSelectController_configureTypeSelectDisplayForCell_indexPath___block_invoke;
        v20[3] = &unk_1E70F3590;
        v21 = v17;
        v19 = v17;
        [UIView performWithoutAnimation:v20];
      }
    }
  }
}

- (uint64_t)_setTypeSelectStateOnCell:(uint64_t)a3 withFirstMatchingRange:
{
  if (a3)
  {
    if ([a3 count])
    {
      v5 = [*(a1 + 32) currentInput];
      v6 = [v5 length] != 0;

      a3 = 2 * v6;
    }

    else
    {
      a3 = 1;
    }
  }

  return [a2 _setTypeSelectState:a3];
}

@end