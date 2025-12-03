@interface VFXEffect
- (BOOL)isEnabled;
- (BOOL)isEnabled:(id)enabled;
- (NSArray)bindings;
- (NSArray)cameras;
- (_TtC3VFX8VFXScene)scene;
- (_TtP3VFX17VFXEffectDelegate_)delegate;
- (id)allCameraNamed:(id)named;
- (id)bindingOf:(id)of named:(id)named;
- (id)bindingWith:(int64_t)with named:(id)named;
- (id)firstBindingWithName:(id)name;
- (id)parameterOf:(id)of named:(id)named;
- (int64_t)fetchClientTextureIDWithNamed:(id)named;
- (int64_t)identifier;
- (int64_t)lookupObjectIDByName:(id)name;
- (int64_t)rootObjectID;
- (void)dump;
- (void)parameterOf:(int64_t)of named:(id)named type:(int64_t)type with:(id)with;
- (void)parameterOf:(int64_t)of named:(id)named with:(id)with;
- (void)setAllowRemoteEdition:(BOOL)edition;
- (void)setClientTextureWithId:(int64_t)id texture:(id)texture;
- (void)setDelegate:(id)delegate;
- (void)setEnabled:(id)enabled enabled:(BOOL)a4;
- (void)setIsEnabled:(BOOL)enabled;
- (void)setIsTombstoned:(BOOL)tombstoned;
- (void)setParameterOf:(id)of named:(id)named :(id)a5;
- (void)setParameterOf:(int64_t)of named:(id)named type:(int64_t)type size:(int64_t)size with:(id)with;
- (void)setParameterOf:(int64_t)of named:(id)named with:(id)with;
- (void)withPointerToParameterOf:(id)of named:(id)named block:(id)block;
@end

@implementation VFXEffect

- (int64_t)identifier
{
  if (*(self + OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4))
  {
    return 0;
  }

  else
  {
    return *(self + OBJC_IVAR____TtC3VFX9VFXEffect_effectID);
  }
}

- (int64_t)rootObjectID
{
  if (*(self + OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity + 8))
  {
    return 0;
  }

  if (*(self + OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity) == 0xFFFFFFFFLL)
  {
    return 0;
  }

  return *(self + OBJC_IVAR____TtC3VFX9VFXEffect_rootEntity);
}

- (_TtC3VFX8VFXScene)scene
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtP3VFX17VFXEffectDelegate_)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  *(self + OBJC_IVAR____TtC3VFX9VFXEffect_delegate) = delegate;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setAllowRemoteEdition:(BOOL)edition
{
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v3 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v4 = v3;
    swift_once();
    v3 = v4;
  }

  v5 = 0;
  sub_1AF0D4F18(v3, &v5, 0xD000000000000034, 0x80000001AFF4C380);
}

- (id)bindingOf:(id)of named:(id)named
{
  v5 = sub_1AFDFCEF8();
  v7 = v6;
  v8 = sub_1AFDFCEF8();
  v10 = v9;
  selfCopy = self;
  v12 = sub_1AFC7C4B8();
  v13 = selfCopy;

  v14 = sub_1AF675A8C(v12, v13, v5, v7, v8, v10);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  return v14;
}

- (id)bindingWith:(int64_t)with named:(id)named
{
  v6 = sub_1AFDFCEF8();
  v8 = v7;
  selfCopy = self;
  v10 = sub_1AFC7C4B8();
  v11 = selfCopy;

  sub_1AF675E9C(v10, v11, with, v6, v8);
  v13 = v12;

  swift_bridgeObjectRelease_n();

  return v13;
}

- (id)firstBindingWithName:(id)name
{
  v4 = sub_1AFDFCEF8();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1AFC7E844(v4, v6);

  return v8;
}

- (NSArray)bindings
{
  selfCopy = self;
  sub_1AFC7EDB8();

  sub_1AFC88F24();
  v3 = sub_1AFDFD3F8();

  return v3;
}

- (id)parameterOf:(id)of named:(id)named
{
  v5 = sub_1AFDFCEF8();
  v7 = v6;
  v8 = sub_1AFDFCEF8();
  v10 = v9;
  selfCopy = self;
  sub_1AFC7FA7C(v5, v7, v8, v10, v20);

  v12 = v21;
  if (v21)
  {
    v13 = sub_1AF441150(v20, v21);
    v14 = *(v12 - 8);
    v15 = MEMORY[0x1EEE9AC00](v13, v13);
    v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v17, v15);
    v18 = sub_1AFDFEE08();
    (*(v14 + 8))(v17, v12);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v20);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)setParameterOf:(id)of named:(id)named :(id)a5
{
  v6 = sub_1AFDFCEF8();
  v8 = v7;
  v9 = sub_1AFDFCEF8();
  v11 = v10;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1AFDFDFB8();
  swift_unknownObjectRelease();
  sub_1AFC7FCD8(v6, v8, v9, v11, v13);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
}

