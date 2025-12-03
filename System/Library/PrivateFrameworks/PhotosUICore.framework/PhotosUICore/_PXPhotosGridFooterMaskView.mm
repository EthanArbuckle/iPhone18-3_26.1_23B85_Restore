@interface _PXPhotosGridFooterMaskView
- (_PXPhotosGridFooterMaskViewDelegate)delegate;
- (void)didMoveToWindow;
@end

@implementation _PXPhotosGridFooterMaskView

- (_PXPhotosGridFooterMaskViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _PXPhotosGridFooterMaskView;
  [(_PXPhotosGridFooterMaskView *)&v4 didMoveToWindow];
  delegate = [(_PXPhotosGridFooterMaskView *)self delegate];
  [delegate footerMaskViewDidMoveToWindow:self];
}

@end