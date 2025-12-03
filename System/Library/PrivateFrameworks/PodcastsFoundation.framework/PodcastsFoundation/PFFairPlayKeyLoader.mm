@interface PFFairPlayKeyLoader
- (PFFairPlayKeyLoader)init;
- (void)createSessionWithAsset:(id)asset completion:(id)completion;
- (void)renewKeyRequestWithAsset:(id)asset completion:(id)completion;
- (void)renewKeyRequestsWithAssets:(id)assets completion:(id)completion;
- (void)renewKeyWithSession:(id)session;
- (void)startKeyRequestWithSession:(id)session completion:(id)completion;
- (void)stopKeyRequestWithAsset:(id)asset completion:(id)completion;
- (void)stopKeyRequestWithSession:(id)session completion:(id)completion;
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
  FairPlayKeyLoader.createSession(asset:completion:)(assetCopy, v6, v7);
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
  FairPlayKeyLoader.startKeyRequest(session:completion:)(session, v6, v7);
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
  FairPlayKeyLoader.renewKeyRequest(asset:completion:)(assetCopy, v6, v7);
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
  FairPlayKeyLoader.renewKeyRequests(assets:completion:)(v6, v5, v7);
  sub_1D8D15664(v5);
}

- (void)renewKeyWithSession:(id)session
{
  swift_unknownObjectRetain();
  selfCopy = self;
  FairPlayKeyLoader.renewKey(session:)(session);
  swift_unknownObjectRelease();
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
  FairPlayKeyLoader.stopKeyRequest(asset:completion:)(assetCopy, v6, v7);
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
  FairPlayKeyLoader.stopKeyRequest(session:completion:)(session, v6, v7);
  sub_1D8D15664(v6);
  swift_unknownObjectRelease();
}

@end