- (int64_t)lookupObjectIDByName:(id)name
{
  sub_1AFDFCEF8();
  selfCopy = self;
  v5 = sub_1AFC80090();
  v7 = v6;

  if (v7)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (void)parameterOf:(int64_t)of named:(id)named with:(id)with
{
  v7 = _Block_copy(with);
  v8 = sub_1AFDFCEF8();
  v10 = v9;
  v13[2] = v7;
  selfCopy = self;
  v12 = sub_1AFC7C4B8();

  sub_1AF66189C(v12, v12, of, v8, v10, 23, sub_1AFC892BC, v13);

  _Block_release(v7);
}

- (void)parameterOf:(int64_t)of named:(id)named type:(int64_t)type with:(id)with
{
  v9 = _Block_copy(with);
  v10 = sub_1AFDFCEF8();
  v12 = v11;
  v15[2] = v9;
  selfCopy = self;
  v14 = sub_1AFC7C4B8();

  sub_1AF66189C(v14, v14, of, v10, v12, type, sub_1AFC88F0C, v15);

  _Block_release(v9);
}

- (void)setParameterOf:(int64_t)of named:(id)named with:(id)with
{
  v7 = _Block_copy(with);
  v8 = sub_1AFDFCEF8();
  v10 = v9;
  v14 = v7;
  selfCopy = self;
  v12 = sub_1AFC7C4B8();

  sub_1AF661BB4(v12, v12, of, v8, v10, 23, 0, sub_1AFC892BC, v13);

  _Block_release(v7);
}

- (void)setParameterOf:(int64_t)of named:(id)named type:(int64_t)type size:(int64_t)size with:(id)with
{
  v11 = _Block_copy(with);
  v12 = sub_1AFDFCEF8();
  v14 = v13;
  v18 = v11;
  selfCopy = self;
  v16 = sub_1AFC7C4B8();

  sub_1AF661BB4(v16, v16, of, v12, v14, type, size, sub_1AFC892BC, v17);

  _Block_release(v11);
}

- (void)withPointerToParameterOf:(id)of named:(id)named block:(id)block
{
  v6 = _Block_copy(block);
  sub_1AFDFCEF8();
  v7 = sub_1AFDFCEF8();
  v9 = v8;
  v17 = v6;
  selfCopy = self;
  v11 = sub_1AFC80090();
  v13 = v12;

  if (v13)
  {

    _Block_release(v6);
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1AFC88F04;
    *(v14 + 24) = &v16;
    v15 = sub_1AFC7C4B8();

    sub_1AF661BB4(v15, v15, v11, v7, v9, 23, 0, sub_1AFC892B0, v14);

    _Block_release(v6);
  }
}

- (void)setEnabled:(id)enabled enabled:(BOOL)a4
{
  v6 = sub_1AFDFCEF8();
  v8 = v7;
  selfCopy = self;
  sub_1AFC80A60(v6, v8, a4);
}

- (BOOL)isEnabled:(id)enabled
{
  v4 = sub_1AFDFCEF8();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_1AFC80B84(v4, v6);

  return v4 & 1;
}

- (int64_t)fetchClientTextureIDWithNamed:(id)named
{
  v4 = sub_1AFDFCEF8();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1AFC80C94(v4, v6);

  return v8;
}

- (void)setClientTextureWithId:(int64_t)id texture:(id)texture
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_1AFC7C4B8();
  swift_unknownObjectRetain();
  v9 = selfCopy;
  sub_1AF6624F0(v8, v9, id, texture);

  swift_unknownObjectRelease();
}

- (BOOL)isEnabled
{
  selfCopy = self;
  v3 = sub_1AFC7C4B8();
  v4 = selfCopy;
  v5 = sub_1AF671D7C(v3, v4);

  return v5 & 1;
}

- (void)setIsEnabled:(BOOL)enabled
{
  selfCopy = self;
  v5 = sub_1AFC7C4B8();
  v6 = selfCopy;
  sub_1AF662800(v5, v6, enabled);
}

- (void)setIsTombstoned:(BOOL)tombstoned
{
  if (*(self + OBJC_IVAR____TtC3VFX9VFXEffect__tombstoned) != tombstoned)
  {
    *(self + OBJC_IVAR____TtC3VFX9VFXEffect__tombstoned) = tombstoned;
    selfCopy = self;
    v5 = sub_1AFC7C4B8();
    v6 = selfCopy;
    sub_1AF662D68(v5, v6);
  }
}

- (NSArray)cameras
{
  selfCopy = self;
  v3 = sub_1AFC7C4B8();
  v4 = selfCopy;
  sub_1AF6765C0(v3, v4);

  type metadata accessor for VFXCoreCamera();
  v5 = sub_1AFDFD3F8();

  return v5;
}

- (id)allCameraNamed:(id)named
{
  v4 = sub_1AFDFCEF8();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1AFC7C4B8();
  v9 = selfCopy;

  sub_1AF6767FC(v8, v9, v4, v6);

  swift_bridgeObjectRelease_n();
  type metadata accessor for VFXCoreCamera();
  v10 = sub_1AFDFD3F8();

  return v10;
}

- (void)dump
{
  selfCopy = self;
  sub_1AFC82A24();
}

@end