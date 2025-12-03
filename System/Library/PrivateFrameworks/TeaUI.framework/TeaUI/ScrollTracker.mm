@interface ScrollTracker
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation ScrollTracker

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  ScrollTracker.scrollViewDidScroll(_:)(scrollCopy);
}

@end