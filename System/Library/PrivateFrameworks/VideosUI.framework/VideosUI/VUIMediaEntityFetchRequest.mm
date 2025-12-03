@interface VUIMediaEntityFetchRequest
+ (VUIMediaEntityFetchRequest)mediaEntityFetchRequestWithIdentifier:(id)identifier;
+ (id)_any4KResolutionPredicate;
+ (id)_anyHDRColorCapabilityPredicate;
+ (id)_episodesFetchRequestWithSeasonIdentifier:(id)identifier showIdentifier:(id)showIdentifier;
+ (id)_finalizedSortDescriptorFromSortDescriptor:(id)descriptor mediaEntityKind:(id)kind;
+ (id)_finalizedSortDescriptorsFromSortDescriptors:(id)descriptors mediaEntityKind:(id)kind;
+ (id)_includeSortIndexesOptions;
+ (id)_minimalMovieRentalsPropertiesFetchRequest;
+ (id)_minimalMoviesPropertiesFetchRequest;
+ (id)_minimalPropertiesFetchRequestWithType:(id)type;
+ (id)_minimalShowsPropertiesFetchRequest;
+ (id)_seasonsFetchRequestWithSeasonIdentifier:(id)identifier;
+ (id)_seasonsFetchRequestWithShowIdentifier:(id)identifier;
+ (id)homeVideosFetchRequest;
- (BOOL)_isItemsFetch;
- (BOOL)_isSeasonsFetch;
- (BOOL)_isShowsFetch;
- (BOOL)_shouldGenerateGroupingSortIndexes;
- (BOOL)_shouldGenerateSortIndexes;
- (BOOL)isEqual:(id)equal;
- (NSString)identifier;
- (VUIMediaEntityFetchRequest)init;
- (VUIMediaEntityFetchRequest)initWithMediaEntityType:(id)type;
- (VUIMediaEntityFetchRequest)initWithMediaEntityTypes:(id)types;
- (_NSRange)range;
- (id)_manualSortDescriptorsWithMediaEntityKind:(id)kind propertiesRequiredForSort:(id *)sort;
- (id)_sortIndexPropertyKeyWithMediaEntityKind:(id)kind;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_addPredicate:(id)predicate;
- (void)add4KResolutionPredicate;
- (void)addAdamIdPredicate:(id)predicate;
- (void)addAdamIdsPredicate:(id)predicate;
- (void)addDownloadStatePredicateForStates:(unint64_t)states;
- (void)addGroupingSortIndexesOption;
- (void)addHDRColorCapabilityOr4KResolutionPredicate;
- (void)addHDRColorCapabilityPredicate;
- (void)addHasItemsOption;
- (void)addIsLocalOrHasExpiredDownloadPredicate;
- (void)addIsLocalPredicate;
- (void)addRecentlyAddedSortDescriptorWithLimit:(unint64_t)limit;
- (void)addSortIndexesOption;
- (void)setGroupingKeyPath:(id)path;
- (void)setGroupingSortComparator:(id)comparator;
- (void)setOptions:(id)options;
- (void)setPredicate:(id)predicate;
- (void)setProperties:(id)properties;
- (void)setSortDescriptors:(id)descriptors;
@end

@implementation VUIMediaEntityFetchRequest

+ (VUIMediaEntityFetchRequest)mediaEntityFetchRequestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy conformsToProtocol:&unk_1F5E8A360])
  {
    v5 = identifierCopy;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The identifier parameter must conform to VUIMediaEntityIdentifierInternal"];
    v5 = 0;
  }

  v6 = [VUIMediaEntityFetchRequest alloc];
  mediaEntityType = [v5 mediaEntityType];
  v8 = [(VUIMediaEntityFetchRequest *)v6 initWithMediaEntityType:mediaEntityType];

  v9 = [self _identifierPredicateWithIdentifier:identifierCopy];
  [(VUIMediaEntityFetchRequest *)v8 setPredicate:v9];
  v10 = VUIMediaEntityFetchRequestAllPropertiesSet();
  [(VUIMediaEntityFetchRequest *)v8 setProperties:v10];

  return v8;
}

+ (id)homeVideosFetchRequest
{
  v3 = +[VUIMediaEntityType homeVideo];
  v4 = [self _minimalPropertiesFetchRequestWithType:v3];

  return v4;
}

