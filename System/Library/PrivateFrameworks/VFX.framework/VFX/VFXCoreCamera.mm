@interface VFXCoreCamera
- (BOOL)isEqual:(id)equal;
- (NSString)name;
- (_TtC3VFX13VFXCoreCamera)init;
- (__n128)orientation;
- (__n128)position;
- (char)projectionDirection;
- (double)filmOffset;
- (uint64_t)setLastFrameWorldTransform:(__n128)transform;
- (void)setIsOrthographic:(BOOL)orthographic;
- (void)setOrientation:(void *)orientation;
- (void)setPosition:(_TtC3VFX13VFXCoreCamera *)self;
- (void)setProjection:(__n128)projection;
- (void)setWorldTransform:(simd_float4)transform;
@end

@implementation VFXCoreCamera

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1AFC781A8(v8);

  sub_1AF44CB60(v8);
  return v6;
}

- (NSString)name
{
  v3 = *&self->instance[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];

  selfCopy = self;
  sub_1AF671054(v3, selfCopy);
  v6 = v5;

  if (v6)
  {
    v7 = sub_1AFDFCEC8();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setIsOrthographic:(BOOL)orthographic
{
  v5 = *&self->instance[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];

  selfCopy = self;
  sub_1AF661448(v5, orthographic, selfCopy);
}

- (void)setWorldTransform:(simd_float4)transform
{
  v8.columns[3] = a5;
  v8.columns[1] = transform;
  v8.columns[2] = a4;
  v8.columns[0] = a2;
  v6 = *&self[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  v5 = *&self[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];
  selfCopy = self;
  sub_1AFC75380(v6, v5, sub_1AFC75FB4, v8.columns[0], v8.columns[1], v8.columns[2], v8.columns[3]);
  v10 = j____invert_f4_1(v8);
  sub_1AFC75380(v6, v5, sub_1AFC76124, v10.columns[0], v10.columns[1], v10.columns[2], v10.columns[3]);
}

- (uint64_t)setLastFrameWorldTransform:(__n128)transform
{
  v5 = *(self + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance);
  v6 = *(self + OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8);
  v10 = 0;
  v8[0] = a2;
  v8[1] = transform;
  v8[2] = a4;
  v8[3] = a5;
  v9 = 0;
  return sub_1AFC77778(v8, v5, v6);
}

- (__n128)position
{
  v2 = *&self[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  selfCopy = self;
  sub_1AF6730AC(v2, selfCopy);
  v6 = v4;

  return v6;
}

- (void)setPosition:(_TtC3VFX13VFXCoreCamera *)self
{
  v4 = v2;
  selfCopy = self;
  sub_1AFC7987C(v4);
}

- (__n128)orientation
{
  v2 = *&self[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  selfCopy = self;
  sub_1AF673390(v2, selfCopy);
  v6 = v4;

  return v6;
}

- (void)setOrientation:(void *)orientation
{
  orientationCopy = orientation;
  sub_1AFC79D44(a2);
}

- (void)setProjection:(__n128)projection
{
  selfCopy = self;
  sub_1AFC7A264(a2, projection, a4, a5);
}

- (double)filmOffset
{
  v2 = *&self[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance + 8];

  selfCopy = self;
  v4 = sub_1AF67501C(v2, selfCopy);

  return v4;
}

- (char)projectionDirection
{
  v3 = *&self->instance[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];

  selfCopy = self;
  sub_1AF6752F8(v3, selfCopy);
  v6 = v5;

  return v6;
}

- (_TtC3VFX13VFXCoreCamera)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end