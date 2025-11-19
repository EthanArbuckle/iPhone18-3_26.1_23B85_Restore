@interface FBSScene(EventDeferringComponent)
- (uint64_t)_eventDeferringComponent;
@end

@implementation FBSScene(EventDeferringComponent)

- (uint64_t)_eventDeferringComponent
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [a1 componentForExtension:v2 ofClass:v3];
}

@end