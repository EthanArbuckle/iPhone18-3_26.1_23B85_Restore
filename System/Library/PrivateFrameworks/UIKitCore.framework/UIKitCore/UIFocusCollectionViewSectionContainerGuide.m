@interface UIFocusCollectionViewSectionContainerGuide
@end

@implementation UIFocusCollectionViewSectionContainerGuide

id __70___UIFocusCollectionViewSectionContainerGuide_initWithCollectionView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained collectionView];
  v3 = [WeakRetained section];
  [v2 visibleBounds];
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  v8 = CGRectGetWidth(v26) * -5.0;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v9 = CGRectGetHeight(v27) * -5.0;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v29 = CGRectInset(v28, v8, v9);
  v10 = v29.origin.x;
  v11 = v29.origin.y;
  v12 = v29.size.width;
  v13 = v29.size.height;
  [WeakRetained layoutFrame];
  v32.origin.x = v10;
  v32.origin.y = v11;
  v32.size.width = v12;
  v32.size.height = v13;
  v31 = CGRectIntersection(v30, v32);
  v14 = v31.origin.x;
  v15 = v31.origin.y;
  v16 = v31.size.width;
  v17 = v31.size.height;
  v18 = [v2 _existingVisibleCells];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __70___UIFocusCollectionViewSectionContainerGuide_initWithCollectionView___block_invoke_2;
  v24[3] = &__block_descriptor_40_e30_B16__0__UICollectionViewCell_8l;
  v24[4] = v3;
  v19 = [v18 bs_filter:v24];

  v20 = [v2 coordinateSpace];
  v21 = [v2 _focusPromiseItemsInRect:v20 inCoordinateSpace:v3 inSection:{v14, v15, v16, v17}];

  v22 = [v19 arrayByAddingObjectsFromArray:v21];

  return v22;
}

BOOL __70___UIFocusCollectionViewSectionContainerGuide_initWithCollectionView___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 _layoutAttributes];
  v4 = [v3 indexPath];
  v5 = [v4 section] == *(a1 + 32);

  return v5;
}

@end