@interface UICornerRadius
+ (id)containerConcentricRadius;
+ (id)containerConcentricRadiusWithMinimum:(double)minimum;
+ (id)fixedRadius:(double)radius;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (UICornerRadius)init;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UICornerRadius

+ (id)fixedRadius:(double)radius
{
  swift_getObjCClassMetadata();
  v4 = sub_188E6A624(0, radius);

  return v4;
}

+ (id)containerConcentricRadius
{
  swift_getObjCClassMetadata();
  v2 = sub_188E6A5AC();

  return v2;
}

+ (id)containerConcentricRadiusWithMinimum:(double)minimum
{
  swift_getObjCClassMetadata();
  v4 = sub_188E6A624(1, minimum);

  return v4;
}

- (UICornerRadius)init
{
  v2 = self + OBJC_IVAR___UICornerRadius_impl;
  *v2 = 0;
  v2[8] = 0;
  v4.receiver = self;
  v4.super_class = UICornerRadius;
  return [(UICornerRadius *)&v4 init];
}

- (id)copyWithZone:(void *)zone
{
  v3 = *(&self->super.isa + OBJC_IVAR___UICornerRadius_impl);
  v4 = self->impl[OBJC_IVAR___UICornerRadius_impl];
  result = [objc_allocWithZone(UICornerRadius) init];
  v6 = result + OBJC_IVAR___UICornerRadius_impl;
  *v6 = v3;
  v6[8] = v4;
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_188E6A958(coderCopy);
}

- (int64_t)hash
{
  sub_18A4A8888();
  UICornerRadius.hash(into:)();
  return sub_18A4A88E8();
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = UICornerRadius.isEqual(_:)(v8);

  sub_188A553EC(v8);
  return v6;
}

- (NSString)description
{
  selfCopy = self;
  UICornerRadius.description.getter();

  v3 = sub_18A4A7258();

  return v3;
}

@end