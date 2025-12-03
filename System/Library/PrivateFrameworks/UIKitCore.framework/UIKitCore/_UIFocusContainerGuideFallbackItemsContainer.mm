@interface _UIFocusContainerGuideFallbackItemsContainer
- (UICoordinateSpace)coordinateSpace;
- (UIFocusEnvironment)parentFocusEnvironment;
- (_UIFocusContainerGuideFallbackItemsContainer)initWithParentEnvironment:(id)environment childItems:(id)items;
- (void)setNeedsFocusUpdate;
- (void)updateFocusIfNeeded;
@end

@implementation _UIFocusContainerGuideFallbackItemsContainer

- (_UIFocusContainerGuideFallbackItemsContainer)initWithParentEnvironment:(id)environment childItems:(id)items
{
  environmentCopy = environment;
  itemsCopy = items;
  v9 = itemsCopy;
  if (environmentCopy)
  {
    if (itemsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusContainerGuideFallbackItemsContainer.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"parentEnvironment != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusContainerGuideFallbackItemsContainer.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"childItems != nil"}];

LABEL_3:
  v15.receiver = self;
  v15.super_class = _UIFocusContainerGuideFallbackItemsContainer;
  v10 = [(_UIFocusContainerGuideFallbackItemsContainer *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_parentFocusEnvironment, environmentCopy);
    objc_storeStrong(&v11->_childItems, items);
  }

  return v11;
}

- (UICoordinateSpace)coordinateSpace
{
  parentFocusEnvironment = [(_UIFocusContainerGuideFallbackItemsContainer *)self parentFocusEnvironment];
  focusItemContainer = [parentFocusEnvironment focusItemContainer];
  coordinateSpace = [focusItemContainer coordinateSpace];

  return coordinateSpace;
}

- (void)setNeedsFocusUpdate
{
  v3 = [UIFocusSystem focusSystemForEnvironment:self];
  [v3 requestFocusUpdateToEnvironment:self];
}

- (void)updateFocusIfNeeded
{
  v2 = [UIFocusSystem focusSystemForEnvironment:self];
  [v2 updateFocusIfNeeded];
}

- (UIFocusEnvironment)parentFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_parentFocusEnvironment);

  return WeakRetained;
}

@end