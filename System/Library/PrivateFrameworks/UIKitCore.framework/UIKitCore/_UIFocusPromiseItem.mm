@interface _UIFocusPromiseItem
- (CGRect)frame;
- (NSString)description;
- (UICoordinateSpace)coordinateSpace;
- (UIFocusEnvironment)parentFocusEnvironment;
- (UIFocusItem)fulfilledItem;
- (_UIFocusPromiseItem)initWithParentEnvironment:(id)environment frame:(CGRect)frame fullfillmentHandler:(id)handler;
- (id)focusItemsInRect:(CGRect)rect;
- (void)setNeedsFocusUpdate;
- (void)updateFocusIfNeeded;
@end

@implementation _UIFocusPromiseItem

- (UIFocusEnvironment)parentFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_parentFocusEnvironment);

  return WeakRetained;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UICoordinateSpace)coordinateSpace
{
  parentFocusEnvironment = [(_UIFocusPromiseItem *)self parentFocusEnvironment];
  focusItemContainer = [parentFocusEnvironment focusItemContainer];
  coordinateSpace = [focusItemContainer coordinateSpace];

  return coordinateSpace;
}

- (UIFocusItem)fulfilledItem
{
  if ((*&self->_flags & 1) == 0)
  {
    fulfillmentHandler = [(_UIFocusPromiseItem *)self fulfillmentHandler];
    v4 = fulfillmentHandler[2]();

    fulfilledItem = self->_fulfilledItem;
    self->_fulfilledItem = v4;

    *&self->_flags |= 1u;
  }

  v6 = self->_fulfilledItem;

  return v6;
}

- (_UIFocusPromiseItem)initWithParentEnvironment:(id)environment frame:(CGRect)frame fullfillmentHandler:(id)handler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  environmentCopy = environment;
  handlerCopy = handler;
  if (!environmentCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusPromiseItem.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"parentEnvironment != nil"}];
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  if (CGRectIsNull(v21))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusPromiseItem.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"!CGRectIsNull(frame)"}];

    if (handlerCopy)
    {
      goto LABEL_5;
    }
  }

  else if (handlerCopy)
  {
    goto LABEL_5;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIFocusPromiseItem.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"fulfillmentHandler != nil"}];

LABEL_5:
  v20.receiver = self;
  v20.super_class = _UIFocusPromiseItem;
  v14 = [(_UIFocusPromiseItem *)&v20 init];
  v15 = v14;
  if (v14)
  {
    [(_UIFocusPromiseItem *)v14 setParentFocusEnvironment:environmentCopy];
    [(_UIFocusPromiseItem *)v15 setFrame:x, y, width, height];
    [(_UIFocusPromiseItem *)v15 setFulfillmentHandler:handlerCopy];
  }

  return v15;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  debugIdentifier = [(_UIFocusPromiseItem *)self debugIdentifier];
  v5 = [v3 appendObject:debugIdentifier withName:@"identifier" skipIfNil:1];

  [(_UIFocusPromiseItem *)self frame];
  v6 = [v3 appendRect:@"frame" withName:?];
  parentFocusEnvironment = [(_UIFocusPromiseItem *)self parentFocusEnvironment];
  v8 = [v3 appendObject:parentFocusEnvironment withName:@"parentFocusEnvironment"];

  build = [v3 build];

  return build;
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

- (id)focusItemsInRect:(CGRect)rect
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [(_UIFocusPromiseItem *)self fulfilledItem:rect.origin.x];
  v4 = v3;
  if (v3)
  {
    v7[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

@end