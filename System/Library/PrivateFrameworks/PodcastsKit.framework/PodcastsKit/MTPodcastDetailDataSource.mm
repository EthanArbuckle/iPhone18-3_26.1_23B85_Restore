@interface MTPodcastDetailDataSource
+ (id)predicateForPodcast:(id)a3 sectionType:(unint64_t)a4;
+ (id)sortDescriptorsForPodcastUuid:(id)a3;
- (MTPodcastDetailDataSource)initWithPodcastUuid:(id)a3;
- (MTPodcastDetailDataSourceDelegate)delegate;
- (id)createSectionForDarkPlacard;
- (id)createSectionForEmptyOverlay;
- (id)createSectionForFeed;
- (id)createSectionForIsFromiTunesSync;
- (id)createSectionForOtherEpisodes;
- (id)createSectionForPlayedToBeDeleted;
- (id)createSectionForUnplayed;
- (id)feedSections;
- (id)podcast;
- (id)savedSections;
- (id)unplayedSections;
- (unint64_t)indexForSection:(id)a3;
- (void)episodeSection:(id)a3 didChangeObject:(id)a4 atIndex:(unint64_t)a5 forChangeType:(unint64_t)a6 newIndex:(unint64_t)a7;
- (void)reloadData;
- (void)sectionDidChangeContent:(id)a3;
- (void)sectionWillChangeContent:(id)a3;
- (void)setSelectedTab:(unint64_t)a3;
@end

@implementation MTPodcastDetailDataSource

- (MTPodcastDetailDataSource)initWithPodcastUuid:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTPodcastDetailDataSource;
  v6 = [(MTPodcastDetailDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_podcastUuid, a3);
    v7->_showOnlyRssContent = 0;
  }

  return v7;
}

- (void)setSelectedTab:(unint64_t)a3
{
  if (self->_selectedTab != a3 || !self->_sections)
  {
    self->_selectedTab = a3;
    [(MTPodcastDetailDataSource *)self reloadData];
  }
}

- (void)reloadData
{
  selectedTab = self->_selectedTab;
  if (selectedTab == 2)
  {
    v4 = [(MTPodcastDetailDataSource *)self savedSections];
  }

  else if (selectedTab == 1)
  {
    v4 = [(MTPodcastDetailDataSource *)self feedSections];
  }

  else if (selectedTab)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(MTPodcastDetailDataSource *)self unplayedSections];
  }

  sections = self->_sections;
  self->_sections = v4;

  MEMORY[0x2821F96F8]();
}

