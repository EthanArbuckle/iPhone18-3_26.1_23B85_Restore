@interface VUIMediaEntityFetchRequest
+ (VUIMediaEntityFetchRequest)mediaEntityFetchRequestWithIdentifier:(id)a3;
+ (id)_any4KResolutionPredicate;
+ (id)_anyHDRColorCapabilityPredicate;
+ (id)_episodesFetchRequestWithSeasonIdentifier:(id)a3 showIdentifier:(id)a4;
+ (id)_finalizedSortDescriptorFromSortDescriptor:(id)a3 mediaEntityKind:(id)a4;
+ (id)_finalizedSortDescriptorsFromSortDescriptors:(id)a3 mediaEntityKind:(id)a4;
+ (id)_includeSortIndexesOptions;
+ (id)_minimalMovieRentalsPropertiesFetchRequest;
+ (id)_minimalMoviesPropertiesFetchRequest;
+ (id)_minimalPropertiesFetchRequestWithType:(id)a3;
+ (id)_minimalShowsPropertiesFetchRequest;
+ (id)_seasonsFetchRequestWithSeasonIdentifier:(id)a3;
+ (id)_seasonsFetchRequestWithShowIdentifier:(id)a3;
+ (id)homeVideosFetchRequest;
- (BOOL)_isItemsFetch;
- (BOOL)_isSeasonsFetch;
- (BOOL)_isShowsFetch;
- (BOOL)_shouldGenerateGroupingSortIndexes;
- (BOOL)_shouldGenerateSortIndexes;
- (BOOL)isEqual:(id)a3;
- (NSString)identifier;
- (VUIMediaEntityFetchRequest)init;
- (VUIMediaEntityFetchRequest)initWithMediaEntityType:(id)a3;
- (VUIMediaEntityFetchRequest)initWithMediaEntityTypes:(id)a3;
- (_NSRange)range;
- (id)_manualSortDescriptorsWithMediaEntityKind:(id)a3 propertiesRequiredForSort:(id *)a4;
- (id)_sortIndexPropertyKeyWithMediaEntityKind:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_addPredicate:(id)a3;
- (void)add4KResolutionPredicate;
- (void)addAdamIdPredicate:(id)a3;
- (void)addAdamIdsPredicate:(id)a3;
- (void)addDownloadStatePredicateForStates:(unint64_t)a3;
- (void)addGroupingSortIndexesOption;
- (void)addHDRColorCapabilityOr4KResolutionPredicate;
- (void)addHDRColorCapabilityPredicate;
- (void)addHasItemsOption;
- (void)addIsLocalOrHasExpiredDownloadPredicate;
- (void)addIsLocalPredicate;
- (void)addRecentlyAddedSortDescriptorWithLimit:(unint64_t)a3;
- (void)addSortIndexesOption;
- (void)setGroupingKeyPath:(id)a3;
- (void)setGroupingSortComparator:(id)a3;
- (void)setOptions:(id)a3;
- (void)setPredicate:(id)a3;
- (void)setProperties:(id)a3;
- (void)setSortDescriptors:(id)a3;
@end

@implementation VUIMediaEntityFetchRequest

+ (VUIMediaEntityFetchRequest)mediaEntityFetchRequestWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F5E8A360])
  {
    v5 = v4;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The identifier parameter must conform to VUIMediaEntityIdentifierInternal"];
    v5 = 0;
  }

  v6 = [VUIMediaEntityFetchRequest alloc];
  v7 = [v5 mediaEntityType];
  v8 = [(VUIMediaEntityFetchRequest *)v6 initWithMediaEntityType:v7];

  v9 = [a1 _identifierPredicateWithIdentifier:v4];
  [(VUIMediaEntityFetchRequest *)v8 setPredicate:v9];
  v10 = VUIMediaEntityFetchRequestAllPropertiesSet();
  [(VUIMediaEntityFetchRequest *)v8 setProperties:v10];

  return v8;
}

+ (id)homeVideosFetchRequest
{
  v3 = +[VUIMediaEntityType homeVideo];
  v4 = [a1 _minimalPropertiesFetchRequestWithType:v3];

  return v4;
}

