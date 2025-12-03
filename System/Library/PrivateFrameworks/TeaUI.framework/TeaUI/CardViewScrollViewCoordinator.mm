@interface CardViewScrollViewCoordinator
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
@end

@implementation CardViewScrollViewCoordinator

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  CardViewScrollViewCoordinator.scrollViewDidScroll(_:)(scrollCopy);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  CardViewScrollViewCoordinator.scrollViewWillBeginDragging(_:)(selfCopy);
}

@end