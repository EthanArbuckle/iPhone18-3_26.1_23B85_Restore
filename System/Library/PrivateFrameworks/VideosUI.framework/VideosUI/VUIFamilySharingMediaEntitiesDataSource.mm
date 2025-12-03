@interface VUIFamilySharingMediaEntitiesDataSource
+ (id)mediaCollectionWithAMSMediaItem:(id)item;
- (BOOL)_grouping:(id)_grouping containsMediaEntity:(id)entity;
- (BOOL)_hasNextBatch;
- (BOOL)_isAllowedToShowMediaItem:(id)item;
- (BOOL)_processedEntitiesContainsEntityWithIdentifier:(id)identifier;
- (VUIFamilySharingMediaEntitiesDataSource)initWithNSURLRequest:(id)request;
- (id)_addSeasonNumber:(id)number toCollectionSeasonNumbers:(id)numbers;
- (id)_applyContentRestrictionsFilterToMediaEntities:(id)entities;
- (id)_getEntityInProcessedEntitiesWithIdentifier:(id)identifier;
- (id)_getGroupingFrom:(id)from groupingIdentifier:(id)identifier;
- (id)_getLimitFromURLRequest;
- (id)_updateOffsetQueryItemForQueryItems:(id)items;
- (void)_appendNextOffsetToURLRequest;
- (void)_applyContentRestrictionsFilter;
- (void)_applyContentRestrictionsFilterToGroupings;
- (void)_coalesceEpisodesToSeasonsFromParsedEntities:(id)entities;
- (void)_coalesceEpisodesToShowsFromParsedEntities:(id)entities;
- (void)_filterEntitiesBySeasonIdentifierIfNecessary;
- (void)_filterGroupingsBySeasonIdentifierIfNecessary;
- (void)_groupEpisodesbySeason:(id)season;
- (void)_limitEntitiesReturnedIfNecessary;
- (void)_orderEpisodesIfNecessary;
- (void)_orderEpisodesInGroupings;
- (void)_orderSeasonsBySeasonNumber;
- (void)loadNextEntityBatch;
- (void)setShouldCoalesceEpisodesToSeasons:(BOOL)seasons;
- (void)setShouldGroupBySeason:(BOOL)season;
- (void)startFetch;
@end

@implementation VUIFamilySharingMediaEntitiesDataSource

- (VUIFamilySharingMediaEntitiesDataSource)initWithNSURLRequest:(id)request
{
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = VUIFamilySharingMediaEntitiesDataSource;
  v6 = [(VUIFamilySharingMediaEntitiesDataSource *)&v14 init];
  if (v6)
  {
    +[VUIMediaAPIClient initializeWithAppleTVClientIdentifier];
    v7 = +[VUIMediaAPIClient sharedInstance];
    mediaClient = v6->_mediaClient;
    v6->_mediaClient = v7;

    objc_storeStrong(&v6->_urlRequest, request);
    _getLimitFromURLRequest = [(VUIFamilySharingMediaEntitiesDataSource *)v6 _getLimitFromURLRequest];
    desiredBatchSize = v6->_desiredBatchSize;
    v6->_desiredBatchSize = _getLimitFromURLRequest;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    processedEntities = v6->_processedEntities;
    v6->_processedEntities = v11;

    v6->_loadingNextBatch = 0;
    v6->_numberOfEntitiesProcessedInBatch = 0;
  }

  return v6;
}

