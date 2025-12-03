@interface PodcastRequestManager
+ (_TtC18PodcastsFoundation21PodcastRequestManager)sharedInstance;
- (_TtC18PodcastsFoundation21PodcastRequestManager)init;
- (void)updatePodcastWithEpisodeAdamId:(id)id completion:(id)completion;
- (void)updatePodcastWithStoreId:(int64_t)id completion:(id)completion;
@end

@implementation PodcastRequestManager

+ (_TtC18PodcastsFoundation21PodcastRequestManager)sharedInstance
{
  if (qword_1ECAB1D08 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECAB1D10;

  return v3;
}

- (void)updatePodcastWithStoreId:(int64_t)id completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  sub_1D90578D4(id, sub_1D9058E7C, v7);
}

- (void)updatePodcastWithEpisodeAdamId:(id)id completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  idCopy = id;
  selfCopy = self;
  sub_1D90581C0(idCopy, sub_1D9058E74, v7);
}

- (_TtC18PodcastsFoundation21PodcastRequestManager)init
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation21PodcastRequestManager_mediaRequestController;
  *(&self->super.isa + v3) = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for PodcastRequestManager();
  return [(PodcastRequestManager *)&v5 init];
}

@end