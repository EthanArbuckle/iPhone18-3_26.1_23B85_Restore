@interface UISegmentedControlPointerLiftEffect
- (unint64_t)options;
@end

@implementation UISegmentedControlPointerLiftEffect

- (unint64_t)options
{
  v3.receiver = self;
  v3.super_class = UISegmentedControlPointerLiftEffect;
  return [(UIPointerLiftEffect *)&v3 options]& 0xFFFFFFFFFFFFFEFFLL;
}

@end