@interface _UICollectionViewTypeSelectController
- ($CB060080E1D36F6A7982298CA50D388E)_metadataForTypeSelectInteraction:(SEL)interaction;
- (id)_itemsForTypeSelectInteraction:(id)interaction forRange:(_NSRange)range;
- (uint64_t)_setTypeSelectStateOnCell:(uint64_t)cell withFirstMatchingRange:;
- (void)_cellUpdateAtIndexPath:(void *)path withItemResult:(uint64_t)result animator:;
- (void)_typeSelectInteraction:(id)interaction didUpdateResult:(id)result animator:(id)animator;
- (void)configureTypeSelectDisplayForCell:(uint64_t)cell indexPath:;
- (void)initWithCollectionView:(void *)view;
- (void)reloadData;
- (void)setEnabled:(uint64_t)enabled;
@end

@implementation _UICollectionViewTypeSelectController

- (void)reloadData
{
  if (self)
  {
    v2 = *(self + 32);
    if (v2 && (*(v2 + 101) & 1) != 0)
    {
      v3 = *(self + 40);
      *(self + 40) = 0;
    }

    else
    {
      *(self + 48) = 0;
      [(_UITypeSelectInteraction *)v2 _updateResultsAnimated:?];
      *(self + 48) = 1;
    }
  }
}

- (void)initWithCollectionView:(void *)view
{
  if (!view)
  {
    return 0;
  }

  v8.receiver = view;
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

- (void)setEnabled:(uint64_t)enabled
{
  if (enabled && *(enabled + 49) != a2)
  {
    *(enabled + 49) = a2;
    v5 = *(enabled + 56);
    [*(enabled + 32) setEnabled:a2];
    v4 = *(enabled + 32);
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

- ($CB060080E1D36F6A7982298CA50D388E)_metadataForTypeSelectInteraction:(SEL)interaction
{
  typeSelectResult = self->_typeSelectResult;
  self->_typeSelectResult = 0;

  v7 = self->_collectionView;
  self->_currentTypeSelectMetadata.preferredItemsRange.location = [(UICollectionView *)v7 _globalIndexRangeOfVisibleItems];
  self->_currentTypeSelectMetadata.preferredItemsRange.length = v8;
  _totalItemCount = [(UICollectionView *)v7 _totalItemCount];

  self->_currentTypeSelectMetadata.numberOfItems = _totalItemCount;
  retstr->var1 = _totalItemCount;
  retstr->var0 = self->_currentTypeSelectMetadata.preferredItemsRange;
  return result;
}

- (id)_itemsForTypeSelectInteraction:(id)interaction forRange:(_NSRange)range
{
  if (range.length)
  {
    length = range.length;
    location = range.location;
    v17 = a2;
    selfCopy = self;
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
        selfCopy = [(UICollectionView *)v7 _indexPathForGlobalIndex:location, v17, selfCopy];
        _delegateProxy = [(UICollectionView *)v7 _delegateProxy];
        v12 = [_delegateProxy _collectionView:v7 typeSelectStringForItemAtIndexPath:selfCopy];

        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = &stru_1EFB14550;
        }

        v14 = [[_UICollectionViewTypeSelectItem alloc] initWithTypeSelectString:v13 atIndexPath:selfCopy];
        [v8 addObject:v14];

        ++location;
        --v9;
      }

      while (v9);
    }

    if ([v8 count] != length)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:v18 object:v20 file:@"_UICollectionViewTypeSelectController.m" lineNumber:137 description:@"items and indexPaths have different amount of items"];
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

- (void)_typeSelectInteraction:(id)interaction didUpdateResult:(id)result animator:(id)animator
{
  v33 = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_typeSelectResult, result);
  if (self->_shouldApplyTypeSelectResultToCell)
  {
    v8 = self->_collectionView;
    v9 = v8;
    if (self->_typeSelectResult)
    {
      preferredItem = [result preferredItem];
      _delegateProxy = [(UICollectionView *)v9 _delegateProxy];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        _delegateProxy2 = [(UICollectionView *)v9 _delegateProxy];
        [_delegateProxy2 _collectionView:v9 typeSelectResultDidUpdate:result];
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      typeSelectItemResults = [result typeSelectItemResults];
      v14 = [typeSelectItemResults countByEnumeratingWithState:&v28 objects:v32 count:16];
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
              objc_enumerationMutation(typeSelectItemResults);
            }

            v18 = *(*(&v28 + 1) + 8 * i);
            item = [v18 item];
            indexPath = [item indexPath];
            [(_UICollectionViewTypeSelectController *)self _cellUpdateAtIndexPath:indexPath withItemResult:v18 animator:animator];
          }

          v15 = [typeSelectItemResults countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v15);
      }

      if (preferredItem)
      {
        indexPath2 = [preferredItem indexPath];
        if (self)
        {
          v22 = self->_collectionView;
          if (!indexPath2)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:sel__focusOnFirstMatchedOptionAtIndexPath_ object:self file:@"_UICollectionViewTypeSelectController.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];
          }

          [(UICollectionView *)v22 scrollToItemAtIndexPath:indexPath2 atScrollPosition:0 animated:1];
          [(UIView *)v22 layoutIfNeeded];
          [(UICollectionView *)v22 _requestFocusOnItemAtIndexPath:indexPath2];
        }

        _focusSystem = [(UIView *)self->_collectionView _focusSystem];
        [_focusSystem updateFocusIfNeeded];
      }
    }

    else if ([(UICollectionView *)v8 _totalItemCount]>= 1)
    {
      v24 = 0;
      do
      {
        v25 = [(UICollectionView *)v9 _indexPathForGlobalIndex:v24];
        [(_UICollectionViewTypeSelectController *)self _cellUpdateAtIndexPath:v25 withItemResult:0 animator:animator];

        ++v24;
      }

      while (v24 < [(UICollectionView *)v9 _totalItemCount]);
    }
  }
}

