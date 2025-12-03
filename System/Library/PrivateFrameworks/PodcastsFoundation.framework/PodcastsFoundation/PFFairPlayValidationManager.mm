@interface PFFairPlayValidationManager
- (PFFairPlayValidationManager)init;
- (PFFairPlayValidationManager)initWithEpisodeRemovalManager:(id)manager;
- (void)validateDownloadedEpisodesWithCompletion:(id)completion;
@end

@implementation PFFairPlayValidationManager

- (PFFairPlayValidationManager)initWithEpisodeRemovalManager:(id)manager
{
  ObjectType = swift_getObjectType();
  v5 = objc_allocWithZone(type metadata accessor for FairPlayKeyLoader());
  swift_unknownObjectRetain();
  v6 = [v5 init];
  type metadata accessor for CoreDataFairPlayEpisodeDataFetcher();
  v7 = swift_allocObject();
  v8 = sub_1D8D6DE00(v6, manager, v7, objc_allocWithZone(ObjectType));
  swift_unknownObjectRelease();

  swift_deallocPartialClassInstance();
  return v8;
}

- (void)validateDownloadedEpisodesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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

  selfCopy = self;
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