@interface _PXPhotosGridContainerUIView
- (_PXPhotosGridContainerDelegate)delegate;
- (void)willMoveToWindow:(id)window;
@end

@implementation _PXPhotosGridContainerUIView

- (_PXPhotosGridContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)willMoveToWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = _PXPhotosGridContainerUIView;
  windowCopy = window;
  [(_PXPhotosGridContainerUIView *)&v6 willMoveToWindow:windowCopy];
  v5 = [(_PXPhotosGridContainerUIView *)self delegate:v6.receiver];
  [v5 containerView:self willMoveToWindow:windowCopy];
}

@end