- (void)addSortIndexesOption
{
  options = [(VUIMediaEntityFetchRequest *)self options];
  v4 = [options mutableCopy];

  [v4 setObject:MEMORY[0x1E695E118] forKey:@"IncludeSortIndexes"];
  [(VUIMediaEntityFetchRequest *)self setOptions:v4];
}

- (void)addGroupingSortIndexesOption
{
  options = [(VUIMediaEntityFetchRequest *)self options];
  v4 = [options mutableCopy];

  [v4 setObject:MEMORY[0x1E695E118] forKey:@"IncludeGroupingSortIndexes"];
  [(VUIMediaEntityFetchRequest *)self setOptions:v4];
}

- (void)addHasItemsOption
{
  options = [(VUIMediaEntityFetchRequest *)self options];
  v5 = [options mutableCopy];

  v4 = v5;
  if (!v5)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v6 = v4;
  [v4 setObject:MEMORY[0x1E695E118] forKey:@"CheckHasItems"];
  [(VUIMediaEntityFetchRequest *)self setOptions:v6];
}

- (void)addRecentlyAddedSortDescriptorWithLimit:(unint64_t)limit
{
  mediaEntityTypes = [(VUIMediaEntityFetchRequest *)self mediaEntityTypes];
  allObjects = [mediaEntityTypes allObjects];
  firstObject = [allObjects firstObject];
  subtype = [firstObject subtype];

  if (subtype == 1)
  {
    _addedToDateSortDescriptor = [objc_opt_class() _addedToDateSortDescriptor];
    goto LABEL_5;
  }

  if (!subtype)
  {
    _addedToDateSortDescriptor = [objc_opt_class() _addedDateSortDescriptor];
LABEL_5:
    v12 = _addedToDateSortDescriptor;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v12, 0}];
  sortDescriptors = [(VUIMediaEntityFetchRequest *)self sortDescriptors];
  if (sortDescriptors)
  {
    [v10 addObjectsFromArray:sortDescriptors];
  }

  [(VUIMediaEntityFetchRequest *)self setSortDescriptors:v10];
  [(VUIMediaEntityFetchRequest *)self setRange:0, limit];
}

- (void)addHDRColorCapabilityPredicate
{
  _anyHDRColorCapabilityPredicate = [objc_opt_class() _anyHDRColorCapabilityPredicate];
  [(VUIMediaEntityFetchRequest *)self _addPredicate:_anyHDRColorCapabilityPredicate];
}

- (void)add4KResolutionPredicate
{
  _any4KResolutionPredicate = [objc_opt_class() _any4KResolutionPredicate];
  [(VUIMediaEntityFetchRequest *)self _addPredicate:_any4KResolutionPredicate];
}

- (void)addHDRColorCapabilityOr4KResolutionPredicate
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _anyHDRColorCapabilityPredicate = [objc_opt_class() _anyHDRColorCapabilityPredicate];
  [v6 addObject:_anyHDRColorCapabilityPredicate];
  _any4KResolutionPredicate = [objc_opt_class() _any4KResolutionPredicate];
  [v6 addObject:_any4KResolutionPredicate];
  v5 = [objc_opt_class() _predicateWithSubpredicates:v6 compoundPredicateType:2];
  [(VUIMediaEntityFetchRequest *)self _addPredicate:v5];
}

- (void)addIsLocalPredicate
{
  _isLocalPredicate = [objc_opt_class() _isLocalPredicate];
  [(VUIMediaEntityFetchRequest *)self _addPredicate:_isLocalPredicate];
}

- (void)addIsLocalOrHasExpiredDownloadPredicate
{
  v8[2] = *MEMORY[0x1E69E9840];
  _isLocalPredicate = [objc_opt_class() _isLocalPredicate];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NIL AND %K == NO AND %K == NO", @"downloadExpirationDate", @"markedAsDeleted", @"isLocal"];
  v5 = objc_opt_class();
  v8[0] = _isLocalPredicate;
  v8[1] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v7 = [v5 _predicateWithSubpredicates:v6 compoundPredicateType:2];

  [(VUIMediaEntityFetchRequest *)self _addPredicate:v7];
}

