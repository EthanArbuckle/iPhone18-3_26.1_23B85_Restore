@interface _UIHostedFocusSystemItemContainer
- (UICoordinateSpace)coordinateSpace;
- (_UIHostedFocusSystem)focusSystem;
- (_UIHostedFocusSystemItemContainer)initWithHostedFocusSystem:(id)a3;
- (id)focusItemsInRect:(CGRect)a3;
@end

@implementation _UIHostedFocusSystemItemContainer

- (_UIHostedFocusSystemItemContainer)initWithHostedFocusSystem:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIHostedFocusSystemItemContainer;
  v5 = [(_UIHostedFocusSystemItemContainer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIHostedFocusSystemItemContainer *)v5 setFocusSystem:v4];
  }

  return v6;
}

- (UICoordinateSpace)coordinateSpace
{
  v2 = [(_UIHostedFocusSystemItemContainer *)self focusSystem];
  v3 = [v2 hostEnvironment];
  v4 = [v3 focusItemContainer];
  v5 = [v4 coordinateSpace];

  return v5;
}

- (id)focusItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(_UIHostedFocusSystemItemContainer *)self focusSystem];
  v8 = [v7 delegateProxy];
  v9 = [v8 delegate];

  if (v9)
  {
    v10 = [v9 _focusSystem:v7 focusItemsInRect:{x, y, width, height}];
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