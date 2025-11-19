@interface EntityPropertyHelper
- (BOOL)_setValue:(id)a3 forKeyPath:(id)a4;
- (BOOL)areParticlesSimulatedInWorldSpace;
- (BOOL)hasParticleColliderComponent;
- (BOOL)hasParticleEmitterComponent;
- (BOOL)isEnabled;
- (CGImage)clientCGImage;
- (MTLBuffer)particleDataBuffer;
- (MTLBuffer)particleHeaderBuffer;
- (MTLTexture)clientTexture;
- (NSString)absolutePath;
- (NSString)clientTextureIdentifier;
- (_TtC3VFX20EntityPropertyHelper)init;
- (__CFXNode)simulationAnchor;
- (__n128)position;
- (__n128)scale;
- (__n128)transform;
- (double)orientation;
- (float)opacity;
- (id)_valueForKeyPath:(id)a3 world:(id)a4;
- (id)opaqueEntityManager;
- (int64_t)bindingTimestamp;
- (int64_t)objectID;
- (int64_t)particleDataBufferOffset;
- (int64_t)particleHeaderBufferOffset;
- (void)setAbsolutePath:(id)a3;
- (void)setBeamed;
- (void)setClientCGImage:(CGImage *)a3;
- (void)setClientTexture:(id)a3;
- (void)setClientTextureIdentifier:(id)a3;
- (void)setIsEnabled:(BOOL)a3;
- (void)setOpacity:(float)a3;
- (void)setOrientation:(char *)a1;
- (void)setPosition:(_TtC3VFX20EntityPropertyHelper *)self;
- (void)setScale:(_TtC3VFX20EntityPropertyHelper *)self;
- (void)setSimulationAnchor:(__CFXNode *)a3;
- (void)setSimulationRate:(float)a3;
- (void)setTransform:(simd_float4)a3;
- (void)updateAssociatedEntityWithTag:(id)a3;
@end

@implementation EntityPropertyHelper

- (int64_t)objectID
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
  v2 = *(&self->super.isa + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity + 4);
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

- (id)opaqueEntityManager
{
  Strong = swift_weakLoadStrong();

  return Strong;
}

- (void)updateAssociatedEntityWithTag:(id)a3
{
  v4 = sub_1AFDFCEF8();
  v6 = v5;
  *(&self->super.isa + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity) = 0xFFFFFFFFLL;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = self;

    sub_1AF66977C(v8, v9, v8, v4, v6);
  }
}

- (NSString)clientTextureIdentifier
{
  v2 = self;
  sub_1AFCE70CC();
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

- (void)setClientTextureIdentifier:(id)a3
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

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    v11 = self;

    sub_1AF669B24(v9, v8, v4, v6, v11, v10);
  }

  else
  {
  }
}

- (MTLTexture)clientTexture
{
  v2 = self;
  v3 = sub_1AFCE7808();

  return v3;
}

- (void)setClientTexture:(id)a3
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_unknownObjectRetain_n();
    v8 = self;

    sub_1AF66A14C(v7, v6, a3, v8);
    swift_unknownObjectRelease();
  }
}

- (CGImage)clientCGImage
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(&self->super.isa + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v5 = *(&self->super.isa + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity + 4);
    v6 = self;

    if (v4 == -1 && v5 == 0)
    {

      Strong = 0;
    }

    else
    {

      v8 = sub_1AF3D1538(v4 | (v5 << 32));

      if (v8 == 1)
      {
        Strong = 0;
      }

      else
      {
        Strong = v8;
      }
    }
  }

  return Strong;
}

- (void)setClientCGImage:(CGImage *)a3
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a3;
    v8 = self;
    v9 = v7;
    v11 = v8;

    sub_1AF66A71C(v10, v6, a3, v11);
  }
}

- (int64_t)bindingTimestamp
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return -1;
  }

  v3 = Strong + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
  v4 = *(v3 + *(type metadata accessor for ScriptingConfiguration() + 36));

  return v4;
}

- (MTLBuffer)particleHeaderBuffer
{
  v2 = self;
  v3 = sub_1AFCE9380();

  return v3;
}

- (int64_t)particleHeaderBufferOffset
{
  v2 = self;
  v3 = sub_1AFCE93CC();

  return v3;
}

- (MTLBuffer)particleDataBuffer
{
  v2 = self;
  v3 = sub_1AFCE9428();

  return v3;
}

- (int64_t)particleDataBufferOffset
{
  v2 = self;
  v3 = sub_1AFCE9664();

  return v3;
}

- (__n128)transform
{
  v1 = a1;
  *&v2 = sub_1AFCE98B4();
  v4 = v2;

  return v4;
}

- (void)setTransform:(simd_float4)a3
{
  v14.columns[2] = a4;
  v14.columns[3] = a5;
  v14.columns[1] = a3;
  v14.columns[0] = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *&a1[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity];
    v13 = a1;

    v16 = j____invert_f4_1(v14);
    v11 = v16.columns[1];
    v12 = v16.columns[0];
    v9 = v16.columns[3];
    v10 = v16.columns[2];
    sub_1AFC75350(v8, v7, v14.columns[0], v14.columns[1], v14.columns[2], v14.columns[3]);
    sub_1AFC75368(v8, v7, v12, v11, v10, v9);
  }
}

