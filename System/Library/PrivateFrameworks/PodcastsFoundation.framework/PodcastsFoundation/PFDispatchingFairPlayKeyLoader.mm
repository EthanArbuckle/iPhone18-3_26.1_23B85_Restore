@interface PFDispatchingFairPlayKeyLoader
+ (id)receiveOn:(id)on loader:(id)loader;
- (PFDispatchingFairPlayKeyLoader)init;
- (void)createSessionWithAsset:(id)asset completion:(id)completion;
- (void)renewKeyRequestWithAsset:(id)asset completion:(id)completion;
- (void)renewKeyRequestsWithAssets:(id)assets completion:(id)completion;
- (void)startKeyRequestWithSession:(id)session completion:(id)completion;
- (void)stopKeyRequestWithAsset:(id)asset completion:(id)completion;
- (void)stopKeyRequestWithSession:(id)session completion:(id)completion;
@end

@implementation PFDispatchingFairPlayKeyLoader

+ (id)receiveOn:(id)on loader:(id)loader
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = objc_allocWithZone(ObjCClassMetadata);
  *&v7[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_wrappedInstance] = loader;
  *&v7[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_responseQueue] = on;
  v11.receiver = v7;
  v11.super_class = ObjCClassMetadata;
  onCopy = on;
  swift_unknownObjectRetain();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

- (void)createSessionWithAsset:(id)asset completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1D8D96FE8;
  }

  else
  {
    v7 = 0;
  }

  assetCopy = asset;
  selfCopy = self;
  DispatchingFairPlayKeyLoading.createSession(asset:completion:)(assetCopy, v6, v7);
  sub_1D8D15664(v6);
}

- (void)startKeyRequestWithSession:(id)session completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1D8E8B5C0;
  }

  else
  {
    v7 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  DispatchingFairPlayKeyLoading.startKeyRequest(session:completion:)(session, v6, v7);
  sub_1D8D15664(v6);
  swift_unknownObjectRelease();
}

- (void)renewKeyRequestWithAsset:(id)asset completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1D8E8B5C0;
  }

  else
  {
    v7 = 0;
  }

  assetCopy = asset;
  selfCopy = self;
  DispatchingFairPlayKeyLoading.renewKeyRequest(asset:completion:)(assetCopy, v6, v7);
  sub_1D8D15664(v6);
}

- (void)renewKeyRequestsWithAssets:(id)assets completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for FairPlayAsset();
  v6 = sub_1D91785FC();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_1D8E8CCFC;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  DispatchingFairPlayKeyLoading.renewKeyRequests(assets:completion:)(v6, v5, v7);
  sub_1D8D15664(v5);
}

- (void)stopKeyRequestWithAsset:(id)asset completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1D8E8B5C0;
  }

  else
  {
    v7 = 0;
  }

  assetCopy = asset;
  selfCopy = self;
  DispatchingFairPlayKeyLoading.stopKeyRequest(asset:completion:)(assetCopy, v6, v7);
  sub_1D8D15664(v6);
}

- (void)stopKeyRequestWithSession:(id)session completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1D8E899BC;
  }

  else
  {
    v7 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  DispatchingFairPlayKeyLoading.stopKeyRequest(session:completion:)(session, v6, v7);
  sub_1D8D15664(v6);
  swift_unknownObjectRelease();
}

- (PFDispatchingFairPlayKeyLoader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end