- (void)addSortIndexesOption
{
  v3 = [(VUIMediaEntityFetchRequest *)self options];
  v4 = [v3 mutableCopy];

  [v4 setObject:MEMORY[0x1E695E118] forKey:@"IncludeSortIndexes"];
  [(VUIMediaEntityFetchRequest *)self setOptions:v4];
}

- (void)addGroupingSortIndexesOption
{
  v3 = [(VUIMediaEntityFetchRequest *)self options];
  v4 = [v3 mutableCopy];

  [v4 setObject:MEMORY[0x1E695E118] forKey:@"IncludeGroupingSortIndexes"];
  [(VUIMediaEntityFetchRequest *)self setOptions:v4];
}

- (void)addHasItemsOption
{
  v3 = [(VUIMediaEntityFetchRequest *)self options];
  v5 = [v3 mutableCopy];

  v4 = v5;
  if (!v5)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v6 = v4;
  [v4 setObject:MEMORY[0x1E695E118] forKey:@"CheckHasItems"];
  [(VUIMediaEntityFetchRequest *)self setOptions:v6];
}

- (void)addRecentlyAddedSortDescriptorWithLimit:(unint64_t)a3
{
  v5 = [(VUIMediaEntityFetchRequest *)self mediaEntityTypes];
  v6 = [v5 allObjects];
  v7 = [v6 firstObject];
  v8 = [v7 subtype];

  if (v8 == 1)
  {
    v9 = [objc_opt_class() _addedToDateSortDescriptor];
    goto LABEL_5;
  }

  if (!v8)
  {
    v9 = [objc_opt_class() _addedDateSortDescriptor];
LABEL_5:
    v12 = v9;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v12, 0}];
  v11 = [(VUIMediaEntityFetchRequest *)self sortDescriptors];
  if (v11)
  {
    [v10 addObjectsFromArray:v11];
  }

  [(VUIMediaEntityFetchRequest *)self setSortDescriptors:v10];
  [(VUIMediaEntityFetchRequest *)self setRange:0, a3];
}

- (void)addHDRColorCapabilityPredicate
{
  v3 = [objc_opt_class() _anyHDRColorCapabilityPredicate];
  [(VUIMediaEntityFetchRequest *)self _addPredicate:v3];
}

- (void)add4KResolutionPredicate
{
  v3 = [objc_opt_class() _any4KResolutionPredicate];
  [(VUIMediaEntityFetchRequest *)self _addPredicate:v3];
}

- (void)addHDRColorCapabilityOr4KResolutionPredicate
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [objc_opt_class() _anyHDRColorCapabilityPredicate];
  [v6 addObject:v3];
  v4 = [objc_opt_class() _any4KResolutionPredicate];
  [v6 addObject:v4];
  v5 = [objc_opt_class() _predicateWithSubpredicates:v6 compoundPredicateType:2];
  [(VUIMediaEntityFetchRequest *)self _addPredicate:v5];
}

- (void)addIsLocalPredicate
{
  v3 = [objc_opt_class() _isLocalPredicate];
  [(VUIMediaEntityFetchRequest *)self _addPredicate:v3];
}

- (void)addIsLocalOrHasExpiredDownloadPredicate
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() _isLocalPredicate];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NIL AND %K == NO AND %K == NO", @"downloadExpirationDate", @"markedAsDeleted", @"isLocal"];
  v5 = objc_opt_class();
  v8[0] = v3;
  v8[1] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v7 = [v5 _predicateWithSubpredicates:v6 compoundPredicateType:2];

  [(VUIMediaEntityFetchRequest *)self _addPredicate:v7];
}