- (id)podcast
{
  if (self->_podcastUuid)
  {
    v3 = [MEMORY[0x277D3DAE8] sharedInstance];
    v4 = [v3 mainQueueContext];
    v5 = [v4 podcastForUuid:self->_podcastUuid];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)unplayedSections
{
  v10[4] = *MEMORY[0x277D85DE8];
  v3 = [(MTPodcastDetailDataSource *)self createSectionForUnplayed];
  v10[0] = v3;
  v4 = [(MTPodcastDetailDataSource *)self createSectionForOtherEpisodes];
  v10[1] = v4;
  v5 = [(MTPodcastDetailDataSource *)self createSectionForEmptyOverlay];
  v10[2] = v5;
  v6 = [(MTPodcastDetailDataSource *)self createSectionForPlayedToBeDeleted];
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)feedSections
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [(MTPodcastDetailDataSource *)self createSectionForFeed];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)savedSections
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [(MTPodcastDetailDataSource *)self createSectionForIsFromiTunesSync];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unint64_t)indexForSection:(id)a3
{
  v4 = a3;
  v5 = [(MTPodcastDetailDataSource *)self sections];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (void)sectionWillChangeContent:(id)a3
{
  v4 = a3;
  v5 = [(MTPodcastDetailDataSource *)self delegate];
  [v5 sectionWillChangeContent:v4];
}

- (void)sectionDidChangeContent:(id)a3
{
  v4 = a3;
  v5 = [(MTPodcastDetailDataSource *)self delegate];
  [v5 sectionDidChangeContent:v4];
}

- (void)episodeSection:(id)a3 didChangeObject:(id)a4 atIndex:(unint64_t)a5 forChangeType:(unint64_t)a6 newIndex:(unint64_t)a7
{
  v12 = a4;
  v13 = a3;
  v14 = [(MTPodcastDetailDataSource *)self indexForSection:v13];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [MEMORY[0x277D3DA90] sharedLogger];
    [v19 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset_PodcastsKit/Source/Classes/ViewControllers/PodcastsTab/PodcastDetail/MTPodcastDetailDataSource.m" lineNumber:145 format:{@"Observed change for object %@ in section %@ but can't find the section index", v12, v13}];
  }

  else
  {
    v15 = v14;
    if (a5 == -1)
    {
      v16 = 0;
    }

    else
    {
      v16 = [MEMORY[0x277CCAA70] indexPathForRow:a5 inSection:v14];
    }

    v19 = v16;
    if (a7 == -1)
    {
      v17 = 0;
    }

    else
    {
      v17 = [MEMORY[0x277CCAA70] indexPathForRow:a7 inSection:v15];
    }

    v18 = [(MTPodcastDetailDataSource *)self delegate];
    [v18 episodeSection:v13 didChangeObject:v12 atIndexPath:v19 forChangeType:a6 newIndexPath:v17];

    v12 = v18;
    v13 = v17;
  }
}

+ (id)sortDescriptorsForPodcastUuid:(id)a3
{
  v3 = MEMORY[0x277D3DAE8];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 mainQueueContext];

  v7 = [v6 podcastForUuid:v4];

  if (v7)
  {
    v8 = [v7 sortDescriptorsForSortOrder];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (id)createSectionForUnplayed
{
  v3 = [MEMORY[0x277D3DAE8] sharedInstance];
  v4 = [v3 mainQueueContext];

  v5 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v6 = [v4 podcastForUuid:v5];

  v7 = objc_opt_new();
  v8 = objc_opt_class();
  v9 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v10 = [v8 sortDescriptorsForPodcastUuid:v9];
  [v7 setSortDescriptors:v10];

  [v7 setSectionType:1];
  v11 = [objc_opt_class() predicateForPodcast:v6 sectionType:1];
  [v7 setPredicate:v11];

  [v7 setDelegate:self];
  [v7 loadData];

  return v7;
}

- (id)createSectionForOtherEpisodes
{
  v3 = [MEMORY[0x277D3DAE8] sharedInstance];
  v4 = [v3 mainQueueContext];

  v5 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v6 = [v4 podcastForUuid:v5];

  v7 = objc_opt_new();
  if (v6)
  {
    v8 = [objc_opt_class() predicateForPodcast:v6 sectionType:3];
    [v7 setPredicate:v8];
  }

  v9 = objc_opt_class();
  v10 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v11 = [v9 sortDescriptorsForPodcastUuid:v10];
  [v7 setSortDescriptors:v11];

  v12 = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [v12 localizedStringForKey:@"OTHER_EPISODES_SECTION" value:&stru_2870B1390 table:0];
  [v7 setTitle:v13];

  [v7 setSectionType:3];
  [v7 setDelegate:self];
  [v7 loadData];

  return v7;
}

- (id)createSectionForEmptyOverlay
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCAC30] predicateWithValue:0];
  [v2 setPredicate:v3];

  [v2 setSortDescriptors:MEMORY[0x277CBEBF8]];
  [v2 setSectionType:8];

  return v2;
}

- (id)createSectionForDarkPlacard
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCAC30] predicateWithValue:0];
  [v2 setPredicate:v3];

  [v2 setSortDescriptors:MEMORY[0x277CBEBF8]];
  [v2 setSectionType:10];

  return v2;
}

- (id)createSectionForPlayedToBeDeleted
{
  v3 = [MEMORY[0x277D3DAE8] sharedInstance];
  v4 = [v3 mainQueueContext];

  v5 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v6 = [v4 podcastForUuid:v5];

  v7 = objc_opt_new();
  v8 = [objc_opt_class() predicateForPodcast:v6 sectionType:4];
  [v7 setPredicate:v8];

  v9 = objc_opt_class();
  v10 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v11 = [v9 sortDescriptorsForPodcastUuid:v10];
  [v7 setSortDescriptors:v11];

  v12 = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [v12 localizedStringForKey:@"Played Episodes to be Deleted" value:&stru_2870B1390 table:0];
  [v7 setTitle:v13];

  [v7 setSectionType:4];
  [v7 setDelegate:self];
  [v7 loadData];

  return v7;
}

- (id)createSectionForIsFromiTunesSync
{
  v3 = [MEMORY[0x277D3DAE8] sharedInstance];
  v4 = [v3 mainQueueContext];

  v5 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v6 = [v4 podcastForUuid:v5];

  v7 = objc_opt_new();
  v8 = [objc_opt_class() predicateForPodcast:v6 sectionType:7];
  [v7 setPredicate:v8];

  v9 = objc_opt_class();
  v10 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v11 = [v9 sortDescriptorsForPodcastUuid:v10];
  [v7 setSortDescriptors:v11];

  v12 = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [v12 localizedStringForKey:@"From Your Computer" value:&stru_2870B1390 table:0];
  [v7 setTitle:v13];

  [v7 setSectionType:7];
  [v7 setDelegate:self];
  [v7 loadData];

  return v7;
}

