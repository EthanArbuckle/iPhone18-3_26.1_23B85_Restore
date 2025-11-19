@interface _PXPhotosGridContainerUIView
- (_PXPhotosGridContainerDelegate)delegate;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _PXPhotosGridContainerUIView

- (_PXPhotosGridContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)willMoveToWindow:(id)a3
{
  v6.receiver = self;
  v6.super_class = _PXPhotosGridContainerUIView;
  v4 = a3;
  [(_PXPhotosGridContainerUIView *)&v6 willMoveToWindow:v4];
  v5 = [(_PXPhotosGridContainerUIView *)self delegate:v6.receiver];
  [v5 containerView:self willMoveToWindow:v4];
}

@end