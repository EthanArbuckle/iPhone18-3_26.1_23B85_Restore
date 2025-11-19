@interface VFXScene
+ (NSArray)builtinEffectIdentifiers;
+ (NSBundle)vfxAssetsFrameworkBundle;
+ (id)cloneAndSetupReplicationWithModelWorld:(id)a3;
+ (id)vfxLibraryURLFor:(id)a3;
+ (uint64_t)applicationWillEnterForeground;
+ (void)appendWithTrigger:(id)a3 contact:(id)a4 inWorld:(id)a5;
+ (void)appendWithTrigger:(id)a3 touchEvent:(id)a4 view:(id)a5 inWorld:(id)a6;
+ (void)registerWithTriggerManager:(id)a3 inWorld:(id)a4;
+ (void)setBuiltinEffectIdentifiers:(id)a3;
+ (void)stopReplicationWithModel:(id)a3 runtime:(id)a4;
- (BOOL)additiveWritesToAlpha;
- (BOOL)anyDrawNeedsLinearDepth;
- (BOOL)isEnabled:(id)a3;
- (BOOL)isPlaying;
- (BOOL)loadWithUrl:(id)a3 loadingFor:(int)a4 options:(id)a5 infoOut:(id)a6 error:(id *)a7;
- (BOOL)needsUpdate;
- (BOOL)wantsCollisionPlanes;
- (NSArray)bindings;
- (NSArray)effects;
- (NSArray)metalBinaryArchiveURLs;
- (NSObject)assetManager;
- (NSString)headerInludeString;
- (NSString)name;
- (_TtC3VFX8VFXScene)initWithContentsOf:(id)a3 error:(id *)a4;
- (_TtC3VFX8VFXScene)initWithContentsOf:(id)a3 options:(id)a4 error:(id *)a5;
- (__n128)evaluateForceFieldsAtPosition:(float32x4_t)a3 velocity:(float)a4 mass:(double)a5 charge:(float)a6 time:(float)a7 dt:(uint64_t)a8 categoryMask:(int)a9;
- (id)addEffectFrom:(id)a3 error:(id *)a4;
- (id)addEffectFromTemplate:(id)a3;
- (id)addEffectWithEffectID:(int)a3;
- (id)bindingOf:(id)a3 named:(id)a4;
- (id)createEntityPropertyHelperWithObjectID:(int64_t)a3;
- (id)createNullEntityPropertyHelper;
- (id)destinationReplicationDelegate;
- (id)firstBindingWithName:(id)a3;
- (id)makeDefaultCamera;
- (id)mergeScene:(id)a3;
- (id)opaqueEntityManager;
- (id)parameterOf:(id)a3 named:(id)a4;
- (id)recycleBuffersGetCompletionWithRenderer:(id)a3;
- (id)sourceReplicationDelegate;
- (id)textureForEntity:(int64_t)a3 isFallback:(BOOL *)a4 isDynamic:(BOOL *)a5 renderer:(id)a6;
- (id)valueAtPath:(id)a3;
- (int64_t)drawCallCount;
- (int64_t)drawCallCountWithEmitterID:(int64_t)a3;
- (int64_t)entityWithTag:(id)a3;
- (int64_t)newObject;
- (int64_t)version;
- (uint64_t)createCollisionPlane:(float32x4_t)a3 transform:(float32x4_t)a4;
- (void)beginTransaction;
- (void)checkNoReferenceToOldECS:(id)a3 oldWorldRef:(id)a4;
- (void)clearCaches;
- (void)dealloc;
- (void)destroyCollisionPlane:(int64_t)a3;
- (void)destroyObject:(int64_t)a3;
- (void)didRenameTag:(id)a3 to:(id)a4;
- (void)dump;
- (void)encodeAuthoringWithEncoder:(id)a3 renderer:(id)a4 colorFormat:(unint64_t)a5 depthStencilFormat:(unint64_t)a6 sampleCount:(int64_t)a7;
- (void)endTransaction;
- (void)enterBackground;
- (void)enterForeground;
- (void)enumerateDrawCall:(id)a3;
- (void)initializeAssetManagerWithBundleURL:(id)a3;
- (void)invalidateCachedScriptParams;
- (void)invalidateGraphV1;
- (void)performTransaction:(id)a3;
- (void)prepare;
- (void)prepareDrawCallsWithFrameIndex:(int64_t)a3 renderer:(id)a4;
- (void)prepareWithRenderer:(id)a3;
- (void)recycleDrawCalls;
- (void)remapEntityReferences:(id)a3 duplicating:(BOOL)a4;
- (void)removeAllEffects;
- (void)removeEffect:(id)a3;
- (void)resolveObjectReferencesWithRemapTableWithWorld:(id)a3 objectsByIdentifier:(id)a4;
- (void)restart;
- (void)selectObject:(int64_t)a3 selected:(BOOL)a4;
- (void)setAdditiveWritesToAlpha:(BOOL)a3;
- (void)setAllowsCameraControl:(BOOL)a3;
- (void)setAssetManager:(id)a3;
- (void)setDestinationReplicationDelegate:(id)a3;
- (void)setEffects:(id)a3;
- (void)setEnabled:(id)a3 enabled:(BOOL)a4;
- (void)setIsFrozen:(BOOL)a3;
- (void)setMetalBinaryArchiveURLs:(id)a3;
- (void)setName:(id)a3;
- (void)setParameterOf:(id)a3 named:(id)a4 :(id)a5;
- (void)setPaused:(BOOL)a3;
- (void)setSourceReplicationDelegate:(id)a3;
- (void)setValue:(id)a3 atPath:(id)a4;
- (void)startRuntimeThread;
- (void)stopRuntimeThread;
- (void)triggerRenderWithRendererIdentifier:(unint64_t)a3 with:(id)a4;
- (void)updateAtTime:(double)a3 deltaTime:(double)a4 frameIndex:(int64_t)a5 renderer:(id)a6;
- (void)updateCollisionPlane:(int64_t)a3 collideOutsideExtents:(BOOL)a4;
- (void)updateCollisionPlane:(int64_t)a3 scale:orientation:position:;
- (void)updateForceField:(void *)a3 of:(int64_t)a4;
- (void)updateMemoryOwnership;
- (void)updateVFX2RenderOutputWithPointOfView:(id)a3 commandBuffer:(id)a4 renderer:(id)a5 particleMaterialOverride:(unint64_t)a6;
- (void)updateWithDeltaTime:(double)a3;
- (void)updateWorldTransform:(__n128)a3 of:(__n128)a4;
- (void)willRemoveAudioAsset:(id)a3 fromWorld:(id)a4;
- (void)withPointerToParameterOf:(id)a3 named:(id)a4 block:(id)a5;
- (void)withPointerToValueAtPath:(id)a3 block:(id)a4;
@end

