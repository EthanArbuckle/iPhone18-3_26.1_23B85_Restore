@interface _UICollectionViewFocusedItemState
+ (_UICollectionViewFocusedItemState)stateWithReusableView:(id)a3 indexPath:(id)a4 elementKind:(id)a5 viewType:(unint64_t)a6;
+ (id)stateWithIndexPath:(void *)a3 elementKind:(uint64_t)a4 viewType:;
+ (id)stateWithLayoutAttributes:(uint64_t)a1;
+ (id)stateWithReusableView:(uint64_t)a1;
+ (id)stateWithReusableView:(void *)a3 overrideIndexPath:;
- (_UICollectionViewFocusedItemState)initWithReusableView:(id)a3 indexPath:(id)a4 elementKind:(id)a5 viewType:(unint64_t)a6;
- (id)description;
- (void)cell;
- (void)copyWithIndexPath:(int)a3 preservingReusableView:;
- (void)copyWithReusableView:(void *)a1;
@end

@implementation _UICollectionViewFocusedItemState

- (void)cell
{
  if (a1)
  {
    v2 = a1;
    if (a1[1])
    {
      if (a1[4] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v3 = [MEMORY[0x1E696AAA8] currentHandler];
        v4 = objc_opt_class();
        v5 = NSStringFromClass(v4);
        [v3 handleFailureInMethod:sel_cell object:v2 file:@"_UICollectionViewFocusedItemState.m" lineNumber:97 description:{@"Expected a kind of UICollectionViewCell but found %@.", v5}];
      }
    }

    a1 = v2[1];
    v1 = vars8;
  }

  return a1;
}

+ (_UICollectionViewFocusedItemState)stateWithReusableView:(id)a3 indexPath:(id)a4 elementKind:(id)a5 viewType:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!v11)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"_UICollectionViewFocusedItemState.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"reusableView != nil"}];
  }

  v14 = [[a1 alloc] initWithReusableView:v11 indexPath:v12 elementKind:v13 viewType:a6];

  return v14;
}

+ (id)stateWithIndexPath:(void *)a3 elementKind:(uint64_t)a4 viewType:
{
  v6 = a3;
  v7 = a2;
  v8 = [objc_alloc(objc_opt_self()) initWithReusableView:0 indexPath:v7 elementKind:v6 viewType:a4];

  return v8;
}

+ (id)stateWithLayoutAttributes:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:sel_stateWithLayoutAttributes_ object:v3 file:@"_UICollectionViewFocusedItemState.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"layoutAttributes"}];
  }

  v4 = [v3 alloc];
  v5 = [v2 indexPath];
  v6 = [(_UILabelConfiguration *)v2 _content];
  v7 = [v2 representedElementCategory];

  v8 = [v4 initWithReusableView:0 indexPath:v5 elementKind:v6 viewType:v7];

  return v8;
}

+ (id)stateWithReusableView:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:sel_stateWithReusableView_ object:v3 file:@"_UICollectionViewFocusedItemState.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"reusableView != nil"}];
  }

  v4 = [v2 _layoutAttributes];
  v5 = [v3 alloc];
  v6 = [v4 indexPath];
  v7 = [(_UILabelConfiguration *)v4 _content];
  v8 = [v5 initWithReusableView:v2 indexPath:v6 elementKind:v7 viewType:{objc_msgSend(v4, "representedElementCategory")}];

  return v8;
}

+ (id)stateWithReusableView:(void *)a3 overrideIndexPath:
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  if (v5)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:sel_stateWithReusableView_overrideIndexPath_ object:v6 file:@"_UICollectionViewFocusedItemState.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"reusableView != nil"}];

    if (v4)
    {
      goto LABEL_3;
    }
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:sel_stateWithReusableView_overrideIndexPath_ object:v6 file:@"_UICollectionViewFocusedItemState.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"overrideIndexPath != nil"}];

LABEL_3:
  v7 = [v5 _layoutAttributes];
  v8 = [v6 alloc];
  v9 = [(_UILabelConfiguration *)v7 _content];
  v10 = [v8 initWithReusableView:v5 indexPath:v4 elementKind:v9 viewType:{objc_msgSend(v7, "representedElementCategory")}];

  return v10;
}

- (_UICollectionViewFocusedItemState)initWithReusableView:(id)a3 indexPath:(id)a4 elementKind:(id)a5 viewType:(unint64_t)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_UICollectionViewFocusedItemState.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"reusableView == nil || [reusableView isKindOfClass:[UICollectionReusableView class]]"}];

    if (v13)
    {
LABEL_4:
      if (v14)
      {
        goto LABEL_5;
      }

LABEL_14:
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"_UICollectionViewFocusedItemState.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"elementKind != nil"}];

      if (!v12)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }
  }

  else if (v13)
  {
    goto LABEL_4;
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"_UICollectionViewFocusedItemState.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (!a6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      [v21 handleFailureInMethod:a2 object:self file:@"_UICollectionViewFocusedItemState.m" lineNumber:52 description:{@"Invalid view for view type cell: %@", v23}];
    }
  }

LABEL_9:
  v24.receiver = self;
  v24.super_class = _UICollectionViewFocusedItemState;
  v15 = [(_UICollectionViewFocusedItemState *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_reusableView, a3);
    objc_storeStrong(&v16->_indexPath, a4);
    objc_storeStrong(&v16->_elementKind, a5);
    v16->_viewType = a6;
  }

  return v16;
}

- (void)copyWithReusableView:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (a1[1] == v3)
    {
      v5 = a1;
    }

    else
    {
      v5 = [objc_alloc(objc_opt_class()) initWithReusableView:v3 indexPath:a1[2] elementKind:a1[3] viewType:a1[4]];
    }

    a1 = v5;
  }

  return a1;
}

- (void)copyWithIndexPath:(int)a3 preservingReusableView:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (!v5)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:sel_copyWithIndexPath_preservingReusableView_ object:a1 file:@"_UICollectionViewFocusedItemState.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
    }

    if (a1[1] || ![v6 isEqual:a1[2]])
    {
      v8 = objc_alloc(objc_opt_class());
      if (a3)
      {
        v9 = a1[1];
      }

      else
      {
        v9 = 0;
      }

      v7 = [v8 initWithReusableView:v9 indexPath:v6 elementKind:a1[3] viewType:a1[4]];
    }

    else
    {
      v7 = a1;
    }

    a1 = v7;
  }

  return a1;
}

- (id)description
{
  v3 = [UIDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"indexPath" object:self->_indexPath];
  v5 = [v3 appendName:@"elementKind" object:self->_elementKind];
  v6 = _UIStringFromCollectionElementCategory(self->_viewType);
  v7 = [v3 appendName:@"viewType" object:v6];

  if (self->_reusableView)
  {
    v8 = [v3 appendName:@"reusableView" object:?];
  }

  v9 = [v3 string];

  return v9;
}

@end