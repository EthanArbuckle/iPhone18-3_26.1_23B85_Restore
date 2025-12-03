@interface PFFairPlayInvalidationManager
- (PFFairPlayInvalidationManager)init;
- (id)removeKeyFor:(id)for;
- (void)invalidateFairPlayKeyFor:(int64_t)for completion:(id)completion;
- (void)markAllFairPlayKeysForInvalidationWithShouldRemove:(BOOL)remove completion:(id)completion;
- (void)markKeyForInvalidationAt:(id)at shouldRemove:(BOOL)remove;
- (void)removalAllFairPlayKeysWithCompletion:(id)completion;
- (void)removeKeyFor:(int64_t)for completion:(id)completion;
@end

@implementation PFFairPlayInvalidationManager

- (PFFairPlayInvalidationManager)init
{
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(type metadata accessor for FairPlayKeyLoader()) init];
  type metadata accessor for CoreDataFairPlayEpisodeDataFetcher();
  v4 = swift_allocObject();
  v5 = sub_1D8CFDA60(v3, v4, objc_allocWithZone(ObjectType));

  swift_deallocPartialClassInstance();
  return v5;
}

- (void)invalidateFairPlayKeyFor:(int64_t)for completion:(id)completion
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

  selfCopy = self;
  FairPlayInvalidationManager.invalidateFairPlayKey(for:completion:)(for, v6, v7);
  sub_1D8D15664(v6);
}

- (void)markKeyForInvalidationAt:(id)at shouldRemove:(BOOL)remove
{
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176B9C();
  _s18PodcastsFoundation27FairPlayInvalidationManagerC010markKeyForE02at12shouldRemovey0B03URLV_SbtF_0(v9, remove);
  (*(v6 + 8))(v9, v5);
}

- (void)markAllFairPlayKeysForInvalidationWithShouldRemove:(BOOL)remove completion:(id)completion
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

  selfCopy = self;
  FairPlayInvalidationManager.markAllFairPlayKeysForInvalidation(shouldRemove:completion:)(remove, v6, v7);
  sub_1D8D15664(v6);
}

- (void)removalAllFairPlayKeysWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1D8E8B5C0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  FairPlayInvalidationManager.removalAllFairPlayKeys(completion:)(v7, v6);
  sub_1D8D15664(v7);
}

- (void)removeKeyFor:(int64_t)for completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  FairPlayInvalidationManager.removeKey(for:completion:)(for, sub_1D8E899BC, v7);
}

- (id)removeKeyFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = _s18PodcastsFoundation27FairPlayInvalidationManagerC9removeKey3fors5Error_pSgAA0cD5AssetC_tF_0(forCopy);

  if (v6)
  {
    v7 = sub_1D9176A5C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end