@implementation VFXScene

+ (uint64_t)applicationWillEnterForeground
{
  if (qword_1ED72C938 != -1)
  {
    swift_once();
  }

  [qword_1ED73B7F8 lock];
  if (qword_1ED72C930 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED73B7F0;
  v1 = qword_1ED73B7F8;

  [v1 unlock];
  v2 = *(v0 + 16);
  if (v2)
  {
    for (i = v0 + 32; ; i += 8)
    {
      sub_1AF6FD3D0(i, v13);
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        goto LABEL_9;
      }

      v5 = Strong;
      v6 = Strong + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock;
      os_unfair_lock_lock(*(Strong + OBJC_IVAR____TtC3VFX13EntityManager_backgroundingSignalLock + 24));
      v7 = OBJC_IVAR____TtC3VFX13EntityManager_applicationInBackground;
      if (*(v5 + OBJC_IVAR____TtC3VFX13EntityManager_applicationInBackground))
      {
        break;
      }

      v8 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_sceneInBackground);
      os_unfair_lock_unlock(*(v6 + 24));
      if (v8)
      {
        goto LABEL_14;
      }

LABEL_8:

LABEL_9:
      sub_1AF6FC96C(v13, &qword_1ED72C290, type metadata accessor for EntityManager, type metadata accessor for WeakReference, sub_1AF6FD4AC);
      if (!--v2)
      {
      }
    }

    os_unfair_lock_unlock(*(v6 + 24));
LABEL_14:
    os_unfair_lock_lock(*(v6 + 24));
    *(v5 + v7) = 0;
    os_unfair_lock_unlock(*(v6 + 24));
    v9 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
    if (v9)
    {

      os_unfair_recursive_lock_lock_with_options();
      *(v9 + 152) = 0;
      os_unfair_recursive_lock_lock_with_options();
      v10 = *(v9 + 152);
      os_unfair_recursive_lock_unlock();
      if ((v10 & 1) == 0)
      {
        v11 = *(v9 + 16);
        [*(v11 + 16) lock];
        *(v11 + 24) = 1;
        [*(v11 + 16) signal];
        [*(v11 + 16) unlock];
      }

      os_unfair_recursive_lock_unlock();
    }

    goto LABEL_8;
  }
}