- (void)addDownloadStatePredicateForStates:(unint64_t)a3
{
  v48[2] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = v5;
  if (a3)
  {
    v36 = v5;
    v7 = MEMORY[0x1E69D4BF0];
    if (!sDownloadManager)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69D48D8]);
      v9 = *MEMORY[0x1E69D4B00];
      v48[0] = *MEMORY[0x1E69D4AE0];
      v48[1] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
      [v8 setDownloadKinds:v10];

      [v8 setShouldFilterExternalOriginatedDownloads:0];
      v47 = *v7;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
      [v8 setPrefetchedDownloadProperties:v11];

      v12 = [objc_alloc(MEMORY[0x1E69D48D0]) initWithManagerOptions:v8];
      v13 = sDownloadManager;
      sDownloadManager = v12;
    }

    v35 = a3;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v15 = [sDownloadManager downloads];
    v16 = [v15 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v42;
      v19 = *v7;
      do
      {
        v20 = 0;
        do
        {
          if (*v42 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = [*(*(&v41 + 1) + 8 * v20) valueForProperty:{v19, v35}];
          if (v21)
          {
            [v14 addObject:v21];
          }

          ++v20;
        }

        while (v17 != v20);
        v17 = [v15 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v17);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v22 = +[VUIDownloadManager sharedInstance];
    v23 = [v22 downloads];

    v24 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      v27 = *MEMORY[0x1E69D5DA8];
      do
      {
        v28 = 0;
        do
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v29 = [*(*(&v37 + 1) + 8 * v28) mediaItem];
          v30 = [v29 mediaItemMetadataForProperty:v27];

          if (v30)
          {
            v31 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v30, "longLongValue")}];
            [v14 addObject:v31];
          }

          ++v28;
        }

        while (v25 != v28);
        v25 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v25);
    }

    v32 = [objc_opt_class() _isInPredicateWithAdamId:v14];
    v6 = v36;
    [v36 addObject:v32];

    LOBYTE(a3) = v35;
  }

  if ((a3 & 2) != 0)
  {
    v33 = [objc_opt_class() _isLocalPredicate];
    [v6 addObject:v33];
  }

  v34 = [objc_opt_class() _predicateWithSubpredicates:v6 compoundPredicateType:2];
  [(VUIMediaEntityFetchRequest *)self _addPredicate:v34];
}

- (void)addAdamIdPredicate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _isEqualPredicateWithAdamId:v4];

  [(VUIMediaEntityFetchRequest *)self _addPredicate:v5];
}

- (void)addAdamIdsPredicate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _isInPredicateWithAdamId:v4];

  [(VUIMediaEntityFetchRequest *)self _addPredicate:v5];
}

+ (id)_minimalPropertiesFetchRequestWithType:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[VUIMediaEntityFetchRequest alloc] initWithMediaEntityType:v4];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [a1 _includeSortIndexesOptions];
  [(VUIMediaEntityFetchRequest *)v5 setOptions:v7];

  v8 = [a1 _predicateWithSubpredicates:v6 compoundPredicateType:1];
  [(VUIMediaEntityFetchRequest *)v5 setPredicate:v8];
  v9 = [a1 _titleSortDescriptor];
  v13[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [(VUIMediaEntityFetchRequest *)v5 setSortDescriptors:v10];

  v11 = VUIMediaEntityFetchRequestMinimalPropertiesSet();
  [(VUIMediaEntityFetchRequest *)v5 setProperties:v11];

  return v5;
}

+ (id)_minimalMoviesPropertiesFetchRequest
{
  v3 = +[VUIMediaEntityType movie];
  v4 = [a1 _minimalPropertiesFetchRequestWithType:v3];

  v5 = VUIMediaEntityFetchRequestMinimalMoviesPropertiesSet();
  [v4 setProperties:v5];

  return v4;
}

+ (id)_minimalMovieRentalsPropertiesFetchRequest
{
  v3 = +[VUIMediaEntityType movieRental];
  v4 = [a1 _minimalPropertiesFetchRequestWithType:v3];

  v5 = VUIMediaEntityFetchRequestMinimalMovieRentalsPropertiesSet();
  [v4 setProperties:v5];

  return v4;
}

+ (id)_minimalShowsPropertiesFetchRequest
{
  v3 = +[VUIMediaEntityType show];
  v4 = [a1 _minimalPropertiesFetchRequestWithType:v3];

  v5 = VUIMediaEntityFetchRequestMinimalShowPropertiesSet();
  [v4 setProperties:v5];

  return v4;
}