- (void)startFetch
{
  objc_initWeak(&location, self);
  mediaClient = [(VUIFamilySharingMediaEntitiesDataSource *)self mediaClient];
  urlRequest = [(VUIFamilySharingMediaEntitiesDataSource *)self urlRequest];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__VUIFamilySharingMediaEntitiesDataSource_startFetch__block_invoke;
  v5[3] = &unk_1E872EA80;
  objc_copyWeak(&v6, &location);
  [mediaClient fetchContentForUrl:urlRequest completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __53__VUIFamilySharingMediaEntitiesDataSource_startFetch__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!v6)
  {
    v24 = objc_alloc_init(VUIFamilySharingMediaEntitiesResponseMetadataParser);
    v8 = [(VUIFamilySharingMediaEntitiesResponseMetadataParser *)v24 parseAMSURLResult:v5];
    [WeakRetained setResponseMetadata:v8];
    v9 = objc_alloc_init(VUIFamilySharingEntityRequestResponseParser);
    v10 = [(VUIFamilySharingEntityRequestResponseParser *)v9 parseAMSURLResult:v5];
    if ([WeakRetained shouldGroupBySeason])
    {
      [WeakRetained _groupEpisodesbySeason:v10];
      [WeakRetained _orderEpisodesInGroupings];
    }

    if ([WeakRetained shouldCoalesceEpisodesToShows])
    {
      [WeakRetained _coalesceEpisodesToShowsFromParsedEntities:v10];
    }

    else if ([WeakRetained shouldCoalesceEpisodesToSeasons])
    {
      [WeakRetained _coalesceEpisodesToSeasonsFromParsedEntities:v10];
      [WeakRetained _orderSeasonsBySeasonNumber];
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x1E695DF70]);
      v12 = [WeakRetained mediaEntities];
      v13 = [v11 initWithArray:v12];
      v14 = [v13 mutableCopy];

      [v14 addObjectsFromArray:v10];
      [WeakRetained setProcessedEntities:v14];
    }

    v15 = [WeakRetained processedEntities];
    v16 = [v15 count];
    v17 = [WeakRetained mediaEntities];
    v18 = v16 - [v17 count];

    [WeakRetained setNumberOfEntitiesProcessedInBatch:{v18 + objc_msgSend(WeakRetained, "numberOfEntitiesProcessedInBatch")}];
    v19 = [WeakRetained processedEntities];
    [WeakRetained setMediaEntities:v19];
  }

  if ([WeakRetained loadingNextBatch])
  {
    [WeakRetained setLoadingNextBatch:0];
  }

  [WeakRetained _applyContentRestrictionsFilter];
  [WeakRetained _filterEntitiesBySeasonIdentifierIfNecessary];
  [WeakRetained _filterGroupingsBySeasonIdentifierIfNecessary];
  [WeakRetained _orderEpisodesIfNecessary];
  [WeakRetained _limitEntitiesReturnedIfNecessary];
  v20 = [WeakRetained numberOfEntitiesProcessedInBatch];
  v21 = [WeakRetained desiredBatchSize];
  if (v20 < [v21 unsignedIntegerValue] || objc_msgSend(WeakRetained, "fetchAllEntities"))
  {
    v22 = [WeakRetained _hasNextBatch];

    if (v22)
    {
      [WeakRetained loadNextEntityBatch];
      goto LABEL_21;
    }
  }

  else
  {
  }

  [WeakRetained setNumberOfEntitiesProcessedInBatch:0];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v26 = __53__VUIFamilySharingMediaEntitiesDataSource_startFetch__block_invoke_2;
  v27 = &unk_1E872E4B8;
  objc_copyWeak(&v28, (a1 + 32));
  v23 = v25;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v26(v23);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v23);
  }

  objc_destroyWeak(&v28);
LABEL_21:
}

void __53__VUIFamilySharingMediaEntitiesDataSource_startFetch__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    [v1 dataSourceDidFinishFetching:WeakRetained];
  }
}

- (void)loadNextEntityBatch
{
  if (![(VUIFamilySharingMediaEntitiesDataSource *)self loadingNextBatch])
  {
    if ([(VUIFamilySharingMediaEntitiesDataSource *)self _hasNextBatch])
    {
      resultLimit = [(VUIFamilySharingMediaEntitiesDataSource *)self resultLimit];
      if (!resultLimit || (v4 = resultLimit, -[VUIMediaEntitiesDataSource mediaEntities](self, "mediaEntities"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], -[VUIFamilySharingMediaEntitiesDataSource resultLimit](self, "resultLimit"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "unsignedIntegerValue"), v7, v5, v4, v6 < v8))
      {
        [(VUIFamilySharingMediaEntitiesDataSource *)self setLoadingNextBatch:1];
        [(VUIFamilySharingMediaEntitiesDataSource *)self _appendNextOffsetToURLRequest];

        [(VUIFamilySharingMediaEntitiesDataSource *)self startFetch];
      }
    }
  }
}

