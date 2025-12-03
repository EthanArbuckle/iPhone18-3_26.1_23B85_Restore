@interface VFXREScene
- (BOOL)needsCollisionPlanes;
- (VFXREScene)init;
- (VFXREScene)initWithContentsOf:(id)of commandQueue:(id)queue options:(id)options error:(id *)error;
- (__n128)worldBoundingBox;
- (id)REMeshAssetBindings;
- (id)createREMeshDataBinding;
- (id)generateMaterialsAndReturnError:(id *)error;
- (id)getREMeshAssetPath:(id)path;
- (id)neededModelsAndReturnError:(id *)error;
- (id)recycleBuffersGetCompletion;
- (id)reloadBlock;
- (id)transientDrawCall;
- (int64_t)drawCallCount;
- (int64_t)fetchClientTextureIDWithNamed:(id)named;
- (uint64_t)addCollisionPlaneWithCenter:(void *)center extents:(double)extents transform:(float32x4_t)transform;
- (uint64_t)addCollisionPlaneWithExtents:(float32x4_t)extents transform:(float32x4_t)transform;
- (void)clear;
- (void)collideOutsidePlaneWithId:(int64_t)id;
- (void)copyBindingValueWithObjectName:(id)name bindingName:(id)bindingName action:(int64_t)action storageGetterBlock:(id)block;
- (void)removeCollisionPlaneWithId:(int64_t)id;
- (void)setCameraEntityTransformProjection:(VFXREScene *)self :(SEL)a2 :::::;
- (void)setClientTextureWithId:(int64_t)id texture:(id)texture;
- (void)setEffect:(id)effect;
- (void)setFrameConfigurationWithImmersiveEnvironmentCurves:(VFXREScene *)self;
- (void)setREMeshDataBinding:(id)binding positionData:(id)data normalData:(id)normalData colorData:(id)colorData;
- (void)setReloadBlock:(id)block;
- (void)setRootEntityTransform:(VFXREScene *)self :(SEL)a2 :;
- (void)setRootTransform:(VFXREScene *)self :(SEL)a2 :;
- (void)setScene:(id)scene;
- (void)setTransientDrawCall:(id)call;
- (void)tick;
- (void)tickWithCommandBuffer:(id)buffer;
- (void)tickWithDeltaTime:(double)time;
- (void)tickWithDeltaTime:(double)time commandBuffer:(id)buffer;
- (void)updateCollisionPlaneWithId:(float32x4_t)id center:(uint64_t)center extents:(uint64_t)extents transform:;
- (void)updateCollisionPlaneWithId:(float32x4_t)id extents:(float32x4_t)extents transform:(float32x4_t)transform;
@end

@implementation VFXREScene

- (void)setScene:(id)scene
{
  v4 = *(self + OBJC_IVAR___VFXREScene_scene);
  *(self + OBJC_IVAR___VFXREScene_scene) = scene;
  sceneCopy = scene;
}

- (void)setEffect:(id)effect
{
  v4 = *(self + OBJC_IVAR___VFXREScene_effect);
  *(self + OBJC_IVAR___VFXREScene_effect) = effect;
  effectCopy = effect;
}

- (id)transientDrawCall
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setTransientDrawCall:(id)call
{
  *(self + OBJC_IVAR___VFXREScene_transientDrawCall) = call;
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

- (void)setReloadBlock:(id)block
{
  v4 = _Block_copy(block);
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
  selfCopy = self;

  v4 = sub_1AF6771B8(v3, selfCopy);

  return v4;
}

- (__n128)worldBoundingBox
{
  selfCopy = self;

  sub_1AF6774C8(v2, selfCopy);
  v6 = v4;
  v7 = v3;

  result.n128_u64[0] = v7;
  result.n128_u32[2] = v6;
  return result;
}

- (VFXREScene)initWithContentsOf:(id)of commandQueue:(id)queue options:(id)options error:(id *)error
{
  v8 = sub_1AFDFC128();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFC0B8();
  swift_unknownObjectRetain();
  return VFXREScene.init(contentsOf:commandQueue:options:)(v11, queue, options);
}

- (id)generateMaterialsAndReturnError:(id *)error
{
  sub_1AF440DE8(MEMORY[0x1E69E7CC0]);
  v3 = sub_1AFDFCBE8();

  return v3;
}

- (id)neededModelsAndReturnError:(id *)error
{
  v3 = sub_1AFDFD3F8();

  return v3;
}

- (void)clear
{
  selfCopy = self;
  sub_1AFCCA2D4();
}

- (void)copyBindingValueWithObjectName:(id)name bindingName:(id)bindingName action:(int64_t)action storageGetterBlock:(id)block
{
  v8 = _Block_copy(block);
  v9 = sub_1AFDFCEF8();
  v11 = v10;
  v12 = sub_1AFDFCEF8();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  selfCopy = self;

  sub_1AF665518(v17, selfCopy, v9, v11, v12, v14, action, sub_1AF756EB4, v15);
}

- (void)tick
{
  selfCopy = self;

  sub_1AF66591C(v3, selfCopy);
}

- (void)tickWithCommandBuffer:(id)buffer
{
  selfCopy = self;
  swift_unknownObjectRetain_n();
  v5 = selfCopy;

  sub_1AF665970(v6, v5, buffer);

  swift_unknownObjectRelease();
}

- (void)tickWithDeltaTime:(double)time
{
  selfCopy = self;

  sub_1AF665BD4(v5, selfCopy, time);
}

- (void)tickWithDeltaTime:(double)time commandBuffer:(id)buffer
{
  selfCopy = self;
  swift_unknownObjectRetain_n();
  v7 = selfCopy;

  sub_1AF665DD8(v8, v7, buffer, time);

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
  selfCopy = self;
  sub_1AFCCB40C(v11, v12, v13, v8, v9);
}

- (void)setRootTransform:(VFXREScene *)self :(SEL)a2 :
{
  v10 = v4;
  v8 = v2;
  v9 = v3;
  selfCopy = self;
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
    selfCopy = self;

    sub_1AF6662F4(v12, selfCopy, v10, v13, v14, v15, v16, v17, v18, v19);
  }
}