- (NSString)headerInludeString
{
  v2 = self;
  sub_1AF8BB88C();

  v3 = sub_1AFDFCEC8();

  return v3;
}

+ (void)registerWithTriggerManager:(id)a3 inWorld:(id)a4
{
  v5 = a3;
  v6 = a4;
  sub_1AFAD0E08(v5, v6);
}

+ (void)appendWithTrigger:(id)a3 contact:(id)a4 inWorld:(id)a5
{
  v7 = sub_1AFDFCEF8();
  v9 = v8;
  v10 = a4;
  v11 = a5;
  sub_1AFAD0F74(v7, v9, v10, v11);
}

+ (void)appendWithTrigger:(id)a3 touchEvent:(id)a4 view:(id)a5 inWorld:(id)a6
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_1AFDFCEF8();
  v11 = v10;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  sub_1AFAD1130(v9, v11, v12, v13, v14);
}

+ (NSBundle)vfxAssetsFrameworkBundle
{
  if (qword_1EB6373C0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB643AF0;

  return v3;
}

+ (NSArray)builtinEffectIdentifiers
{
  if (qword_1EB6373C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1AFDFD3F8();

  return v2;
}

+ (void)setBuiltinEffectIdentifiers:(id)a3
{
  v3 = sub_1AFDFD418();
  if (qword_1EB6373C8 != -1)
  {
    v4 = v3;
    swift_once();
    v3 = v4;
  }

  qword_1EB643AF8 = v3;
}

+ (id)vfxLibraryURLFor:(id)a3
{
  sub_1AF455364();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AFDFCEF8();
  static VFXScene.vfxLibraryURL(for:)(v7, v8, v6);

  v9 = sub_1AFDFC128();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_1AFDFC048();
    (*(v10 + 8))(v6, v9);
    v12 = v13;
  }

  return v12;
}

- (NSArray)effects
{
  type metadata accessor for VFXEffect();

  v2 = sub_1AFDFD3F8();

  return v2;
}

- (void)setEffects:(id)a3
{
  type metadata accessor for VFXEffect();
  *(self + OBJC_IVAR____TtC3VFX8VFXScene_effects) = sub_1AFDFD418();
}

- (int64_t)version
{
  v2 = self;
  v3 = sub_1AFCCEBC4();

  return v3;
}

- (NSString)name
{

  v2 = sub_1AFDFCEC8();

  return v2;
}

- (void)setName:(id)a3
{
  v4 = sub_1AFDFCEF8();
  v5 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  *(v5 + 24) = v4;
  *(v5 + 32) = v6;
}

- (_TtC3VFX8VFXScene)initWithContentsOf:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = sub_1AFDFC128();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFC0B8();
  v12 = a4;
  v13 = [(VFXScene *)self initWithOptions:v12];
  if (qword_1ED72FDA8 != -1)
  {
    swift_once();
  }

  sub_1AFCD0058(v11);
  (*(v8 + 8))(v11, v7);

  return v13;
}

- (_TtC3VFX8VFXScene)initWithContentsOf:(id)a3 error:(id *)a4
{
  v4 = sub_1AFDFC128();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFC0B8();
  return VFXScene.init(contentsOf:)(v7);
}

