@interface _UICollectionViewOrthogonalScrollerSectionController
- (BOOL)isIndexPathInExtantOrthogonalScroller:(_BOOL8)a1;
- (id)autoScrollAssistantForOrthogonalScrollingSectionAtIndexPath:(id *)a1;
- (id)existingScrollViewForSection:(id *)a1;
- (id)promiseItemParentScrollViewForLayoutAttributes:(id *)a1;
- (id)subviewRouterForSection:(id *)a1;
- (uint64_t)isElementInOrthogonalScrollingSectionWithLayoutAttributes:(uint64_t)a1;
- (uint64_t)isIndexPathInOrthogonalScrollingSection:(uint64_t)a1;
- (uint64_t)isSectionOrthogonallyScrolling:(uint64_t)a1;
- (void)_placeView:(uint64_t)a3 belowOrthogonalScrollViewForSection:;
- (void)_scrollViewForSection:(int)a3 createIfNecessary:;
- (void)adjustElementHierarchyOrderingForOrthogonalElementIfNeeded:(void *)a3 layoutAttributes:;
- (void)initWithCollectionView:(void *)a1;
- (void)layoutScrollViews;
- (void)processQueuedScrollViewRemovals;
- (void)reconfigureScrollViewsForUpdate:(uint64_t)a1;
- (void)scrollToItemAtIndexPath:(uint64_t)a3 atScrollPosition:(uint64_t)a4 additionalInsets:(double)a5 animated:(double)a6;
- (void)setShouldPreventFocusScrollPastContentSize:(uint64_t)a1;
@end

@implementation _UICollectionViewOrthogonalScrollerSectionController

- (void)processQueuedScrollViewRemovals
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    if (WeakRetained)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      obj = *(a1 + 32);
      v3 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v3)
      {
        v4 = v3;
        v15 = *v21;
        do
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v6 = *(*(&v20 + 1) + 8 * i);
            v16 = 0u;
            v17 = 0u;
            v18 = 0u;
            v19 = 0u;
            v7 = [v6 subviews];
            v8 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v8)
            {
              v9 = v8;
              v10 = *v17;
              do
              {
                for (j = 0; j != v9; ++j)
                {
                  if (*v17 != v10)
                  {
                    objc_enumerationMutation(v7);
                  }

                  v12 = *(*(&v16 + 1) + 8 * j);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [WeakRetained _addControlledSubview:v12];
                  }
                }

                v9 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
              }

              while (v9);
            }

            if (v6)
            {
              objc_storeWeak(v6 + 270, 0);
            }

            [v6 removeFromSuperview];
          }

          v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v4);
      }

      v13 = *(a1 + 32);
      *(a1 + 32) = 0;
    }
  }
}

- (void)layoutScrollViews
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = [WeakRetained collectionViewLayout];
      if ([v4 _hasOrthogonalScrollingSections])
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        obj = [*(a1 + 24) objectEnumerator];
        v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v20;
          do
          {
            v8 = 0;
            do
            {
              if (*v20 != v7)
              {
                objc_enumerationMutation(obj);
              }

              v9 = *(*(&v19 + 1) + 8 * v8);
              if (v9)
              {
                v10 = v9[271];
              }

              else
              {
                v10 = 0;
              }

              v11 = [v3 _subviewRouterForOrthogonalScrollViewAtSection:v10];
              v12 = v11;
              if (v11)
              {
                v13 = *(v11 + 40);
              }

              else
              {
                v13 = 0;
              }

              v14 = v13;
              v15 = [v9 superview];

              if (v14 != v15)
              {
                [(_UICollectionViewSubviewRouter *)v12 addContainerView:v9];
              }

              v16 = [v4 _sectionDescriptorForSectionIndex:v10];
              [(_UICollectionViewOrthogonalScrollView *)v9 configureForDescriptor:v16];

              ++v8;
            }

            while (v6 != v8);
            v17 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
            v6 = v17;
          }

          while (v17);
        }
      }
    }
  }
}

- (void)initWithCollectionView:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v12.receiver = a1;
    v12.super_class = _UICollectionViewOrthogonalScrollerSectionController;
    v4 = objc_msgSendSuper2(&v12, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 2, v3);
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v6 = a1[3];
      a1[3] = v5;

      v7 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v8 = a1[5];
      a1[5] = v7;

      v9 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v10 = a1[6];
      a1[6] = v9;
    }
  }

  return a1;
}

