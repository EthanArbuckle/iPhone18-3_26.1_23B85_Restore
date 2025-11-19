@interface VFXEntityObject
- (BOOL)checkAllEntityReferences;
- (BOOL)doNotExport;
- (BOOL)isEnabled;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSString)tag;
- (_TtC3VFX15VFXEntityObject)init;
- (_TtC3VFX20EntityPropertyHelper)presentationProperties;
- (_TtC3VFX20EntityPropertyHelper)properties;
- (id)copyWithZone:(void *)a3;
- (id)handle;
- (id)opaqueEntityManager;
- (int64_t)objectID;
- (void)addTo:(id)a3;
- (void)dirty;
- (void)fillRemapTable:(id)a3 copy:(id)a4;
- (void)makeTextureLoadingSynchronous;
- (void)removeFromScene;
- (void)setIsEnabled:(BOOL)a3;
- (void)setTag:(id)a3;
- (void)swapToNewEntity:(int64_t)a3 newScene:(id)a4;
- (void)updateVFXObjectReferences:(id)a3;
@end

@implementation VFXEntityObject

- (id)handle
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (int64_t)objectID
{
  v3 = *(self + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);
  v2 = *(self + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity + 4);
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 == 0xFFFFFFFFLL;
  }

  v5 = v3 | (v2 << 32);
  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1AFC89380(v8);

  sub_1AF44CB60(v8);
  return v6;
}

- (NSString)description
{
  v2 = self;
  sub_1AFC8AE24();

  v3 = sub_1AFDFCEC8();

  return v3;
}

- (void)swapToNewEntity:(int64_t)a3 newScene:(id)a4
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = -1;
  }

  v5 = (self + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);
  *v5 = v4;
  v5[1] = HIDWORD(a3);
  swift_weakAssign();
}

- (id)opaqueEntityManager
{
  v2 = self;
  v3 = sub_1AFC8B660();

  return v3;
}

- (NSString)tag
{
  v2 = self;
  sub_1AFC8C558();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1AFDFCEC8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setTag:(id)a3
{
  if (a3)
  {
    v4 = sub_1AFDFCEF8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1AFC8C750(v4, v6);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_1AFC8CF58(v6);

  sub_1AF441150(v6, v6[3]);
  v4 = sub_1AFDFEE08();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
  return v4;
}

- (void)updateVFXObjectReferences:(id)a3
{
  v4 = sub_1AFDFCC08();
  v5 = self;
  sub_1AFC8D1A8(v4);
}

- (_TtC3VFX15VFXEntityObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)checkAllEntityReferences
{
  v2 = self;
  v3 = sub_1AFCE3994();

  return v3 & 1;
}

- (void)fillRemapTable:(id)a3 copy:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1AFCE3CC0(v6, v7);
}

- (void)removeFromScene
{
  v2 = self;
  VFXEntityObject.removeFromScene()();
}

- (void)addTo:(id)a3
{
  v4 = *(a3 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v5 = a3;
  v6 = self;
  sub_1AFC8BF5C(v4);
}

- (BOOL)isEnabled
{
  v2 = self;
  v3 = VFXEntityObject.isEnabled.getter();

  return v3 & 1;
}

- (void)setIsEnabled:(BOOL)a3
{
  v4 = self;
  VFXEntityObject.isEnabled.setter(a3);
}

- (void)dirty
{
  v2 = self;
  sub_1AFCE5530();
}

- (BOOL)doNotExport
{
  v2 = self;
  v3 = sub_1AFCE63E4();

  return v3;
}

- (_TtC3VFX20EntityPropertyHelper)properties
{
  v2 = self;
  v3 = VFXEntityObject.properties.getter();

  return v3;
}

- (_TtC3VFX20EntityPropertyHelper)presentationProperties
{
  v2 = self;
  v3 = VFXEntityObject.presentationProperties.getter();

  return v3;
}

- (void)makeTextureLoadingSynchronous
{
  v2 = self;
  sub_1AFCE6B54();
}

@end