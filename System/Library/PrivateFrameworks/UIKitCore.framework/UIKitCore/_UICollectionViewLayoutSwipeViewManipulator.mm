@interface _UICollectionViewLayoutSwipeViewManipulator
- (CGRect)restingFrameForSwipedView:(id)a3 atIndexPath:(id)a4;
- (_UICollectionViewLayoutSwipeViewManipulator)initWithCollectionView:(id)a3 swipeActionsModule:(id)a4;
- (void)moveSwipedView:(id)a3 atIndexPath:(id)a4 withSwipeInfo:(id *)a5 animator:(id)a6;
@end

@implementation _UICollectionViewLayoutSwipeViewManipulator

- (_UICollectionViewLayoutSwipeViewManipulator)initWithCollectionView:(id)a3 swipeActionsModule:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _UICollectionViewLayoutSwipeViewManipulator;
  v8 = [(_UICollectionViewLayoutSwipeViewManipulator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_collectionView, v6);
    objc_storeWeak(&v9->_swipeActionsModule, v7);
  }

  return v9;
}

- (void)moveSwipedView:(id)a3 atIndexPath:(id)a4 withSwipeInfo:(id *)a5 animator:(id)a6
{
  v8 = a4;
  v9 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  if (v9)
  {
    v11 = objc_loadWeakRetained(&self->_swipeActionsModule);
    [v11 _performForcedCollectionViewLayoutPreservingExistingLayoutAttributes];
  }

  v12 = [WeakRetained collectionViewLayout];
  _UIInvalidateSwipeActionsLayoutForItemAtIndexPath(v12, v8);

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __97___UICollectionViewLayoutSwipeViewManipulator_moveSwipedView_atIndexPath_withSwipeInfo_animator___block_invoke;
  v20 = &unk_1E70F35B8;
  v21 = WeakRetained;
  v22 = v8;
  v13 = v8;
  v14 = WeakRetained;
  v15 = _Block_copy(&v17);
  v16 = v15;
  if (v9)
  {
    [v9 addAnimations:{v15, v17, v18, v19, v20, v21, v22}];
  }

  else
  {
    (*(v15 + 2))(v15);
  }
}

- (CGRect)restingFrameForSwipedView:(id)a3 atIndexPath:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  v7 = [WeakRetained collectionViewLayout];
  v8 = [v7 layoutAttributesForDecorationViewOfKind:@"UICollectionViewListLayoutElementKindSwipeActions" atIndexPath:v5];

  if (os_variant_has_internal_diagnostics())
  {
    if (v8)
    {
      goto LABEL_3;
    }

    v21 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v23 = 138412290;
      v24 = v5;
      _os_log_fault_impl(&dword_188A29000, v21, OS_LOG_TYPE_FAULT, "Missing layout attributes for swipe actions view at index path: %@", &v23, 0xCu);
    }

LABEL_11:
    v10 = *MEMORY[0x1E695F050];
    v12 = *(MEMORY[0x1E695F050] + 8);
    v14 = *(MEMORY[0x1E695F050] + 16);
    v16 = *(MEMORY[0x1E695F050] + 24);
    goto LABEL_4;
  }

  if (!v8)
  {
    v22 = *(__UILogGetCategoryCachedImpl("Assert", &restingFrameForSwipedView_atIndexPath____s_category) + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = 138412290;
      v24 = v5;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Missing layout attributes for swipe actions view at index path: %@", &v23, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_3:
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
LABEL_4:

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

@end