- (void)setFrameConfigurationWithImmersiveEnvironmentCurves:(VFXREScene *)self
{
  v5 = v2;
  selfCopy = self;

  sub_1AF6669C4(v4, selfCopy, v5);
}

- (int64_t)fetchClientTextureIDWithNamed:(id)named
{
  v4 = sub_1AFDFCEF8();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1AFCCBD24(v4, v6);

  return v8;
}

- (void)setClientTextureWithId:(int64_t)id texture:(id)texture
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1AFCCBE64(id, texture);
  swift_unknownObjectRelease();
}

- (id)REMeshAssetBindings
{
  selfCopy = self;
  sub_1AFCCC134();

  sub_1AFCCE620();
  v3 = sub_1AFDFD3F8();

  return v3;
}

- (id)getREMeshAssetPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  sub_1AF3D131C([pathCopy unsignedLongLongValue]);
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

- (void)setREMeshDataBinding:(id)binding positionData:(id)data normalData:(id)normalData colorData:(id)colorData
{
  bindingCopy = binding;
  dataCopy = data;
  normalDataCopy = normalData;
  colorDataCopy = colorData;
  selfCopy = self;
  unsignedLongLongValue = [bindingCopy unsignedLongLongValue];
  v16 = *(*(selfCopy + OBJC_IVAR___VFXREScene_scene) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v17 = dataCopy;
  v18 = normalDataCopy;
  v19 = colorDataCopy;

  sub_1AF68AD4C(unsignedLongLongValue, v16, data, normalData, colorData);
}

- (uint64_t)addCollisionPlaneWithCenter:(void *)center extents:(double)extents transform:(float32x4_t)transform
{
  sub_1AFCCD8C0();
  v13 = v5;
  v14 = v4;
  v11 = v7;
  v12 = v6;
  centerCopy = center;
  v9 = sub_1AFCCCBC8(transform, v14, v13, v12, v11);

  return v9;
}

- (uint64_t)addCollisionPlaneWithExtents:(float32x4_t)extents transform:(float32x4_t)transform
{
  selfCopy = self;
  v7 = sub_1AFCCCBC8(a2, extents, transform, a5, a6);

  return v7;
}

- (void)updateCollisionPlaneWithId:(float32x4_t)id center:(uint64_t)center extents:(uint64_t)extents transform:
{
  sub_1AFCCD8C0();
  v15 = v7;
  v13 = v9;
  v14 = v8;
  v12 = v10;
  selfCopy = self;
  sub_1AFCCCDB0(extents, id, v15, v14, v13, v12);
}

- (void)updateCollisionPlaneWithId:(float32x4_t)id extents:(float32x4_t)extents transform:(float32x4_t)transform
{
  selfCopy = self;
  sub_1AFCCCDB0(a8, a2, id, extents, transform, a6);
}

- (void)removeCollisionPlaneWithId:(int64_t)id
{
  selfCopy = self;
  sub_1AFCCD1A0(id);
}

- (BOOL)needsCollisionPlanes
{
  selfCopy = self;
  v3 = sub_1AFCCD3E8();

  return v3;
}

- (void)collideOutsidePlaneWithId:(int64_t)id
{
  selfCopy = self;
  sub_1AFCCD498(id);
}

- (VFXREScene)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end