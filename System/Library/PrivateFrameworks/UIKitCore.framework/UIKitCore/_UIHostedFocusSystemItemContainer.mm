@interface _UIHostedFocusSystemItemContainer
- (UICoordinateSpace)coordinateSpace;
- (_UIHostedFocusSystem)focusSystem;
- (_UIHostedFocusSystemItemContainer)initWithHostedFocusSystem:(id)system;
- (id)focusItemsInRect:(CGRect)rect;
@end

@implementation _UIHostedFocusSystemItemContainer

- (_UIHostedFocusSystemItemContainer)initWithHostedFocusSystem:(id)system
{
  systemCopy = system;
  v8.receiver = self;
  v8.super_class = _UIHostedFocusSystemItemContainer;
  v5 = [(_UIHostedFocusSystemItemContainer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIHostedFocusSystemItemContainer *)v5 setFocusSystem:systemCopy];
  }

  return v6;
}

- (UICoordinateSpace)coordinateSpace
{
  focusSystem = [(_UIHostedFocusSystemItemContainer *)self focusSystem];
  hostEnvironment = [focusSystem hostEnvironment];
  focusItemContainer = [hostEnvironment focusItemContainer];
  coordinateSpace = [focusItemContainer coordinateSpace];

  return coordinateSpace;
}

- (id)focusItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  focusSystem = [(_UIHostedFocusSystemItemContainer *)self focusSystem];
  delegateProxy = [focusSystem delegateProxy];
  delegate = [delegateProxy delegate];

  if (delegate)
  {
    v10 = [delegate _focusSystem:focusSystem focusItemsInRect:{x, y, width, height}];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (_UIHostedFocusSystem)focusSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);

  return WeakRetained;
}

@end