- (void)dealloc
{
  if (*(self + OBJC_IVAR____TtC3VFX8VFXScene_hasSharedEntityManager) == 1)
  {
    v3 = self;
  }

  else
  {
    v4 = self;

    sub_1AF65F760();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for VFXScene(0);
  [(VFXScene *)&v5 dealloc];
}

- (NSArray)metalBinaryArchiveURLs
{
  if (*(self + OBJC_IVAR____TtC3VFX8VFXScene_metalBinaryArchiveURLs))
  {
    sub_1AFDFC128();

    v2 = sub_1AFDFD3F8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setMetalBinaryArchiveURLs:(id)a3
{
  if (a3)
  {
    sub_1AFDFC128();
    v4 = sub_1AFDFD418();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____TtC3VFX8VFXScene_metalBinaryArchiveURLs) = v4;
}

- (void)enterBackground
{
  v2 = self;
  sub_1AF6FA358();
}

- (void)enterForeground
{
  v2 = self;
  sub_1AF6FA444();
}

- (BOOL)isPlaying
{
  v2 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  if (*(v2 + 81) == 1)
  {
    return (*(v2 + 84) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

- (void)setIsFrozen:(BOOL)a3
{
  v3 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  *(v3 + 82) = a3;
  if (a3)
  {
    *(v3 + 83) = 0;
  }
}

- (void)setAllowsCameraControl:(BOOL)a3
{
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v3 = sub_1AFDFDA08();
  v4 = 1;
  sub_1AF75A4B4(v3, 0xD000000000000057, 0x80000001AFF4D710, &v4);
}

- (BOOL)additiveWritesToAlpha
{
  v2 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer);
  if (v2)
  {
    return *(v2 + 272);
  }

  else
  {
    return 0;
  }
}

- (void)setAdditiveWritesToAlpha:(BOOL)a3
{
  v3 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer);
  if (v3 && *(v3 + 272) != a3)
  {
    *(v3 + 272) = a3;
    v4 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
    v5 = self;

    sub_1AF885E08(v4);
  }
}

- (id)bindingOf:(id)a3 named:(id)a4
{
  v5 = sub_1AFDFCEF8();
  v7 = v6;
  v8 = sub_1AFDFCEF8();
  v10 = v9;
  v11 = self;
  v12 = sub_1AFC7E36C(v5, v7, v8, v10, 0x200000000);

  return v12;
}

- (id)firstBindingWithName:(id)a3
{
  v4 = sub_1AFDFCEF8();
  v6 = v5;
  v7 = self;
  v8 = sub_1AFC7E8C4(v4, v6, 0x200000000);

  return v8;
}

- (NSArray)bindings
{
  v2 = self;
  sub_1AFC7F614(0x200000000, 0, 0);

  sub_1AFC88F24();
  v3 = sub_1AFDFD3F8();

  return v3;
}

- (void)updateWithDeltaTime:(double)a3
{
  v4 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v5 = self;
  sub_1AF666CF8(v4, v5, a3);
}

- (void)restart
{
  v2 = self;
  sub_1AFCD2E0C();
}

- (void)prepare
{
  v2 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v3 = self;
  sub_1AF6652B8(v2, v3);
}

- (void)clearCaches
{
  v2 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v3 = self;
  sub_1AF667144(v2, v3);
}

- (void)performTransaction:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1AFCD3350(sub_1AFCCE684, v5);
}

- (id)parameterOf:(id)a3 named:(id)a4
{
  v5 = sub_1AFDFCEF8();
  v7 = v6;
  v8 = sub_1AFDFCEF8();
  v10 = v9;
  v11 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

  v12 = self;
  sub_1AF66C6B4(v11, v11, v5, v7, 0x200000000, v8, v10, v22);

  v13 = v23;
  if (v23)
  {
    v14 = sub_1AF441150(v22, v23);
    v15 = *(v13 - 8);
    v16 = MEMORY[0x1EEE9AC00](v14, v14);
    v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18, v16);
    v19 = sub_1AFDFEE08();
    (*(v15 + 8))(v18, v13);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v22);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)setParameterOf:(id)a3 named:(id)a4 :(id)a5
{
  v6 = sub_1AFDFCEF8();
  v8 = v7;
  v9 = sub_1AFDFCEF8();
  v11 = v10;
  swift_unknownObjectRetain();
  v12 = self;
  sub_1AFDFDFB8();
  swift_unknownObjectRelease();
  v13[2] = *(v12 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v13[3] = v6;
  v13[4] = v8;
  v14 = 0;
  v15 = 2;
  v16 = v9;
  v17 = v11;
  v18 = v19;
  sub_1AFC7BD74(sub_1AFCD9CF8, v13);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v19);
}

- (void)withPointerToParameterOf:(id)a3 named:(id)a4 block:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_1AFDFCEF8();
  v9 = v8;
  v10 = sub_1AFDFCEF8();
  v12 = v11;
  _Block_copy(v6);
  v13 = self;
  sub_1AFCD98BC(v7, v9, v10, v12, v13, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)setValue:(id)a3 atPath:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1AFDFDFB8();
  swift_unknownObjectRelease();
  v8 = sub_1AFDFCEF8();
  v10 = v9;

  v11[2] = v7;
  v11[3] = v12;
  v11[4] = v8;
  v11[5] = v10;
  sub_1AFC7BD74(sub_1AFCD9D14, v11);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
}

- (id)valueAtPath:(id)a3
{
  v4 = sub_1AFDFCEF8();
  v6 = v5;
  v7 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v8 = self;

  sub_1AF66CF74(v7, v8, v4, v6, &v18);

  v9 = v19;
  if (v19)
  {
    v10 = sub_1AF441150(&v18, v19);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x1EEE9AC00](v10, v10);
    v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_1AFDFEE08();
    (*(v11 + 8))(v14, v9);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v18);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)withPointerToValueAtPath:(id)a3 block:(id)a4
{
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v4 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v5 = v4;
    swift_once();
    v4 = v5;
  }

  v6 = 0;
  sub_1AF0D4F18(v4, &v6, 0xD00000000000003DLL, 0x80000001AFF4D770);
}