+ (id)_seasonsFetchRequestWithShowIdentifier:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [VUIMediaEntityFetchRequest alloc];
  v6 = +[VUIMediaEntityType season];
  v7 = [(VUIMediaEntityFetchRequest *)v5 initWithMediaEntityType:v6];

  if (v4)
  {
    v8 = [a1 _showIdentifierPredicateWithIdentifier:v4];
    [(VUIMediaEntityFetchRequest *)v7 setPredicate:v8];
  }

  v9 = [a1 _includeSortIndexesOptions];
  [(VUIMediaEntityFetchRequest *)v7 setOptions:v9];

  v10 = [a1 _titleSortDescriptor];
  v11 = [a1 _seasonNumberSortDescriptor];
  v15[0] = v11;
  v15[1] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [(VUIMediaEntityFetchRequest *)v7 setSortDescriptors:v12];
  v13 = VUIMediaEntityFetchRequestAllPropertiesSet();
  [(VUIMediaEntityFetchRequest *)v7 setProperties:v13];

  return v7;
}

+ (id)_seasonsFetchRequestWithSeasonIdentifier:(id)a3
{
  v4 = a3;
  v5 = [VUIMediaEntityFetchRequest alloc];
  v6 = +[VUIMediaEntityType season];
  v7 = [(VUIMediaEntityFetchRequest *)v5 initWithMediaEntityType:v6];

  if (v4)
  {
    v8 = [a1 _identifierPredicateWithIdentifier:v4];
    [(VUIMediaEntityFetchRequest *)v7 setPredicate:v8];
  }

  v9 = VUIMediaEntityFetchRequestAllPropertiesSet();
  [(VUIMediaEntityFetchRequest *)v7 setProperties:v9];

  return v7;
}

+ (id)_episodesFetchRequestWithSeasonIdentifier:(id)a3 showIdentifier:(id)a4
{
  v29[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [VUIMediaEntityFetchRequest alloc];
  v9 = +[VUIMediaEntityType episode];
  v10 = [(VUIMediaEntityFetchRequest *)v8 initWithMediaEntityType:v9];

  v11 = [a1 _titleSortDescriptor];
  v12 = VUIMediaEntityFetchRequestMinimalEpisodePropertiesSet();
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v6)
  {
    v14 = [a1 _seasonIdentifierPredicateWithIdentifier:v6];
    [v13 addObject:v14];
    v15 = [a1 _episodeNumberSortDescriptor];
    v29[0] = v15;
    v29[1] = v11;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];

LABEL_3:
    v17 = 0;
    v18 = 0;
    goto LABEL_6;
  }

  if (!v7)
  {
    v27 = v11;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    goto LABEL_3;
  }

  v25 = [a1 _showIdentifierPredicateWithIdentifier:v7];
  [v13 addObject:v25];
  v24 = [a1 _episodeNumberSortDescriptor];
  v23 = [a1 _fractionalEpisodeNumberSortDescriptor];
  v28[0] = v23;
  v28[1] = v24;
  v28[2] = v11;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
  v17 = @"seasonIdentifier";
  v19 = [MEMORY[0x1E695DFD8] setWithObjects:{@"seasonTitle", @"seasonIdentifier", 0}];
  v26 = v7;
  v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v20 unionSet:v12];
  [v20 unionSet:v19];

  v18 = &__block_literal_global_37;
  v12 = v20;
  v7 = v26;
LABEL_6:
  [(VUIMediaEntityFetchRequest *)v10 setSortDescriptors:v16];
  [(VUIMediaEntityFetchRequest *)v10 setGroupingKeyPath:v17];
  [(VUIMediaEntityFetchRequest *)v10 setGroupingSortComparator:v18];
  [(VUIMediaEntityFetchRequest *)v10 setProperties:v12];
  v21 = [a1 _predicateWithSubpredicates:v13 compoundPredicateType:1];
  [(VUIMediaEntityFetchRequest *)v10 setPredicate:v21];

  return v10;
}

