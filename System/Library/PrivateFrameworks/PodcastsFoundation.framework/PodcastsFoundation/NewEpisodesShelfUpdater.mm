@interface NewEpisodesShelfUpdater
+ (void)synchronouslyUpdateNewEpisodeForPodcastWithUUID:(id)a3 context:(id)a4;
- (_TtC18PodcastsFoundation23NewEpisodesShelfUpdater)init;
@end

@implementation NewEpisodesShelfUpdater

+ (void)synchronouslyUpdateNewEpisodeForPodcastWithUUID:(id)a3 context:(id)a4
{
  v5 = sub_1D917820C();
  v7 = v6;
  v8 = a4;
  _s18PodcastsFoundation23NewEpisodesShelfUpdaterC019synchronouslyUpdateC7Episode18forPodcastWithUUID7contextySS_So22NSManagedObjectContextCtFZ_0(v5, v7, v8);
}

- (_TtC18PodcastsFoundation23NewEpisodesShelfUpdater)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(NewEpisodesShelfUpdater *)&v3 init];
}

@end