- (void)setEnabled:(id)a3 enabled:(BOOL)a4
{
  v6 = sub_1AFDFCEF8();
  v8 = v7;
  v9 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

  v10 = self;
  sub_1AF6621E4(v9, v9, v6, v8, 0x200000000, a4);
}

- (BOOL)isEnabled:(id)a3
{
  v4 = sub_1AFDFCEF8();
  v6 = v5;
  v7 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

  v8 = self;
  LOBYTE(v4) = sub_1AF671A7C(v7, v7, v4, v6, 0x200000000);

  return v4 & 1;
}

- (id)addEffectFrom:(id)a3 error:(id *)a4
{
  v5 = sub_1AFDFC128();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFC0B8();
  v10 = self;
  sub_1AFCD4E08(v9);
  v12 = v11;
  (*(v6 + 8))(v9, v5);

  return v12;
}

- (id)addEffectWithEffectID:(int)a3
{
  v3 = *&a3;
  v8 = 0;
  v4 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v5 = self;
  sub_1AF667400(v4, &v8, v5, v3);

  v6 = v8;

  return v6;
}

- (id)addEffectFromTemplate:(id)a3
{
  v11 = 0;
  v4 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v5 = a3;
  v6 = self;
  v7 = v5;
  v8 = v6;
  sub_1AF667698(v4, v7, v8, &v11);

  v9 = v11;

  return v9;
}

- (void)removeEffect:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v5 = self;
  v7 = a3;
  v6 = v5;
  sub_1AF6679A8(v4, v6, v7);
}

- (void)removeAllEffects
{
  v2 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v3 = self;
  sub_1AF667D30(v2, v3);
}