- (uint64_t)isElementInOrthogonalScrollingSectionWithLayoutAttributes:(uint64_t)a1
{
  v3 = a2;
  if (!a1)
  {
    v9 = 0;
    goto LABEL_12;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained collectionViewLayout];
    if (![v6 _hasOrthogonalScrollingSections])
    {
      v9 = 0;
      goto LABEL_10;
    }

    v7 = [v3 indexPath];
    v8 = v7;
    if (!v7 || [v7 length] == 1)
    {
      v9 = 0;
LABEL_7:

LABEL_10:
      goto LABEL_11;
    }

    v11 = [v8 section];
    v12 = [v6 _orthogonalScrollingSections];
    v9 = [v12 containsIndex:v11];

    if (!v9)
    {
      goto LABEL_7;
    }

    if (v3)
    {
      v13 = v3[72];
      if ((v13 & 3) != 0)
      {
        if ((v13 & 2) == 0)
        {
          goto LABEL_17;
        }

        v14 = [(_UILabelConfiguration *)v3 _content];
        v15 = [v6 _shouldOrthogonalScrollingSectionDecorationScrollWithContentForIndexPath:v8 elementKind:v14];
      }

      else
      {
        v14 = [(_UILabelConfiguration *)v3 _content];
        v15 = [v6 _shouldOrthogonalScrollingSectionSupplementaryScrollWithContentForIndexPath:v8 elementKind:v14];
      }

      v9 = v15;

      goto LABEL_7;
    }

LABEL_17:
    v9 = 1;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_11:

LABEL_12:
  return v9;
}

- (uint64_t)isIndexPathInOrthogonalScrollingSection:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    if ([v3 item] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = -[_UICollectionViewOrthogonalScrollerSectionController isSectionOrthogonallyScrolling:](a1, [v4 section]);
    }
  }

  return v5;
}

- (uint64_t)isSectionOrthogonallyScrolling:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v4 = [WeakRetained collectionViewLayout];

  if (v4)
  {
    v5 = [v4 _orthogonalScrollingSections];
    v6 = [v5 containsIndex:a2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isIndexPathInExtantOrthogonalScroller:(_BOOL8)a1
{
  v3 = a2;
  if (a1)
  {
    if ([(_UICollectionViewOrthogonalScrollerSectionController *)a1 isIndexPathInOrthogonalScrollingSection:v3])
    {
      v4 = -[_UICollectionViewOrthogonalScrollerSectionController _scrollViewForSection:createIfNecessary:](a1, [v3 section], 0);
      a1 = v4 != 0;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)_scrollViewForSection:(int)a3 createIfNecessary:
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v9 = 0;
    goto LABEL_32;
  }

  v6 = MEMORY[0x1E696AD98];
  v7 = a1[3];
  v8 = [v6 numberWithInteger:a2];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = a3 == 0;
  }

  if (v10)
  {
    goto LABEL_29;
  }

  if (![(_UICollectionViewOrthogonalScrollerSectionController *)a1 isSectionOrthogonallyScrolling:a2])
  {
    v9 = 0;
LABEL_29:
    if (!v9)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  WeakRetained = objc_loadWeakRetained(a1 + 2);
  if (WeakRetained)
  {
    v9 = [[_UICollectionViewOrthogonalScrollView alloc] initWithCollectionView:a2 section:?];
    v12 = MEMORY[0x1E696AD98];
    v13 = a1[3];
    v14 = [v12 numberWithInteger:a2];
    [v13 setObject:v9 forKey:v14];

    v15 = [WeakRetained collectionViewLayout];
    v16 = [v15 _sectionDescriptorForSectionIndex:a2];

    [(_UICollectionViewOrthogonalScrollView *)v9 configureForDescriptor:v16];
    v17 = [WeakRetained _subviewRouterForOrthogonalScrollViewAtSection:a2];
    [(_UICollectionViewSubviewRouter *)v17 addContainerView:v9];
    v18 = objc_loadWeakRetained(a1 + 2);
    if (v18)
    {
      v38 = v16;
      v39 = WeakRetained;
      v40 = a2;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v19 = a1[5];
      v20 = [v19 countByEnumeratingWithState:&v45 objects:v50 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v46;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v46 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [v18 bringSubviewToFront:*(*(&v45 + 1) + 8 * i)];
          }

          v21 = [v19 countByEnumeratingWithState:&v45 objects:v50 count:16];
        }

        while (v21);
      }

      v37 = v17;

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v24 = a1[6];
      v25 = [v24 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v42;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v42 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v41 + 1) + 8 * j);
            v30 = [v29 _layoutAttributes];
            v31 = [v30 indexPath];

            if ([v31 length] == 2)
            {
              v32 = [v29 superview];

              if (v32 == v18)
              {
                -[_UICollectionViewOrthogonalScrollerSectionController _placeView:belowOrthogonalScrollViewForSection:](a1, v29, [v31 section]);
              }
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v41 objects:v49 count:16];
        }

        while (v26);
      }

      WeakRetained = v39;
      a2 = v40;
      v17 = v37;
      v16 = v38;
    }
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
LABEL_30:
    if (v9[271] != a2)
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = v9[271];
      v36 = objc_loadWeakRetained(a1 + 2);
      [v34 handleFailureInMethod:sel__scrollViewForSection_createIfNecessary_ object:a1 file:@"_UICollectionViewOrthogonalScrollerSectionController.m" lineNumber:266 description:{@"UICollectionView internal inconsistency: attempted to retrieve _UICollectionViewOrthogonalScrollView for section %ld but received section %ld. Collection View: %@", a2, v35, v36}];
    }
  }

