@interface UIEditMenuConfiguration._Boxed
- (id)copyWithZone:(void *)zone;
@end

@implementation UIEditMenuConfiguration._Boxed

- (id)copyWithZone:(void *)zone
{
  sub_188BBA230(self->value, v5);
  _s6_BoxedCMa();
  result = swift_allocObject();
  v4 = v5[1];
  *(result + 1) = v5[0];
  *(result + 2) = v4;
  *(result + 6) = v6;
  return result;
}

@end