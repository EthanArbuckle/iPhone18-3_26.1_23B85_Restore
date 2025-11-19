@interface VUIFamilySharingMediaEntitiesDataSource
+ (id)mediaCollectionWithAMSMediaItem:(id)a3;
- (BOOL)_grouping:(id)a3 containsMediaEntity:(id)a4;
- (BOOL)_hasNextBatch;
- (BOOL)_isAllowedToShowMediaItem:(id)a3;
- (BOOL)_processedEntitiesContainsEntityWithIdentifier:(id)a3;
- (VUIFamilySharingMediaEntitiesDataSource)initWithNSURLRequest:(id)a3;
- (id)_addSeasonNumber:(id)a3 toCollectionSeasonNumbers:(id)a4;
- (id)_applyContentRestrictionsFilterToMediaEntities:(id)a3;
- (id)_getEntityInProcessedEntitiesWithIdentifier:(id)a3;
- (id)_getGroupingFrom:(id)a3 groupingIdentifier:(id)a4;
- (id)_getLimitFromURLRequest;
- (id)_updateOffsetQueryItemForQueryItems:(id)a3;
- (void)_appendNextOffsetToURLRequest;
- (void)_applyContentRestrictionsFilter;
- (void)_applyContentRestrictionsFilterToGroupings;
- (void)_coalesceEpisodesToSeasonsFromParsedEntities:(id)a3;
- (void)_coalesceEpisodesToShowsFromParsedEntities:(id)a3;
- (void)_filterEntitiesBySeasonIdentifierIfNecessary;
- (void)_filterGroupingsBySeasonIdentifierIfNecessary;
- (void)_groupEpisodesbySeason:(id)a3;
- (void)_limitEntitiesReturnedIfNecessary;
- (void)_orderEpisodesIfNecessary;
- (void)_orderEpisodesInGroupings;
- (void)_orderSeasonsBySeasonNumber;
- (void)loadNextEntityBatch;
- (void)setShouldCoalesceEpisodesToSeasons:(BOOL)a3;
- (void)setShouldGroupBySeason:(BOOL)a3;
- (void)startFetch;
@end

@implementation VUIFamilySharingMediaEntitiesDataSource

- (VUIFamilySharingMediaEntitiesDataSource)initWithNSURLRequest:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = VUIFamilySharingMediaEntitiesDataSource;
  v6 = [(VUIFamilySharingMediaEntitiesDataSource *)&v14 init];
  if (v6)
  {
    +[VUIMediaAPIClient initializeWithAppleTVClientIdentifier];
    v7 = +[VUIMediaAPIClient sharedInstance];
    mediaClient = v6->_mediaClient;
    v6->_mediaClient = v7;

    objc_storeStrong(&v6->_urlRequest, a3);
    v9 = [(VUIFamilySharingMediaEntitiesDataSource *)v6 _getLimitFromURLRequest];
    desiredBatchSize = v6->_desiredBatchSize;
    v6->_desiredBatchSize = v9;

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
  v3 = [(VUIFamilySharingMediaEntitiesDataSource *)self mediaClient];
  v4 = [(VUIFamilySharingMediaEntitiesDataSource *)self urlRequest];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__VUIFamilySharingMediaEntitiesDataSource_startFetch__block_invoke;
  v5[3] = &unk_1E872EA80;
  objc_copyWeak(&v6, &location);
  [v3 fetchContentForUrl:v4 completion:v5];

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
      v3 = [(VUIFamilySharingMediaEntitiesDataSource *)self resultLimit];
      if (!v3 || (v4 = v3, -[VUIMediaEntitiesDataSource mediaEntities](self, "mediaEntities"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], -[VUIFamilySharingMediaEntitiesDataSource resultLimit](self, "resultLimit"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "unsignedIntegerValue"), v7, v5, v4, v6 < v8))
      {
        [(VUIFamilySharingMediaEntitiesDataSource *)self setLoadingNextBatch:1];
        [(VUIFamilySharingMediaEntitiesDataSource *)self _appendNextOffsetToURLRequest];

        [(VUIFamilySharingMediaEntitiesDataSource *)self startFetch];
      }
    }
  }
}

- (void)setShouldGroupBySeason:(BOOL)a3
{
  self->_shouldGroupBySeason = a3;
  if (a3)
  {
    self->_fetchAllEntities = 1;
  }
}