- (id)createSectionForFeed
{
  v3 = [MEMORY[0x277D3DAE8] sharedInstance];
  v4 = [v3 mainQueueContext];

  v5 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v6 = [v4 podcastForUuid:v5];

  v7 = objc_opt_new();
  v8 = [objc_opt_class() predicateForPodcast:v6 sectionType:6];
  if (self->_showOnlyRssContent)
  {
    v9 = [MEMORY[0x277D3DAF8] predicateForRSSEpisodes];
    v10 = [v8 AND:v9];

    v8 = v10;
  }

  [v7 setPredicate:v8];
  v11 = objc_opt_class();
  v12 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v13 = [v11 sortDescriptorsForPodcastUuid:v12];
  [v7 setSortDescriptors:v13];

  [v7 setSectionType:6];
  [v7 setTitle:0];
  [v7 setDelegate:self];
  [v7 loadData];

  return v7;
}

+ (id)predicateForPodcast:(id)a3 sectionType:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 deletePlayedEpisodesResolvedValue];
  v7 = 0;
  if (a4 <= 6)
  {
    if (a4 > 3)
    {
      if (a4 == 4)
      {
        v21 = MEMORY[0x277D3DAF8];
        v10 = [v5 uuid];
        v14 = [v21 predicateForRecentlyPlayedEpisodesToBeDeletedOnPodcastUuid:v10 deletePlayedEpisodes:v6];
      }

      else
      {
        if (a4 != 6)
        {
          goto LABEL_25;
        }

        v15 = MEMORY[0x277D3DAF8];
        v10 = [v5 uuid];
        v14 = [v15 predicateForEpisodesInFeedForPodcastUuid:v10];
      }
    }

    else
    {
      if (a4 != 1)
      {
        if (a4 != 3)
        {
          goto LABEL_25;
        }

        v8 = MEMORY[0x277D3DAF8];
        v9 = [v5 uuid];
        v10 = [v8 predicateForEpisodesOnPodcastUuid:v9 deletePlayedEpisodes:v6];

        v11 = MEMORY[0x277D3DAF8];
        v12 = [v5 uuid];
        v7 = [v11 predicateForOtherEpisodesOnPodcastUuid:v12 baseEpisodesPredicate:v10 deletePlayedEpisodes:v6];

        goto LABEL_24;
      }

      v19 = MEMORY[0x277D3DAF8];
      v10 = [v5 uuid];
      v14 = [v19 predicateForEpisodesOnPodcastUuid:v10 deletePlayedEpisodes:v6];
    }

    goto LABEL_23;
  }

  if (a4 <= 10)
  {
    if (a4 == 7)
    {
      v20 = MEMORY[0x277D3DAF8];
      v10 = [v5 uuid];
      v14 = [v20 predicateForEpisodesIsFromiTunesSyncOnPodcastUuid:v10];
    }

    else
    {
      if (a4 != 9)
      {
        goto LABEL_25;
      }

      v13 = MEMORY[0x277D3DAF8];
      v10 = [v5 uuid];
      v14 = [v13 predicateForUserEpisodesOnPodcastUuid:v10 episodeLimit:0 deletePlayedEpisodes:v6 limitToDownloadBehaviorAutomatic:0];
    }

    goto LABEL_23;
  }

  if (a4 == 11)
  {
    v10 = [v5 nextEpisodeUuid];
    if (v10)
    {
      [MEMORY[0x277D3DAF8] predicateForEpisodeUuid:v10];
    }

    else
    {
      [MEMORY[0x277CCAC30] falsePredicate];
    }
    v14 = ;
LABEL_23:
    v7 = v14;
    goto LABEL_24;
  }

  if (a4 != 12)
  {
    goto LABEL_25;
  }

  v16 = MEMORY[0x277D3DAF8];
  v10 = [v5 uuid];
  v17 = [v16 predicateForAllEpisodesOnPodcastUuid:v10];
  v18 = [MEMORY[0x277D3DAF8] predicateForVisuallyPlayed:0];
  v7 = [v17 AND:v18];

LABEL_24:
LABEL_25:

  return v7;
}

- (MTPodcastDetailDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end