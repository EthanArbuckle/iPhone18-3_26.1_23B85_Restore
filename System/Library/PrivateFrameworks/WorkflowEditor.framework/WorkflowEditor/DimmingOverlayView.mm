@interface DimmingOverlayView
- (void)_handlePress;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DimmingOverlayView

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_27453A5C4(change);
}

- (void)_handlePress
{
  selfCopy = self;
  sub_27453A770();
}

@end