@interface MTPodcastDetailEpisodeSection
+ (id)dependentPropertyKeys;
- (MTPodcastDetailEpisodeSectionDelegate)delegate;
- (NSString)description;
- (NSString)title;
- (id)episodes;
- (unint64_t)indexOfEpisode:(id)episode;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
- (void)controllerWillChangeContent:(id)content;
- (void)initializeFrc;
@end

@implementation MTPodcastDetailEpisodeSection

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [&unk_2870B6B60 objectAtIndexedSubscript:{-[MTPodcastDetailEpisodeSection sectionType](self, "sectionType")}];
  episodes = [(MTPodcastDetailEpisodeSection *)self episodes];
  v6 = [v3 stringWithFormat:@"Section: %@ (%lu)", v4, objc_msgSend(episodes, "count")];

  return v6;
}

- (NSString)title
{
  if (self->_showTitleWithNoEpisodes || (-[MTPodcastDetailEpisodeSection episodes](self, "episodes"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    v5 = self->_title;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initializeFrc
{
  if (!self->_frc)
  {
    v14[7] = v2;
    v14[8] = v3;
    v5 = objc_alloc(MEMORY[0x277CBE428]);
    v6 = [v5 initWithEntityName:*MEMORY[0x277D3DCF8]];
    [v6 setPredicate:self->_predicate];
    [v6 setSortDescriptors:self->_sortDescriptors];
    mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
    mainQueueContext = [mEMORY[0x277D3DAE8] mainQueueContext];

    v9 = [objc_alloc(MEMORY[0x277D3DB10]) initWithFetchRequest:v6 managedObjectContext:mainQueueContext sectionNameKeyPath:0 cacheName:0];
    dependentPropertyKeys = [objc_opt_class() dependentPropertyKeys];
    [v9 setPropertyKeys:dependentPropertyKeys];

    [v9 setDelegate:self];
    v14[0] = 0;
    v11 = [v9 performFetch:v14];
    v12 = v14[0];
    v13 = v12;
    if (v11)
    {
      [(MTPodcastDetailEpisodeSection *)self setFrc:v9];
    }

    else
    {
      [v12 logAndThrow:1];
    }
  }
}

+ (id)dependentPropertyKeys
{
  v15[20] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D3DC40];
  v15[0] = *MEMORY[0x277D3DCD0];
  v15[1] = v2;
  v3 = *MEMORY[0x277D3DBF0];
  v15[2] = *MEMORY[0x277D3DCB8];
  v15[3] = v3;
  v4 = *MEMORY[0x277D3DC08];
  v15[4] = *MEMORY[0x277D3DBF8];
  v15[5] = v4;
  v5 = *MEMORY[0x277D3DBC8];
  v15[6] = *MEMORY[0x277D3DC30];
  v15[7] = v5;
  v6 = *MEMORY[0x277D3DCA0];
  v15[8] = *MEMORY[0x277D3DCB0];
  v15[9] = v6;
  v7 = *MEMORY[0x277D3DBD0];
  v15[10] = *MEMORY[0x277D3DC00];
  v15[11] = v7;
  v8 = *MEMORY[0x277D3DC28];
  v15[12] = *MEMORY[0x277D3DCD8];
  v15[13] = v8;
  v9 = *MEMORY[0x277D3DC20];
  v15[14] = *MEMORY[0x277D3DCC8];
  v15[15] = v9;
  v10 = *MEMORY[0x277D3DC70];
  v15[16] = *MEMORY[0x277D3DC48];
  v15[17] = v10;
  v11 = *MEMORY[0x277D3DBE0];
  v15[18] = *MEMORY[0x277D3DC78];
  v15[19] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:20];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)episodes
{
  v2 = [(MTPodcastDetailEpisodeSection *)self frc];
  fetchedObjects = [v2 fetchedObjects];

  return fetchedObjects;
}

- (unint64_t)indexOfEpisode:(id)episode
{
  episodeCopy = episode;
  v5 = [(MTPodcastDetailEpisodeSection *)self frc];
  v6 = [v5 indexPathForObject:episodeCopy];

  if (v6)
  {
    v7 = [v6 row];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  controllerCopy = controller;
  objectCopy = object;
  pathCopy = path;
  indexPathCopy = indexPath;
  v15 = indexPathCopy;
  if (pathCopy)
  {
    v16 = [pathCopy row];
    if (v15)
    {
LABEL_3:
      v17 = [v15 row];
      goto LABEL_6;
    }
  }

  else
  {
    v16 = -1;
    if (indexPathCopy)
    {
      goto LABEL_3;
    }
  }

  v17 = -1;
LABEL_6:
  delegate = [(MTPodcastDetailEpisodeSection *)self delegate];
  [delegate episodeSection:self didChangeObject:objectCopy atIndex:v16 forChangeType:type newIndex:v17];
}

- (void)controllerWillChangeContent:(id)content
{
  delegate = [(MTPodcastDetailEpisodeSection *)self delegate];
  [delegate sectionWillChangeContent:self];
}

- (void)controllerDidChangeContent:(id)content
{
  delegate = [(MTPodcastDetailEpisodeSection *)self delegate];
  [delegate sectionDidChangeContent:self];
}

- (MTPodcastDetailEpisodeSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end