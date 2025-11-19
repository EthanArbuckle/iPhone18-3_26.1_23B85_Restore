@interface _TVShelfView
- (CGRect)tv_augmentedSelectionFrameForFrame:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)tv_sizeThatFits:(CGSize)a3 withContentInset:(UIEdgeInsets)a4;
- (UIEdgeInsets)_selectionMarginsForCell:(id)a3;
- (UIEdgeInsets)selectionMarginsForCellAtIndexPath:(id)a3;
- (_TVShelfView)initWithCoder:(id)a3;
- (_TVShelfView)initWithFrame:(CGRect)a3;
- (_TVShelfView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (_TVShelfView)initWithFrame:(CGRect)a3 shelfViewLayout:(id)a4;
- (void)_updateLayoutForFocusedView:(id)a3 withAnimationCoordinator:(id)a4;
@end

@implementation _TVShelfView

- (_TVShelfView)initWithFrame:(CGRect)a3 shelfViewLayout:(id)a4
{
  v7.receiver = self;
  v7.super_class = _TVShelfView;
  v4 = [(_TVCollectionView *)&v7 initWithFrame:a4 collectionViewLayout:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    commonInit(v4);
  }

  return v5;
}

- (_TVShelfView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _TVShelfView;
  v3 = [(_TVShelfView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    commonInit(v3);
  }

  return v4;
}

- (_TVShelfView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  [(_TVShelfView *)self doesNotRecognizeSelector:a2, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  return 0;
}

- (_TVShelfView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_alloc_init(_TVShelfViewLayout);
  v9 = [(_TVShelfView *)self initWithFrame:v8 shelfViewLayout:x, y, width, height];

  return v9;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(_TVShelfView *)self contentInset];

  [(_TVShelfView *)self tv_sizeThatFits:width withContentInset:height, v6, v7, v8, v9];
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)tv_sizeThatFits:(CGSize)a3 withContentInset:(UIEdgeInsets)a4
{
  bottom = a4.bottom;
  top = a4.top;
  width = a3.width;
  v7 = [(_TVShelfView *)self collectionViewLayout:a3.width];
  [v7 computedContentHeight];
  v9 = bottom + top + v8;

  v10 = width;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_updateLayoutForFocusedView:(id)a3 withAnimationCoordinator:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v38 = v6;
  if ([v6 isDescendantOfView:self])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v8 = [(_TVShelfView *)self indexPathsForVisibleItems];
    v9 = [v8 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v47;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v47 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v46 + 1) + 8 * i);
          v14 = [(_TVShelfView *)self cellForItemAtIndexPath:v13];
          if ([v6 isDescendantOfView:v14])
          {
            v15 = v13;

            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_13:
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_alloc_init(TVShelfViewLayoutInvalidationContext);
  [(TVShelfViewLayoutInvalidationContext *)v16 setInvalidateVerticalBumps:1];
  v37 = v15;
  [(TVShelfViewLayoutInvalidationContext *)v16 setFocusedItemIndexPath:v15];
  v17 = [(_TVShelfView *)self collectionViewLayout];
  v36 = v16;
  [v17 invalidateLayoutWithContext:v16];

  v18 = [(_TVShelfView *)self indexPathsForVisibleSupplementaryElementsOfKind:@"TVShelfLayoutElementKindHeader"];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v19 = [v18 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v43;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v42 + 1) + 8 * j);
        v24 = [(_TVShelfView *)self supplementaryViewForElementKind:@"TVShelfLayoutElementKindHeader" atIndexPath:v23];
        v25 = [(_TVShelfView *)self collectionViewLayout];
        v26 = [v25 layoutAttributesForSupplementaryViewOfKind:@"TVShelfLayoutElementKindHeader" atIndexPath:v23];

        [v24 frame];
        v28 = v27;
        [v26 frame];
        if (v28 != v29)
        {
          [v24 frame];
          if (v7)
          {
            v32 = v31;
            [v26 frame];
            v34 = v32 < v33;
            v39[0] = MEMORY[0x277D85DD0];
            v39[1] = 3221225472;
            v39[2] = __69___TVShelfView__updateLayoutForFocusedView_withAnimationCoordinator___block_invoke;
            v39[3] = &unk_279D6E2F8;
            v40 = v24;
            v41 = v26;
            [v7 addCoordinatedAnimationsForAnimation:v34 animations:v39 completion:0];
          }

          else
          {
            v35 = v30;
            [v26 frame];
            [v24 setFrame:v35];
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v20);
  }
}

- (CGRect)tv_augmentedSelectionFrameForFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(_TVShelfView *)self indexPathsForVisibleSupplementaryElementsOfKind:@"TVShelfLayoutElementKindHeader"];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(_TVShelfView *)self shelfFlowLayout];
    [v10 boundingSelectionFrameForFrame:{x, y, width, height}];
    x = v11;
    y = v12;
    width = v13;
    height = v14;
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (UIEdgeInsets)selectionMarginsForCellAtIndexPath:(id)a3
{
  v4 = [(_TVShelfView *)self cellForItemAtIndexPath:a3];
  if (v4)
  {
    [(_TVShelfView *)self _selectionMarginsForCell:v4];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *MEMORY[0x277D768C8];
    v8 = *(MEMORY[0x277D768C8] + 8);
    v10 = *(MEMORY[0x277D768C8] + 16);
    v12 = *(MEMORY[0x277D768C8] + 24);
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (UIEdgeInsets)_selectionMarginsForCell:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_287E58AD8])
  {
    [v3 selectionMarginsForSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x277D768C8];
    v7 = *(MEMORY[0x277D768C8] + 8);
    v9 = *(MEMORY[0x277D768C8] + 16);
    v11 = *(MEMORY[0x277D768C8] + 24);
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

@end