uint64_t __96__VUIMediaEntityFetchRequest_Factory___episodesFetchRequestWithSeasonIdentifier_showIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 mediaEntities];
  v6 = [v5 firstObject];

  v7 = [v4 mediaEntities];

  v8 = [v7 firstObject];

  v9 = [v6 seasonNumber];
  v10 = [v8 seasonNumber];
  v11 = v10;
  if (v9 && v10)
  {
    v12 = [v9 compare:v10];
    if (!v12)
    {
      v13 = [v6 seasonTitle];
      v14 = [v8 seasonTitle];
      v15 = [MEMORY[0x1E69DF788] titleSortComparatorWithAscending:1];
      v12 = (v15)[2](v15, v13, v14);
    }
  }

  else if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

+ (id)_anyHDRColorCapabilityPredicate
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE18] vui_keyPathBitTestPredicateWithKeyPath:@"colorCapability" value:&unk_1F5E5CED0];
  v3 = [MEMORY[0x1E696AE18] vui_keyPathBitTestPredicateWithKeyPath:@"HLSColorCapability" value:&unk_1F5E5CED0];
  v4 = objc_opt_class();
  v8[0] = v2;
  v8[1] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v4 _predicateWithSubpredicates:v5 compoundPredicateType:2];

  return v6;
}

+ (id)_any4KResolutionPredicate
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [objc_opt_class() _resolutionPredicateWithResolution:&unk_1F5E5CED0];
  [v2 addObject:v3];
  v4 = [objc_opt_class() _HLSResolutionPredicateWithResolution:&unk_1F5E5CED0];
  [v2 addObject:v4];
  v5 = [objc_opt_class() _predicateWithSubpredicates:v2 compoundPredicateType:2];

  return v5;
}

- (void)_addPredicate:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v8 = objc_alloc_init(v4);
  [v8 addObject:v5];

  v6 = [(VUIMediaEntityFetchRequest *)self predicate];
  if (v6)
  {
    [v8 addObject:v6];
  }

  v7 = [objc_opt_class() _predicateWithSubpredicates:v8 compoundPredicateType:1];
  [(VUIMediaEntityFetchRequest *)self setPredicate:v7];
}

+ (id)_includeSortIndexesOptions
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"IncludeSortIndexes";
  v5[0] = MEMORY[0x1E695E118];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (VUIMediaEntityFetchRequest)initWithMediaEntityType:(id)a3
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v5 = [(VUIMediaEntityFetchRequest *)self initWithMediaEntityTypes:v4];

  return v5;
}

- (VUIMediaEntityFetchRequest)initWithMediaEntityTypes:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = VUIMediaEntityFetchRequest;
  v5 = [(VUIMediaEntityFetchRequest *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
    mediaEntityTypes = v5->_mediaEntityTypes;
    v5->_mediaEntityTypes = v6;

    v8 = VUIMediaEntityFetchRequestRequiredProperties();
    v9 = [v8 copy];
    properties = v5->_properties;
    v5->_properties = v9;
  }

  return v5;
}

- (VUIMediaEntityFetchRequest)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (!identifier)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];
    v6 = self->_identifier;
    self->_identifier = v5;

    identifier = self->_identifier;
  }

  return identifier;
}

- (void)setProperties:(id)a3
{
  v9 = a3;
  v4 = v9;
  if ((VUIMediaEntityFetchRequestIsAllPropertiesSet(v9) & 1) == 0)
  {
    v5 = objc_alloc(MEMORY[0x1E695DFA8]);
    v6 = VUIMediaEntityFetchRequestRequiredProperties();
    v4 = [v5 initWithSet:v6];

    if (v9)
    {
      [v4 unionSet:v9];
    }
  }

  v7 = [v4 copy];
  properties = self->_properties;
  self->_properties = v7;

  [(VUIMediaEntityFetchRequest *)self _didUpdateRequestProperties];
}

- (void)setPredicate:(id)a3
{
  v4 = [a3 copy];
  predicate = self->_predicate;
  self->_predicate = v4;

  [(VUIMediaEntityFetchRequest *)self _didUpdateRequestProperties];
}

- (void)setSortDescriptors:(id)a3
{
  v4 = [a3 copy];
  sortDescriptors = self->_sortDescriptors;
  self->_sortDescriptors = v4;

  [(VUIMediaEntityFetchRequest *)self _didUpdateRequestProperties];
}

