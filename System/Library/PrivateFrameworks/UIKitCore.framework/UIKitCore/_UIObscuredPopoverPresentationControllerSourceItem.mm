@interface _UIObscuredPopoverPresentationControllerSourceItem
+ (id)obscuredSourceItemForItem:(id)item;
- (CGRect)_frameInCoordinateSpace:(id)space window:(id)window;
- (CGRect)_sourceRectForPresentationInWindow:(id)window;
- (CGRect)frameInView:(id)view;
@end

@implementation _UIObscuredPopoverPresentationControllerSourceItem

+ (id)obscuredSourceItemForItem:(id)item
{
  itemCopy = item;
  v5 = objc_getAssociatedObject(itemCopy, &obscuredSourceItemForItem___UIObscuredPopoverPresentationControllerSourceItemTag);
  if (!v5)
  {
    v5 = objc_opt_new();
    objc_storeStrong(v5 + 1, item);
    objc_setAssociatedObject(itemCopy, &obscuredSourceItemForItem___UIObscuredPopoverPresentationControllerSourceItemTag, v5, 1);
  }

  return v5;
}

- (CGRect)frameInView:(id)view
{
  [(_UIObscuredPopoverPresentationControllerSourceItem *)self _frameInCoordinateSpace:view window:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_frameInCoordinateSpace:(id)space window:(id)window
{
  [(_UIPopoverPresentationControllerSourceItem_Internal *)self->_sourceItem _frameInCoordinateSpace:space window:window];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_sourceRectForPresentationInWindow:(id)window
{
  [(_UIPopoverPresentationControllerSourceItem_Internal *)self->_sourceItem _sourceRectForPresentationInWindow:window];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end