@interface PFFairPlayValidationManager
- (PFFairPlayValidationManager)init;
- (PFFairPlayValidationManager)initWithEpisodeRemovalManager:(id)a3;
- (void)validateDownloadedEpisodesWithCompletion:(id)a3;
@end

@implementation PFFairPlayValidationManager

- (PFFairPlayValidationManager)initWithEpisodeRemovalManager:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = objc_allocWithZone(type metadata accessor for FairPlayKeyLoader());
  swift_unknownObjectRetain();
  v6 = [v5 init];
  type metadata accessor for CoreDataFairPlayEpisodeDataFetcher();
  v7 = swift_allocObject();
  v8 = sub_1D8D6DE00(v6, a3, v7, objc_allocWithZone(ObjectType));
  swift_unknownObjectRelease();

  swift_deallocPartialClassInstance();
  return v8;
}

- (void)validateDownloadedEpisodesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1D8D96FE8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  FairPlayValidationManager.validateDownloadedEpisodes(completion:)(v7, v6);
  sub_1D8D15664(v7);
}

- (PFFairPlayValidationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end