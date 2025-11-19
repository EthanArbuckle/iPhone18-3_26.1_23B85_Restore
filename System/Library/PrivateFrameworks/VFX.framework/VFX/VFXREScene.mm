@interface VFXREScene
- (BOOL)needsCollisionPlanes;
- (VFXREScene)init;
- (VFXREScene)initWithContentsOf:(id)a3 commandQueue:(id)a4 options:(id)a5 error:(id *)a6;
- (__n128)worldBoundingBox;
- (id)REMeshAssetBindings;
- (id)createREMeshDataBinding;
- (id)generateMaterialsAndReturnError:(id *)a3;
- (id)getREMeshAssetPath:(id)a3;
- (id)neededModelsAndReturnError:(id *)a3;
- (id)recycleBuffersGetCompletion;
- (id)reloadBlock;
- (id)transientDrawCall;
- (int64_t)drawCallCount;
- (int64_t)fetchClientTextureIDWithNamed:(id)a3;
- (uint64_t)addCollisionPlaneWithCenter:(void *)a1 extents:(double)a2 transform:(float32x4_t)a3;
- (uint64_t)addCollisionPlaneWithExtents:(float32x4_t)a3 transform:(float32x4_t)a4;
- (void)clear;
- (void)collideOutsidePlaneWithId:(int64_t)a3;
- (void)copyBindingValueWithObjectName:(id)a3 bindingName:(id)a4 action:(int64_t)a5 storageGetterBlock:(id)a6;
- (void)removeCollisionPlaneWithId:(int64_t)a3;
- (void)setCameraEntityTransformProjection:(VFXREScene *)self :(SEL)a2 :::::;
- (void)setClientTextureWithId:(int64_t)a3 texture:(id)a4;
- (void)setEffect:(id)a3;
- (void)setFrameConfigurationWithImmersiveEnvironmentCurves:(VFXREScene *)self;
- (void)setREMeshDataBinding:(id)a3 positionData:(id)a4 normalData:(id)a5 colorData:(id)a6;
- (void)setReloadBlock:(id)a3;
- (void)setRootEntityTransform:(VFXREScene *)self :(SEL)a2 :;
- (void)setRootTransform:(VFXREScene *)self :(SEL)a2 :;
- (void)setScene:(id)a3;
- (void)setTransientDrawCall:(id)a3;
- (void)tick;
- (void)tickWithCommandBuffer:(id)a3;
- (void)tickWithDeltaTime:(double)a3;
- (void)tickWithDeltaTime:(double)a3 commandBuffer:(id)a4;
- (void)updateCollisionPlaneWithId:(float32x4_t)a3 center:(uint64_t)a4 extents:(uint64_t)a5 transform:;
- (void)updateCollisionPlaneWithId:(float32x4_t)a3 extents:(float32x4_t)a4 transform:(float32x4_t)a5;
@end

@implementation VFXREScene

- (void)setScene:(id)a3
{
  v4 = *(self + OBJC_IVAR___VFXREScene_scene);
  *(self + OBJC_IVAR___VFXREScene_scene) = a3;
  v3 = a3;
}

- (void)setEffect:(id)a3
{
  v4 = *(self + OBJC_IVAR___VFXREScene_effect);
  *(self + OBJC_IVAR___VFXREScene_effect) = a3;
  v3 = a3;
}

- (id)transientDrawCall
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setTransientDrawCall:(id)a3
{
  *(self + OBJC_IVAR___VFXREScene_transientDrawCall) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (id)reloadBlock
{
  if (*(self + OBJC_IVAR___VFXREScene_reloadBlock))
  {
    v2 = *(self + OBJC_IVAR___VFXREScene_reloadBlock + 8);
    v5[4] = *(self + OBJC_IVAR___VFXREScene_reloadBlock);
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1AFCDA044;
    v5[3] = &unk_1F256DD50;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setReloadBlock:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1AFCCE684;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___VFXREScene_reloadBlock);
  v8 = *(self + OBJC_IVAR___VFXREScene_reloadBlock);
  *v7 = v6;
  v7[1] = v4;

  sub_1AF0FB8EC(v8);
}

- (int64_t)drawCallCount
{
  v2 = self;

  v4 = sub_1AF6771B8(v3, v2);

  return v4;
}

- (__n128)worldBoundingBox
{
  v1 = a1;

  sub_1AF6774C8(v2, v1);
  v6 = v4;
  v7 = v3;

  result.n128_u64[0] = v7;
  result.n128_u32[2] = v6;
  return result;
}

- (VFXREScene)initWithContentsOf:(id)a3 commandQueue:(id)a4 options:(id)a5 error:(id *)a6
{
  v8 = sub_1AFDFC128();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFC0B8();
  swift_unknownObjectRetain();
  return VFXREScene.init(contentsOf:commandQueue:options:)(v11, a4, a5);
}

- (id)generateMaterialsAndReturnError:(id *)a3
{
  sub_1AF440DE8(MEMORY[0x1E69E7CC0]);
  v3 = sub_1AFDFCBE8();

  return v3;
}

- (id)neededModelsAndReturnError:(id *)a3
{
  v3 = sub_1AFDFD3F8();

  return v3;
}

- (void)clear
{
  v2 = self;
  sub_1AFCCA2D4();
}

- (void)copyBindingValueWithObjectName:(id)a3 bindingName:(id)a4 action:(int64_t)a5 storageGetterBlock:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_1AFDFCEF8();
  v11 = v10;
  v12 = sub_1AFDFCEF8();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  v16 = self;

  sub_1AF665518(v17, v16, v9, v11, v12, v14, a5, sub_1AF756EB4, v15);
}

