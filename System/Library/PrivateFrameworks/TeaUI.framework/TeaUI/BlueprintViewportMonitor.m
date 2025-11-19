@interface BlueprintViewportMonitor
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation BlueprintViewportMonitor

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  BlueprintViewportMonitor.scrollViewDidScroll(_:)(v4);
}

@end