- (void)setShouldGroupBySeason:(BOOL)season
{
  self->_shouldGroupBySeason = season;
  if (season)
  {
    self->_fetchAllEntities = 1;
  }
}

- (void)setShouldCoalesceEpisodesToSeasons:(BOOL)seasons
{
  self->_shouldCoalesceEpisodesToSeasons = seasons;
  if (seasons)
  {
    self->_fetchAllEntities = 1;
  }
}

- (void)_coalesceEpisodesToShowsFromParsedEntities:(id)entities
{
  v36 = *MEMORY[0x1E69E9840];
  entitiesCopy = entities;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [entitiesCopy countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    v8 = 0x1E8728000uLL;
    v29 = *v32;
    v30 = entitiesCopy;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(entitiesCopy);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        type = [v10 type];
        episode = [*(v8 + 1048) episode];

        if (type != episode)
        {
          processedEntities = [(VUIFamilySharingMediaEntitiesDataSource *)self processedEntities];
          [processedEntities addObject:v10];
          goto LABEL_18;
        }

        processedEntities = [v10 showIdentifier];
        if ([(VUIFamilySharingMediaEntitiesDataSource *)self _processedEntitiesContainsEntityWithIdentifier:processedEntities])
        {
          v14 = [(VUIFamilySharingMediaEntitiesDataSource *)self _getEntityInProcessedEntitiesWithIdentifier:processedEntities];
          seasonNumber = [v10 seasonNumber];
          processedEntities4 = seasonNumber;
          if (seasonNumber)
          {
            integerValue = [seasonNumber integerValue];
            seasonNumber2 = [v14 seasonNumber];
            integerValue2 = [seasonNumber2 integerValue];

            if (integerValue > integerValue2)
            {
              processedEntities2 = [(VUIFamilySharingMediaEntitiesDataSource *)self processedEntities];
              v21 = [processedEntities2 indexOfObject:v14];

              v22 = [VUIFamilySharingMediaEntitiesDataSource mediaCollectionWithAMSMediaItem:v10];
              seasonNumbers = [v14 seasonNumbers];
              v24 = [(VUIFamilySharingMediaEntitiesDataSource *)self _addSeasonNumber:processedEntities4 toCollectionSeasonNumbers:seasonNumbers];

              [v22 setSeasonNumbers:v24];
              processedEntities3 = [(VUIFamilySharingMediaEntitiesDataSource *)self processedEntities];
              [processedEntities3 replaceObjectAtIndex:v21 withObject:v22];

              v7 = v29;
LABEL_16:
              v8 = 0x1E8728000;

              entitiesCopy = v30;
              goto LABEL_17;
            }

            seasonNumbers2 = [v14 seasonNumbers];
            v27 = [seasonNumbers2 containsObject:processedEntities4];

            v7 = v29;
            if ((v27 & 1) == 0)
            {
              seasonNumbers3 = [v14 seasonNumbers];
              v22 = [(VUIFamilySharingMediaEntitiesDataSource *)self _addSeasonNumber:processedEntities4 toCollectionSeasonNumbers:seasonNumbers3];

              [v14 setSeasonNumbers:v22];
              goto LABEL_16;
            }

            entitiesCopy = v30;
            v8 = 0x1E8728000;
          }
        }

        else
        {
          v14 = [VUIFamilySharingMediaEntitiesDataSource mediaCollectionWithAMSMediaItem:v10];
          processedEntities4 = [(VUIFamilySharingMediaEntitiesDataSource *)self processedEntities];
          [processedEntities4 addObject:v14];
        }

LABEL_17:

LABEL_18:
      }

      v6 = [entitiesCopy countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v6);
  }
}

