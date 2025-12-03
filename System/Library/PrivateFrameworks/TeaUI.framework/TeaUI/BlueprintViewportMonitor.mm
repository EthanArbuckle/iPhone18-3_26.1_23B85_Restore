@interface BlueprintViewportMonitor
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation BlueprintViewportMonitor

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  BlueprintViewportMonitor.scrollViewDidScroll(_:)(scrollCopy);
}

@end