- (id)makeDefaultCamera
{
  v3 = OBJC_IVAR____TtC3VFX8VFXScene_entityManager;
  v4 = **(*(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v5 = self;
  v15 = 1;
  v6 = sub_1AFD04EFC(0x100000000uLL, v4);
  LODWORD(v4) = v6;
  v7 = HIDWORD(v6);
  v8 = *(self + v3);
  v9 = type metadata accessor for VFXCoreCamera();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  *v11 = v4;
  *(v11 + 1) = v7;
  *(v11 + 1) = v8;
  v14.receiver = v10;
  v14.super_class = v9;
  v12 = [(VFXScene *)&v14 init];

  return v12;
}

- (NSObject)assetManager
{
  v2 = *(*(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + 184);
  v3 = self;

  v4 = sub_1AF6D5628(&type metadata for AssetManagerInstance, &off_1F25418A0, v2);

  return v4;
}

- (void)setAssetManager:(id)a3
{
  v5 = a3;
  v6 = self;
  VFXScene.assetManager.setter(a3, v6);
}

- (void)initializeAssetManagerWithBundleURL:(id)a3
{
  v4 = sub_1AFDFC128();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFC0B8();
  v9 = self;
  VFXScene.initializeAssetManagerWithBundleURL(_:)();

  (*(v5 + 8))(v8, v4);
}

- (int64_t)entityWithTag:(id)a3
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
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  v9 = VFXScene.entity(withTag:)(v8);

  return v9;
}

- (id)textureForEntity:(int64_t)a3 isFallback:(BOOL *)a4 isDynamic:(BOOL *)a5 renderer:(id)a6
{
  swift_unknownObjectRetain();
  v10 = self;
  v11 = sub_1AFCD6280(a3, a4, a5);
  swift_unknownObjectRelease();

  return v11;
}

- (void)updateMemoryOwnership
{
  v3 = OBJC_IVAR____TtC3VFX8VFXScene_entityManager;
  v4 = self;
  sub_1AF65F830();
  v5 = *(self + v3);
  v6 = v4;
  sub_1AF6680F0(v5, v6);
}

- (BOOL)loadWithUrl:(id)a3 loadingFor:(int)a4 options:(id)a5 infoOut:(id)a6 error:(id *)a7
{
  v11 = sub_1AFDFC128();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFC0B8();
  v16 = a5;
  v17 = a6;
  v18 = self;
  VFXScene.load(url:loadingFor:options:infoOut:)(v15, a4, a5, a6);
  (*(v12 + 8))(v15, v11);

  return 1;
}

- (void)didRenameTag:(id)a3 to:(id)a4
{
  v5 = sub_1AFDFCEF8();
  v7 = v6;
  v8 = sub_1AFDFCEF8();
  v10 = v9;
  v11 = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  VFXScene.didRenameTag(_:to:)(v12, v13);
}

- (id)createEntityPropertyHelperWithObjectID:(int64_t)a3
{
  v4 = self;
  v5 = VFXScene.createEntityPropertyHelper(withObjectID:)(a3);

  return v5;
}

- (id)createNullEntityPropertyHelper
{
  v2 = type metadata accessor for EntityPropertyHelper();
  v3 = objc_allocWithZone(v2);
  swift_weakInit();
  swift_weakAssign();
  *&v3[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity] = 0xFFFFFFFFLL;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = [(VFXScene *)&v6 init];

  return v4;
}

- (void)resolveObjectReferencesWithRemapTableWithWorld:(id)a3 objectsByIdentifier:(id)a4
{
  v6 = sub_1AFDFCC08();
  v7 = a3;
  v8 = self;
  VFXScene.resolveObjectReferencesWithRemapTable(world:objectsByIdentifier:)(v7, v6);
}

- (void)updateVFX2RenderOutputWithPointOfView:(id)a3 commandBuffer:(id)a4 renderer:(id)a5 particleMaterialOverride:(unint64_t)a6
{
  v10 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = self;
  _s3VFX8VFXSceneC22updateVFX2RenderOutput11pointOfView13commandBuffer8renderer24particleMaterialOverrideyAA13VFXCoreCameraC_So010MTLCommandK0_pyXls6UInt64VtF_0(v10, a4, a5, a6);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)remapEntityReferences:(id)a3 duplicating:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  VFXScene.remapEntityReferences(_:duplicating:)(v6, a4);
}

- (void)beginTransaction
{
  v2 = self;
  sub_1AFCDF55C();
}

- (void)endTransaction
{
  v2 = self;
  sub_1AFCDF624();
}

- (id)opaqueEntityManager
{

  return v2;
}

- (void)invalidateGraphV1
{
  v3 = OBJC_IVAR____TtC3VFX8VFXScene_entityManager;
  v5 = self;

  v4 = sub_1AFCDAC04(type metadata accessor for GraphScriptRunner);

  if (v4)
  {
    *(v4 + 16) = 1;
  }

  *(*(self + v3) + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
}

- (void)dump
{
  v2 = self;
  sub_1AF65F9AC();
}

- (void)checkNoReferenceToOldECS:(id)a3 oldWorldRef:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  VFXScene.checkNoReferenceToOldECS(_:oldWorldRef:)(v6, a4);

  swift_unknownObjectRelease();
}

- (id)mergeScene:(id)a3
{
  v5 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v6 = *(a3 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

  v7 = a3;
  v8 = self;
  v9 = sub_1AF677AE4(v6, v5, v6, v7);

  return v9;
}

- (void)prepareWithRenderer:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v5 = self;
  swift_unknownObjectRetain_n();
  v6 = v5;
  sub_1AF6689CC(v4, v6, a3);

  swift_unknownObjectRelease();
}

- (void)updateAtTime:(double)a3 deltaTime:(double)a4 frameIndex:(int64_t)a5 renderer:(id)a6
{
  v10 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v11 = self;
  swift_unknownObjectRetain_n();
  v12 = v11;
  sub_1AF668C28(v10, v12, a5, a6, a3, a4);

  swift_unknownObjectRelease();
}

- (void)prepareDrawCallsWithFrameIndex:(int64_t)a3 renderer:(id)a4
{
  v6 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v7 = self;
  swift_unknownObjectRetain_n();
  v8 = v7;
  sub_1AF669210(v6, v8, a3, a4);

  swift_unknownObjectRelease();
}

- (void)enumerateDrawCall:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v8[2] = v4;
  v6 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_transientDrawCall);

  v7 = self;
  sub_1AF661130(v5, v5, v6, sub_1AF756EB4, v8);
  _Block_release(v4);
}