- (void)setShouldCoalesceEpisodesToSeasons:(BOOL)a3
{
  self->_shouldCoalesceEpisodesToSeasons = a3;
  if (a3)
  {
    self->_fetchAllEntities = 1;
  }
}

- (void)_coalesceEpisodesToShowsFromParsedEntities:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    v8 = 0x1E8728000uLL;
    v29 = *v32;
    v30 = v4;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [v10 type];
        v12 = [*(v8 + 1048) episode];

        if (v11 != v12)
        {
          v13 = [(VUIFamilySharingMediaEntitiesDataSource *)self processedEntities];
          [v13 addObject:v10];
          goto LABEL_18;
        }

        v13 = [v10 showIdentifier];
        if ([(VUIFamilySharingMediaEntitiesDataSource *)self _processedEntitiesContainsEntityWithIdentifier:v13])
        {
          v14 = [(VUIFamilySharingMediaEntitiesDataSource *)self _getEntityInProcessedEntitiesWithIdentifier:v13];
          v15 = [v10 seasonNumber];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 integerValue];
            v18 = [v14 seasonNumber];
            v19 = [v18 integerValue];

            if (v17 > v19)
            {
              v20 = [(VUIFamilySharingMediaEntitiesDataSource *)self processedEntities];
              v21 = [v20 indexOfObject:v14];

              v22 = [VUIFamilySharingMediaEntitiesDataSource mediaCollectionWithAMSMediaItem:v10];
              v23 = [v14 seasonNumbers];
              v24 = [(VUIFamilySharingMediaEntitiesDataSource *)self _addSeasonNumber:v16 toCollectionSeasonNumbers:v23];

              [v22 setSeasonNumbers:v24];
              v25 = [(VUIFamilySharingMediaEntitiesDataSource *)self processedEntities];
              [v25 replaceObjectAtIndex:v21 withObject:v22];

              v7 = v29;
LABEL_16:
              v8 = 0x1E8728000;

              v4 = v30;
              goto LABEL_17;
            }

            v26 = [v14 seasonNumbers];
            v27 = [v26 containsObject:v16];

            v7 = v29;
            if ((v27 & 1) == 0)
            {
              v28 = [v14 seasonNumbers];
              v22 = [(VUIFamilySharingMediaEntitiesDataSource *)self _addSeasonNumber:v16 toCollectionSeasonNumbers:v28];

              [v14 setSeasonNumbers:v22];
              goto LABEL_16;
            }

            v4 = v30;
            v8 = 0x1E8728000;
          }
        }

        else
        {
          v14 = [VUIFamilySharingMediaEntitiesDataSource mediaCollectionWithAMSMediaItem:v10];
          v16 = [(VUIFamilySharingMediaEntitiesDataSource *)self processedEntities];
          [v16 addObject:v14];
        }

LABEL_17:

LABEL_18:
      }

      v6 = [v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v6);
  }
}

+ (id)mediaCollectionWithAMSMediaItem:(id)a3
{
  v3 = a3;
  v4 = [v3 relationships];
  v5 = objc_alloc_init(VUIFamilySharingEntity);
  v6 = [v3 showTitle];
  [(VUIFamilySharingEntity *)v5 setShowTitle:v6];

  v7 = [v4 show];
  v8 = [v7 identifier];
  [(VUIFamilySharingEntity *)v5 setIdentifier:v8];

  v9 = [v3 artworkURL];
  v10 = [v7 artworkURL];

  if (v10)
  {
    v11 = [v7 artworkURL];

    v9 = v11;
  }

  [(VUIFamilySharingEntity *)v5 setArtworkURL:v9];
  v12 = [v7 standardDescription];
  [(VUIFamilySharingEntity *)v5 setStandardDescription:v12];

  v13 = [v7 contentRating];
  [(VUIFamilySharingEntity *)v5 setContentRating:v13];

  v14 = [v3 seasonNumber];
  [(VUIFamilySharingEntity *)v5 setSeasonNumber:v14];

  v15 = [v7 releaseDate];
  [(VUIFamilySharingEntity *)v5 setReleaseDate:v15];

  v16 = [v7 genreTitle];
  [(VUIFamilySharingEntity *)v5 setGenreTitle:v16];

  v17 = objc_alloc_init(VUIFamilySharingRelationships);
  v18 = [v4 show];
  [(VUIFamilySharingRelationships *)v17 setShow:v18];

  [(VUIFamilySharingEntity *)v5 setRelationships:v17];
  v19 = [VUIFamilySharingMediaCollection alloc];
  v20 = VUIMediaEntityFetchRequestAllPropertiesSet();
  v21 = +[VUIMediaEntityType show];
  v22 = [(VUIFamilySharingMediaCollection *)v19 initWithAMSEntity:v5 requestedProperties:v20 mediaEntityType:v21];

  return v22;
}

