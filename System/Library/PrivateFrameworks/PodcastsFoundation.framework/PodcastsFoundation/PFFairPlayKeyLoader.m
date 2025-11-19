@interface PFFairPlayKeyLoader
- (PFFairPlayKeyLoader)init;
- (void)createSessionWithAsset:(id)a3 completion:(id)a4;
- (void)renewKeyRequestWithAsset:(id)a3 completion:(id)a4;
- (void)renewKeyRequestsWithAssets:(id)a3 completion:(id)a4;
- (void)renewKeyWithSession:(id)a3;
- (void)startKeyRequestWithSession:(id)a3 completion:(id)a4;
- (void)stopKeyRequestWithAsset:(id)a3 completion:(id)a4;
- (void)stopKeyRequestWithSession:(id)a3 completion:(id)a4;
@end

@implementation PFFairPlayKeyLoader

- (PFFairPlayKeyLoader)init
{
  ObjectType = swift_getObjectType();
  type metadata accessor for FairPlayKeySessionProvider();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = sub_1D8E9F8A8(v3, objc_allocWithZone(ObjectType));
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
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
  FairPlayKeyLoader.createSession(asset:completion:)(v8, v6, v7);
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
  FairPlayKeyLoader.startKeyRequest(session:completion:)(a3, v6, v7);
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
  FairPlayKeyLoader.renewKeyRequest(asset:completion:)(v8, v6, v7);
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
  FairPlayKeyLoader.renewKeyRequests(assets:completion:)(v6, v5, v7);
  sub_1D8D15664(v5);
}

- (void)renewKeyWithSession:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  FairPlayKeyLoader.renewKey(session:)(a3);
  swift_unknownObjectRelease();
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
  FairPlayKeyLoader.stopKeyRequest(asset:completion:)(v8, v6, v7);
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
  FairPlayKeyLoader.stopKeyRequest(session:completion:)(a3, v6, v7);
  sub_1D8D15664(v6);
  swift_unknownObjectRelease();
}

@end