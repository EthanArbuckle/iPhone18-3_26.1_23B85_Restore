@interface MTPodcastEpisodeFilter
- (MTPodcastEpisodeFilter)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)filterExcludingPlayed;
- (id)predicateForPodcast:(id)podcast;
@end

@implementation MTPodcastEpisodeFilter

- (MTPodcastEpisodeFilter)init
{
  v6.receiver = self;
  v6.super_class = MTPodcastEpisodeFilter;
  v2 = [(MTPodcastEpisodeFilter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_excludeUnentitled = 0;
    v2->_restrictToUserEpisodes = 0;
    v2->_playStateFilter = 0;
    v2->_excludeExplicit = 0;
    excludingEpisodeUuid = v2->_excludingEpisodeUuid;
    v2->_episodeTypeFilter = 0;
    v2->_excludingEpisodeUuid = 0;

    v3->_excludeGhostEpisodes = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setPlayStateFilter:self->_playStateFilter];
  [v4 setExcludeExplicit:self->_excludeExplicit];
  [v4 setEpisodeTypeFilter:self->_episodeTypeFilter];
  [v4 setExcludeUnentitled:self->_excludeUnentitled];
  [v4 setRestrictToUserEpisodes:self->_restrictToUserEpisodes];
  v5 = [(NSString *)self->_excludingEpisodeUuid copy];
  [v4 setExcludingEpisodeUuid:v5];

  [v4 setExcludeGhostEpisodes:self->_excludeGhostEpisodes];
  return v4;
}

- (id)filterExcludingPlayed
{
  v2 = [(MTPodcastEpisodeFilter *)self copy];
  [v2 setPlayStateFilter:{+[MTPodcastEpisodeFilter playStateFilterFromExcludePlayed:](MTPodcastEpisodeFilter, "playStateFilterFromExcludePlayed:", 1)}];

  return v2;
}

- (id)predicateForPodcast:(id)podcast
{
  podcastCopy = podcast;
  uuid = [podcastCopy uuid];
  v6 = objc_opt_new();
  v7 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:uuid];
  [v6 addObject:v7];

  if ([(MTPodcastEpisodeFilter *)self restrictToUserEpisodes])
  {
    v8 = +[MTEpisode predicateForUserEpisodesOnPodcastUuid:episodeLimit:deletePlayedEpisodes:limitToDownloadBehaviorAutomatic:](MTEpisode, "predicateForUserEpisodesOnPodcastUuid:episodeLimit:deletePlayedEpisodes:limitToDownloadBehaviorAutomatic:", uuid, 0, [podcastCopy deletePlayedEpisodesResolvedValue], 0);
    [v6 addObject:v8];
  }

  playStateFilter = [(MTPodcastEpisodeFilter *)self playStateFilter];
  if (playStateFilter == 2 || [(MTPodcastEpisodeFilter *)self playStateFilter]== 1)
  {
    v10 = [MTEpisode predicateForVisuallyPlayed:playStateFilter == 2];
    [v6 addObject:v10];
  }

  excludingEpisodeUuid = [(MTPodcastEpisodeFilter *)self excludingEpisodeUuid];
  v12 = [excludingEpisodeUuid length];

  if (v12)
  {
    excludingEpisodeUuid2 = [(MTPodcastEpisodeFilter *)self excludingEpisodeUuid];
    v14 = [MTEpisode predicateForEpisodeUuid:excludingEpisodeUuid2];

    v15 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v14];
    [v6 addObject:v15];
  }

  if ([(MTPodcastEpisodeFilter *)self episodeTypeFilter])
  {
    v16 = [MTEpisode predicateForEpisodeTypeFilter:[(MTPodcastEpisodeFilter *)self episodeTypeFilter]];
    [v6 addObject:v16];
  }

  if (+[PFClientUtil isPodcastsApp](PFClientUtil, "isPodcastsApp") && ([(MTPodcastEpisodeFilter *)self excludeExplicit]== 1 || ![(MTPodcastEpisodeFilter *)self excludeExplicit]&& !+[PFRestrictionsController isExplicitContentAllowed]))
  {
    if ([podcastCopy isExplicit])
    {
      falsePredicate = [MEMORY[0x1E696AE18] falsePredicate];
      goto LABEL_23;
    }

    v18 = [MTEpisode predicateForExplicit:0];
    [v6 addObject:v18];
  }

  if ([(MTPodcastEpisodeFilter *)self excludeUnentitled])
  {
    v19 = +[MTEpisode predicateForEntitledEpisodes];
    [v6 addObject:v19];
  }

  if ([(MTPodcastEpisodeFilter *)self excludeGhostEpisodes])
  {
    v20 = +[MTEpisode predicateForHasNonEmptyEnclosureURL];
    [v6 addObject:v20];
  }

  falsePredicate = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v6];
LABEL_23:
  v21 = falsePredicate;

  return v21;
}

@end