+ (id)mediaCollectionWithAMSMediaItem:(id)item
{
  itemCopy = item;
  relationships = [itemCopy relationships];
  v5 = objc_alloc_init(VUIFamilySharingEntity);
  showTitle = [itemCopy showTitle];
  [(VUIFamilySharingEntity *)v5 setShowTitle:showTitle];

  show = [relationships show];
  identifier = [show identifier];
  [(VUIFamilySharingEntity *)v5 setIdentifier:identifier];

  artworkURL = [itemCopy artworkURL];
  artworkURL2 = [show artworkURL];

  if (artworkURL2)
  {
    artworkURL3 = [show artworkURL];

    artworkURL = artworkURL3;
  }

  [(VUIFamilySharingEntity *)v5 setArtworkURL:artworkURL];
  standardDescription = [show standardDescription];
  [(VUIFamilySharingEntity *)v5 setStandardDescription:standardDescription];

  contentRating = [show contentRating];
  [(VUIFamilySharingEntity *)v5 setContentRating:contentRating];

  seasonNumber = [itemCopy seasonNumber];
  [(VUIFamilySharingEntity *)v5 setSeasonNumber:seasonNumber];

  releaseDate = [show releaseDate];
  [(VUIFamilySharingEntity *)v5 setReleaseDate:releaseDate];

  genreTitle = [show genreTitle];
  [(VUIFamilySharingEntity *)v5 setGenreTitle:genreTitle];

  v17 = objc_alloc_init(VUIFamilySharingRelationships);
  show2 = [relationships show];
  [(VUIFamilySharingRelationships *)v17 setShow:show2];

  [(VUIFamilySharingEntity *)v5 setRelationships:v17];
  v19 = [VUIFamilySharingMediaCollection alloc];
  v20 = VUIMediaEntityFetchRequestAllPropertiesSet();
  v21 = +[VUIMediaEntityType show];
  v22 = [(VUIFamilySharingMediaCollection *)v19 initWithAMSEntity:v5 requestedProperties:v20 mediaEntityType:v21];

  return v22;
}

- (id)_addSeasonNumber:(id)number toCollectionSeasonNumbers:(id)numbers
{
  v5 = MEMORY[0x1E695DF70];
  numbersCopy = numbers;
  numberCopy = number;
  v8 = [[v5 alloc] initWithArray:numbersCopy];

  [v8 addObject:numberCopy];
  v9 = [v8 copy];

  return v9;
}

