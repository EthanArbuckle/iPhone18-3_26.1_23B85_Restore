@interface UIShadowProperties
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (UIBezierPath)_path;
- (UIBezierPath)path;
- (UIShadowProperties)initWithCoder:(id)a3;
- (double)_opacity;
- (double)_radius;
- (id)_color;
- (id)copyWithZone:(void *)a3;
- (int64_t)_backgroundConfigurationShadowType;
- (void)_applyPropertiesFromDefaultProperties:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setColor:(id)a3;
- (void)setOffset:(CGSize)a3;
- (void)setOpacity:(double)a3;
- (void)setPath:(id)a3;
- (void)setRadius:(double)a3;
- (void)set_backgroundConfigurationShadowType:(int64_t)a3;
- (void)set_color:(id)a3;
- (void)set_offset:(CGSize)a3;
- (void)set_opacity:(double)a3;
- (void)set_path:(id)a3;
- (void)set_radius:(double)a3;
@end

@implementation UIShadowProperties

- (id)copyWithZone:(void *)a3
{
  v3 = (self + OBJC_IVAR___UIShadowProperties__backingProperties);
  swift_beginAccess();
  v4 = v3[1];
  v17 = *v3;
  v18 = v4;
  v5 = v3[3];
  v19 = v3[2];
  v20 = v5;
  v6 = objc_allocWithZone(UIShadowProperties);
  sub_188BFAE70(&v17, v21);
  v7 = [v6 init];
  v8 = &v7[OBJC_IVAR___UIShadowProperties__backingProperties];
  swift_beginAccess();
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = *(v8 + 3);
  v21[2] = *(v8 + 2);
  v21[3] = v11;
  v21[0] = v9;
  v21[1] = v10;
  v12 = v17;
  v13 = v18;
  v14 = v20;
  *(v8 + 2) = v19;
  *(v8 + 3) = v14;
  *v8 = v12;
  *(v8 + 1) = v13;
  v15 = v7;
  sub_188D0D8D0(v21);

  return v15;
}

- (int64_t)_backgroundConfigurationShadowType
{
  v2 = self + OBJC_IVAR___UIShadowProperties__backingProperties;
  swift_beginAccess();
  return *(v2 + 7);
}

- (id)_color
{
  v2 = OBJC_IVAR___UIShadowProperties__backingProperties;
  swift_beginAccess();
  return *(a1 + v2);
}

- (double)_opacity
{
  v1 = a1 + OBJC_IVAR___UIShadowProperties__backingProperties;
  swift_beginAccess();
  return *(v1 + 8);
}

- (double)_radius
{
  v1 = a1 + OBJC_IVAR___UIShadowProperties__backingProperties;
  swift_beginAccess();
  return *(v1 + 16);
}

- (UIBezierPath)path
{
  v2 = self;
  v3 = sub_188D0DCD4();

  return v3;
}

- (void)setColor:(id)a3
{
  v5 = self + OBJC_IVAR___UIShadowProperties__backingProperties;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a3;
  v7 = a3;
  v8 = self;

  v9 = *(v5 + 6);
  if ((v9 & 1) == 0)
  {
    *(v5 + 6) = v9 | 1;
  }

  swift_endAccess();
}

- (void)set_color:(id)a3
{
  v5 = OBJC_IVAR___UIShadowProperties__backingProperties;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (void)setOpacity:(double)a3
{
  v4 = (self + OBJC_IVAR___UIShadowProperties__backingProperties);
  swift_beginAccess();
  v4[1] = a3;
  v5 = *(v4 + 6);
  if ((v5 & 2) == 0)
  {
    *(v4 + 6) = v5 | 2;
  }
}

- (void)set_opacity:(double)a3
{
  v4 = (self + OBJC_IVAR___UIShadowProperties__backingProperties);
  swift_beginAccess();
  v4[1] = a3;
}

- (void)setRadius:(double)a3
{
  v4 = (self + OBJC_IVAR___UIShadowProperties__backingProperties);
  swift_beginAccess();
  v4[2] = a3;
  v5 = *(v4 + 6);
  if ((v5 & 4) == 0)
  {
    *(v4 + 6) = v5 | 4;
  }
}

- (void)set_radius:(double)a3
{
  v4 = (self + OBJC_IVAR___UIShadowProperties__backingProperties);
  swift_beginAccess();
  v4[2] = a3;
}

- (void)setOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = (self + OBJC_IVAR___UIShadowProperties__backingProperties);
  swift_beginAccess();
  v5[3] = width;
  v5[4] = height;
  v6 = *(v5 + 6);
  if ((v6 & 8) == 0)
  {
    *(v5 + 6) = v6 | 8;
  }
}

- (void)set_offset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = (self + OBJC_IVAR___UIShadowProperties__backingProperties);
  swift_beginAccess();
  v5[3] = width;
  v5[4] = height;
}

- (void)setPath:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1891FAB04(a3);
}

- (UIBezierPath)_path
{
  v2 = (&self->super.isa + OBJC_IVAR___UIShadowProperties__backingProperties);
  swift_beginAccess();
  return v2[5];
}

- (void)set_path:(id)a3
{
  v4 = self + OBJC_IVAR___UIShadowProperties__backingProperties;
  swift_beginAccess();
  v5 = *(v4 + 5);
  *(v4 + 5) = a3;
  v6 = a3;
}

- (void)set_backgroundConfigurationShadowType:(int64_t)a3
{
  v4 = self + OBJC_IVAR___UIShadowProperties__backingProperties;
  swift_beginAccess();
  *(v4 + 7) = a3;
}

- (void)_applyPropertiesFromDefaultProperties:(id)a3
{
  v5 = a3 + OBJC_IVAR___UIShadowProperties__backingProperties;
  swift_beginAccess();
  v6 = v5[1];
  v18[0] = *v5;
  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  v18[1] = v6;
  v18[2] = v9;
  v10 = v5[2];
  v18[3] = v5[3];
  v14 = v7;
  v15 = v8;
  v11 = v5[3];
  v16 = v10;
  v17 = v11;
  swift_beginAccess();
  v12 = a3;
  v13 = self;
  sub_188BFAE70(v18, v19);
  sub_1891F9B30(&v14);
  swift_endAccess();

  v19[0] = v14;
  v19[1] = v15;
  v19[2] = v16;
  v19[3] = v17;
  sub_188D0D8D0(v19);
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

  v6 = UIShadowProperties.isEqual(_:)(v8);

  sub_188A553EC(v8);
  return v6;
}

- (NSString)description
{
  v2 = self;
  UIShadowProperties.description.getter();

  v3 = sub_18A4A7258();

  return v3;
}

- (UIShadowProperties)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_1891FB6B4(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1891FB1FC(v4);
}

@end