@interface UITrackingElementPlacementInitialPosition
- (BOOL)isEqual:(id)equal;
@end

@implementation UITrackingElementPlacementInitialPosition

- (BOOL)isEqual:(id)equal
{
  v7.receiver = self;
  v7.super_class = UITrackingElementPlacementInitialPosition;
  equalCopy = equal;
  v5 = [(UIInputViewSetPlacement *)&v7 isEqual:equalCopy];

  return self != equalCopy && v5;
}

@end