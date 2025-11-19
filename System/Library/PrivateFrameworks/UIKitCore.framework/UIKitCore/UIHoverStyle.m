@interface UIHoverStyle
+ (UIHoverStyle)automaticStyle;
+ (UIHoverStyle)styleWithEffect:(id)effect shape:(UIShape *)shape;
+ (UIHoverStyle)styleWithShape:(UIShape *)shape;
- (BOOL)isEqual:(id)a3;
- (UIHoverStyle)styleWithEffect:(id)a3 shape:(id)a4;
- (UIHoverStyle)styleWithShape:(id)a3;
- (UIShape)shape;
- (id)copyWithZone:(void *)a3;
- (id)effect;
- (void)_invalidateAutomaticHoverEffect;
- (void)_invalidateAutomaticHoverShape;
- (void)setEffect:(id)effect;
- (void)setEnabled:(BOOL)enabled;
- (void)setShape:(UIShape *)shape;
@end

@implementation UIHoverStyle

- (void)_invalidateAutomaticHoverShape
{
  v2 = self;
  sub_188BE0090(0, sub_188BE0A88, 0);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_188CB0470(v6);

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v4 = sub_18A4A86A8();
  __swift_destroy_boxed_opaque_existential_0Tm(v6);
  return v4;
}

- (void)setEnabled:(BOOL)enabled
{
  v4 = OBJC_IVAR___UIHoverStyle__isEnabled;
  v5 = *(&self->super.isa + OBJC_IVAR___UIHoverStyle__isEnabled);
  *(&self->super.isa + OBJC_IVAR___UIHoverStyle__isEnabled) = enabled;
  v8 = self;
  if (v5 != [(UIHoverStyle *)v8 isEnabled])
  {
    v6 = *(&self->super.isa + v4);
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    sub_188BE0090(0, sub_189218854, v7);
  }
}

- (void)_invalidateAutomaticHoverEffect
{
  v2 = self;
  sub_188BE0090(0, sub_188CF8B40, 0);
}

- (id)effect
{
  v2 = self;
  v3 = sub_1892168A4();

  return v3;
}

- (void)setEffect:(id)effect
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1892169DC(effect);
}

- (UIShape)shape
{
  v2 = self;
  v3 = sub_189216CD4();

  return v3;
}

- (void)setShape:(UIShape *)shape
{
  v5 = shape;
  v6 = self;
  sub_189216E84(shape);
}

- (UIHoverStyle)styleWithEffect:(id)a3 shape:(id)a4
{
  v6 = objc_allocWithZone(swift_getObjCClassFromObject());
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = [v6 init];
  [(UIHoverStyle *)v8 setEffect:a3];
  [(UIHoverStyle *)v8 setShape:v7];
  swift_unknownObjectRelease();

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (UIHoverStyle)styleWithShape:(id)a3
{
  v4 = objc_allocWithZone(swift_getObjCClassFromObject());
  v5 = a3;
  v6 = [v4 init];
  [(UIHoverStyle *)v6 setShape:v5];

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

+ (UIHoverStyle)styleWithEffect:(id)effect shape:(UIShape *)shape
{
  v6 = objc_allocWithZone(UIHoverStyle);
  swift_unknownObjectRetain();
  v7 = shape;
  v8 = [v6 init];
  [v8 setEffect_];
  [v8 setShape_];
  swift_unknownObjectRelease();

  return v8;
}

+ (UIHoverStyle)styleWithShape:(UIShape *)shape
{
  v4 = objc_allocWithZone(UIHoverStyle);
  v5 = shape;
  v6 = [v4 init];
  [v6 setShape_];

  return v6;
}

+ (UIHoverStyle)automaticStyle
{
  v2 = [objc_allocWithZone(UIHoverStyle) init];
  [v2 setShape_];

  return v2;
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

  v6 = UIHoverStyle.isEqual(_:)(v8);

  sub_188A3F5FC(v8, &qword_1EA934050);
  return v6 & 1;
}

@end