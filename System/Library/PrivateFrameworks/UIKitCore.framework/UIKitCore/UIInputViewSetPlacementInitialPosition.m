@interface UIInputViewSetPlacementInitialPosition
- (BOOL)isEqual:(id)a3;
@end

@implementation UIInputViewSetPlacementInitialPosition

- (BOOL)isEqual:(id)a3
{
  v7.receiver = self;
  v7.super_class = UIInputViewSetPlacementInitialPosition;
  v4 = a3;
  v5 = [(UIInputViewSetPlacement *)&v7 isEqual:v4];

  return self != v4 && v5;
}

@end