@interface UICornerConfiguration
+ (UICornerConfiguration)configurationWithRadius:(id)radius;
+ (UICornerConfiguration)configurationWithTopLeftRadius:(id)radius topRightRadius:(id)rightRadius bottomLeftRadius:(id)leftRadius bottomRightRadius:(id)bottomRightRadius;
+ (UICornerConfiguration)configurationWithUniformRadius:(id)radius;
+ (id)_configurationWithRadius:(id)radius mask:(unint64_t)mask;
+ (id)capsuleConfiguration;
+ (id)capsuleConfigurationWithMaximumRadius:(double)radius;
+ (id)unspecifiedConfiguration;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (UICornerConfiguration)init;
- (UICornerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UICornerConfiguration

+ (UICornerConfiguration)configurationWithRadius:(id)radius
{
  swift_getObjCClassMetadata();
  radiusCopy = radius;
  v5 = sub_18904C408(radiusCopy, MEMORY[0x1E69E7CC0]);

  return v5;
}

+ (UICornerConfiguration)configurationWithTopLeftRadius:(id)radius topRightRadius:(id)rightRadius bottomLeftRadius:(id)leftRadius bottomRightRadius:(id)bottomRightRadius
{
  swift_getObjCClassMetadata();
  radiusCopy = radius;
  rightRadiusCopy = rightRadius;
  leftRadiusCopy = leftRadius;
  bottomRightRadiusCopy = bottomRightRadius;
  v14 = sub_18904C098(radius, rightRadius, leftRadius, bottomRightRadius);

  return v14;
}

+ (id)capsuleConfiguration
{
  swift_getObjCClassMetadata();
  v2 = sub_18904CD78(0x7FEFFFFFFFFFFFFFLL, 0);

  return v2;
}

+ (id)capsuleConfigurationWithMaximumRadius:(double)radius
{
  swift_getObjCClassMetadata();
  v4 = sub_18904C2F4(radius);

  return v4;
}

+ (UICornerConfiguration)configurationWithUniformRadius:(id)radius
{
  swift_getObjCClassMetadata();
  radiusCopy = radius;
  v5 = sub_18904C408(radiusCopy, &unk_1EFAB8E80);

  return v5;
}

+ (id)unspecifiedConfiguration
{
  swift_getObjCClassMetadata();
  v2 = sub_18904CD78(0, 255);

  return v2;
}

+ (id)_configurationWithRadius:(id)radius mask:(unint64_t)mask
{
  swift_getObjCClassMetadata();
  radiusCopy = radius;
  v7 = sub_18904CE88(radiusCopy, mask);

  return v7;
}

- (UICornerConfiguration)init
{
  v2 = self + OBJC_IVAR___UICornerConfiguration_impl;
  *v2 = 0;
  v2[8] = -1;
  *(v2 + 2) = 0;
  v2[24] = -1;
  *(v2 + 4) = 0;
  v2[40] = -1;
  *(v2 + 6) = 0;
  v2[56] = -1;
  *(v2 + 8) = MEMORY[0x1E69E7CC0];
  v4.receiver = self;
  v4.super_class = UICornerConfiguration;
  return [(UICornerConfiguration *)&v4 init];
}

- (id)copyWithZone:(void *)zone
{
  v3 = *&self->impl[OBJC_IVAR___UICornerConfiguration_impl + 40];
  v18 = *&self->impl[OBJC_IVAR___UICornerConfiguration_impl + 24];
  v19 = v3;
  v20 = *&self->impl[OBJC_IVAR___UICornerConfiguration_impl + 56];
  v4 = *&self->impl[OBJC_IVAR___UICornerConfiguration_impl + 8];
  v16 = *(&self->super.isa + OBJC_IVAR___UICornerConfiguration_impl);
  v17 = v4;
  v5 = objc_allocWithZone(UICornerConfiguration);
  sub_188E41F80(&v16, v21);
  v6 = [v5 init];
  v7 = &v6[OBJC_IVAR___UICornerConfiguration_impl];
  v21[0] = *&v6[OBJC_IVAR___UICornerConfiguration_impl];
  v8 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v9 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v10 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v22 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v21[2] = v9;
  v21[3] = v10;
  v21[1] = v8;
  v12 = v18;
  v11 = v19;
  v13 = v17;
  *(v7 + 8) = v20;
  *(v7 + 2) = v12;
  *(v7 + 3) = v11;
  *(v7 + 1) = v13;
  *v7 = v16;
  v14 = v6;
  sub_188E4342C(v21);

  return v14;
}

- (UICornerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_18904DD58();

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_18904D1AC(coderCopy);
}

- (int64_t)hash
{
  sub_18A4A8888();
  UICornerConfiguration.hash(into:)();
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

  v6 = UICornerConfiguration.isEqual(_:)(v8);

  sub_188A553EC(v8);
  return v6 & 1;
}

- (NSString)description
{
  selfCopy = self;
  UICornerConfiguration.description.getter();

  v3 = sub_18A4A7258();

  return v3;
}

@end