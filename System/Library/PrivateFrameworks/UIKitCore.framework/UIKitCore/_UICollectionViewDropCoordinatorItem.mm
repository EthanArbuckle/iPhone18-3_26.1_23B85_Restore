@interface _UICollectionViewDropCoordinatorItem
- (NSString)description;
- (UIDragItem)dragItem;
- (_UICollectionViewDropCoordinatorItem)initWithDestinationIndexPath:(id)path dragItem:(id)item;
- (_UICollectionViewDropCoordinatorItem)initWithDestinationIndexPath:(id)path dragItem:(id)item placeholderConfiguration:(id)configuration;
- (_UICollectionViewDropCoordinatorItem)initWithDragItem:(id)item target:(id)target;
- (void)addAnimations:(id)animations;
- (void)addCompletion:(id)completion;
@end

@implementation _UICollectionViewDropCoordinatorItem

- (_UICollectionViewDropCoordinatorItem)initWithDestinationIndexPath:(id)path dragItem:(id)item
{
  pathCopy = path;
  itemCopy = item;
  v21.receiver = self;
  v21.super_class = _UICollectionViewDropCoordinatorItem;
  v9 = [(_UICollectionViewDropCoordinatorItem *)&v21 init];
  v10 = v9;
  if (v9)
  {
    v9->_kind = 0;
    objc_storeStrong(&v9->_destinationIndexPath, path);
    objc_storeWeak(&v10->_dragItem, itemCopy);
    v11 = v10;
    WeakRetained = objc_loadWeakRetained(&v10->_dragItem);
    [WeakRetained _visibleDropItemSize];
    v14 = v13;
    v16 = v15;

    v17 = v14 != *MEMORY[0x1E695F060];
    if (v16 != *(MEMORY[0x1E695F060] + 8))
    {
      v17 = 1;
    }

    v11->_shouldRemainInHierarchy = v17;
    v18 = objc_alloc_init(_UIDropAnimationHandlers);
    animationHandlers = v11->_animationHandlers;
    v11->_animationHandlers = v18;
  }

  return v10;
}

- (_UICollectionViewDropCoordinatorItem)initWithDragItem:(id)item target:(id)target
{
  itemCopy = item;
  targetCopy = target;
  v22.receiver = self;
  v22.super_class = _UICollectionViewDropCoordinatorItem;
  v8 = [(_UICollectionViewDropCoordinatorItem *)&v22 init];
  v9 = v8;
  if (v8)
  {
    v8->_kind = 1;
    v10 = [targetCopy copy];
    target = v9->_target;
    v9->_target = v10;

    objc_storeWeak(&v9->_dragItem, itemCopy);
    v12 = v9;
    WeakRetained = objc_loadWeakRetained(&v9->_dragItem);
    [WeakRetained _visibleDropItemSize];
    v15 = v14;
    v17 = v16;

    v18 = v15 != *MEMORY[0x1E695F060];
    if (v17 != *(MEMORY[0x1E695F060] + 8))
    {
      v18 = 1;
    }

    v12->_shouldRemainInHierarchy = v18;
    v19 = objc_alloc_init(_UIDropAnimationHandlers);
    animationHandlers = v12->_animationHandlers;
    v12->_animationHandlers = v19;
  }

  return v9;
}

- (_UICollectionViewDropCoordinatorItem)initWithDestinationIndexPath:(id)path dragItem:(id)item placeholderConfiguration:(id)configuration
{
  pathCopy = path;
  itemCopy = item;
  configurationCopy = configuration;
  v27.receiver = self;
  v27.super_class = _UICollectionViewDropCoordinatorItem;
  v12 = [(_UICollectionViewDropCoordinatorItem *)&v27 init];
  v13 = v12;
  if (v12)
  {
    v12->_kind = 2;
    previewParametersProvider = [configurationCopy previewParametersProvider];
    v15 = [previewParametersProvider copy];
    previewParametersProvider = v13->_previewParametersProvider;
    v13->_previewParametersProvider = v15;

    objc_storeWeak(&v13->_dragItem, itemCopy);
    objc_storeStrong(&v13->_destinationIndexPath, path);
    v17 = v13;
    WeakRetained = objc_loadWeakRetained(&v13->_dragItem);
    [WeakRetained _visibleDropItemSize];
    v20 = v19;
    v22 = v21;

    v23 = v20 != *MEMORY[0x1E695F060];
    if (v22 != *(MEMORY[0x1E695F060] + 8))
    {
      v23 = 1;
    }

    v17->_shouldRemainInHierarchy = v23;
    v24 = objc_alloc_init(_UIDropAnimationHandlers);
    animationHandlers = v17->_animationHandlers;
    v17->_animationHandlers = v24;
  }

  return v13;
}

- (NSString)description
{
  kind = self->_kind;
  if (kind > 2)
  {
    v4 = &stru_1EFB14550;
  }

  else
  {
    v4 = off_1E7100450[kind];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  WeakRetained = objc_loadWeakRetained(&self->_dragItem);
  v9 = __UICVIndexPathDescription(self->_destinationIndexPath);
  target = [(_UICollectionViewDropCoordinatorItem *)self target];
  [target center];
  v11 = NSStringFromCGPoint(v16);
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldRemainInHierarchy];
  v13 = [v5 stringWithFormat:@"<%@: kind = %@ dragItem = %@; destinationIndexPath = %@ location = %@; shouldRemainInHierarchy = %@>", v7, v4, WeakRetained, v9, v11, v12];;

  return v13;
}

- (void)addAnimations:(id)animations
{
  animationsCopy = animations;
  animationHandlers = [(_UICollectionViewDropCoordinatorItem *)self animationHandlers];
  [animationHandlers addAnimations:animationsCopy];
}

- (void)addCompletion:(id)completion
{
  completionCopy = completion;
  animationHandlers = [(_UICollectionViewDropCoordinatorItem *)self animationHandlers];
  [animationHandlers addCompletion:completionCopy];
}

- (UIDragItem)dragItem
{
  WeakRetained = objc_loadWeakRetained(&self->_dragItem);

  return WeakRetained;
}

@end