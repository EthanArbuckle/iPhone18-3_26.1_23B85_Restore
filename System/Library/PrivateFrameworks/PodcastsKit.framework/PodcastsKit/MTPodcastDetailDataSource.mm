@interface MTPodcastDetailDataSource
+ (id)predicateForPodcast:(id)podcast sectionType:(unint64_t)type;
+ (id)sortDescriptorsForPodcastUuid:(id)uuid;
- (MTPodcastDetailDataSource)initWithPodcastUuid:(id)uuid;
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
- (unint64_t)indexForSection:(id)section;
- (void)episodeSection:(id)section didChangeObject:(id)object atIndex:(unint64_t)index forChangeType:(unint64_t)type newIndex:(unint64_t)newIndex;
- (void)reloadData;
- (void)sectionDidChangeContent:(id)content;
- (void)sectionWillChangeContent:(id)content;
- (void)setSelectedTab:(unint64_t)tab;
@end

@implementation MTPodcastDetailDataSource

- (MTPodcastDetailDataSource)initWithPodcastUuid:(id)uuid
{
  uuidCopy = uuid;
  v9.receiver = self;
  v9.super_class = MTPodcastDetailDataSource;
  v6 = [(MTPodcastDetailDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_podcastUuid, uuid);
    v7->_showOnlyRssContent = 0;
  }

  return v7;
}

- (void)setSelectedTab:(unint64_t)tab
{
  if (self->_selectedTab != tab || !self->_sections)
  {
    self->_selectedTab = tab;
    [(MTPodcastDetailDataSource *)self reloadData];
  }
}

- (void)reloadData
{
  selectedTab = self->_selectedTab;
  if (selectedTab == 2)
  {
    savedSections = [(MTPodcastDetailDataSource *)self savedSections];
  }

  else if (selectedTab == 1)
  {
    savedSections = [(MTPodcastDetailDataSource *)self feedSections];
  }

  else if (selectedTab)
  {
    savedSections = 0;
  }

  else
  {
    savedSections = [(MTPodcastDetailDataSource *)self unplayedSections];
  }

  sections = self->_sections;
  self->_sections = savedSections;

  MEMORY[0x2821F96F8]();
}