LABEL_32:

  return v9;
}

- (id)autoScrollAssistantForOrthogonalScrollingSectionAtIndexPath:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    if ([(_UICollectionViewOrthogonalScrollerSectionController *)a1 isIndexPathInExtantOrthogonalScroller:v3])
    {
      v4 = -[_UICollectionViewOrthogonalScrollerSectionController _scrollViewForSection:createIfNecessary:](a1, [v3 section], 0);
      a1 = [v4 _autoScrollAssistant];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)reconfigureScrollViewsForUpdate:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = [WeakRetained collectionViewLayout];
      if (v6)
      {
        v7 = *(a1 + 24);
        v8 = [v6 _orthogonalScrollingSections];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = [MEMORY[0x1E696AC90] indexSet];
        }

        v11 = v10;

        if ([v11 count] || objc_msgSend(v7, "count"))
        {
          v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v11, "count")}];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __88___UICollectionViewOrthogonalScrollerSectionController_reconfigureScrollViewsForUpdate___block_invoke;
          v16[3] = &unk_1E7100540;
          v17 = v3;
          v18 = v11;
          v13 = v12;
          v19 = v13;
          v20 = a1;
          [v7 enumerateKeysAndObjectsUsingBlock:v16];
          v14 = *(a1 + 24);
          *(a1 + 24) = v13;
          v15 = v13;
        }
      }
    }
  }
}

- (void)adjustElementHierarchyOrderingForOrthogonalElementIfNeeded:(void *)a3 layoutAttributes:
{
  v11 = a2;
  v5 = a3;
  if (v11 && a1 && v5 && (v5[288] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 2);
    v7 = WeakRetained;
    if (WeakRetained && ([WeakRetained __hasTransitionLayoutAttributes] & 1) == 0)
    {
      v8 = [v7 collectionViewLayout];
      if ([v8 _hasOrthogonalScrollingSections])
      {
        if ([v8 _orthogonalScrollingElementShouldAppearAboveForAttributes:v5])
        {
          [v7 bringSubviewToFront:v11];
          [a1[5] addObject:v11];
        }

        else if ([v8 _orthogonalScrollingElementShouldAppearBelowForAttributes:v5])
        {
          [a1[6] addObject:v11];
          v9 = [v5 indexPath];
          v10 = [v9 section];

          [(_UICollectionViewOrthogonalScrollerSectionController *)a1 _placeView:v11 belowOrthogonalScrollViewForSection:v10];
        }
      }
    }
  }
}

- (void)_placeView:(uint64_t)a3 belowOrthogonalScrollViewForSection:
{
  v9 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 2);
    if (WeakRetained)
    {
      v6 = [(_UICollectionViewOrthogonalScrollerSectionController *)a1 _scrollViewForSection:a3 createIfNecessary:0];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 superview];

        if (v8 == WeakRetained)
        {
          [WeakRetained insertSubview:v9 belowSubview:v7];
        }
      }
    }
  }
}

- (id)promiseItemParentScrollViewForLayoutAttributes:(id *)a1
{
  if (a1)
  {
    v3 = a1;
    v4 = [a2 indexPath];
    v5 = [v4 section];

    a1 = [(_UICollectionViewOrthogonalScrollerSectionController *)v3 _scrollViewForSection:v5 createIfNecessary:0];
    v2 = vars8;
  }

  return a1;
}

- (void)setShouldPreventFocusScrollPastContentSize:(uint64_t)a1
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 8) != a2)
  {
    *(a1 + 8) = a2;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [*(a1 + 24) objectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) _setShouldPreventFocusScrollPastContentSize:*(a1 + 8)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (id)subviewRouterForSection:(id *)a1
{
  if (a1)
  {
    v2 = [(_UICollectionViewOrthogonalScrollerSectionController *)a1 _scrollViewForSection:a2 createIfNecessary:1];
    v3 = v2;
    if (v2)
    {
      v4 = *(v2 + 2176);
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)scrollToItemAtIndexPath:(uint64_t)a3 atScrollPosition:(uint64_t)a4 additionalInsets:(double)a5 animated:(double)a6
{
  v15 = a2;
  if (a1)
  {
    if (v15)
    {
      v19 = v15;
      v16 = [v15 length] >= 2;
      v15 = v19;
      if (v16)
      {
        v17 = -[_UICollectionViewOrthogonalScrollerSectionController _scrollViewForSection:createIfNecessary:](a1, [v19 section], 1);
        v18 = v17;
        if (v17)
        {
          [(_UICollectionViewOrthogonalScrollView *)v17 scrollToItemAtIndexPath:v19 atScrollPosition:a3 additionalInsets:a4 animated:a5, a6, a7, a8];
        }

        v15 = v19;
      }
    }
  }
}

- (id)existingScrollViewForSection:(id *)a1
{
  if (a1)
  {
    a1 = [(_UICollectionViewOrthogonalScrollerSectionController *)a1 _scrollViewForSection:a2 createIfNecessary:0];
    v2 = vars8;
  }

  return a1;
}

@end