- (void)addDownloadStatePredicateForStates:(unint64_t)states
{
  v48[2] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = v5;
  if (states)
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

    statesCopy = states;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    downloads = [sDownloadManager downloads];
    v16 = [downloads countByEnumeratingWithState:&v41 objects:v46 count:16];
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
            objc_enumerationMutation(downloads);
          }

          v21 = [*(*(&v41 + 1) + 8 * v20) valueForProperty:{v19, statesCopy}];
          if (v21)
          {
            [v14 addObject:v21];
          }

          ++v20;
        }

        while (v17 != v20);
        v17 = [downloads countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v17);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v22 = +[VUIDownloadManager sharedInstance];
    downloads2 = [v22 downloads];

    v24 = [downloads2 countByEnumeratingWithState:&v37 objects:v45 count:16];
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
            objc_enumerationMutation(downloads2);
          }

          mediaItem = [*(*(&v37 + 1) + 8 * v28) mediaItem];
          v30 = [mediaItem mediaItemMetadataForProperty:v27];

          if (v30)
          {
            v31 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v30, "longLongValue")}];
            [v14 addObject:v31];
          }

          ++v28;
        }

        while (v25 != v28);
        v25 = [downloads2 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v25);
    }

    v32 = [objc_opt_class() _isInPredicateWithAdamId:v14];
    v6 = v36;
    [v36 addObject:v32];

    LOBYTE(states) = statesCopy;
  }

  if ((states & 2) != 0)
  {
    _isLocalPredicate = [objc_opt_class() _isLocalPredicate];
    [v6 addObject:_isLocalPredicate];
  }

  v34 = [objc_opt_class() _predicateWithSubpredicates:v6 compoundPredicateType:2];
  [(VUIMediaEntityFetchRequest *)self _addPredicate:v34];
}

- (void)addAdamIdPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = [objc_opt_class() _isEqualPredicateWithAdamId:predicateCopy];

  [(VUIMediaEntityFetchRequest *)self _addPredicate:v5];
}

- (void)addAdamIdsPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = [objc_opt_class() _isInPredicateWithAdamId:predicateCopy];

  [(VUIMediaEntityFetchRequest *)self _addPredicate:v5];
}

