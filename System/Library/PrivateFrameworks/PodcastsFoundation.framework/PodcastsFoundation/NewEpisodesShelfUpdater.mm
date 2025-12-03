@interface NewEpisodesShelfUpdater
+ (void)synchronouslyUpdateNewEpisodeForPodcastWithUUID:(id)d context:(id)context;
- (_TtC18PodcastsFoundation23NewEpisodesShelfUpdater)init;
@end

@implementation NewEpisodesShelfUpdater

+ (void)synchronouslyUpdateNewEpisodeForPodcastWithUUID:(id)d context:(id)context
{
  v5 = sub_1D917820C();
  v7 = v6;
  contextCopy = context;
  _s18PodcastsFoundation23NewEpisodesShelfUpdaterC019synchronouslyUpdateC7Episode18forPodcastWithUUID7contextySS_So22NSManagedObjectContextCtFZ_0(v5, v7, contextCopy);
}

- (_TtC18PodcastsFoundation23NewEpisodesShelfUpdater)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(NewEpisodesShelfUpdater *)&v3 init];
}

@end