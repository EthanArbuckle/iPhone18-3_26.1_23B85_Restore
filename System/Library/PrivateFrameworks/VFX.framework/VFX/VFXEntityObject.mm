@interface VFXEntityObject
- (BOOL)checkAllEntityReferences;
- (BOOL)doNotExport;
- (BOOL)isEnabled;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSString)tag;
- (_TtC3VFX15VFXEntityObject)init;
- (_TtC3VFX20EntityPropertyHelper)presentationProperties;
- (_TtC3VFX20EntityPropertyHelper)properties;
- (id)copyWithZone:(void *)zone;
- (id)handle;
- (id)opaqueEntityManager;
- (int64_t)objectID;
- (void)addTo:(id)to;
- (void)dirty;
- (void)fillRemapTable:(id)table copy:(id)copy;
- (void)makeTextureLoadingSynchronous;
- (void)removeFromScene;
- (void)setIsEnabled:(BOOL)enabled;
- (void)setTag:(id)tag;
- (void)swapToNewEntity:(int64_t)entity newScene:(id)scene;
- (void)updateVFXObjectReferences:(id)references;
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

  v6 = sub_1AFC89380(v8);

  sub_1AF44CB60(v8);
  return v6;
}

- (NSString)description
{
  selfCopy = self;
  sub_1AFC8AE24();

  v3 = sub_1AFDFCEC8();

  return v3;
}

- (void)swapToNewEntity:(int64_t)entity newScene:(id)scene
{
  if (entity)
  {
    entityCopy = entity;
  }

  else
  {
    entityCopy = -1;
  }

  v5 = (self + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);
  *v5 = entityCopy;
  v5[1] = HIDWORD(entity);
  swift_weakAssign();
}

- (id)opaqueEntityManager
{
  selfCopy = self;
  v3 = sub_1AFC8B660();

  return v3;
}

- (NSString)tag
{
  selfCopy = self;
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

- (void)setTag:(id)tag
{
  if (tag)
  {
    v4 = sub_1AFDFCEF8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1AFC8C750(v4, v6);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_1AFC8CF58(v6);

  sub_1AF441150(v6, v6[3]);
  v4 = sub_1AFDFEE08();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v6);
  return v4;
}

- (void)updateVFXObjectReferences:(id)references
{
  v4 = sub_1AFDFCC08();
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1AFCE3994();

  return v3 & 1;
}

- (void)fillRemapTable:(id)table copy:(id)copy
{
  tableCopy = table;
  copyCopy = copy;
  selfCopy = self;
  sub_1AFCE3CC0(tableCopy, copyCopy);
}

- (void)removeFromScene
{
  selfCopy = self;
  VFXEntityObject.removeFromScene()();
}

- (void)addTo:(id)to
{
  v4 = *(to + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  toCopy = to;
  selfCopy = self;
  sub_1AFC8BF5C(v4);
}

- (BOOL)isEnabled
{
  selfCopy = self;
  v3 = VFXEntityObject.isEnabled.getter();

  return v3 & 1;
}

- (void)setIsEnabled:(BOOL)enabled
{
  selfCopy = self;
  VFXEntityObject.isEnabled.setter(enabled);
}

- (void)dirty
{
  selfCopy = self;
  sub_1AFCE5530();
}

- (BOOL)doNotExport
{
  selfCopy = self;
  v3 = sub_1AFCE63E4();

  return v3;
}

- (_TtC3VFX20EntityPropertyHelper)properties
{
  selfCopy = self;
  v3 = VFXEntityObject.properties.getter();

  return v3;
}

- (_TtC3VFX20EntityPropertyHelper)presentationProperties
{
  selfCopy = self;
  v3 = VFXEntityObject.presentationProperties.getter();

  return v3;
}

- (void)makeTextureLoadingSynchronous
{
  selfCopy = self;
  sub_1AFCE6B54();
}

@end