+ (id)_minimalPropertiesFetchRequestWithType:(id)type
{
  v13[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = [[VUIMediaEntityFetchRequest alloc] initWithMediaEntityType:typeCopy];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  _includeSortIndexesOptions = [self _includeSortIndexesOptions];
  [(VUIMediaEntityFetchRequest *)v5 setOptions:_includeSortIndexesOptions];

  v8 = [self _predicateWithSubpredicates:v6 compoundPredicateType:1];
  [(VUIMediaEntityFetchRequest *)v5 setPredicate:v8];
  _titleSortDescriptor = [self _titleSortDescriptor];
  v13[0] = _titleSortDescriptor;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [(VUIMediaEntityFetchRequest *)v5 setSortDescriptors:v10];

  v11 = VUIMediaEntityFetchRequestMinimalPropertiesSet();
  [(VUIMediaEntityFetchRequest *)v5 setProperties:v11];

  return v5;
}

+ (id)_minimalMoviesPropertiesFetchRequest
{
  v3 = +[VUIMediaEntityType movie];
  v4 = [self _minimalPropertiesFetchRequestWithType:v3];

  v5 = VUIMediaEntityFetchRequestMinimalMoviesPropertiesSet();
  [v4 setProperties:v5];

  return v4;
}

+ (id)_minimalMovieRentalsPropertiesFetchRequest
{
  v3 = +[VUIMediaEntityType movieRental];
  v4 = [self _minimalPropertiesFetchRequestWithType:v3];

  v5 = VUIMediaEntityFetchRequestMinimalMovieRentalsPropertiesSet();
  [v4 setProperties:v5];

  return v4;
}

+ (id)_minimalShowsPropertiesFetchRequest
{
  v3 = +[VUIMediaEntityType show];
  v4 = [self _minimalPropertiesFetchRequestWithType:v3];

  v5 = VUIMediaEntityFetchRequestMinimalShowPropertiesSet();
  [v4 setProperties:v5];

  return v4;
}

+ (id)_seasonsFetchRequestWithShowIdentifier:(id)identifier
{
  v15[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [VUIMediaEntityFetchRequest alloc];
  v6 = +[VUIMediaEntityType season];
  v7 = [(VUIMediaEntityFetchRequest *)v5 initWithMediaEntityType:v6];

  if (identifierCopy)
  {
    v8 = [self _showIdentifierPredicateWithIdentifier:identifierCopy];
    [(VUIMediaEntityFetchRequest *)v7 setPredicate:v8];
  }

  _includeSortIndexesOptions = [self _includeSortIndexesOptions];
  [(VUIMediaEntityFetchRequest *)v7 setOptions:_includeSortIndexesOptions];

  _titleSortDescriptor = [self _titleSortDescriptor];
  _seasonNumberSortDescriptor = [self _seasonNumberSortDescriptor];
  v15[0] = _seasonNumberSortDescriptor;
  v15[1] = _titleSortDescriptor;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [(VUIMediaEntityFetchRequest *)v7 setSortDescriptors:v12];
  v13 = VUIMediaEntityFetchRequestAllPropertiesSet();
  [(VUIMediaEntityFetchRequest *)v7 setProperties:v13];

  return v7;
}

+ (id)_seasonsFetchRequestWithSeasonIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [VUIMediaEntityFetchRequest alloc];
  v6 = +[VUIMediaEntityType season];
  v7 = [(VUIMediaEntityFetchRequest *)v5 initWithMediaEntityType:v6];

  if (identifierCopy)
  {
    v8 = [self _identifierPredicateWithIdentifier:identifierCopy];
    [(VUIMediaEntityFetchRequest *)v7 setPredicate:v8];
  }

  v9 = VUIMediaEntityFetchRequestAllPropertiesSet();
  [(VUIMediaEntityFetchRequest *)v7 setProperties:v9];

  return v7;
}

+ (id)_episodesFetchRequestWithSeasonIdentifier:(id)identifier showIdentifier:(id)showIdentifier
{
  v29[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  showIdentifierCopy = showIdentifier;
  v8 = [VUIMediaEntityFetchRequest alloc];
  v9 = +[VUIMediaEntityType episode];
  v10 = [(VUIMediaEntityFetchRequest *)v8 initWithMediaEntityType:v9];

  _titleSortDescriptor = [self _titleSortDescriptor];
  v12 = VUIMediaEntityFetchRequestMinimalEpisodePropertiesSet();
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (identifierCopy)
  {
    v14 = [self _seasonIdentifierPredicateWithIdentifier:identifierCopy];
    [v13 addObject:v14];
    _episodeNumberSortDescriptor = [self _episodeNumberSortDescriptor];
    v29[0] = _episodeNumberSortDescriptor;
    v29[1] = _titleSortDescriptor;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];

LABEL_3:
    v17 = 0;
    v18 = 0;
    goto LABEL_6;
  }

  if (!showIdentifierCopy)
  {
    v27 = _titleSortDescriptor;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    goto LABEL_3;
  }

  v25 = [self _showIdentifierPredicateWithIdentifier:showIdentifierCopy];
  [v13 addObject:v25];
  _episodeNumberSortDescriptor2 = [self _episodeNumberSortDescriptor];
  _fractionalEpisodeNumberSortDescriptor = [self _fractionalEpisodeNumberSortDescriptor];
  v28[0] = _fractionalEpisodeNumberSortDescriptor;
  v28[1] = _episodeNumberSortDescriptor2;
  v28[2] = _titleSortDescriptor;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
  v17 = @"seasonIdentifier";
  v19 = [MEMORY[0x1E695DFD8] setWithObjects:{@"seasonTitle", @"seasonIdentifier", 0}];
  v26 = showIdentifierCopy;
  v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v20 unionSet:v12];
  [v20 unionSet:v19];

  v18 = &__block_literal_global_37;
  v12 = v20;
  showIdentifierCopy = v26;
LABEL_6:
  [(VUIMediaEntityFetchRequest *)v10 setSortDescriptors:v16];
  [(VUIMediaEntityFetchRequest *)v10 setGroupingKeyPath:v17];
  [(VUIMediaEntityFetchRequest *)v10 setGroupingSortComparator:v18];
  [(VUIMediaEntityFetchRequest *)v10 setProperties:v12];
  v21 = [self _predicateWithSubpredicates:v13 compoundPredicateType:1];
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

- (void)_addPredicate:(id)predicate
{
  v4 = MEMORY[0x1E695DF70];
  predicateCopy = predicate;
  v8 = objc_alloc_init(v4);
  [v8 addObject:predicateCopy];

  predicate = [(VUIMediaEntityFetchRequest *)self predicate];
  if (predicate)
  {
    [v8 addObject:predicate];
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

- (VUIMediaEntityFetchRequest)initWithMediaEntityType:(id)type
{
  v4 = [MEMORY[0x1E695DFD8] setWithObject:type];
  v5 = [(VUIMediaEntityFetchRequest *)self initWithMediaEntityTypes:v4];

  return v5;
}

- (VUIMediaEntityFetchRequest)initWithMediaEntityTypes:(id)types
{
  typesCopy = types;
  v12.receiver = self;
  v12.super_class = VUIMediaEntityFetchRequest;
  v5 = [(VUIMediaEntityFetchRequest *)&v12 init];
  if (v5)
  {
    v6 = [typesCopy copy];
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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v6 = self->_identifier;
    self->_identifier = uUIDString;

    identifier = self->_identifier;
  }

  return identifier;
}

- (void)setProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = propertiesCopy;
  if ((VUIMediaEntityFetchRequestIsAllPropertiesSet(propertiesCopy) & 1) == 0)
  {
    v5 = objc_alloc(MEMORY[0x1E695DFA8]);
    v6 = VUIMediaEntityFetchRequestRequiredProperties();
    v4 = [v5 initWithSet:v6];

    if (propertiesCopy)
    {
      [v4 unionSet:propertiesCopy];
    }
  }

  v7 = [v4 copy];
  properties = self->_properties;
  self->_properties = v7;

  [(VUIMediaEntityFetchRequest *)self _didUpdateRequestProperties];
}

- (void)setPredicate:(id)predicate
{
  v4 = [predicate copy];
  predicate = self->_predicate;
  self->_predicate = v4;

  [(VUIMediaEntityFetchRequest *)self _didUpdateRequestProperties];
}

- (void)setSortDescriptors:(id)descriptors
{
  v4 = [descriptors copy];
  sortDescriptors = self->_sortDescriptors;
  self->_sortDescriptors = v4;

  [(VUIMediaEntityFetchRequest *)self _didUpdateRequestProperties];
}

- (void)setGroupingKeyPath:(id)path
{
  v4 = [path copy];
  groupingKeyPath = self->_groupingKeyPath;
  self->_groupingKeyPath = v4;

  [(VUIMediaEntityFetchRequest *)self _didUpdateRequestProperties];
}

- (void)setGroupingSortComparator:(id)comparator
{
  v4 = [comparator copy];
  groupingSortComparator = self->_groupingSortComparator;
  self->_groupingSortComparator = v4;

  [(VUIMediaEntityFetchRequest *)self _didUpdateRequestProperties];
}

- (void)setOptions:(id)options
{
  v4 = [options copy];
  options = self->_options;
  self->_options = v4;

  [(VUIMediaEntityFetchRequest *)self _didUpdateRequestProperties];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[VUIMediaEntityFetchRequest alloc] initWithMediaEntityTypes:self->_mediaEntityTypes];
  identifier = [(VUIMediaEntityFetchRequest *)self identifier];
  v6 = [identifier copy];
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
  identifier = [(VUIMediaEntityFetchRequest *)self identifier];
  v7 = [v5 stringWithFormat:@"%@=%@", @"identifier", identifier];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  mediaEntityTypes = [(VUIMediaEntityFetchRequest *)self mediaEntityTypes];
  v10 = [v8 stringWithFormat:@"%@=%@", @"mediaEntityTypes", mediaEntityTypes];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  predicate = [(VUIMediaEntityFetchRequest *)self predicate];
  v13 = [v11 stringWithFormat:@"%@=%@", @"predicate", predicate];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  sortDescriptors = [(VUIMediaEntityFetchRequest *)self sortDescriptors];
  v16 = [v14 stringWithFormat:@"%@=%@", @"sortDescriptors", sortDescriptors];
  [v3 addObject:v16];

  v17 = MEMORY[0x1E696AEC0];
  properties = [(VUIMediaEntityFetchRequest *)self properties];
  v19 = [v17 stringWithFormat:@"%@=%@", @"properties", properties];
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
  groupingKeyPath = [(VUIMediaEntityFetchRequest *)self groupingKeyPath];
  v29 = [v27 stringWithFormat:@"%@=%@", @"groupingKeyPath", groupingKeyPath];
  [v3 addObject:v29];

  v30 = MEMORY[0x1E696AEC0];
  groupingSortComparator = [(VUIMediaEntityFetchRequest *)self groupingSortComparator];
  v32 = [v30 stringWithFormat:@"%@=%@", @"groupingSortComparator", groupingSortComparator];
  [v3 addObject:v32];

  v33 = MEMORY[0x1E696AEC0];
  options = [(VUIMediaEntityFetchRequest *)self options];
  v35 = [v33 stringWithFormat:@"%@=%@", @"options", options];
  [v3 addObject:v35];

  v36 = MEMORY[0x1E696AEC0];
  v37 = [v3 componentsJoinedByString:{@", "}];
  v38 = [v36 stringWithFormat:@"<%@>", v37];

  return v38;
}

- (unint64_t)hash
{
  identifier = [(VUIMediaEntityFetchRequest *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    identifier = [(VUIMediaEntityFetchRequest *)self identifier];
    identifier2 = [(VUIMediaEntityFetchRequest *)v6 identifier];
    v9 = identifier;
    v10 = identifier2;
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
  mediaEntityTypes = [(VUIMediaEntityFetchRequest *)self mediaEntityTypes];
  v3 = [mediaEntityTypes countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(mediaEntityTypes);
        }

        if (![*(*(&v7 + 1) + 8 * i) subtype])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [mediaEntityTypes countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  mediaEntityTypes = [(VUIMediaEntityFetchRequest *)self mediaEntityTypes];
  v3 = +[VUIMediaEntityType show];
  v4 = [mediaEntityTypes containsObject:v3];

  return v4;
}

- (BOOL)_isSeasonsFetch
{
  mediaEntityTypes = [(VUIMediaEntityFetchRequest *)self mediaEntityTypes];
  v3 = +[VUIMediaEntityType season];
  v4 = [mediaEntityTypes containsObject:v3];

  return v4;
}

- (id)_sortIndexPropertyKeyWithMediaEntityKind:(id)kind
{
  kindCopy = kind;
  if ([(VUIMediaEntityFetchRequest *)self _shouldGenerateSortIndexes])
  {
    sortDescriptors = [(VUIMediaEntityFetchRequest *)self sortDescriptors];
    firstObject = [sortDescriptors firstObject];
    v7 = firstObject;
    if (firstObject)
    {
      v8 = [firstObject key];
      v9 = [kindCopy propertyDescriptorForName:v8];
      if ([v9 propertyType] == 4)
      {
        sortAsName = [v9 sortAsName];
        if (!sortAsName)
        {
          sortAsName = [v9 name];
        }
      }

      else
      {
        sortAsName = 0;
      }
    }

    else
    {
      sortAsName = 0;
    }
  }

  else
  {
    sortAsName = 0;
  }

  return sortAsName;
}

- (BOOL)_shouldGenerateSortIndexes
{
  options = [(VUIMediaEntityFetchRequest *)self options];
  v3 = [options vui_BOOLForKey:@"IncludeSortIndexes" defaultValue:0];

  return v3;
}

- (BOOL)_shouldGenerateGroupingSortIndexes
{
  groupingKeyPath = [(VUIMediaEntityFetchRequest *)self groupingKeyPath];
  if (groupingKeyPath)
  {
    options = [(VUIMediaEntityFetchRequest *)self options];
    v5 = [options vui_BOOLForKey:@"IncludeGroupingSortIndexes" defaultValue:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_manualSortDescriptorsWithMediaEntityKind:(id)kind propertiesRequiredForSort:(id *)sort
{
  v28 = *MEMORY[0x1E69E9840];
  kindCopy = kind;
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
        v13 = [kindCopy sortingPropertyDescriptorForName:v12];
        if (!v13)
        {
          [MEMORY[0x1E695DF30] raise:v20 format:{@"Unknown key for sort descriptor! %@", v12}];
        }

        name = [v13 name];
        v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:name ascending:{objc_msgSend(v11, "ascending")}];
        [v6 addObject:name];
        [v5 addObject:v15];
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  if (sort)
  {
    v16 = v6;
    *sort = v6;
  }

  v17 = [objc_opt_class() _finalizedSortDescriptorsFromSortDescriptors:v5 mediaEntityKind:kindCopy];

  return v17;
}

+ (id)_finalizedSortDescriptorsFromSortDescriptors:(id)descriptors mediaEntityKind:(id)kind
{
  v21 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  kindCopy = kind;
  if ([descriptorsCopy count])
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
  v9 = descriptorsCopy;
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

        v14 = [self _finalizedSortDescriptorFromSortDescriptor:*(*(&v16 + 1) + 8 * i) mediaEntityKind:{kindCopy, v16}];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

+ (id)_finalizedSortDescriptorFromSortDescriptor:(id)descriptor mediaEntityKind:(id)kind
{
  descriptorCopy = descriptor;
  kindCopy = kind;
  v7 = [descriptorCopy key];
  if (v7)
  {
    v8 = [kindCopy propertyDescriptorForName:v7];
    if ([v8 propertyType] == 4)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DF7A0]) initWithKey:v7 ascending:{objc_msgSend(descriptorCopy, "ascending")}];

      if (v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v9 = descriptorCopy;
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