- (void)_coalesceEpisodesToSeasonsFromParsedEntities:(id)entities
{
  v47 = *MEMORY[0x1E69E9840];
  entitiesCopy = entities;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = [entitiesCopy countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v43;
    v8 = 0x1E8728000uLL;
    v38 = entitiesCopy;
    selfCopy = self;
    v37 = *v43;
    do
    {
      v9 = 0;
      v40 = v6;
      do
      {
        if (*v43 != v7)
        {
          objc_enumerationMutation(entitiesCopy);
        }

        v10 = *(*(&v42 + 1) + 8 * v9);
        type = [v10 type];
        episode = [*(v8 + 1048) episode];

        if (type == episode)
        {
          seasonIdentifier = [v10 seasonIdentifier];
          if (![(VUIFamilySharingMediaEntitiesDataSource *)self _processedEntitiesContainsEntityWithIdentifier:seasonIdentifier])
          {
            v14 = v8;
            relationships = [v10 relationships];
            season = [relationships season];
            v17 = objc_alloc_init(VUIFamilySharingEntity);
            showTitle = [v10 showTitle];
            [(VUIFamilySharingEntity *)v17 setShowTitle:showTitle];

            identifier = [season identifier];
            [(VUIFamilySharingEntity *)v17 setIdentifier:identifier];

            artworkURL = [v10 artworkURL];
            artworkURL2 = [season artworkURL];

            if (artworkURL2)
            {
              artworkURL3 = [season artworkURL];

              artworkURL = artworkURL3;
            }

            [(VUIFamilySharingEntity *)v17 setArtworkURL:artworkURL];
            standardDescription = [season standardDescription];
            [(VUIFamilySharingEntity *)v17 setStandardDescription:standardDescription];

            contentRating = [season contentRating];
            [(VUIFamilySharingEntity *)v17 setContentRating:contentRating];

            seasonNumber = [v10 seasonNumber];
            [(VUIFamilySharingEntity *)v17 setSeasonNumber:seasonNumber];

            releaseDate = [season releaseDate];
            [(VUIFamilySharingEntity *)v17 setReleaseDate:releaseDate];

            genreTitle = [season genreTitle];
            [(VUIFamilySharingEntity *)v17 setGenreTitle:genreTitle];

            v28 = objc_alloc_init(VUIFamilySharingRelationships);
            show = [relationships show];
            [(VUIFamilySharingRelationships *)v28 setShow:show];

            season2 = [relationships season];
            [(VUIFamilySharingRelationships *)v28 setSeason:season2];

            [(VUIFamilySharingEntity *)v17 setRelationships:v28];
            v31 = [VUIFamilySharingMediaCollection alloc];
            VUIMediaEntityFetchRequestAllPropertiesSet();
            v32 = v41 = relationships;
            v33 = v14;
            season3 = [*(v14 + 1048) season];
            v35 = [(VUIFamilySharingMediaCollection *)v31 initWithAMSEntity:v17 requestedProperties:v32 mediaEntityType:season3];

            self = selfCopy;
            processedEntities = [(VUIFamilySharingMediaEntitiesDataSource *)selfCopy processedEntities];
            [processedEntities addObject:v35];

            v8 = v33;
            v7 = v37;
            entitiesCopy = v38;
            v6 = v40;
          }
        }

        else
        {
          seasonIdentifier = [(VUIFamilySharingMediaEntitiesDataSource *)self processedEntities];
          [seasonIdentifier addObject:v10];
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [entitiesCopy countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v6);
  }
}

- (void)_groupEpisodesbySeason:(id)season
{
  v34 = *MEMORY[0x1E69E9840];
  seasonCopy = season;
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  grouping = [(VUIMediaEntitiesDataSource *)self grouping];
  v7 = [v5 initWithArray:grouping];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = seasonCopy;
  v27 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v27)
  {
    v9 = *v29;
    v10 = 0x1E8728000uLL;
    p_info = VUIPlayer.info;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        type = [v13 type];
        episode = [*(v10 + 1048) episode];

        if (type == episode)
        {
          seasonIdentifier = [v13 seasonIdentifier];
          v17 = [(VUIFamilySharingMediaEntitiesDataSource *)self _getGroupingFrom:v7 groupingIdentifier:seasonIdentifier];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (![(VUIFamilySharingMediaEntitiesDataSource *)self _grouping:v17 containsMediaEntity:v13])
            {
              [v17 mediaEntities];
              v18 = v9;
              v19 = v8;
              v20 = v7;
              v22 = v21 = self;
              v23 = [v22 mutableCopy];

              self = v21;
              v7 = v20;
              v8 = v19;
              v9 = v18;
              v10 = 0x1E8728000;
              [v23 addObject:v13];
              v24 = [v23 copy];
              [v17 setMediaEntities:v24];

              goto LABEL_11;
            }
          }

          else
          {
            v23 = [objc_alloc((p_info + 351)) initWithIdentifier:seasonIdentifier];
            v32 = v13;
            v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
            [v23 setMediaEntities:v25];

            [v7 addObject:v23];
LABEL_11:

            p_info = (VUIPlayer + 32);
          }

          continue;
        }
      }

      v27 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v27);
  }

  v26 = [v7 copy];
  [(VUIMediaEntitiesDataSource *)self setGrouping:v26];
}