- (id)podcast
{
  if (self->_podcastUuid)
  {
    mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
    mainQueueContext = [mEMORY[0x277D3DAE8] mainQueueContext];
    v5 = [mainQueueContext podcastForUuid:self->_podcastUuid];
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
  createSectionForUnplayed = [(MTPodcastDetailDataSource *)self createSectionForUnplayed];
  v10[0] = createSectionForUnplayed;
  createSectionForOtherEpisodes = [(MTPodcastDetailDataSource *)self createSectionForOtherEpisodes];
  v10[1] = createSectionForOtherEpisodes;
  createSectionForEmptyOverlay = [(MTPodcastDetailDataSource *)self createSectionForEmptyOverlay];
  v10[2] = createSectionForEmptyOverlay;
  createSectionForPlayedToBeDeleted = [(MTPodcastDetailDataSource *)self createSectionForPlayedToBeDeleted];
  v10[3] = createSectionForPlayedToBeDeleted;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)feedSections
{
  v6[1] = *MEMORY[0x277D85DE8];
  createSectionForFeed = [(MTPodcastDetailDataSource *)self createSectionForFeed];
  v6[0] = createSectionForFeed;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)savedSections
{
  v6[1] = *MEMORY[0x277D85DE8];
  createSectionForIsFromiTunesSync = [(MTPodcastDetailDataSource *)self createSectionForIsFromiTunesSync];
  v6[0] = createSectionForIsFromiTunesSync;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unint64_t)indexForSection:(id)section
{
  sectionCopy = section;
  sections = [(MTPodcastDetailDataSource *)self sections];
  v6 = [sections indexOfObject:sectionCopy];

  return v6;
}

- (void)sectionWillChangeContent:(id)content
{
  contentCopy = content;
  delegate = [(MTPodcastDetailDataSource *)self delegate];
  [delegate sectionWillChangeContent:contentCopy];
}

- (void)sectionDidChangeContent:(id)content
{
  contentCopy = content;
  delegate = [(MTPodcastDetailDataSource *)self delegate];
  [delegate sectionDidChangeContent:contentCopy];
}

- (void)episodeSection:(id)section didChangeObject:(id)object atIndex:(unint64_t)index forChangeType:(unint64_t)type newIndex:(unint64_t)newIndex
{
  objectCopy = object;
  sectionCopy = section;
  v14 = [(MTPodcastDetailDataSource *)self indexForSection:sectionCopy];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    mEMORY[0x277D3DA90] = [MEMORY[0x277D3DA90] sharedLogger];
    [mEMORY[0x277D3DA90] logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset_PodcastsKit/Source/Classes/ViewControllers/PodcastsTab/PodcastDetail/MTPodcastDetailDataSource.m" lineNumber:145 format:{@"Observed change for object %@ in section %@ but can't find the section index", objectCopy, sectionCopy}];
  }

  else
  {
    v15 = v14;
    if (index == -1)
    {
      v16 = 0;
    }

    else
    {
      v16 = [MEMORY[0x277CCAA70] indexPathForRow:index inSection:v14];
    }

    mEMORY[0x277D3DA90] = v16;
    if (newIndex == -1)
    {
      v17 = 0;
    }

    else
    {
      v17 = [MEMORY[0x277CCAA70] indexPathForRow:newIndex inSection:v15];
    }

    delegate = [(MTPodcastDetailDataSource *)self delegate];
    [delegate episodeSection:sectionCopy didChangeObject:objectCopy atIndexPath:mEMORY[0x277D3DA90] forChangeType:type newIndexPath:v17];

    objectCopy = delegate;
    sectionCopy = v17;
  }
}

+ (id)sortDescriptorsForPodcastUuid:(id)uuid
{
  v3 = MEMORY[0x277D3DAE8];
  uuidCopy = uuid;
  sharedInstance = [v3 sharedInstance];
  mainQueueContext = [sharedInstance mainQueueContext];

  v7 = [mainQueueContext podcastForUuid:uuidCopy];

  if (v7)
  {
    sortDescriptorsForSortOrder = [v7 sortDescriptorsForSortOrder];
  }

  else
  {
    sortDescriptorsForSortOrder = MEMORY[0x277CBEBF8];
  }

  return sortDescriptorsForSortOrder;
}

- (id)createSectionForUnplayed
{
  mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
  mainQueueContext = [mEMORY[0x277D3DAE8] mainQueueContext];

  podcastUuid = [(MTPodcastDetailDataSource *)self podcastUuid];
  v6 = [mainQueueContext podcastForUuid:podcastUuid];

  v7 = objc_opt_new();
  v8 = objc_opt_class();
  podcastUuid2 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v10 = [v8 sortDescriptorsForPodcastUuid:podcastUuid2];
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
  mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
  mainQueueContext = [mEMORY[0x277D3DAE8] mainQueueContext];

  podcastUuid = [(MTPodcastDetailDataSource *)self podcastUuid];
  v6 = [mainQueueContext podcastForUuid:podcastUuid];

  v7 = objc_opt_new();
  if (v6)
  {
    v8 = [objc_opt_class() predicateForPodcast:v6 sectionType:3];
    [v7 setPredicate:v8];
  }

  v9 = objc_opt_class();
  podcastUuid2 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v11 = [v9 sortDescriptorsForPodcastUuid:podcastUuid2];
  [v7 setSortDescriptors:v11];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [mainBundle localizedStringForKey:@"OTHER_EPISODES_SECTION" value:&stru_2870B1390 table:0];
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
  mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
  mainQueueContext = [mEMORY[0x277D3DAE8] mainQueueContext];

  podcastUuid = [(MTPodcastDetailDataSource *)self podcastUuid];
  v6 = [mainQueueContext podcastForUuid:podcastUuid];

  v7 = objc_opt_new();
  v8 = [objc_opt_class() predicateForPodcast:v6 sectionType:4];
  [v7 setPredicate:v8];

  v9 = objc_opt_class();
  podcastUuid2 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v11 = [v9 sortDescriptorsForPodcastUuid:podcastUuid2];
  [v7 setSortDescriptors:v11];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [mainBundle localizedStringForKey:@"Played Episodes to be Deleted" value:&stru_2870B1390 table:0];
  [v7 setTitle:v13];

  [v7 setSectionType:4];
  [v7 setDelegate:self];
  [v7 loadData];

  return v7;
}

- (id)createSectionForIsFromiTunesSync
{
  mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
  mainQueueContext = [mEMORY[0x277D3DAE8] mainQueueContext];

  podcastUuid = [(MTPodcastDetailDataSource *)self podcastUuid];
  v6 = [mainQueueContext podcastForUuid:podcastUuid];

  v7 = objc_opt_new();
  v8 = [objc_opt_class() predicateForPodcast:v6 sectionType:7];
  [v7 setPredicate:v8];

  v9 = objc_opt_class();
  podcastUuid2 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v11 = [v9 sortDescriptorsForPodcastUuid:podcastUuid2];
  [v7 setSortDescriptors:v11];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v13 = [mainBundle localizedStringForKey:@"From Your Computer" value:&stru_2870B1390 table:0];
  [v7 setTitle:v13];

  [v7 setSectionType:7];
  [v7 setDelegate:self];
  [v7 loadData];

  return v7;
}

- (id)createSectionForFeed
{
  mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
  mainQueueContext = [mEMORY[0x277D3DAE8] mainQueueContext];

  podcastUuid = [(MTPodcastDetailDataSource *)self podcastUuid];
  v6 = [mainQueueContext podcastForUuid:podcastUuid];

  v7 = objc_opt_new();
  v8 = [objc_opt_class() predicateForPodcast:v6 sectionType:6];
  if (self->_showOnlyRssContent)
  {
    predicateForRSSEpisodes = [MEMORY[0x277D3DAF8] predicateForRSSEpisodes];
    v10 = [v8 AND:predicateForRSSEpisodes];

    v8 = v10;
  }

  [v7 setPredicate:v8];
  v11 = objc_opt_class();
  podcastUuid2 = [(MTPodcastDetailDataSource *)self podcastUuid];
  v13 = [v11 sortDescriptorsForPodcastUuid:podcastUuid2];
  [v7 setSortDescriptors:v13];

  [v7 setSectionType:6];
  [v7 setTitle:0];
  [v7 setDelegate:self];
  [v7 loadData];

  return v7;
}

+ (id)predicateForPodcast:(id)podcast sectionType:(unint64_t)type
{
  podcastCopy = podcast;
  deletePlayedEpisodesResolvedValue = [podcastCopy deletePlayedEpisodesResolvedValue];
  v7 = 0;
  if (type <= 6)
  {
    if (type > 3)
    {
      if (type == 4)
      {
        v21 = MEMORY[0x277D3DAF8];
        uuid = [podcastCopy uuid];
        v14 = [v21 predicateForRecentlyPlayedEpisodesToBeDeletedOnPodcastUuid:uuid deletePlayedEpisodes:deletePlayedEpisodesResolvedValue];
      }

      else
      {
        if (type != 6)
        {
          goto LABEL_25;
        }

        v15 = MEMORY[0x277D3DAF8];
        uuid = [podcastCopy uuid];
        v14 = [v15 predicateForEpisodesInFeedForPodcastUuid:uuid];
      }
    }

    else
    {
      if (type != 1)
      {
        if (type != 3)
        {
          goto LABEL_25;
        }

        v8 = MEMORY[0x277D3DAF8];
        uuid2 = [podcastCopy uuid];
        uuid = [v8 predicateForEpisodesOnPodcastUuid:uuid2 deletePlayedEpisodes:deletePlayedEpisodesResolvedValue];

        v11 = MEMORY[0x277D3DAF8];
        uuid3 = [podcastCopy uuid];
        v7 = [v11 predicateForOtherEpisodesOnPodcastUuid:uuid3 baseEpisodesPredicate:uuid deletePlayedEpisodes:deletePlayedEpisodesResolvedValue];

        goto LABEL_24;
      }

      v19 = MEMORY[0x277D3DAF8];
      uuid = [podcastCopy uuid];
      v14 = [v19 predicateForEpisodesOnPodcastUuid:uuid deletePlayedEpisodes:deletePlayedEpisodesResolvedValue];
    }

    goto LABEL_23;
  }

  if (type <= 10)
  {
    if (type == 7)
    {
      v20 = MEMORY[0x277D3DAF8];
      uuid = [podcastCopy uuid];
      v14 = [v20 predicateForEpisodesIsFromiTunesSyncOnPodcastUuid:uuid];
    }

    else
    {
      if (type != 9)
      {
        goto LABEL_25;
      }

      v13 = MEMORY[0x277D3DAF8];
      uuid = [podcastCopy uuid];
      v14 = [v13 predicateForUserEpisodesOnPodcastUuid:uuid episodeLimit:0 deletePlayedEpisodes:deletePlayedEpisodesResolvedValue limitToDownloadBehaviorAutomatic:0];
    }

    goto LABEL_23;
  }

  if (type == 11)
  {
    uuid = [podcastCopy nextEpisodeUuid];
    if (uuid)
    {
      [MEMORY[0x277D3DAF8] predicateForEpisodeUuid:uuid];
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

  if (type != 12)
  {
    goto LABEL_25;
  }

  v16 = MEMORY[0x277D3DAF8];
  uuid = [podcastCopy uuid];
  v17 = [v16 predicateForAllEpisodesOnPodcastUuid:uuid];
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