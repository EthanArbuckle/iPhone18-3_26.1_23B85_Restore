@interface PaginatingSwipeController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (void)didPanOnView:(id)view;
@end

@implementation PaginatingSwipeController

- (void)didPanOnView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1E4142514(viewCopy);
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_1E4144874();

  return self & 1;
}

@end