- (id)_getLimitFromURLRequest
{
  v22 = *MEMORY[0x1E69E9840];
  urlRequest = [(VUIFamilySharingMediaEntitiesDataSource *)self urlRequest];
  v3 = [urlRequest URL];

  v4 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v3 resolvingAgainstBaseURL:0];
  [v4 queryItems];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        name = [v10 name];
        v12 = [name isEqualToString:@"limit"];

        if (v12)
        {
          value = [v10 value];
          v15 = objc_alloc_init(MEMORY[0x1E696ADA0]);
          v13 = [v15 numberFromString:value];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)_processedEntitiesContainsEntityWithIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  processedEntities = [(VUIFamilySharingMediaEntitiesDataSource *)self processedEntities];
  v6 = [processedEntities countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(processedEntities);
        }

        identifier = [*(*(&v12 + 1) + 8 * i) identifier];
        v10 = [identifier isEqual:identifierCopy];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [processedEntities countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_getEntityInProcessedEntitiesWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  processedEntities = [(VUIFamilySharingMediaEntitiesDataSource *)self processedEntities];
  v6 = [processedEntities countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(processedEntities);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [processedEntities countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)_grouping:(id)_grouping containsMediaEntity:(id)entity
{
  v19 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  mediaEntities = [_grouping mediaEntities];
  v7 = [mediaEntities countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(mediaEntities);
        }

        identifier = [*(*(&v14 + 1) + 8 * i) identifier];
        identifier2 = [entityCopy identifier];
        v12 = [identifier isEqual:identifier2];

        if (v12)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [mediaEntities countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)_getGroupingFrom:(id)from groupingIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = fromCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        identifier = [v11 identifier];
        v13 = [identifier isEqual:identifierCopy];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)_appendNextOffsetToURLRequest
{
  urlRequest = [(VUIFamilySharingMediaEntitiesDataSource *)self urlRequest];
  v9 = [urlRequest URL];

  v4 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v9 resolvingAgainstBaseURL:0];
  queryItems = [v4 queryItems];
  v6 = [(VUIFamilySharingMediaEntitiesDataSource *)self _updateOffsetQueryItemForQueryItems:queryItems];

  [v4 setQueryItems:v6];
  v7 = [v4 URL];
  v8 = [MEMORY[0x1E696AF68] requestWithURL:v7];
  [(VUIFamilySharingMediaEntitiesDataSource *)self setUrlRequest:v8];
}

- (id)_updateOffsetQueryItemForQueryItems:(id)items
{
  v25 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        name = [v11 name];
        v13 = [name isEqualToString:@"offset"];

        if ((v13 & 1) == 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v14 = objc_alloc(MEMORY[0x1E696AF60]);
  responseMetadata = [(VUIFamilySharingMediaEntitiesDataSource *)self responseMetadata];
  offset = [responseMetadata offset];
  v17 = [v14 initWithName:@"offset" value:offset];

  [v5 addObject:v17];
  v18 = [v5 copy];

  return v18;
}

- (BOOL)_hasNextBatch
{
  responseMetadata = [(VUIFamilySharingMediaEntitiesDataSource *)self responseMetadata];
  offset = [responseMetadata offset];
  v4 = offset != 0;

  return v4;
}

- (void)_limitEntitiesReturnedIfNecessary
{
  resultLimit = [(VUIFamilySharingMediaEntitiesDataSource *)self resultLimit];
  if (resultLimit)
  {
    v4 = resultLimit;
    mediaEntities = [(VUIMediaEntitiesDataSource *)self mediaEntities];
    v6 = [mediaEntities count];
    resultLimit2 = [(VUIFamilySharingMediaEntitiesDataSource *)self resultLimit];
    unsignedIntegerValue = [resultLimit2 unsignedIntegerValue];

    if (v6 > unsignedIntegerValue)
    {
      mediaEntities2 = [(VUIMediaEntitiesDataSource *)self mediaEntities];
      resultLimit3 = [(VUIFamilySharingMediaEntitiesDataSource *)self resultLimit];
      v12 = [mediaEntities2 subarrayWithRange:{0, objc_msgSend(resultLimit3, "intValue")}];

      v11 = [v12 copy];
      [(VUIMediaEntitiesDataSource *)self setMediaEntities:v11];
    }
  }
}

- (void)_orderSeasonsBySeasonNumber
{
  processedEntities = [(VUIFamilySharingMediaEntitiesDataSource *)self processedEntities];
  v5 = [processedEntities mutableCopy];

  [v5 sortUsingComparator:&__block_literal_global_110];
  v4 = [v5 mutableCopy];
  [(VUIFamilySharingMediaEntitiesDataSource *)self setProcessedEntities:v4];
}

uint64_t __70__VUIFamilySharingMediaEntitiesDataSource__orderSeasonsBySeasonNumber__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 seasonNumber];
  v6 = [v4 seasonNumber];

  if (v5)
  {
    if (v6)
    {
      v7 = [v5 compare:v6];
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_orderEpisodesInGroupings
{
  v18 = *MEMORY[0x1E69E9840];
  _episodeOrderingComparator = [(VUIFamilySharingMediaEntitiesDataSource *)self _episodeOrderingComparator];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  grouping = [(VUIMediaEntitiesDataSource *)self grouping];
  v5 = [grouping countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(grouping);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        mediaEntities = [v9 mediaEntities];
        v11 = [mediaEntities mutableCopy];

        [v11 sortUsingComparator:_episodeOrderingComparator];
        v12 = [v11 copy];
        [v9 setMediaEntities:v12];
      }

      v6 = [grouping countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_orderEpisodesIfNecessary
{
  if ([(VUIFamilySharingMediaEntitiesDataSource *)self orderEpisodesByEpisodeNumber])
  {
    _episodeOrderingComparator = [(VUIFamilySharingMediaEntitiesDataSource *)self _episodeOrderingComparator];
    mediaEntities = [(VUIMediaEntitiesDataSource *)self mediaEntities];
    v4 = [mediaEntities mutableCopy];

    [v4 sortUsingComparator:_episodeOrderingComparator];
    v5 = [v4 copy];
    [(VUIMediaEntitiesDataSource *)self setMediaEntities:v5];
  }
}

uint64_t __69__VUIFamilySharingMediaEntitiesDataSource__episodeOrderingComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 episodeNumber];
  v6 = [v4 episodeNumber];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_filterEntitiesBySeasonIdentifierIfNecessary
{
  v30 = *MEMORY[0x1E69E9840];
  seasonIdentifierFilter = [(VUIFamilySharingMediaEntitiesDataSource *)self seasonIdentifierFilter];

  if (seasonIdentifierFilter)
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    mediaEntities = [(VUIMediaEntitiesDataSource *)self mediaEntities];
    v5 = [mediaEntities countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      p_superclass = VUIMPMediaCollection.superclass;
      do
      {
        v9 = 0;
        v23 = v6;
        do
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(mediaEntities);
          }

          v10 = *(*(&v25 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            amsSeasonIdentifier = [v10 amsSeasonIdentifier];
            seasonIdentifierFilter2 = [(VUIFamilySharingMediaEntitiesDataSource *)self seasonIdentifierFilter];
            v13 = [amsSeasonIdentifier isEqualToString:seasonIdentifierFilter2];

            if (v13)
            {
              [v24 addObject:v10];
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v7;
              v15 = p_superclass;
              v16 = mediaEntities;
              relationships = [v10 relationships];
              season = [relationships season];

              if (season)
              {
                identifier = [season identifier];
                seasonIdentifierFilter3 = [(VUIFamilySharingMediaEntitiesDataSource *)self seasonIdentifierFilter];
                v21 = [identifier isEqualToString:seasonIdentifierFilter3];

                if (v21)
                {
                  [v24 addObject:v10];
                }
              }

              mediaEntities = v16;
              p_superclass = v15;
              v7 = v14;
              v6 = v23;
            }
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [mediaEntities countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v6);
    }

    v22 = [v24 copy];
    [(VUIMediaEntitiesDataSource *)self setMediaEntities:v22];
  }
}

- (void)_filterGroupingsBySeasonIdentifierIfNecessary
{
  selfCopy = self;
  v28 = *MEMORY[0x1E69E9840];
  seasonIdentifierFilter = [(VUIFamilySharingMediaEntitiesDataSource *)self seasonIdentifierFilter];

  if (seasonIdentifierFilter)
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    grouping = [(VUIMediaEntitiesDataSource *)selfCopy grouping];
    v5 = [grouping countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      do
      {
        v8 = 0;
        v22 = v6;
        do
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(grouping);
          }

          v9 = *(*(&v23 + 1) + 8 * v8);
          mediaEntities = [v9 mediaEntities];
          firstObject = [mediaEntities firstObject];

          if (firstObject)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              relationships = [firstObject relationships];
              season = [relationships season];

              if (season)
              {
                identifier = [season identifier];
                [(VUIFamilySharingMediaEntitiesDataSource *)selfCopy seasonIdentifierFilter];
                v15 = v7;
                v16 = grouping;
                v18 = v17 = selfCopy;
                v19 = [identifier isEqualToString:v18];

                selfCopy = v17;
                grouping = v16;
                v7 = v15;
                v6 = v22;

                if (v19)
                {
                  [v21 addObject:v9];
                }
              }
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [grouping countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v6);
    }

    v20 = [v21 copy];
    [(VUIMediaEntitiesDataSource *)selfCopy setGrouping:v20];
  }
}

- (void)_applyContentRestrictionsFilter
{
  mediaEntities = [(VUIMediaEntitiesDataSource *)self mediaEntities];
  v4 = [(VUIFamilySharingMediaEntitiesDataSource *)self _applyContentRestrictionsFilterToMediaEntities:mediaEntities];
  [(VUIMediaEntitiesDataSource *)self setMediaEntities:v4];

  [(VUIFamilySharingMediaEntitiesDataSource *)self _applyContentRestrictionsFilterToGroupings];
}

- (id)_applyContentRestrictionsFilterToMediaEntities:(id)entities
{
  v3 = MEMORY[0x1E696AE18];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__VUIFamilySharingMediaEntitiesDataSource__applyContentRestrictionsFilterToMediaEntities___block_invoke;
  v10[3] = &unk_1E8733FA0;
  v10[4] = self;
  entitiesCopy = entities;
  v5 = [v3 predicateWithBlock:v10];
  v6 = [entitiesCopy mutableCopy];

  v7 = [v6 filteredArrayUsingPredicate:v5];
  v8 = [v7 copy];

  return v8;
}

- (void)_applyContentRestrictionsFilterToGroupings
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  grouping = [(VUIMediaEntitiesDataSource *)self grouping];
  v5 = [grouping countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(grouping);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        mediaEntities = [v9 mediaEntities];
        v11 = [(VUIFamilySharingMediaEntitiesDataSource *)self _applyContentRestrictionsFilterToMediaEntities:mediaEntities];

        if ([v11 count])
        {
          [v9 setMediaEntities:v11];
          [v3 addObject:v9];
        }
      }

      v6 = [grouping countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];
  [(VUIMediaEntitiesDataSource *)self setGrouping:v12];
}

- (BOOL)_isAllowedToShowMediaItem:(id)item
{
  itemCopy = item;
  contentRating = [itemCopy contentRating];
  rank = [contentRating rank];
  type = [itemCopy type];
  v7 = +[VUIMediaEntityType movie];

  if (type == v7)
  {
    v16 = VUIDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [VUIFamilySharingMediaEntitiesDataSource _isAllowedToShowMediaItem:v16];
    }

    v17 = +[VUISettingsManager sharedInstance];
    maxMovieRank = [v17 maxMovieRank];
    goto LABEL_14;
  }

  type2 = [itemCopy type];
  v9 = +[VUIMediaEntityType episode];
  if (type2 != v9)
  {
    type3 = [itemCopy type];
    v11 = +[VUIMediaEntityType show];
    v12 = v11;
    if (type3 != v11)
    {
      type4 = [itemCopy type];
      v14 = +[VUIMediaEntityType season];

      if (type4 != v14)
      {
        v15 = 0;
        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

LABEL_11:
  v19 = VUIDefaultLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [VUIFamilySharingMediaEntitiesDataSource _isAllowedToShowMediaItem:v19];
  }

  v17 = +[VUISettingsManager sharedInstance];
  maxMovieRank = [v17 maxTVShowRank];
LABEL_14:
  v15 = maxMovieRank;

LABEL_15:
  unsignedIntegerValue = [v15 unsignedIntegerValue];
  if (v15)
  {
    v21 = rank == 0;
  }

  else
  {
    v21 = 1;
  }

  v23 = v21 || unsignedIntegerValue >= rank;

  return v23;
}

@end