- (int64_t)drawCallCount
{
  v2 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v3 = qword_1EB6373D0;
  v4 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v9[0] = xmmword_1EB643FC0;
  v9[1] = *algn_1EB643FD0;
  v10 = qword_1EB643FE0;
  sub_1AF6B06C0(v2, v9, 0x200000000, v7);
  if (*&v7[0])
  {
    v5 = v8;
    sub_1AFCEFD2C(v7, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCF4720);
  }

  else
  {

    return 0;
  }

  return v5;
}

- (int64_t)drawCallCountWithEmitterID:(int64_t)a3
{
  v3 = *(*(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + 184);
  v4 = self;

  v5 = sub_1AF6D6004(&type metadata for DrawCallPool, &off_1F25608D0, v3, sub_1AFCF4958);

  return v5;
}

- (void)recycleDrawCalls
{
  v2 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v3 = self;
  sub_1AFB4600C(v2);
}

- (BOOL)anyDrawNeedsLinearDepth
{
  v2 = *(*(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + 184);
  v3 = self;

  v4 = sub_1AF6D62BC(&type metadata for DrawCallPool, &off_1F25608D0, v2);

  return v4 & 1;
}

- (void)triggerRenderWithRendererIdentifier:(unint64_t)a3 with:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  VFXScene.triggerRender(rendererIdentifier:with:)(a3, sub_1AFCCE684, v7);
}

- (void)setPaused:(BOOL)a3
{
  v3 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  *(v3 + 82) = a3;
  if (a3)
  {
    *(v3 + 83) = 0;
  }
}

- (void)encodeAuthoringWithEncoder:(id)a3 renderer:(id)a4 colorFormat:(unint64_t)a5 depthStencilFormat:(unint64_t)a6 sampleCount:(int64_t)a7
{
  v7 = a7;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = self;
  VFXScene.encodeAuthoring(encoder:renderer:colorFormat:depthStencilFormat:sampleCount:)(a3, a4, a5, a6, v7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (int64_t)newObject
{
  v2 = *(*(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v3 = *v2;
  ecs_stack_allocator_push_snapshot(*(*v2 + 32));
  v4 = ecs_stack_allocator_allocate(*(v3 + 32), 32, 8);
  *v4 = &type metadata for WorldTransform;
  v4[1] = &off_1F2529FC0;
  v4[2] = &type metadata for Beamed;
  v4[3] = &off_1F2529FA0;
  v5 = sub_1AF63708C(v4, 2, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v3);
  ecs_stack_allocator_pop_snapshot(*(v3 + 32));
  if (v5 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (void)destroyObject:(int64_t)a3
{
  v3 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v4 = a3 & 0xFFFFFFFF00000000;
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  v6 = self;
  sub_1AF65CE88(v5 | v4, v3);
}

- (void)updateWorldTransform:(__n128)a3 of:(__n128)a4
{
  v7 = *&a1[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  v8 = a7 & 0xFFFFFFFF00000000;
  if (a7)
  {
    v9 = a7;
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  v10 = a1;
  sub_1AF680204(v9 | v8, v7, a2, a3, a4, a5);
}

- (void)selectObject:(int64_t)a3 selected:(BOOL)a4
{
  v6 = HIDWORD(a3);
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = -1;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = self;
  *(v8 + 32) = v7;
  *(v8 + 36) = v6;
  v9 = self;
  sub_1AF66D948(sub_1AFCF439C, v8);
}

- (void)invalidateCachedScriptParams
{
  v2 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v3 = self;
  sub_1AF66955C(v2, v3);
}

- (void)updateForceField:(void *)a3 of:(int64_t)a4
{
  v5 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v6 = a4 & 0xFFFFFFFF00000000;
  v9[2] = a3;
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  v8 = self;
  sub_1AF670200(v7 | v6, v5, v5, v7 | v6, sub_1AFCF4988, v9);
}

- (__n128)evaluateForceFieldsAtPosition:(float32x4_t)a3 velocity:(float)a4 mass:(double)a5 charge:(float)a6 time:(float)a7 dt:(uint64_t)a8 categoryMask:(int)a9
{
  v13 = a1;
  v14.n128_f32[0] = a4;
  sub_1AFCEFDCC(a9, a2, a3, v14, a6, a7);
  v19 = v15;

  return v19;
}

+ (void)stopReplicationWithModel:(id)a3 runtime:(id)a4
{
  *(*(a3 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream) = 0;
  v5 = a3;
  v6 = a4;

  *(*&v6[OBJC_IVAR____TtC3VFX8VFXScene_entityManager] + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream) = 0;
}

+ (id)cloneAndSetupReplicationWithModelWorld:(id)a3
{
  v3 = a3;
  v4 = _s3VFX8VFXSceneC24cloneAndSetupReplication10modelWorldAA26VFXBidirectionalRemapTableCSo8VFXWorldC_tFZ_0(v3);

  return v4;
}

- (id)sourceReplicationDelegate
{
  if (*(*(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  return Strong;
}

- (void)setSourceReplicationDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  VFXScene.sourceReplicationDelegate.setter(a3);
}

- (id)destinationReplicationDelegate
{
  if (*(*(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  return Strong;
}

- (void)setDestinationReplicationDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  VFXScene.destinationReplicationDelegate.setter(a3);
}

- (void)startRuntimeThread
{
  v2 = self;
  VFXScene.startRuntimeThread()();
}

- (void)stopRuntimeThread
{
  v2 = self;
  sub_1AF65F760();
}

- (id)recycleBuffersGetCompletionWithRenderer:(id)a3
{
  v5[4] = nullsub_106;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1AFCDA044;
  v5[3] = &unk_1F256DFA0;
  v3 = _Block_copy(v5);

  return v3;
}

- (BOOL)needsUpdate
{
  v2 = self;
  v3 = sub_1AF6F6CDC();

  return v3 & 1;
}

- (void)willRemoveAudioAsset:(id)a3 fromWorld:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1AFCF33B0();
}

- (BOOL)wantsCollisionPlanes
{
  v2 = *(self + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v3 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  v4 = *(**(v2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 32);
  v5 = self;
  ecs_stack_allocator_push_snapshot(v4);
  LOBYTE(v4) = sub_1AFA1B8FC();
  ecs_stack_allocator_pop_snapshot(*(**(v2 + v3) + 32));

  return v4 & 1;
}

- (uint64_t)createCollisionPlane:(float32x4_t)a3 transform:(float32x4_t)a4
{
  v6 = a1;
  v7 = sub_1AFCEEF50(a2, a3, a4, a5, a6);

  return v7;
}

- (void)updateCollisionPlane:(int64_t)a3 scale:orientation:position:
{
  v10 = v5;
  v8 = v3;
  v9 = v4;
  v7 = self;
  sub_1AFCEF054(a3, v8, v9, v10);
}

- (void)destroyCollisionPlane:(int64_t)a3
{
  v4 = self;
  sub_1AFCEF188(a3);
}

- (void)updateCollisionPlane:(int64_t)a3 collideOutsideExtents:(BOOL)a4
{
  v6 = self;
  sub_1AFCEF350(a3, a4);
}

@end