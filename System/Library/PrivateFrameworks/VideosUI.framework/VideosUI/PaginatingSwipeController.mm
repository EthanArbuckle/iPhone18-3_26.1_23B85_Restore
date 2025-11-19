@interface PaginatingSwipeController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (void)didPanOnView:(id)a3;
@end

@implementation PaginatingSwipeController

- (void)didPanOnView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E4142514(v4);
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1E4144874();

  return self & 1;
}

@end