- (id)_addSeasonNumber:(id)a3 toCollectionSeasonNumbers:(id)a4
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithArray:v6];

  [v8 addObject:v7];
  v9 = [v8 copy];

  return v9;
}

- (void)_coalesceEpisodesToSeasonsFromParsedEntities:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v43;
    v8 = 0x1E8728000uLL;
    v38 = v4;
    v39 = self;
    v37 = *v43;
    do
    {
      v9 = 0;
      v40 = v6;
      do
      {
        if (*v43 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v42 + 1) + 8 * v9);
        v11 = [v10 type];
        v12 = [*(v8 + 1048) episode];

        if (v11 == v12)
        {
          v13 = [v10 seasonIdentifier];
          if (![(VUIFamilySharingMediaEntitiesDataSource *)self _processedEntitiesContainsEntityWithIdentifier:v13])
          {
            v14 = v8;
            v15 = [v10 relationships];
            v16 = [v15 season];
            v17 = objc_alloc_init(VUIFamilySharingEntity);
            v18 = [v10 showTitle];
            [(VUIFamilySharingEntity *)v17 setShowTitle:v18];

            v19 = [v16 identifier];
            [(VUIFamilySharingEntity *)v17 setIdentifier:v19];

            v20 = [v10 artworkURL];
            v21 = [v16 artworkURL];

            if (v21)
            {
              v22 = [v16 artworkURL];

              v20 = v22;
            }

            [(VUIFamilySharingEntity *)v17 setArtworkURL:v20];
            v23 = [v16 standardDescription];
            [(VUIFamilySharingEntity *)v17 setStandardDescription:v23];

            v24 = [v16 contentRating];
            [(VUIFamilySharingEntity *)v17 setContentRating:v24];

            v25 = [v10 seasonNumber];
            [(VUIFamilySharingEntity *)v17 setSeasonNumber:v25];

            v26 = [v16 releaseDate];
            [(VUIFamilySharingEntity *)v17 setReleaseDate:v26];

            v27 = [v16 genreTitle];
            [(VUIFamilySharingEntity *)v17 setGenreTitle:v27];

            v28 = objc_alloc_init(VUIFamilySharingRelationships);
            v29 = [v15 show];
            [(VUIFamilySharingRelationships *)v28 setShow:v29];

            v30 = [v15 season];
            [(VUIFamilySharingRelationships *)v28 setSeason:v30];

            [(VUIFamilySharingEntity *)v17 setRelationships:v28];
            v31 = [VUIFamilySharingMediaCollection alloc];
            VUIMediaEntityFetchRequestAllPropertiesSet();
            v32 = v41 = v15;
            v33 = v14;
            v34 = [*(v14 + 1048) season];
            v35 = [(VUIFamilySharingMediaCollection *)v31 initWithAMSEntity:v17 requestedProperties:v32 mediaEntityType:v34];

            self = v39;
            v36 = [(VUIFamilySharingMediaEntitiesDataSource *)v39 processedEntities];
            [v36 addObject:v35];

            v8 = v33;
            v7 = v37;
            v4 = v38;
            v6 = v40;
          }
        }

        else
        {
          v13 = [(VUIFamilySharingMediaEntitiesDataSource *)self processedEntities];
          [v13 addObject:v10];
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v6);
  }
}

