@interface _UIInertPreviewingContext
- (CGRect)preferredSourceViewRectInCoordinateSpace:(id)a3;
- (CGRect)sourceRect;
- (UIViewControllerPreviewingDelegate)delegate;
- (_UIInertPreviewingContext)initWithSourceView:(id)a3;
@end

@implementation _UIInertPreviewingContext

- (_UIInertPreviewingContext)initWithSourceView:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = _UIInertPreviewingContext;
  v6 = [(_UIInertPreviewingContext *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceView, a3);
    v8 = *(MEMORY[0x1E695F050] + 16);
    v7->_sourceRect.origin = *MEMORY[0x1E695F050];
    v7->_sourceRect.size = v8;
    v9 = objc_alloc_init(UIGestureRecognizer);
    failureRelationshipGestureRecognizer = v7->_failureRelationshipGestureRecognizer;
    v7->_failureRelationshipGestureRecognizer = v9;

    v11 = v7;
  }

  return v7;
}

- (CGRect)preferredSourceViewRectInCoordinateSpace:(id)a3
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIViewControllerPreviewingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end