- (void)setGroupingKeyPath:(id)a3
{
  v4 = [a3 copy];
  groupingKeyPath = self->_groupingKeyPath;
  self->_groupingKeyPath = v4;

  [(VUIMediaEntityFetchRequest *)self _didUpdateRequestProperties];
}

- (void)setGroupingSortComparator:(id)a3
{
  v4 = [a3 copy];
  groupingSortComparator = self->_groupingSortComparator;
  self->_groupingSortComparator = v4;

  [(VUIMediaEntityFetchRequest *)self _didUpdateRequestProperties];
}

- (void)setOptions:(id)a3
{
  v4 = [a3 copy];
  options = self->_options;
  self->_options = v4;

  [(VUIMediaEntityFetchRequest *)self _didUpdateRequestProperties];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[VUIMediaEntityFetchRequest alloc] initWithMediaEntityTypes:self->_mediaEntityTypes];
  v5 = [(VUIMediaEntityFetchRequest *)self identifier];
  v6 = [v5 copy];
  identifier = v4->_identifier;
  v4->_identifier = v6;

  v8 = [(NSPredicate *)self->_predicate copy];
  predicate = v4->_predicate;
  v4->_predicate = v8;

  v10 = [(NSArray *)self->_sortDescriptors copy];
  sortDescriptors = v4->_sortDescriptors;
  v4->_sortDescriptors = v10;

  v12 = [(NSSet *)self->_properties copy];
  properties = v4->_properties;
  v4->_properties = v12;

  v14 = [(NSDictionary *)self->_options copy];
  options = v4->_options;
  v4->_options = v14;

  v4->_range = self->_range;
  v16 = [(NSString *)self->_groupingKeyPath copy];
  groupingKeyPath = v4->_groupingKeyPath;
  v4->_groupingKeyPath = v16;

  v18 = [self->_groupingSortComparator copy];
  groupingSortComparator = v4->_groupingSortComparator;
  v4->_groupingSortComparator = v18;

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40.receiver = self;
  v40.super_class = VUIMediaEntityFetchRequest;
  v4 = [(VUIMediaEntityFetchRequest *)&v40 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(VUIMediaEntityFetchRequest *)self identifier];
  v7 = [v5 stringWithFormat:@"%@=%@", @"identifier", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(VUIMediaEntityFetchRequest *)self mediaEntityTypes];
  v10 = [v8 stringWithFormat:@"%@=%@", @"mediaEntityTypes", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(VUIMediaEntityFetchRequest *)self predicate];
  v13 = [v11 stringWithFormat:@"%@=%@", @"predicate", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [(VUIMediaEntityFetchRequest *)self sortDescriptors];
  v16 = [v14 stringWithFormat:@"%@=%@", @"sortDescriptors", v15];
  [v3 addObject:v16];

  v17 = MEMORY[0x1E696AEC0];
  v18 = [(VUIMediaEntityFetchRequest *)self properties];
  v19 = [v17 stringWithFormat:@"%@=%@", @"properties", v18];
  [v3 addObject:v19];

  v20 = MEMORY[0x1E696AEC0];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[VUIMediaEntityFetchRequest range](self, "range")}];
  v22 = MEMORY[0x1E696AD98];
  [(VUIMediaEntityFetchRequest *)self range];
  v24 = [v22 numberWithUnsignedInteger:v23];
  v25 = [v20 stringWithFormat:@"%@, %@", v21, v24];
  v26 = [v20 stringWithFormat:@"%@=%@", @"range", v25];
  [v3 addObject:v26];

  v27 = MEMORY[0x1E696AEC0];
  v28 = [(VUIMediaEntityFetchRequest *)self groupingKeyPath];
  v29 = [v27 stringWithFormat:@"%@=%@", @"groupingKeyPath", v28];
  [v3 addObject:v29];

  v30 = MEMORY[0x1E696AEC0];
  v31 = [(VUIMediaEntityFetchRequest *)self groupingSortComparator];
  v32 = [v30 stringWithFormat:@"%@=%@", @"groupingSortComparator", v31];
  [v3 addObject:v32];

  v33 = MEMORY[0x1E696AEC0];
  v34 = [(VUIMediaEntityFetchRequest *)self options];
  v35 = [v33 stringWithFormat:@"%@=%@", @"options", v34];
  [v3 addObject:v35];

  v36 = MEMORY[0x1E696AEC0];
  v37 = [v3 componentsJoinedByString:{@", "}];
  v38 = [v36 stringWithFormat:@"<%@>", v37];

  return v38;
}