- (void)_cellUpdateAtIndexPath:(void *)path withItemResult:(uint64_t)result animator:
{
  if (self)
  {
    v12 = *(self + 56);
    v8 = [v12 _cellForItemAtIndexPath:a2];
    v9 = v8;
    if (v8)
    {
      if (path)
      {
        matchingRanges = [path matchingRanges];
        [(_UICollectionViewTypeSelectController *)self _setTypeSelectStateOnCell:v9 withFirstMatchingRange:matchingRanges];
      }

      else
      {
        [v8 _setTypeSelectState:0];
      }

      _delegateProxy = [v12 _delegateProxy];
      [_delegateProxy _collectionView:v12 updateTypeSelectResultForCell:v9 atIndexPath:a2 withItemResult:path animator:result];
    }
  }
}

- (void)configureTypeSelectDisplayForCell:(uint64_t)cell indexPath:
{
  if (self)
  {
    v6 = *(self + 56);
    typeSelectItemResults = [*(self + 40) typeSelectItemResults];
    v8 = [typeSelectItemResults count];
    if (typeSelectItemResults)
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
      v10 = [v6 _globalIndexPathForItemAtIndexPath:cell];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = *(self + 8);
        if (v10 >= v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = *(self + 16);
        }

        if ((v10 - v11) < *(self + 16) && v10 >= v11)
        {
          v14 = v10 - v11;
        }

        else
        {
          v14 = v12 + v10;
        }

        v15 = [typeSelectItemResults objectAtIndexedSubscript:v14];
        matchingRanges = [v15 matchingRanges];
        [(_UICollectionViewTypeSelectController *)self _setTypeSelectStateOnCell:a2 withFirstMatchingRange:matchingRanges];

        v17 = objc_opt_new();
        _delegateProxy = [v6 _delegateProxy];
        [_delegateProxy _collectionView:v6 updateTypeSelectResultForCell:a2 atIndexPath:cell withItemResult:v15 animator:v17];

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

- (uint64_t)_setTypeSelectStateOnCell:(uint64_t)cell withFirstMatchingRange:
{
  if (cell)
  {
    if ([cell count])
    {
      currentInput = [*(self + 32) currentInput];
      v6 = [currentInput length] != 0;

      cell = 2 * v6;
    }

    else
    {
      cell = 1;
    }
  }

  return [a2 _setTypeSelectState:cell];
}

@end