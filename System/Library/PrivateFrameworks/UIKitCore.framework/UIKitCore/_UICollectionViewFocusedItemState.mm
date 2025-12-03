@interface _UICollectionViewFocusedItemState
+ (_UICollectionViewFocusedItemState)stateWithReusableView:(id)view indexPath:(id)path elementKind:(id)kind viewType:(unint64_t)type;
+ (id)stateWithIndexPath:(void *)path elementKind:(uint64_t)kind viewType:;
+ (id)stateWithLayoutAttributes:(uint64_t)attributes;
+ (id)stateWithReusableView:(uint64_t)view;
+ (id)stateWithReusableView:(void *)view overrideIndexPath:;
- (_UICollectionViewFocusedItemState)initWithReusableView:(id)view indexPath:(id)path elementKind:(id)kind viewType:(unint64_t)type;
- (id)description;
- (void)cell;
- (void)copyWithIndexPath:(int)path preservingReusableView:;
- (void)copyWithReusableView:(void *)view;
@end

@implementation _UICollectionViewFocusedItemState

- (void)cell
{
  if (self)
  {
    selfCopy = self;
    if (self[1])
    {
      if (self[4] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v4 = objc_opt_class();
        v5 = NSStringFromClass(v4);
        [currentHandler handleFailureInMethod:sel_cell object:selfCopy file:@"_UICollectionViewFocusedItemState.m" lineNumber:97 description:{@"Expected a kind of UICollectionViewCell but found %@.", v5}];
      }
    }

    self = selfCopy[1];
    v1 = vars8;
  }

  return self;
}

+ (_UICollectionViewFocusedItemState)stateWithReusableView:(id)view indexPath:(id)path elementKind:(id)kind viewType:(unint64_t)type
{
  viewCopy = view;
  pathCopy = path;
  kindCopy = kind;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewFocusedItemState.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"reusableView != nil"}];
  }

  v14 = [[self alloc] initWithReusableView:viewCopy indexPath:pathCopy elementKind:kindCopy viewType:type];

  return v14;
}

+ (id)stateWithIndexPath:(void *)path elementKind:(uint64_t)kind viewType:
{
  pathCopy = path;
  v7 = a2;
  v8 = [objc_alloc(objc_opt_self()) initWithReusableView:0 indexPath:v7 elementKind:pathCopy viewType:kind];

  return v8;
}

+ (id)stateWithLayoutAttributes:(uint64_t)attributes
{
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_stateWithLayoutAttributes_ object:v3 file:@"_UICollectionViewFocusedItemState.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"layoutAttributes"}];
  }

  v4 = [v3 alloc];
  indexPath = [v2 indexPath];
  _content = [(_UILabelConfiguration *)v2 _content];
  representedElementCategory = [v2 representedElementCategory];

  v8 = [v4 initWithReusableView:0 indexPath:indexPath elementKind:_content viewType:representedElementCategory];

  return v8;
}

+ (id)stateWithReusableView:(uint64_t)view
{
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_stateWithReusableView_ object:v3 file:@"_UICollectionViewFocusedItemState.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"reusableView != nil"}];
  }

  _layoutAttributes = [v2 _layoutAttributes];
  v5 = [v3 alloc];
  indexPath = [_layoutAttributes indexPath];
  _content = [(_UILabelConfiguration *)_layoutAttributes _content];
  v8 = [v5 initWithReusableView:v2 indexPath:indexPath elementKind:_content viewType:{objc_msgSend(_layoutAttributes, "representedElementCategory")}];

  return v8;
}

+ (id)stateWithReusableView:(void *)view overrideIndexPath:
{
  viewCopy = view;
  v5 = a2;
  v6 = objc_opt_self();
  if (v5)
  {
    if (viewCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_stateWithReusableView_overrideIndexPath_ object:v6 file:@"_UICollectionViewFocusedItemState.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"reusableView != nil"}];

    if (viewCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:sel_stateWithReusableView_overrideIndexPath_ object:v6 file:@"_UICollectionViewFocusedItemState.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"overrideIndexPath != nil"}];

LABEL_3:
  _layoutAttributes = [v5 _layoutAttributes];
  v8 = [v6 alloc];
  _content = [(_UILabelConfiguration *)_layoutAttributes _content];
  v10 = [v8 initWithReusableView:v5 indexPath:viewCopy elementKind:_content viewType:{objc_msgSend(_layoutAttributes, "representedElementCategory")}];

  return v10;
}

- (_UICollectionViewFocusedItemState)initWithReusableView:(id)view indexPath:(id)path elementKind:(id)kind viewType:(unint64_t)type
{
  viewCopy = view;
  pathCopy = path;
  kindCopy = kind;
  if (viewCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewFocusedItemState.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"reusableView == nil || [reusableView isKindOfClass:[UICollectionReusableView class]]"}];

    if (pathCopy)
    {
LABEL_4:
      if (kindCopy)
      {
        goto LABEL_5;
      }

LABEL_14:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UICollectionViewFocusedItemState.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"elementKind != nil"}];

      if (!viewCopy)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }
  }

  else if (pathCopy)
  {
    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UICollectionViewFocusedItemState.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

  if (!kindCopy)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (!viewCopy)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (!type)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      [currentHandler4 handleFailureInMethod:a2 object:self file:@"_UICollectionViewFocusedItemState.m" lineNumber:52 description:{@"Invalid view for view type cell: %@", v23}];
    }
  }

LABEL_9:
  v24.receiver = self;
  v24.super_class = _UICollectionViewFocusedItemState;
  v15 = [(_UICollectionViewFocusedItemState *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_reusableView, view);
    objc_storeStrong(&v16->_indexPath, path);
    objc_storeStrong(&v16->_elementKind, kind);
    v16->_viewType = type;
  }

  return v16;
}

- (void)copyWithReusableView:(void *)view
{
  v3 = a2;
  v4 = v3;
  if (view)
  {
    if (view[1] == v3)
    {
      viewCopy = view;
    }

    else
    {
      viewCopy = [objc_alloc(objc_opt_class()) initWithReusableView:v3 indexPath:view[2] elementKind:view[3] viewType:view[4]];
    }

    view = viewCopy;
  }

  return view;
}

- (void)copyWithIndexPath:(int)path preservingReusableView:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (!v5)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_copyWithIndexPath_preservingReusableView_ object:self file:@"_UICollectionViewFocusedItemState.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
    }

    if (self[1] || ![v6 isEqual:self[2]])
    {
      v8 = objc_alloc(objc_opt_class());
      if (path)
      {
        v9 = self[1];
      }

      else
      {
        v9 = 0;
      }

      selfCopy = [v8 initWithReusableView:v9 indexPath:v6 elementKind:self[3] viewType:self[4]];
    }

    else
    {
      selfCopy = self;
    }

    self = selfCopy;
  }

  return self;
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

  string = [v3 string];

  return string;
}

@end