- (unint64_t)hash
{
  v2 = [(VUIMediaEntityFetchRequest *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(VUIMediaEntityFetchRequest *)self identifier];
    v8 = [(VUIMediaEntityFetchRequest *)v6 identifier];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = 0;
      if (v9 && v10)
      {
        v12 = [v9 isEqual:v10];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_isItemsFetch
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(VUIMediaEntityFetchRequest *)self mediaEntityTypes];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v7 + 1) + 8 * i) subtype])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)_isShowsFetch
{
  v2 = [(VUIMediaEntityFetchRequest *)self mediaEntityTypes];
  v3 = +[VUIMediaEntityType show];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (BOOL)_isSeasonsFetch
{
  v2 = [(VUIMediaEntityFetchRequest *)self mediaEntityTypes];
  v3 = +[VUIMediaEntityType season];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_sortIndexPropertyKeyWithMediaEntityKind:(id)a3
{
  v4 = a3;
  if ([(VUIMediaEntityFetchRequest *)self _shouldGenerateSortIndexes])
  {
    v5 = [(VUIMediaEntityFetchRequest *)self sortDescriptors];
    v6 = [v5 firstObject];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 key];
      v9 = [v4 propertyDescriptorForName:v8];
      if ([v9 propertyType] == 4)
      {
        v10 = [v9 sortAsName];
        if (!v10)
        {
          v10 = [v9 name];
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_shouldGenerateSortIndexes
{
  v2 = [(VUIMediaEntityFetchRequest *)self options];
  v3 = [v2 vui_BOOLForKey:@"IncludeSortIndexes" defaultValue:0];

  return v3;
}

- (BOOL)_shouldGenerateGroupingSortIndexes
{
  v3 = [(VUIMediaEntityFetchRequest *)self groupingKeyPath];
  if (v3)
  {
    v4 = [(VUIMediaEntityFetchRequest *)self options];
    v5 = [v4 vui_BOOLForKey:@"IncludeGroupingSortIndexes" defaultValue:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_manualSortDescriptorsWithMediaEntityKind:(id)a3 propertiesRequiredForSort:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [(VUIMediaEntityFetchRequest *)self sortDescriptors];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    v20 = *MEMORY[0x1E695D940];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v11 key];
        v13 = [v22 sortingPropertyDescriptorForName:v12];
        if (!v13)
        {
          [MEMORY[0x1E695DF30] raise:v20 format:{@"Unknown key for sort descriptor! %@", v12}];
        }

        v14 = [v13 name];
        v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:v14 ascending:{objc_msgSend(v11, "ascending")}];
        [v6 addObject:v14];
        [v5 addObject:v15];
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  if (a4)
  {
    v16 = v6;
    *a4 = v6;
  }

  v17 = [objc_opt_class() _finalizedSortDescriptorsFromSortDescriptors:v5 mediaEntityKind:v22];

  return v17;
}

+ (id)_finalizedSortDescriptorsFromSortDescriptors:(id)a3 mediaEntityKind:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v8 = 0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [a1 _finalizedSortDescriptorFromSortDescriptor:*(*(&v16 + 1) + 8 * i) mediaEntityKind:{v7, v16}];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

+ (id)_finalizedSortDescriptorFromSortDescriptor:(id)a3 mediaEntityKind:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 key];
  if (v7)
  {
    v8 = [v6 propertyDescriptorForName:v7];
    if ([v8 propertyType] == 4)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DF7A0]) initWithKey:v7 ascending:{objc_msgSend(v5, "ascending")}];

      if (v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v9 = v5;
LABEL_7:

  return v9;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end