@interface _UIViewServiceDummyPopoverController
- (_UIViewServiceDummyPopoverControllerDelegate)dummyPopoverControllerDelegate;
- (void)_popoverView:(id)a3 didSetUseToolbarShine:(BOOL)a4;
- (void)_super_setPopoverContentSize:(CGSize)a3;
- (void)setPopoverContentSize:(CGSize)a3 animated:(BOOL)a4;
@end

@implementation _UIViewServiceDummyPopoverController

- (void)_popoverView:(id)a3 didSetUseToolbarShine:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIPopoverController *)self popoverView];

  if (v7 == v6)
  {
    v8 = [(_UIViewServiceDummyPopoverController *)self dummyPopoverControllerDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 dummyPopoverController:self popoverViewDidSetUseToolbarShine:v4];
    }
  }
}

- (void)setPopoverContentSize:(CGSize)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v8 = [(_UIViewServiceDummyPopoverController *)self dummyPopoverControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 dummyPopoverController:self didChangeContentSize:v4 animated:{width, height}];
  }

  v9.receiver = self;
  v9.super_class = _UIViewServiceDummyPopoverController;
  [(UIPopoverController *)&v9 setPopoverContentSize:v4 animated:width, height];
}

- (void)_super_setPopoverContentSize:(CGSize)a3
{
  v3.receiver = self;
  v3.super_class = _UIViewServiceDummyPopoverController;
  [(UIPopoverController *)&v3 setPopoverContentSize:0 animated:a3.width, a3.height];
}

- (_UIViewServiceDummyPopoverControllerDelegate)dummyPopoverControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dummyPopoverControllerDelegate);

  return WeakRetained;
}

@end