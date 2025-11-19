@interface ScrollTracker
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation ScrollTracker

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  ScrollTracker.scrollViewDidScroll(_:)(v4);
}

@end