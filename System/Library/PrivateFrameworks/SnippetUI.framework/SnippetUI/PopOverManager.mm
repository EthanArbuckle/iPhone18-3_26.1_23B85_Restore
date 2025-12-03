@interface PopOverManager
- (BOOL)popoverPresentationControllerShouldDismissPopover:(id)popover;
@end

@implementation PopOverManager

- (BOOL)popoverPresentationControllerShouldDismissPopover:(id)popover
{
  popoverCopy = popover;
  selfCopy = self;
  sub_26A4F4FE4();

  return 1;
}

@end