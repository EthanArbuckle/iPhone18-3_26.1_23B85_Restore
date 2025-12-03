@interface ICContentFairPlayKeySession
- (NSString)id;
- (NSString)keyStoreFilePath;
- (void)processKeyWith:(id)with completion:(id)completion;
- (void)renewKey;
- (void)setBypassCache:(BOOL)cache;
- (void)setKeyResponseData:(id)data;
- (void)stopAndInvalidateKeysWithCompletion:(id)completion;
@end

@implementation ICContentFairPlayKeySession

- (NSString)id
{
  v2 = *(self + 2);
  v3 = *(self + 3);

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v4;
}

- (void)setBypassCache:(BOOL)cache
{
  swift_beginAccess();
  *(self + 40) = cache;

  v5 = sub_1D8EAE518();
  [v5 setBypassCache_];
}

- (NSString)keyStoreFilePath
{
  if (*(self + 7))
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;

      swift_unknownObjectRetain();
      filePath = [v3 filePath];
      sub_1D917820C();

      swift_unknownObjectRelease();

      v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v2 = v5;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setKeyResponseData:(id)data
{
  swift_beginAccess();
  v5 = *(self + 6);
  *(self + 6) = data;
  dataCopy = data;
}

- (void)processKeyWith:(id)with completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = (self + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion);
  v9 = *(self + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion);
  v10 = *(self + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion + 8);
  *v8 = sub_1D8E8B5C0;
  v8[1] = v7;
  withCopy = with;

  sub_1D8D15664(v9);

  v12 = sub_1D8EAE518();
  [v12 processKeyWithIdentifier_];
}

- (void)renewKey
{

  ICContentFairPlayKeySession.renewKey()();
}

- (void)stopAndInvalidateKeysWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = sub_1D8EAE518();
  v7[4] = sub_1D8E899BC;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D8E8A43C;
  v7[3] = &block_descriptor_14_0;
  v6 = _Block_copy(v7);

  [v5 stopSessionInvalidatingKeys:1 withCompletion:v6];

  _Block_release(v6);
}

@end