- (void)tick
{
  v2 = self;

  sub_1AF66591C(v3, v2);
}

- (void)tickWithCommandBuffer:(id)a3
{
  v4 = self;
  swift_unknownObjectRetain_n();
  v5 = v4;

  sub_1AF665970(v6, v5, a3);

  swift_unknownObjectRelease();
}

- (void)tickWithDeltaTime:(double)a3
{
  v4 = self;

  sub_1AF665BD4(v5, v4, a3);
}

- (void)tickWithDeltaTime:(double)a3 commandBuffer:(id)a4
{
  v6 = self;
  swift_unknownObjectRetain_n();
  v7 = v6;

  sub_1AF665DD8(v8, v7, a4, a3);

  swift_unknownObjectRelease();
}

- (id)recycleBuffersGetCompletion
{
  v4[4] = nullsub_106;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1AFCDA044;
  v4[3] = &unk_1F24E6348;
  v2 = _Block_copy(v4);

  return v2;
}

- (void)setRootEntityTransform:(VFXREScene *)self :(SEL)a2 :
{
  v13 = v4;
  v11 = v2;
  v12 = v3;
  sub_1AFCCB920(v2, v3, v4, v5, v6);
  v10 = self;
  sub_1AFCCB40C(v11, v12, v13, v8, v9);
}

- (void)setRootTransform:(VFXREScene *)self :(SEL)a2 :
{
  v10 = v4;
  v8 = v2;
  v9 = v3;
  v7 = self;
  sub_1AFCCB40C(v8, v9, v10, v5, v6);
}

- (void)setCameraEntityTransformProjection:(VFXREScene *)self :(SEL)a2 :::::
{
  if ((*(self + OBJC_IVAR___VFXREScene_cameraEntity + 8) & 1) == 0)
  {
    v10 = *(self + OBJC_IVAR___VFXREScene_cameraEntity);
    v19 = v9;
    v17 = v7;
    v18 = v8;
    v15 = v5;
    v16 = v6;
    v13 = v3;
    v14 = v4;
    v11 = self;

    sub_1AF6662F4(v12, v11, v10, v13, v14, v15, v16, v17, v18, v19);
  }
}

- (void)setFrameConfigurationWithImmersiveEnvironmentCurves:(VFXREScene *)self
{
  v5 = v2;
  v3 = self;

  sub_1AF6669C4(v4, v3, v5);
}

- (int64_t)fetchClientTextureIDWithNamed:(id)a3
{
  v4 = sub_1AFDFCEF8();
  v6 = v5;
  v7 = self;
  v8 = sub_1AFCCBD24(v4, v6);

  return v8;
}

- (void)setClientTextureWithId:(int64_t)a3 texture:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_1AFCCBE64(a3, a4);
  swift_unknownObjectRelease();
}

- (id)REMeshAssetBindings
{
  v2 = self;
  sub_1AFCCC134();

  sub_1AFCCE620();
  v3 = sub_1AFDFD3F8();

  return v3;
}

- (id)getREMeshAssetPath:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1AF3D131C([v4 unsignedLongLongValue]);
  v7 = v6;

  if (v7)
  {

    v8 = sub_1AFDFCEC8();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createREMeshDataBinding
{
  v2 = [objc_allocWithZone(type metadata accessor for VFXREBindingMeshData()) init];

  return v2;
}

- (void)setREMeshDataBinding:(id)a3 positionData:(id)a4 normalData:(id)a5 colorData:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  v15 = [v10 unsignedLongLongValue];
  v16 = *(*(v14 + OBJC_IVAR___VFXREScene_scene) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v17 = v11;
  v18 = v12;
  v19 = v13;

  sub_1AF68AD4C(v15, v16, a4, a5, a6);
}

- (uint64_t)addCollisionPlaneWithCenter:(void *)a1 extents:(double)a2 transform:(float32x4_t)a3
{
  sub_1AFCCD8C0();
  v13 = v5;
  v14 = v4;
  v11 = v7;
  v12 = v6;
  v8 = a1;
  v9 = sub_1AFCCCBC8(a3, v14, v13, v12, v11);

  return v9;
}

- (uint64_t)addCollisionPlaneWithExtents:(float32x4_t)a3 transform:(float32x4_t)a4
{
  v6 = a1;
  v7 = sub_1AFCCCBC8(a2, a3, a4, a5, a6);

  return v7;
}

- (void)updateCollisionPlaneWithId:(float32x4_t)a3 center:(uint64_t)a4 extents:(uint64_t)a5 transform:
{
  sub_1AFCCD8C0();
  v15 = v7;
  v13 = v9;
  v14 = v8;
  v12 = v10;
  v11 = a1;
  sub_1AFCCCDB0(a5, a3, v15, v14, v13, v12);
}

- (void)updateCollisionPlaneWithId:(float32x4_t)a3 extents:(float32x4_t)a4 transform:(float32x4_t)a5
{
  v9 = a1;
  sub_1AFCCCDB0(a8, a2, a3, a4, a5, a6);
}

- (void)removeCollisionPlaneWithId:(int64_t)a3
{
  v4 = self;
  sub_1AFCCD1A0(a3);
}

- (BOOL)needsCollisionPlanes
{
  v2 = self;
  v3 = sub_1AFCCD3E8();

  return v3;
}

- (void)collideOutsidePlaneWithId:(int64_t)a3
{
  v4 = self;
  sub_1AFCCD498(a3);
}

- (VFXREScene)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end