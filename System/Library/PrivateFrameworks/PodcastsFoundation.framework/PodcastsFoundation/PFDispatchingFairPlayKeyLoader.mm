@interface PFDispatchingFairPlayKeyLoader
+ (id)receiveOn:(id)a3 loader:(id)a4;
- (PFDispatchingFairPlayKeyLoader)init;
- (void)createSessionWithAsset:(id)a3 completion:(id)a4;
- (void)renewKeyRequestWithAsset:(id)a3 completion:(id)a4;
- (void)renewKeyRequestsWithAssets:(id)a3 completion:(id)a4;
- (void)startKeyRequestWithSession:(id)a3 completion:(id)a4;
- (void)stopKeyRequestWithAsset:(id)a3 completion:(id)a4;
- (void)stopKeyRequestWithSession:(id)a3 completion:(id)a4;
@end

@implementation PFDispatchingFairPlayKeyLoader

+ (id)receiveOn:(id)a3 loader:(id)a4
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v7 = objc_allocWithZone(ObjCClassMetadata);
  *&v7[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_wrappedInstance] = a4;
  *&v7[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_responseQueue] = a3;
  v11.receiver = v7;
  v11.super_class = ObjCClassMetadata;
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

- (void)createSessionWithAsset:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  DispatchingFairPlayKeyLoading.createSession(asset:completion:)(v8, v6, v7);
  sub_1D8D15664(v6);
}

- (void)startKeyRequestWithSession:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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
  v8 = self;
  DispatchingFairPlayKeyLoading.startKeyRequest(session:completion:)(a3, v6, v7);
  sub_1D8D15664(v6);
  swift_unknownObjectRelease();
}

- (void)renewKeyRequestWithAsset:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  DispatchingFairPlayKeyLoading.renewKeyRequest(asset:completion:)(v8, v6, v7);
  sub_1D8D15664(v6);
}

- (void)renewKeyRequestsWithAssets:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
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

  v8 = self;
  DispatchingFairPlayKeyLoading.renewKeyRequests(assets:completion:)(v6, v5, v7);
  sub_1D8D15664(v5);
}

- (void)stopKeyRequestWithAsset:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = a3;
  v9 = self;
  DispatchingFairPlayKeyLoading.stopKeyRequest(asset:completion:)(v8, v6, v7);
  sub_1D8D15664(v6);
}

- (void)stopKeyRequestWithSession:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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
  v8 = self;
  DispatchingFairPlayKeyLoading.stopKeyRequest(session:completion:)(a3, v6, v7);
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