- (__CFXNode)simulationAnchor
{
  v2 = self;
  v3 = sub_1AFCEA0C4();

  return v3;
}

- (void)setSimulationAnchor:(__CFXNode *)a3
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(&self->super.isa + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v8 = a3;
    v9 = self;

    MEMORY[0x1EEE9AC00](v10, v11);
    v12[2] = a3;
    sub_1AFCDA150(sub_1AFCF41FC, v12, v7, v6);
  }
}

- (void)setBeamed
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self;
    sub_1AF677EF0(v4, v5);
  }
}

- (float)opacity
{
  v3 = 1.0;
  if (swift_weakLoadStrong())
  {
    v4 = *(&self->super.isa + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v5 = *(&self->super.isa + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity + 4);
    v6 = self;

    if (v4 == -1 && v5 == 0)
    {
    }

    else
    {

      v8 = sub_1AF3C9C7C(v4 | (v5 << 32));

      if ((v8 & 0x100000000) == 0)
      {
        return *&v8;
      }
    }
  }

  return v3;
}

- (void)setOpacity:(float)a3
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(&self->super.isa + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v8 = self;

    sub_1AFC75200(v7, v6, a3);
  }
}

- (__n128)position
{
  v1 = a1;
  *&v2 = sub_1AFCEAC94();
  v4 = v2;

  return v4;
}

- (void)setPosition:(_TtC3VFX20EntityPropertyHelper *)self
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(&self->super.isa + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v7 = self;

    sub_1AFC0DE28();
    sub_1AFC754F8(v5, v4, v6);
  }
}

- (double)orientation
{
  if (swift_weakLoadStrong())
  {
    v2 = *&a1[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity];
    v3 = *&a1[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity + 4];
    v4 = a1;

    if (v2 != -1 || v3 != 0)
    {

      v6 = sub_1AF3CA0E0(v2 | (v3 << 32));
      v8 = v7;

      if ((v8 & 1) == 0)
      {

        return *&v6;
      }
    }
  }

  else
  {
    v10 = a1;
  }

  return 0.0;
}

- (void)setOrientation:(char *)a1
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&a1[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity];
    v6 = a1;

    sub_1AFC754E0(v5, v4, a2);
  }
}

- (__n128)scale
{
  if (swift_weakLoadStrong())
  {
    v2 = *&a1[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity];
    v3 = a1;

    v4 = sub_1AF5F28AC(v2);
    if ((v5 & 1) == 0)
    {
      v6 = v4;

      result.n128_u64[0] = v6;
      return result;
    }
  }

  else
  {
    v8 = a1;
  }

  __asm { FMOV            V0.4S, #1.0 }

  return result;
}

- (void)setScale:(_TtC3VFX20EntityPropertyHelper *)self
{
  v8 = v2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(&self->super.isa + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v7 = self;

    sub_1AF5F29B4(v8, *(&v8 + 1), 0, v6, v5);
  }
}

- (BOOL)isEnabled
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v4 = Strong;
  v5 = swift_weakLoadStrong();
  if (!v5)
  {

LABEL_5:
    v9 = 0;
    return v9 & 1;
  }

  v6 = v5;
  v7 = *(&self->super.isa + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
  v8 = self;

  v9 = sub_1AF66D228(v4, v7, v6);

  return v9 & 1;
}

- (void)setIsEnabled:(BOOL)a3
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = *(&self->super.isa + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
      v10 = self;

      sub_1AF66ACE0(v6, v9, v8, a3);
    }

    else
    {
    }
  }
}

- (NSString)absolutePath
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_weakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(&self->super.isa + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
      v8 = self;

      sub_1AF671300(v9, v4, v7, v6);
      v11 = v10;

      if (v11)
      {
        v12 = sub_1AFDFCEC8();

        Strong = v12;
        goto LABEL_7;
      }
    }

    else
    {
    }

    Strong = 0;
  }

LABEL_7:

  return Strong;
}

- (void)setAbsolutePath:(id)a3
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
  sub_1AFCEC678(v4, v6);
}

- (BOOL)areParticlesSimulatedInWorldSpace
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    v5 = self;
    v6 = sub_1AF6725C4(v4, v4, v5);
  }

  else
  {
    return 1;
  }

  return v6;
}

- (void)setSimulationRate:(float)a3
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = *(&self->super.isa + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
      v10 = self;

      sub_1AF66B4BC(v6, v9, v8, a3);
    }

    else
    {
    }
  }
}

- (BOOL)hasParticleEmitterComponent
{
  v2 = self;
  v3 = sub_1AFCED948();

  return v3;
}

- (BOOL)hasParticleColliderComponent
{
  v2 = self;
  v3 = sub_1AFCEDA18();

  return v3 & 1;
}

- (BOOL)_setValue:(id)a3 forKeyPath:(id)a4
{
  sub_1AFDFCEF8();
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_1AFCEDD8C(a3);
  swift_unknownObjectRelease();

  return v7 & 1;
}

- (id)_valueForKeyPath:(id)a3 world:(id)a4
{
  v6 = sub_1AFDFCEF8();
  v8 = v7;
  v9 = a4;
  v10 = self;
  v11 = sub_1AFCEE474(v6, v8, v9);

  return v11;
}

- (_TtC3VFX20EntityPropertyHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end