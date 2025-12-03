@interface UIAccessibilityOpaqueFocusState
- (CGRect)sceneRelativeFrame;
- (id)description;
- (id)element;
- (void)setElement:(id)element;
@end

@implementation UIAccessibilityOpaqueFocusState

- (id)description
{
  element = [(UIAccessibilityOpaqueFocusState *)self element];

  if (element)
  {
    v4 = MEMORY[0x1E696AEC0];
    hasFocus = [(UIAccessibilityOpaqueFocusState *)self hasFocus];
    element2 = [(UIAccessibilityOpaqueFocusState *)self element];
    element3 = [(UIAccessibilityOpaqueFocusState *)self element];
    accessibilityLabel = [element3 accessibilityLabel];
    [(UIAccessibilityOpaqueFocusState *)self sceneRelativeFrame];
    v9 = NSStringFromCGRect(v14);
    reusableView = [(UIAccessibilityOpaqueFocusState *)self reusableView];
    v11 = [v4 stringWithFormat:@"Has focus: %i\nElement: %@ (%@)\nScene relative frame: %@\nReusable view: %@\nHas been reused: %i", hasFocus, element2, accessibilityLabel, v9, reusableView, -[UIAccessibilityOpaqueFocusState hasBeenReused](self, "hasBeenReused")];
  }

  else
  {
    v11 = @"No focused element";
  }

  return v11;
}

- (void)setElement:(id)element
{
  obj = element;
  WeakRetained = objc_loadWeakRetained(&self->_element);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_element, obj);
    [(UIAccessibilityOpaqueFocusState *)self setHasFocus:obj != 0];
    if (obj)
    {
      if (([obj isAccessibilityElement] & 1) == 0 && (objc_msgSend(obj, "isAccessibilityOpaqueElementProvider") & 1) == 0 && (objc_msgSend(obj, "_accessibilityIsRemoteElement") & 1) == 0 && (objc_msgSend(obj, "_accessibilityIsGroupedParent") & 1) == 0)
      {
        v5 = [obj description];
        [v5 UTF8String];
        _AXAssert();
      }
    }
  }
}

- (id)element
{
  WeakRetained = objc_loadWeakRetained(&self->_element);

  return WeakRetained;
}

- (CGRect)sceneRelativeFrame
{
  x = self->_sceneRelativeFrame.origin.x;
  y = self->_sceneRelativeFrame.origin.y;
  width = self->_sceneRelativeFrame.size.width;
  height = self->_sceneRelativeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end