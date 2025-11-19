@interface DimmingOverlayView
- (void)_handlePress;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DimmingOverlayView

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_27453A5C4(a3);
}

- (void)_handlePress
{
  v2 = self;
  sub_27453A770();
}

@end