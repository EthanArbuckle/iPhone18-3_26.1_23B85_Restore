@interface UICornerConfiguration
+ (UICornerConfiguration)configurationWithRadius:(id)a3;
+ (UICornerConfiguration)configurationWithTopLeftRadius:(id)a3 topRightRadius:(id)a4 bottomLeftRadius:(id)a5 bottomRightRadius:(id)a6;
+ (UICornerConfiguration)configurationWithUniformRadius:(id)a3;
+ (id)_configurationWithRadius:(id)a3 mask:(unint64_t)a4;
+ (id)capsuleConfiguration;
+ (id)capsuleConfigurationWithMaximumRadius:(double)a3;
+ (id)unspecifiedConfiguration;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (UICornerConfiguration)init;
- (UICornerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UICornerConfiguration

+ (UICornerConfiguration)configurationWithRadius:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_18904C408(v4, MEMORY[0x1E69E7CC0]);

  return v5;
}

+ (UICornerConfiguration)configurationWithTopLeftRadius:(id)a3 topRightRadius:(id)a4 bottomLeftRadius:(id)a5 bottomRightRadius:(id)a6
{
  swift_getObjCClassMetadata();
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_18904C098(a3, a4, a5, a6);

  return v14;
}

+ (id)capsuleConfiguration
{
  swift_getObjCClassMetadata();
  v2 = sub_18904CD78(0x7FEFFFFFFFFFFFFFLL, 0);

  return v2;
}

+ (id)capsuleConfigurationWithMaximumRadius:(double)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_18904C2F4(a3);

  return v4;
}

+ (UICornerConfiguration)configurationWithUniformRadius:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_18904C408(v4, &unk_1EFAB8E80);

  return v5;
}

+ (id)unspecifiedConfiguration
{
  swift_getObjCClassMetadata();
  v2 = sub_18904CD78(0, 255);

  return v2;
}

+ (id)_configurationWithRadius:(id)a3 mask:(unint64_t)a4
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = sub_18904CE88(v6, a4);

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

- (id)copyWithZone:(void *)a3
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

- (UICornerConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_18904DD58();

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18904D1AC(v4);
}

- (int64_t)hash
{
  sub_18A4A8888();
  UICornerConfiguration.hash(into:)();
  return sub_18A4A88E8();
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = UICornerConfiguration.isEqual(_:)(v8);

  sub_188A553EC(v8);
  return v6 & 1;
}

- (NSString)description
{
  v2 = self;
  UICornerConfiguration.description.getter();

  v3 = sub_18A4A7258();

  return v3;
}

@end