@interface _UIViewServiceDummyPopoverController
- (_UIViewServiceDummyPopoverControllerDelegate)dummyPopoverControllerDelegate;
- (void)_popoverView:(id)view didSetUseToolbarShine:(BOOL)shine;
- (void)_super_setPopoverContentSize:(CGSize)size;
- (void)setPopoverContentSize:(CGSize)size animated:(BOOL)animated;
@end

@implementation _UIViewServiceDummyPopoverController

- (void)_popoverView:(id)view didSetUseToolbarShine:(BOOL)shine
{
  shineCopy = shine;
  viewCopy = view;
  popoverView = [(UIPopoverController *)self popoverView];

  if (popoverView == viewCopy)
  {
    dummyPopoverControllerDelegate = [(_UIViewServiceDummyPopoverController *)self dummyPopoverControllerDelegate];
    if (objc_opt_respondsToSelector())
    {
      [dummyPopoverControllerDelegate dummyPopoverController:self popoverViewDidSetUseToolbarShine:shineCopy];
    }
  }
}

- (void)setPopoverContentSize:(CGSize)size animated:(BOOL)animated
{
  animatedCopy = animated;
  height = size.height;
  width = size.width;
  dummyPopoverControllerDelegate = [(_UIViewServiceDummyPopoverController *)self dummyPopoverControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [dummyPopoverControllerDelegate dummyPopoverController:self didChangeContentSize:animatedCopy animated:{width, height}];
  }

  v9.receiver = self;
  v9.super_class = _UIViewServiceDummyPopoverController;
  [(UIPopoverController *)&v9 setPopoverContentSize:animatedCopy animated:width, height];
}

- (void)_super_setPopoverContentSize:(CGSize)size
{
  v3.receiver = self;
  v3.super_class = _UIViewServiceDummyPopoverController;
  [(UIPopoverController *)&v3 setPopoverContentSize:0 animated:size.width, size.height];
}

- (_UIViewServiceDummyPopoverControllerDelegate)dummyPopoverControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dummyPopoverControllerDelegate);

  return WeakRetained;
}

@end