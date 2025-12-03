@interface UIHoverStyle
+ (UIHoverStyle)automaticStyle;
+ (UIHoverStyle)styleWithEffect:(id)effect shape:(UIShape *)shape;
+ (UIHoverStyle)styleWithShape:(UIShape *)shape;
- (BOOL)isEqual:(id)equal;
- (UIHoverStyle)styleWithEffect:(id)effect shape:(id)shape;
- (UIHoverStyle)styleWithShape:(id)shape;
- (UIShape)shape;
- (id)copyWithZone:(void *)zone;
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
  selfCopy = self;
  sub_188BE0090(0, sub_188BE0A88, 0);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
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
  selfCopy = self;
  if (v5 != [(UIHoverStyle *)selfCopy isEnabled])
  {
    v6 = *(&self->super.isa + v4);
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    sub_188BE0090(0, sub_189218854, v7);
  }
}

- (void)_invalidateAutomaticHoverEffect
{
  selfCopy = self;
  sub_188BE0090(0, sub_188CF8B40, 0);
}

- (id)effect
{
  selfCopy = self;
  v3 = sub_1892168A4();

  return v3;
}

- (void)setEffect:(id)effect
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1892169DC(effect);
}

- (UIShape)shape
{
  selfCopy = self;
  v3 = sub_189216CD4();

  return v3;
}

- (void)setShape:(UIShape *)shape
{
  v5 = shape;
  selfCopy = self;
  sub_189216E84(shape);
}

- (UIHoverStyle)styleWithEffect:(id)effect shape:(id)shape
{
  v6 = objc_allocWithZone(swift_getObjCClassFromObject());
  swift_unknownObjectRetain();
  shapeCopy = shape;
  v8 = [v6 init];
  [(UIHoverStyle *)v8 setEffect:effect];
  [(UIHoverStyle *)v8 setShape:shapeCopy];
  swift_unknownObjectRelease();

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (UIHoverStyle)styleWithShape:(id)shape
{
  v4 = objc_allocWithZone(swift_getObjCClassFromObject());
  shapeCopy = shape;
  v6 = [v4 init];
  [(UIHoverStyle *)v6 setShape:shapeCopy];

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

  v6 = UIHoverStyle.isEqual(_:)(v8);

  sub_188A3F5FC(v8, &qword_1EA934050);
  return v6 & 1;
}

@end