- (void)_groupEpisodesbySeason:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = [(VUIMediaEntitiesDataSource *)self grouping];
  v7 = [v5 initWithArray:v6];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v4;
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
        v14 = [v13 type];
        v15 = [*(v10 + 1048) episode];

        if (v14 == v15)
        {
          v16 = [v13 seasonIdentifier];
          v17 = [(VUIFamilySharingMediaEntitiesDataSource *)self _getGroupingFrom:v7 groupingIdentifier:v16];
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
            v23 = [objc_alloc((p_info + 351)) initWithIdentifier:v16];
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
  v2 = [(VUIFamilySharingMediaEntitiesDataSource *)self urlRequest];
  v3 = [v2 URL];

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
        v11 = [v10 name];
        v12 = [v11 isEqualToString:@"limit"];

        if (v12)
        {
          v14 = [v10 value];
          v15 = objc_alloc_init(MEMORY[0x1E696ADA0]);
          v13 = [v15 numberFromString:v14];

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

- (BOOL)_processedEntitiesContainsEntityWithIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(VUIFamilySharingMediaEntitiesDataSource *)self processedEntities];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) identifier];
        v10 = [v9 isEqual:v4];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)_getEntityInProcessedEntitiesWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(VUIFamilySharingMediaEntitiesDataSource *)self processedEntities];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (BOOL)_grouping:(id)a3 containsMediaEntity:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 mediaEntities];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) identifier];
        v11 = [v5 identifier];
        v12 = [v10 isEqual:v11];

        if (v12)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)_getGroupingFrom:(id)a3 groupingIdentifier:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
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
        v12 = [v11 identifier];
        v13 = [v12 isEqual:v6];

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
  v3 = [(VUIFamilySharingMediaEntitiesDataSource *)self urlRequest];
  v9 = [v3 URL];

  v4 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v9 resolvingAgainstBaseURL:0];
  v5 = [v4 queryItems];
  v6 = [(VUIFamilySharingMediaEntitiesDataSource *)self _updateOffsetQueryItemForQueryItems:v5];

  [v4 setQueryItems:v6];
  v7 = [v4 URL];
  v8 = [MEMORY[0x1E696AF68] requestWithURL:v7];
  [(VUIFamilySharingMediaEntitiesDataSource *)self setUrlRequest:v8];
}

- (id)_updateOffsetQueryItemForQueryItems:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
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
        v12 = [v11 name];
        v13 = [v12 isEqualToString:@"offset"];

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
  v15 = [(VUIFamilySharingMediaEntitiesDataSource *)self responseMetadata];
  v16 = [v15 offset];
  v17 = [v14 initWithName:@"offset" value:v16];

  [v5 addObject:v17];
  v18 = [v5 copy];

  return v18;
}

- (BOOL)_hasNextBatch
{
  v2 = [(VUIFamilySharingMediaEntitiesDataSource *)self responseMetadata];
  v3 = [v2 offset];
  v4 = v3 != 0;

  return v4;
}

- (void)_limitEntitiesReturnedIfNecessary
{
  v3 = [(VUIFamilySharingMediaEntitiesDataSource *)self resultLimit];
  if (v3)
  {
    v4 = v3;
    v5 = [(VUIMediaEntitiesDataSource *)self mediaEntities];
    v6 = [v5 count];
    v7 = [(VUIFamilySharingMediaEntitiesDataSource *)self resultLimit];
    v8 = [v7 unsignedIntegerValue];

    if (v6 > v8)
    {
      v9 = [(VUIMediaEntitiesDataSource *)self mediaEntities];
      v10 = [(VUIFamilySharingMediaEntitiesDataSource *)self resultLimit];
      v12 = [v9 subarrayWithRange:{0, objc_msgSend(v10, "intValue")}];

      v11 = [v12 copy];
      [(VUIMediaEntitiesDataSource *)self setMediaEntities:v11];
    }
  }
}

- (void)_orderSeasonsBySeasonNumber
{
  v3 = [(VUIFamilySharingMediaEntitiesDataSource *)self processedEntities];
  v5 = [v3 mutableCopy];

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
  v3 = [(VUIFamilySharingMediaEntitiesDataSource *)self _episodeOrderingComparator];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(VUIMediaEntitiesDataSource *)self grouping];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 mediaEntities];
        v11 = [v10 mutableCopy];

        [v11 sortUsingComparator:v3];
        v12 = [v11 copy];
        [v9 setMediaEntities:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_orderEpisodesIfNecessary
{
  if ([(VUIFamilySharingMediaEntitiesDataSource *)self orderEpisodesByEpisodeNumber])
  {
    v6 = [(VUIFamilySharingMediaEntitiesDataSource *)self _episodeOrderingComparator];
    v3 = [(VUIMediaEntitiesDataSource *)self mediaEntities];
    v4 = [v3 mutableCopy];

    [v4 sortUsingComparator:v6];
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
  v3 = [(VUIFamilySharingMediaEntitiesDataSource *)self seasonIdentifierFilter];

  if (v3)
  {
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v4 = [(VUIMediaEntitiesDataSource *)self mediaEntities];
    v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v25 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v10 amsSeasonIdentifier];
            v12 = [(VUIFamilySharingMediaEntitiesDataSource *)self seasonIdentifierFilter];
            v13 = [v11 isEqualToString:v12];

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
              v16 = v4;
              v17 = [v10 relationships];
              v18 = [v17 season];

              if (v18)
              {
                v19 = [v18 identifier];
                v20 = [(VUIFamilySharingMediaEntitiesDataSource *)self seasonIdentifierFilter];
                v21 = [v19 isEqualToString:v20];

                if (v21)
                {
                  [v24 addObject:v10];
                }
              }

              v4 = v16;
              p_superclass = v15;
              v7 = v14;
              v6 = v23;
            }
          }

          ++v9;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v6);
    }

    v22 = [v24 copy];
    [(VUIMediaEntitiesDataSource *)self setMediaEntities:v22];
  }
}

