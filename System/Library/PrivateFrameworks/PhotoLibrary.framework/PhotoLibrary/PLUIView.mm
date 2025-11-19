@interface PLUIView
- (void)didMoveToWindow;
@end

@implementation PLUIView

- (void)didMoveToWindow
{
  if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1 && -[PLUIView window](self, "window") && objc_msgSend(objc_msgSend(MEMORY[0x277D75D28], "viewControllerForView:", self), "parentViewController") && !-[PLUIView disableViewInPopoverRule](self, "disableViewInPopoverRule"))
  {
    UIImagePickerEnsureViewIsInsidePopover();
  }

  v3.receiver = self;
  v3.super_class = PLUIView;
  [(PLUIView *)&v3 didMoveToWindow];
}

@end