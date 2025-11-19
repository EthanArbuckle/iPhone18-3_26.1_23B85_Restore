@interface FairPlayKeySessionMock
- (BOOL)bypassCache;
- (NSString)id;
- (NSString)keyStoreFilePath;
- (PFFairPlayAsset)asset;
- (PFFairPlayKeyResponseData)keyResponseData;
- (void)deregister;
- (void)pauseAutomaticKeyRenewal;
- (void)processKeyWith:(id)a3 completion:(id)a4;
- (void)register;
- (void)renewKey;
- (void)resumeAutomaticKeyRenewal;
- (void)stopAndInvalidateKeysWithCompletion:(id)a3;
@end

@implementation FairPlayKeySessionMock

- (NSString)id
{
  v2 = *(self + 2);
  v3 = *(self + 3);

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v4;
}

- (PFFairPlayAsset)asset
{

  v2 = sub_1D8E8F780();

  return v2;
}

- (BOOL)bypassCache
{
  v2 = *(self + 8);
  if (v2)
  {
    v3 = *(self + 9);

    LOBYTE(v2) = v2(v4);
  }

  return v2 & 1;
}

- (NSString)keyStoreFilePath
{
  v2 = *(self + 10);
  if (v2 && (v3 = *(self + 11), v4 = , v2(v4), v6 = v5, , v6))
  {
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PFFairPlayKeyResponseData)keyResponseData
{
  v2 = *(self + 12);
  if (v2)
  {
    v3 = *(self + 13);

    v2 = v2(v4);
  }

  return v2;
}

- (void)pauseAutomaticKeyRenewal
{
  v2 = *(self + 14);
  if (v2)
  {
    v3 = *(self + 15);

    v2(v4);
  }
}

- (void)resumeAutomaticKeyRenewal
{
  v2 = *(self + 16);
  if (v2)
  {
    v3 = *(self + 17);

    v2(v4);
  }
}

- (void)register
{
  v2 = *(self + 18);
  if (v2)
  {
    v3 = *(self + 19);

    v2(v4);
  }
}

- (void)deregister
{
  v2 = *(self + 20);
  if (v2)
  {
    v3 = *(self + 21);

    v2(v4);
  }
}

- (void)processKeyWith:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1D917820C();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = *(self + 22);
  if (v10)
  {
    v11 = *(self + 23);

    v10(v6, v8, sub_1D8E8B5C0, v9);
  }
}

- (void)renewKey
{
  v2 = *(self + 24);
  if (v2)
  {
    v3 = *(self + 25);

    v2(v4);
  }
}

- (void)stopAndInvalidateKeysWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(self + 26);
  if (v6)
  {
    v7 = *(self + 27);

    v6(sub_1D8E899BC, v5);
  }
}

@end