- (void)_filterGroupingsBySeasonIdentifierIfNecessary
{
  v2 = self;
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(VUIFamilySharingMediaEntitiesDataSource *)self seasonIdentifierFilter];

  if (v3)
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = [(VUIMediaEntitiesDataSource *)v2 grouping];
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v23 + 1) + 8 * v8);
          v10 = [v9 mediaEntities];
          v11 = [v10 firstObject];

          if (v11)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [v11 relationships];
              v13 = [v12 season];

              if (v13)
              {
                v14 = [v13 identifier];
                [(VUIFamilySharingMediaEntitiesDataSource *)v2 seasonIdentifierFilter];
                v15 = v7;
                v16 = v4;
                v18 = v17 = v2;
                v19 = [v14 isEqualToString:v18];

                v2 = v17;
                v4 = v16;
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
        v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v6);
    }

    v20 = [v21 copy];
    [(VUIMediaEntitiesDataSource *)v2 setGrouping:v20];
  }
}

- (void)_applyContentRestrictionsFilter
{
  v3 = [(VUIMediaEntitiesDataSource *)self mediaEntities];
  v4 = [(VUIFamilySharingMediaEntitiesDataSource *)self _applyContentRestrictionsFilterToMediaEntities:v3];
  [(VUIMediaEntitiesDataSource *)self setMediaEntities:v4];

  [(VUIFamilySharingMediaEntitiesDataSource *)self _applyContentRestrictionsFilterToGroupings];
}

- (id)_applyContentRestrictionsFilterToMediaEntities:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__VUIFamilySharingMediaEntitiesDataSource__applyContentRestrictionsFilterToMediaEntities___block_invoke;
  v10[3] = &unk_1E8733FA0;
  v10[4] = self;
  v4 = a3;
  v5 = [v3 predicateWithBlock:v10];
  v6 = [v4 mutableCopy];

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
  v4 = [(VUIMediaEntitiesDataSource *)self grouping];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 mediaEntities];
        v11 = [(VUIFamilySharingMediaEntitiesDataSource *)self _applyContentRestrictionsFilterToMediaEntities:v10];

        if ([v11 count])
        {
          [v9 setMediaEntities:v11];
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];
  [(VUIMediaEntitiesDataSource *)self setGrouping:v12];
}

- (BOOL)_isAllowedToShowMediaItem:(id)a3
{
  v3 = a3;
  v4 = [v3 contentRating];
  v5 = [v4 rank];
  v6 = [v3 type];
  v7 = +[VUIMediaEntityType movie];

  if (v6 == v7)
  {
    v16 = VUIDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [VUIFamilySharingMediaEntitiesDataSource _isAllowedToShowMediaItem:v16];
    }

    v17 = +[VUISettingsManager sharedInstance];
    v18 = [v17 maxMovieRank];
    goto LABEL_14;
  }

  v8 = [v3 type];
  v9 = +[VUIMediaEntityType episode];
  if (v8 != v9)
  {
    v10 = [v3 type];
    v11 = +[VUIMediaEntityType show];
    v12 = v11;
    if (v10 != v11)
    {
      v13 = [v3 type];
      v14 = +[VUIMediaEntityType season];

      if (v13 != v14)
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
  v18 = [v17 maxTVShowRank];
LABEL_14:
  v15 = v18;

LABEL_15:
  v20 = [v15 unsignedIntegerValue];
  if (v15)
  {
    v21 = v5 == 0;
  }

  else
  {
    v21 = 1;
  }

  v23 = v21 || v20 >= v5;

  return v23;
}

@end