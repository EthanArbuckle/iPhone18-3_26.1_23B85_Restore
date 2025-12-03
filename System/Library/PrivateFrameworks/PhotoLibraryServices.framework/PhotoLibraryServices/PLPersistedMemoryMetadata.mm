@interface PLPersistedMemoryMetadata
+ (BOOL)isValidPath:(id)path;
- (BOOL)_readMetadata;
- (BOOL)_updateAssetsInMemory:(id)memory relationshipName:(id)name persistedAssetUUIDs:(id)ds includePendingChanges:(BOOL)changes;
- (BOOL)_updateAssetsInMemory:(id)memory relationshipName:(id)name persistedOrderedAssetUUIDs:(id)ds includePendingChanges:(BOOL)changes;
- (BOOL)hasAllAssetsAvailableInManagedObjectContext:(id)context includePendingAssetChanges:(BOOL)changes;
- (BOOL)updateAssetsInMemory:(id)memory includePendingAssetChanges:(BOOL)changes;
- (PLPersistedMemoryMetadata)init;
- (PLPersistedMemoryMetadata)initWithPLMemory:(id)memory metadataURL:(id)l;
- (PLPersistedMemoryMetadata)initWithPLMemory:(id)memory pathManager:(id)manager;
- (PLPersistedMemoryMetadata)initWithPersistedDataAtURL:(id)l;
- (id)_metadataData;
- (id)description;
- (id)insertMemoryFromDataInManagedObjectContext:(id)context;
- (void)_saveMetadata;
- (void)removePersistedData;
@end

@implementation PLPersistedMemoryMetadata

- (void)_saveMetadata
{
  v3 = objc_autoreleasePoolPush();
  _metadataData = [(PLPersistedMemoryMetadata *)self _metadataData];
  v5 = MEMORY[0x1E69BF230];
  metadataURL = [(PLPersistedMemoryMetadata *)self metadataURL];
  [v5 persistMetadata:_metadataData fileURL:metadataURL];

  v7 = MEMORY[0x1E69BF238];
  metadataURL2 = [(PLPersistedMemoryMetadata *)self metadataURL];
  path = [metadataURL2 path];
  [v7 changeFileOwnerToMobileAtPath:path error:0];

  objc_autoreleasePoolPop(v3);
}

- (id)_metadataData
{
  v140 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v3 encodeInteger:2 forKey:@"version"];
  if (self->_memory)
  {
    memory = self->_memory;
  }

  else
  {
    memory = self;
  }

  uuid = [memory uuid];

  if (uuid)
  {
    [v3 encodeObject:uuid forKey:@"uuid"];
  }

  if (self->_memory)
  {
    selfCopy = self->_memory;
  }

  else
  {
    selfCopy = self;
  }

  title = [selfCopy title];

  if (title)
  {
    [v3 encodeObject:title forKey:@"title"];
  }

  if (self->_memory)
  {
    selfCopy2 = self->_memory;
  }

  else
  {
    selfCopy2 = self;
  }

  subtitle = [selfCopy2 subtitle];

  if (subtitle)
  {
    [v3 encodeObject:subtitle forKey:@"subtitle"];
  }

  if (self->_memory)
  {
    selfCopy3 = self->_memory;
  }

  else
  {
    selfCopy3 = self;
  }

  creationDate = [selfCopy3 creationDate];

  if (creationDate)
  {
    [v3 encodeObject:creationDate forKey:@"creationDate"];
  }

  v12 = self->_memory;
  v13 = 0x1E696A000uLL;
  if (v12)
  {
    if (([(PLMemory *)v12 rejected]& 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ([(PLPersistedMemoryMetadata *)self isRejected])
  {
LABEL_23:
    v14 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v3 encodeObject:v14 forKey:@"isRejected"];
  }

LABEL_24:
  v15 = self->_memory;
  if (v15)
  {
    if (([(PLMemory *)v15 favorite]& 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ([(PLPersistedMemoryMetadata *)self isFavorite])
  {
LABEL_26:
    v16 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v3 encodeObject:v16 forKey:@"isFavorite"];
  }

LABEL_27:
  selfCopy4 = self->_memory;
  if (!selfCopy4)
  {
    selfCopy4 = self;
  }

  pendingState = [selfCopy4 pendingState];
  if (pendingState)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithShort:pendingState];
    [v3 encodeObject:v19 forKey:@"isPending"];
  }

  selfCopy5 = self->_memory;
  if (!selfCopy5)
  {
    selfCopy5 = self;
  }

  creationType = [selfCopy5 creationType];
  if (creationType)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithShort:creationType];
    [v3 encodeObject:v22 forKey:@"creationType"];
  }

  selfCopy6 = self->_memory;
  if (!selfCopy6)
  {
    selfCopy6 = self;
  }

  userActionOptions = [selfCopy6 userActionOptions];
  if (userActionOptions)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithShort:userActionOptions];
    [v3 encodeObject:v25 forKey:@"isUserCreated"];
  }

  if (self->_memory)
  {
    selfCopy7 = self->_memory;
  }

  else
  {
    selfCopy7 = self;
  }

  category = [selfCopy7 category];
  if (category)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithShort:category];
    [v3 encodeObject:v28 forKey:@"category"];
  }

  if (self->_memory)
  {
    selfCopy8 = self->_memory;
  }

  else
  {
    selfCopy8 = self;
  }

  subcategory = [selfCopy8 subcategory];
  if (subcategory)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithShort:subcategory];
    [v3 encodeObject:v31 forKey:@"subcategory"];
  }

  v32 = self->_memory;
  if (v32)
  {
    keyAsset = [(PLMemory *)v32 keyAsset];
    uuid2 = [keyAsset uuid];
  }

  else
  {
    keyAsset = [(PLPersistedMemoryMetadata *)self keyAssetUUID];
    uuid2 = keyAsset;
  }

  if (uuid2)
  {
    [v3 encodeObject:uuid2 forKey:@"keyAssetUUID"];
  }

  v35 = self->_memory;
  v123 = uuid2;
  v124 = creationDate;
  v130 = uuid;
  v125 = subtitle;
  v126 = title;
  if (v35)
  {
    representativeAssets = [(PLMemory *)v35 representativeAssets];
    v37 = [representativeAssets valueForKey:@"uuid"];

    v38 = PLArchiveDataFromUUIDStringsSet();
    if (v38)
    {
      [v3 encodeObject:v38 forKey:@"representativeAssetUUIDs"];
    }

    curatedAssets = [(PLMemory *)self->_memory curatedAssets];
    v40 = [curatedAssets valueForKey:@"uuid"];

    v41 = PLArchiveDataFromUUIDStringsSet();
    if (v41)
    {
      [v3 encodeObject:v41 forKey:@"curatedAssetUUIDs"];
    }

    v121 = v41;
    extendedCuratedAssets = [(PLMemory *)self->_memory extendedCuratedAssets];
    v43 = [extendedCuratedAssets valueForKey:@"uuid"];

    v44 = PLArchiveDataFromUUIDStringsSet();
    if (v44)
    {
      [v3 encodeObject:v44 forKey:@"extendedCuratedAssetUUIDs"];
    }

    v119 = v43;
    v129 = v38;
    movieCuratedAssets = [(PLMemory *)self->_memory movieCuratedAssets];
    v46 = [movieCuratedAssets valueForKey:@"uuid"];

    v117 = v46;
    v47 = PLArchiveDataFromUUIDStringsSet();
    if (v47)
    {
      [v3 encodeObject:v47 forKey:@"movieCuratedAssetUUIDs"];
    }

    v116 = v37;
    userCuratedAssets = [(PLMemory *)self->_memory userCuratedAssets];
    v49 = [userCuratedAssets valueForKey:@"uuid"];

    v50 = v49;
    v51 = PLArchiveDataFromUUIDStringsSet();
    if (v51)
    {
      [v3 encodeObject:v47 forKey:@"userCuratedAssetUUIDs"];
    }

    v127 = v40;
    userRemovedAssets = [(PLMemory *)self->_memory userRemovedAssets];
    v53 = [userRemovedAssets valueForKey:@"uuid"];

    v54 = PLArchiveDataFromUUIDStringsSet();
    if (v54)
    {
      [v3 encodeObject:v54 forKey:@"userRemovedAssetUUIDs"];
    }

    customUserAssets = [(PLMemory *)self->_memory customUserAssets];
    v56 = [customUserAssets valueForKey:@"uuid"];

    if (v56)
    {
      [v3 encodeObject:v56 forKey:@"customUserAssetUUIDs"];
    }

    v13 = 0x1E696A000;
    v57 = v116;
    v59 = v127;
    v58 = v129;
    v60 = v119;
    v61 = v121;
  }

  else
  {
    representativeAssetUUIDs = [(PLPersistedMemoryMetadata *)self representativeAssetUUIDs];
    v57 = PLArchiveDataFromUUIDStringsSet();

    if (v57)
    {
      [v3 encodeObject:v57 forKey:@"representativeAssetUUIDs"];
    }

    curatedAssetUUIDs = [(PLPersistedMemoryMetadata *)self curatedAssetUUIDs];
    v58 = PLArchiveDataFromUUIDStringsSet();

    if (v58)
    {
      [v3 encodeObject:v58 forKey:@"curatedAssetUUIDs"];
    }

    extendedCuratedAssetUUIDs = [(PLPersistedMemoryMetadata *)self extendedCuratedAssetUUIDs];
    v59 = PLArchiveDataFromUUIDStringsSet();

    if (v59)
    {
      [v3 encodeObject:v59 forKey:@"extendedCuratedAssetUUIDs"];
    }

    movieCuratedAssetUUIDs = [(PLPersistedMemoryMetadata *)self movieCuratedAssetUUIDs];
    v61 = PLArchiveDataFromUUIDStringsSet();

    if (v61)
    {
      [v3 encodeObject:v61 forKey:@"movieCuratedAssetUUIDs"];
    }

    userCuratedAssetUUIDs = [(PLPersistedMemoryMetadata *)self userCuratedAssetUUIDs];
    v60 = PLArchiveDataFromUUIDStringsSet();

    if (v60)
    {
      [v3 encodeObject:v60 forKey:@"userCuratedAssetUUIDs"];
    }

    customUserAssets2 = [(PLMemory *)self->_memory customUserAssets];
    v44 = [customUserAssets2 valueForKey:@"uuid"];

    if (v44)
    {
      [v3 encodeObject:v44 forKey:@"customUserAssetUUIDs"];
    }
  }

  if (self->_memory)
  {
    selfCopy9 = self->_memory;
  }

  else
  {
    selfCopy9 = self;
  }

  movieData = [selfCopy9 movieData];

  if (movieData)
  {
    [v3 encodeObject:movieData forKey:@"movieData"];
  }

  if (self->_memory)
  {
    selfCopy10 = self->_memory;
  }

  else
  {
    selfCopy10 = self;
  }

  movieAssetState = [selfCopy10 movieAssetState];

  if (movieAssetState)
  {
    [v3 encodeObject:movieAssetState forKey:@"movieAssetState"];
  }

  if (self->_memory)
  {
    selfCopy11 = self->_memory;
  }

  else
  {
    selfCopy11 = self;
  }

  photosGraphVersion = [selfCopy11 photosGraphVersion];
  if (photosGraphVersion)
  {
    v74 = [*(v13 + 3480) numberWithLongLong:photosGraphVersion];
    [v3 encodeObject:v74 forKey:@"photosGraphVersion"];
  }

  if (self->_memory)
  {
    selfCopy12 = self->_memory;
  }

  else
  {
    selfCopy12 = self;
  }

  photosGraphData = [selfCopy12 photosGraphData];

  if (photosGraphData)
  {
    [v3 encodeObject:photosGraphData forKey:@"photosGraphData"];
  }

  if (self->_memory)
  {
    selfCopy13 = self->_memory;
  }

  else
  {
    selfCopy13 = self;
  }

  assetListPredicate = [selfCopy13 assetListPredicate];

  if (assetListPredicate)
  {
    [v3 encodeObject:assetListPredicate forKey:@"assetListPredicate"];
  }

  if (self->_memory)
  {
    selfCopy14 = self->_memory;
  }

  else
  {
    selfCopy14 = self;
  }

  [selfCopy14 score];
  if (v80 != 0.0)
  {
    v81 = [*(v13 + 3480) numberWithDouble:?];
    [v3 encodeObject:v81 forKey:@"score"];
  }

  if (self->_memory)
  {
    selfCopy15 = self->_memory;
  }

  else
  {
    selfCopy15 = self;
  }

  notificationState = [selfCopy15 notificationState];
  if (notificationState)
  {
    v84 = [*(v13 + 3480) numberWithShort:notificationState];
    [v3 encodeObject:v84 forKey:@"notificationState"];
  }

  if (self->_memory)
  {
    selfCopy16 = self->_memory;
  }

  else
  {
    selfCopy16 = self;
  }

  blacklistedFeature = [selfCopy16 blacklistedFeature];

  if (blacklistedFeature)
  {
    [v3 encodeObject:blacklistedFeature forKey:@"blacklistedFeature"];
  }

  if (self->_memory)
  {
    selfCopy17 = self->_memory;
  }

  else
  {
    selfCopy17 = self;
  }

  playCount = [selfCopy17 playCount];
  if (playCount)
  {
    [v3 encodeInt64:playCount forKey:@"playCount"];
  }

  if (self->_memory)
  {
    selfCopy18 = self->_memory;
  }

  else
  {
    selfCopy18 = self;
  }

  shareCount = [selfCopy18 shareCount];
  if (shareCount)
  {
    [v3 encodeInt64:shareCount forKey:@"shareCount"];
  }

  if (self->_memory)
  {
    selfCopy19 = self->_memory;
  }

  else
  {
    selfCopy19 = self;
  }

  viewCount = [selfCopy19 viewCount];
  if (viewCount)
  {
    [v3 encodeInt64:viewCount forKey:@"viewCount"];
  }

  if (self->_memory)
  {
    selfCopy20 = self->_memory;
  }

  else
  {
    selfCopy20 = self;
  }

  pendingPlayCount = [selfCopy20 pendingPlayCount];
  if (pendingPlayCount)
  {
    [v3 encodeInt64:pendingPlayCount forKey:@"pendingPlayCount"];
  }

  if (self->_memory)
  {
    selfCopy21 = self->_memory;
  }

  else
  {
    selfCopy21 = self;
  }

  pendingShareCount = [selfCopy21 pendingShareCount];
  if (pendingShareCount)
  {
    [v3 encodeInt64:pendingShareCount forKey:@"pendingShareCount"];
  }

  if (self->_memory)
  {
    selfCopy22 = self->_memory;
  }

  else
  {
    selfCopy22 = self;
  }

  pendingViewCount = [selfCopy22 pendingViewCount];
  if (pendingViewCount)
  {
    [v3 encodeInt64:pendingViewCount forKey:@"pendingViewCount"];
  }

  v118 = photosGraphData;
  v120 = movieAssetState;
  v122 = movieData;
  if (self->_memory)
  {
    selfCopy23 = self->_memory;
  }

  else
  {
    selfCopy23 = self;
  }

  featuredState = [selfCopy23 featuredState];
  if (featuredState)
  {
    [v3 encodeInt64:featuredState forKey:@"featuredState"];
  }

  v128 = v3;
  if (self->_memory)
  {
    selfCopy24 = self->_memory;
  }

  else
  {
    selfCopy24 = self;
  }

  userFeedbacks = [selfCopy24 userFeedbacks];

  v103 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(userFeedbacks, "count")}];
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v104 = userFeedbacks;
  v105 = [v104 countByEnumeratingWithState:&v131 objects:v139 count:16];
  if (v105)
  {
    v106 = v105;
    v107 = *v132;
    do
    {
      for (i = 0; i != v106; ++i)
      {
        if (*v132 != v107)
        {
          objc_enumerationMutation(v104);
        }

        v109 = *(*(&v131 + 1) + 8 * i);
        dictionaryRepresentation = [v109 dictionaryRepresentation];
        if (dictionaryRepresentation)
        {
          [v103 addObject:dictionaryRepresentation];
        }

        else
        {
          v111 = PLMigrationGetLog();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
          {
            uuid3 = [v109 uuid];
            *buf = 138543618;
            v136 = v130;
            v137 = 2114;
            v138 = uuid3;
            _os_log_impl(&dword_19BF1F000, v111, OS_LOG_TYPE_INFO, "Missing user feedback dictionary representation for memory %{public}@, userFeedback: %{public}@", buf, 0x16u);
          }
        }
      }

      v106 = [v104 countByEnumeratingWithState:&v131 objects:v139 count:16];
    }

    while (v106);
  }

  if ([v103 count])
  {
    [v128 encodeObject:v103 forKey:@"userFeedbacks"];
  }

  encodedData = [v128 encodedData];

  return encodedData;
}

- (BOOL)_readMetadata
{
  v3 = MEMORY[0x1E695DEF0];
  metadataURL = [(PLPersistedMemoryMetadata *)self metadataURL];
  v5 = [v3 dataWithContentsOfURL:metadataURL];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696ACD0]) pl_safeInitForReadingFromData:v5];
    v7 = v6 != 0;
    if (v6)
    {
      v8 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
      [(PLPersistedMemoryMetadata *)self setUuid:v8];

      v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
      [(PLPersistedMemoryMetadata *)self setTitle:v9];

      v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
      [(PLPersistedMemoryMetadata *)self setSubtitle:v10];

      v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
      [(PLPersistedMemoryMetadata *)self setCreationDate:v11];

      v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"isRejected"];
      -[PLPersistedMemoryMetadata setRejected:](self, "setRejected:", [v12 BOOLValue]);

      v13 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"isFavorite"];
      -[PLPersistedMemoryMetadata setFavorite:](self, "setFavorite:", [v13 BOOLValue]);

      v14 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"isPending"];
      -[PLPersistedMemoryMetadata setPendingState:](self, "setPendingState:", [v14 intValue]);

      v15 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"creationType"];
      -[PLPersistedMemoryMetadata setCreationType:](self, "setCreationType:", [v15 intValue]);

      v16 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"isUserCreated"];
      -[PLPersistedMemoryMetadata setUserActionOptions:](self, "setUserActionOptions:", [v16 BOOLValue]);

      v17 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"category"];
      -[PLPersistedMemoryMetadata setCategory:](self, "setCategory:", [v17 intValue]);

      v18 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"subcategory"];
      -[PLPersistedMemoryMetadata setSubcategory:](self, "setSubcategory:", [v18 intValue]);

      v19 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"keyAssetUUID"];
      [(PLPersistedMemoryMetadata *)self setKeyAssetUUID:v19];

      v20 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"representativeAssetUUIDs"];
      v55 = PLUnarchiveUUIDStringsSetFromData();

      [(PLPersistedMemoryMetadata *)self setRepresentativeAssetUUIDs:v55];
      v21 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"curatedAssetUUIDs"];
      v54 = PLUnarchiveUUIDStringsSetFromData();

      [(PLPersistedMemoryMetadata *)self setCuratedAssetUUIDs:v54];
      v22 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"extendedCuratedAssetUUIDs"];
      v53 = PLUnarchiveUUIDStringsSetFromData();

      [(PLPersistedMemoryMetadata *)self setExtendedCuratedAssetUUIDs:v53];
      v23 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"movieCuratedAssetUUIDs"];
      v52 = PLUnarchiveUUIDStringsSetFromData();

      [(PLPersistedMemoryMetadata *)self setMovieCuratedAssetUUIDs:v52];
      v24 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"userCuratedAssetUUIDs"];
      v51 = PLUnarchiveUUIDStringsSetFromData();

      [(PLPersistedMemoryMetadata *)self setUserCuratedAssetUUIDs:v51];
      v25 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"userRemovedAssetUUIDs"];
      v50 = PLUnarchiveUUIDStringsSetFromData();

      [(PLPersistedMemoryMetadata *)self setUserRemovedAssetUUIDs:v50];
      v26 = MEMORY[0x1E695DFD8];
      v27 = objc_opt_class();
      v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
      v29 = [v6 decodeObjectOfClasses:v28 forKey:@"customUserAssetUUIDs"];

      [(PLPersistedMemoryMetadata *)self setCustomUserAssetUUIDs:v29];
      v30 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"movieData"];
      [(PLPersistedMemoryMetadata *)self setMovieData:v30];

      v31 = MEMORY[0x1E695DFD8];
      v32 = objc_opt_class();
      v33 = objc_opt_class();
      v34 = [v31 setWithObjects:{v32, v33, objc_opt_class(), 0}];
      v35 = [v6 decodeObjectOfClasses:v34 forKey:@"movieAssetState"];
      [(PLPersistedMemoryMetadata *)self setMovieAssetState:v35];

      v36 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"photosGraphVersion"];
      -[PLPersistedMemoryMetadata setPhotosGraphVersion:](self, "setPhotosGraphVersion:", [v36 longLongValue]);

      v37 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"photosGraphData"];
      [(PLPersistedMemoryMetadata *)self setPhotosGraphData:v37];

      v38 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"assetListPredicate"];
      [(PLPersistedMemoryMetadata *)self setAssetListPredicate:v38];

      v39 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"score"];
      [v39 doubleValue];
      [(PLPersistedMemoryMetadata *)self setScore:?];

      v40 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"notificationState"];
      -[PLPersistedMemoryMetadata setNotificationState:](self, "setNotificationState:", [v40 intValue]);

      -[PLPersistedMemoryMetadata setVersion:](self, "setVersion:", [v6 decodeIntegerForKey:@"version"]);
      v41 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"blacklistedFeature"];
      [(PLPersistedMemoryMetadata *)self setBlacklistedFeature:v41];

      -[PLPersistedMemoryMetadata setPlayCount:](self, "setPlayCount:", [v6 decodeInt64ForKey:@"playCount"]);
      -[PLPersistedMemoryMetadata setShareCount:](self, "setShareCount:", [v6 decodeInt64ForKey:@"shareCount"]);
      -[PLPersistedMemoryMetadata setViewCount:](self, "setViewCount:", [v6 decodeInt64ForKey:@"viewCount"]);
      -[PLPersistedMemoryMetadata setPendingPlayCount:](self, "setPendingPlayCount:", [v6 decodeInt64ForKey:@"pendingPlayCount"]);
      -[PLPersistedMemoryMetadata setPendingShareCount:](self, "setPendingShareCount:", [v6 decodeInt64ForKey:@"pendingShareCount"]);
      -[PLPersistedMemoryMetadata setPendingViewCount:](self, "setPendingViewCount:", [v6 decodeInt64ForKey:@"pendingViewCount"]);
      -[PLPersistedMemoryMetadata setFeaturedState:](self, "setFeaturedState:", [v6 decodeInt64ForKey:@"featuredState"]);
      v42 = MEMORY[0x1E695DFD8];
      v43 = objc_opt_class();
      v44 = objc_opt_class();
      v45 = objc_opt_class();
      v46 = objc_opt_class();
      v47 = [v42 setWithObjects:{v43, v44, v45, v46, objc_opt_class(), 0}];
      v48 = [v6 decodeObjectOfClasses:v47 forKey:@"userFeedbacks"];
      [(PLPersistedMemoryMetadata *)self setUserFeedbacksDictionaryArray:v48];

      v7 = v6 != 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  selfCopy = self;
  if (self->_memory)
  {
    self = self->_memory;
  }

  title = [(PLPersistedMemoryMetadata *)self title];
  if (selfCopy->_memory)
  {
    memory = selfCopy->_memory;
  }

  else
  {
    memory = selfCopy;
  }

  subtitle = [memory subtitle];
  if (selfCopy->_memory)
  {
    v6 = selfCopy->_memory;
  }

  else
  {
    v6 = selfCopy;
  }

  category = [v6 category];
  if (selfCopy->_memory)
  {
    v7 = selfCopy->_memory;
  }

  else
  {
    v7 = selfCopy;
  }

  subcategory = [v7 subcategory];
  if (selfCopy->_memory)
  {
    v8 = selfCopy->_memory;
  }

  else
  {
    v8 = selfCopy;
  }

  uuid = [v8 uuid];
  v10 = selfCopy->_memory;
  if (v10)
  {
    favorite = [(PLMemory *)v10 favorite];
  }

  else
  {
    favorite = [(PLPersistedMemoryMetadata *)selfCopy isFavorite];
  }

  v12 = favorite;
  v13 = selfCopy->_memory;
  if (!v13)
  {
    v13 = selfCopy;
  }

  pendingState = [v13 pendingState];
  v15 = selfCopy->_memory;
  if (!v15)
  {
    v15 = selfCopy;
  }

  creationType = [v15 creationType];
  v17 = selfCopy->_memory;
  if (v17)
  {
    rejected = [(PLMemory *)v17 rejected];
  }

  else
  {
    rejected = [(PLPersistedMemoryMetadata *)selfCopy isRejected];
  }

  v19 = rejected;
  v20 = selfCopy->_memory;
  if (!v20)
  {
    v20 = selfCopy;
  }

  userActionOptions = [v20 userActionOptions];
  v29.receiver = selfCopy;
  v29.super_class = PLPersistedMemoryMetadata;
  v22 = [(PLPersistedMemoryMetadata *)&v29 description];
  v23 = selfCopy->_memory;
  if (v23)
  {
    [(PLMemory *)v23 objectID];
  }

  else
  {
    [(NSURL *)selfCopy->_metadataURL path];
  }
  v24 = ;
  v25 = [v22 stringByAppendingFormat:@" memory %@: uuid:%@ title:%@ / %@, category:%d/%d [fav:%d, rej:%d, pend:%d, user:%d, creaType:%d]", v24, uuid, title, subtitle, category, subcategory, v12, v19, pendingState, userActionOptions, creationType];

  return v25;
}

- (BOOL)hasAllAssetsAvailableInManagedObjectContext:(id)context includePendingAssetChanges:(BOOL)changes
{
  changesCopy = changes;
  v29 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DFA8];
  contextCopy = context;
  v8 = [v6 set];
  representativeAssetUUIDs = [(PLPersistedMemoryMetadata *)self representativeAssetUUIDs];
  [v8 unionSet:representativeAssetUUIDs];

  curatedAssetUUIDs = [(PLPersistedMemoryMetadata *)self curatedAssetUUIDs];
  [v8 unionSet:curatedAssetUUIDs];

  extendedCuratedAssetUUIDs = [(PLPersistedMemoryMetadata *)self extendedCuratedAssetUUIDs];
  [v8 unionSet:extendedCuratedAssetUUIDs];

  movieCuratedAssetUUIDs = [(PLPersistedMemoryMetadata *)self movieCuratedAssetUUIDs];
  [v8 unionSet:movieCuratedAssetUUIDs];

  userCuratedAssetUUIDs = [(PLPersistedMemoryMetadata *)self userCuratedAssetUUIDs];
  [v8 unionSet:userCuratedAssetUUIDs];

  userRemovedAssetUUIDs = [(PLPersistedMemoryMetadata *)self userRemovedAssetUUIDs];
  [v8 unionSet:userRemovedAssetUUIDs];

  customUserAssetUUIDs = [(PLPersistedMemoryMetadata *)self customUserAssetUUIDs];
  v16 = [customUserAssetUUIDs set];
  [v8 unionSet:v16];

  keyAssetUUID = [(PLPersistedMemoryMetadata *)self keyAssetUUID];
  if (keyAssetUUID)
  {
    [v8 addObject:keyAssetUUID];
  }

  allObjects = [v8 allObjects];
  v24 = 0;
  v19 = [PLManagedAsset countForAssetsWithUUIDs:allObjects includePendingChanges:changesCopy inManagedObjectContext:contextCopy error:&v24];

  v20 = v24;
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = PLMigrationGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to fetch count for assets in memory metadata %@, %@", buf, 0x16u);
    }
  }

  v22 = v19 == [v8 count];

  return v22;
}

- (BOOL)updateAssetsInMemory:(id)memory includePendingAssetChanges:(BOOL)changes
{
  changesCopy = changes;
  v36[1] = *MEMORY[0x1E69E9840];
  memoryCopy = memory;
  representativeAssetUUIDs = [(PLPersistedMemoryMetadata *)self representativeAssetUUIDs];
  v8 = [(PLPersistedMemoryMetadata *)self _updateAssetsInMemory:memoryCopy relationshipName:@"representativeAssets" persistedAssetUUIDs:representativeAssetUUIDs includePendingChanges:changesCopy];

  curatedAssetUUIDs = [(PLPersistedMemoryMetadata *)self curatedAssetUUIDs];
  LOBYTE(representativeAssetUUIDs) = [(PLPersistedMemoryMetadata *)self _updateAssetsInMemory:memoryCopy relationshipName:@"curatedAssets" persistedAssetUUIDs:curatedAssetUUIDs includePendingChanges:changesCopy];

  extendedCuratedAssetUUIDs = [(PLPersistedMemoryMetadata *)self extendedCuratedAssetUUIDs];
  LOBYTE(curatedAssetUUIDs) = [(PLPersistedMemoryMetadata *)self _updateAssetsInMemory:memoryCopy relationshipName:@"extendedCuratedAssets" persistedAssetUUIDs:extendedCuratedAssetUUIDs includePendingChanges:changesCopy];

  movieCuratedAssetUUIDs = [(PLPersistedMemoryMetadata *)self movieCuratedAssetUUIDs];
  LOBYTE(extendedCuratedAssetUUIDs) = [(PLPersistedMemoryMetadata *)self _updateAssetsInMemory:memoryCopy relationshipName:@"movieCuratedAssets" persistedAssetUUIDs:movieCuratedAssetUUIDs includePendingChanges:changesCopy];

  userCuratedAssetUUIDs = [(PLPersistedMemoryMetadata *)self userCuratedAssetUUIDs];
  v13 = [(PLPersistedMemoryMetadata *)self _updateAssetsInMemory:memoryCopy relationshipName:@"userCuratedAssets" persistedAssetUUIDs:userCuratedAssetUUIDs includePendingChanges:changesCopy];

  userRemovedAssetUUIDs = [(PLPersistedMemoryMetadata *)self userRemovedAssetUUIDs];
  v15 = [(PLPersistedMemoryMetadata *)self _updateAssetsInMemory:memoryCopy relationshipName:@"userRemovedAssets" persistedAssetUUIDs:userRemovedAssetUUIDs includePendingChanges:changesCopy];

  customUserAssetUUIDs = [(PLPersistedMemoryMetadata *)self customUserAssetUUIDs];
  v17 = ([(PLPersistedMemoryMetadata *)self _updateAssetsInMemory:memoryCopy relationshipName:@"customUserAssets" persistedOrderedAssetUUIDs:customUserAssetUUIDs includePendingChanges:changesCopy]&& v15) & v13 & extendedCuratedAssetUUIDs & curatedAssetUUIDs & representativeAssetUUIDs & v8;

  keyAssetUUID = [(PLPersistedMemoryMetadata *)self keyAssetUUID];
  if (keyAssetUUID)
  {
    keyAsset = [memoryCopy keyAsset];
    v20 = keyAsset;
    if (!keyAsset || ([keyAsset uuid], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", keyAssetUUID), v21, (v22 & 1) == 0))
    {
      v36[0] = keyAssetUUID;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      photoLibrary = [memoryCopy photoLibrary];
      v25 = [PLManagedAsset assetsWithUUIDs:v23 options:changesCopy inLibrary:photoLibrary];

      if ([v25 count])
      {
        v26 = PLMigrationGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          uuid = [memoryCopy uuid];
          metadataURL = [(PLPersistedMemoryMetadata *)self metadataURL];
          path = [metadataURL path];
          v32 = 138412546;
          v33 = uuid;
          v34 = 2112;
          v35 = path;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_INFO, "Updating key asset in memory %@ to match persisted UUID from %@", &v32, 0x16u);
        }

        v30 = [v25 objectAtIndexedSubscript:0];
        [memoryCopy setKeyAsset:v30];
      }

      else
      {
        v17 = 0;
      }
    }
  }

  return v17 & 1;
}

- (BOOL)_updateAssetsInMemory:(id)memory relationshipName:(id)name persistedOrderedAssetUUIDs:(id)ds includePendingChanges:(BOOL)changes
{
  changesCopy = changes;
  v68 = *MEMORY[0x1E69E9840];
  memoryCopy = memory;
  nameCopy = name;
  dsCopy = ds;
  v13 = [memoryCopy valueForKey:nameCopy];
  v14 = [v13 valueForKey:@"uuid"];

  LODWORD(v13) = [dsCopy isEqual:v14];
  v15 = PLMigrationGetLog();
  v16 = v15;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v14 count];
      uuid = [memoryCopy uuid];
      *buf = 67109634;
      *v67 = v17;
      *&v67[4] = 2112;
      *&v67[6] = nameCopy;
      *&v67[14] = 2112;
      *&v67[16] = uuid;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "Persisted asset UUIDs (%d total) match database for memory %@ %@", buf, 0x1Cu);
    }

    v19 = 1;
  }

  else
  {
    v52 = v14;
    v53 = nameCopy;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      uuid2 = [memoryCopy uuid];
      metadataURL = [(PLPersistedMemoryMetadata *)self metadataURL];
      path = [metadataURL path];
      *buf = 138412546;
      *v67 = uuid2;
      *&v67[8] = 2112;
      *&v67[10] = path;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_INFO, "Updating assets in memory %@ to match persisted UUIDs from %@", buf, 0x16u);
    }

    v54 = dsCopy;
    array = [dsCopy array];
    v55 = memoryCopy;
    photoLibrary = [memoryCopy photoLibrary];
    v25 = [PLManagedAsset assetsWithUUIDs:array options:changesCopy inLibrary:photoLibrary];

    v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v25, "count")}];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v16 = v25;
    v27 = [v16 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v61;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v61 != v29)
          {
            objc_enumerationMutation(v16);
          }

          v31 = *(*(&v60 + 1) + 8 * i);
          uuid3 = [v31 uuid];
          v33 = uuid3;
          if (v31)
          {
            v34 = uuid3 == 0;
          }

          else
          {
            v34 = 1;
          }

          if (!v34)
          {
            [v26 setObject:v31 forKey:uuid3];
          }

          uuid4 = [v31 uuid];

          if (!uuid4)
          {
            v36 = PLMigrationGetLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              uuid5 = [v55 uuid];
              *buf = 138543362;
              *v67 = uuid5;
              _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_INFO, "Missing asset or asset.uuid for memory %{public}@", buf, 0xCu);
            }
          }
        }

        v28 = [v16 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v28);
    }

    v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v26, "count")}];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v39 = v54;
    v40 = [v39 countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v57;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v57 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v56 + 1) + 8 * j);
          v45 = [v38 count];
          v46 = [v26 objectForKey:v44];
          if (v46)
          {
            [v38 addObject:v46];
          }

          if ([v38 count] == v45)
          {
            v47 = PLMigrationGetLog();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
            {
              uuid6 = [v55 uuid];
              *buf = 138543362;
              *v67 = uuid6;
              _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_INFO, "Missing asset for persisted asset uuids for memory %{public}@", buf, 0xCu);
            }
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v41);
    }

    memoryCopy = v55;
    nameCopy = v53;
    v49 = [v55 mutableOrderedSetValueForKey:v53];
    [v49 addObjectsFromArray:v38];
    v50 = [v16 count];
    v19 = v50 == [v39 count];

    dsCopy = v54;
    v14 = v52;
  }

  return v19;
}

- (BOOL)_updateAssetsInMemory:(id)memory relationshipName:(id)name persistedAssetUUIDs:(id)ds includePendingChanges:(BOOL)changes
{
  changesCopy = changes;
  v31 = *MEMORY[0x1E69E9840];
  memoryCopy = memory;
  nameCopy = name;
  dsCopy = ds;
  v13 = [memoryCopy valueForKey:nameCopy];
  v14 = [v13 valueForKey:@"uuid"];

  v15 = [dsCopy isEqual:v14];
  v16 = PLMigrationGetLog();
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v14 count];
      uuid = [memoryCopy uuid];
      v29 = 67109634;
      *v30 = v18;
      *&v30[4] = 2112;
      *&v30[6] = nameCopy;
      *&v30[14] = 2112;
      *&v30[16] = uuid;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "Persisted asset UUIDs (%d total) match database for memory %@ %@", &v29, 0x1Cu);
    }

    v20 = 1;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      uuid2 = [memoryCopy uuid];
      metadataURL = [(PLPersistedMemoryMetadata *)self metadataURL];
      path = [metadataURL path];
      v29 = 138412546;
      *v30 = uuid2;
      *&v30[8] = 2112;
      *&v30[10] = path;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_INFO, "Updating assets in memory %@ to match persisted UUIDs from %@", &v29, 0x16u);
    }

    allObjects = [dsCopy allObjects];
    photoLibrary = [memoryCopy photoLibrary];
    v17 = [PLManagedAsset assetsWithUUIDs:allObjects options:changesCopy inLibrary:photoLibrary];

    v26 = [memoryCopy mutableSetValueForKey:nameCopy];
    [v26 addObjectsFromArray:v17];
    v27 = [v17 count];
    v20 = v27 == [dsCopy count];
  }

  return v20;
}

- (id)insertMemoryFromDataInManagedObjectContext:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  uuid = [(PLPersistedMemoryMetadata *)self uuid];
  title = [(PLPersistedMemoryMetadata *)self title];
  subtitle = [(PLPersistedMemoryMetadata *)self subtitle];
  creationDate = [(PLPersistedMemoryMetadata *)self creationDate];
  v9 = [PLMemory insertIntoContext:contextCopy withUUID:uuid title:title subtitle:subtitle creationDate:creationDate];

  [v9 setRejected:{-[PLPersistedMemoryMetadata isRejected](self, "isRejected")}];
  [v9 setFavorite:{-[PLPersistedMemoryMetadata isFavorite](self, "isFavorite")}];
  [v9 setPendingState:{-[PLPersistedMemoryMetadata pendingState](self, "pendingState")}];
  [v9 setCreationType:{-[PLPersistedMemoryMetadata creationType](self, "creationType")}];
  [v9 setUserActionOptions:{-[PLPersistedMemoryMetadata userActionOptions](self, "userActionOptions")}];
  [v9 setCategory:{-[PLPersistedMemoryMetadata category](self, "category")}];
  [v9 setSubcategory:{-[PLPersistedMemoryMetadata subcategory](self, "subcategory")}];
  movieData = [(PLPersistedMemoryMetadata *)self movieData];
  [v9 setMovieData:movieData];

  movieAssetState = [(PLPersistedMemoryMetadata *)self movieAssetState];
  [v9 setMovieAssetState:movieAssetState];

  [v9 setPhotosGraphVersion:{-[PLPersistedMemoryMetadata photosGraphVersion](self, "photosGraphVersion")}];
  photosGraphData = [(PLPersistedMemoryMetadata *)self photosGraphData];
  [v9 setPhotosGraphData:photosGraphData];

  assetListPredicate = [(PLPersistedMemoryMetadata *)self assetListPredicate];
  [v9 setAssetListPredicate:assetListPredicate];

  [v9 setNotificationState:{-[PLPersistedMemoryMetadata notificationState](self, "notificationState")}];
  [(PLPersistedMemoryMetadata *)self score];
  [v9 setScore:?];
  blacklistedFeature = [(PLPersistedMemoryMetadata *)self blacklistedFeature];
  [v9 setBlacklistedFeature:blacklistedFeature];

  [v9 setPlayCount:{-[PLPersistedMemoryMetadata playCount](self, "playCount")}];
  [v9 setShareCount:{-[PLPersistedMemoryMetadata shareCount](self, "shareCount")}];
  [v9 setViewCount:{-[PLPersistedMemoryMetadata viewCount](self, "viewCount")}];
  [v9 setPendingPlayCount:{-[PLPersistedMemoryMetadata pendingPlayCount](self, "pendingPlayCount")}];
  [v9 setPendingShareCount:{-[PLPersistedMemoryMetadata pendingShareCount](self, "pendingShareCount")}];
  [v9 setPendingViewCount:{-[PLPersistedMemoryMetadata pendingViewCount](self, "pendingViewCount")}];
  v25 = v9;
  [v9 setFeaturedState:{-[PLPersistedMemoryMetadata featuredState](self, "featuredState")}];
  v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
  userFeedbacksDictionaryArray = [(PLPersistedMemoryMetadata *)self userFeedbacksDictionaryArray];
  v17 = [userFeedbacksDictionaryArray countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(userFeedbacksDictionaryArray);
        }

        v21 = [PLUserFeedback insertIntoManagedObjectContext:contextCopy withDictionaryRepresentation:*(*(&v27 + 1) + 8 * i)];
        if (v21)
        {
          [v15 addObject:v21];
        }

        else
        {
          v22 = PLMigrationGetLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            uuid2 = [(PLPersistedMemoryMetadata *)selfCopy uuid];
            *buf = 138543362;
            v32 = uuid2;
            _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_INFO, "Missing user feedback for memory %{public}@", buf, 0xCu);
          }
        }
      }

      v18 = [userFeedbacksDictionaryArray countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v18);
  }

  [v25 setUserFeedbacks:v15];

  return v25;
}

- (void)removePersistedData
{
  v14 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  metadataURL = self->_metadataURL;
  v9 = 0;
  v5 = [defaultManager removeItemAtURL:metadataURL error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      path = [(NSURL *)self->_metadataURL path];
      *buf = 138412546;
      v11 = path;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Failed to remove persisted memory metadata %@ %@", buf, 0x16u);
    }
  }
}

- (PLPersistedMemoryMetadata)initWithPersistedDataAtURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = PLPersistedMemoryMetadata;
  v6 = [(PLPersistedMemoryMetadata *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_metadataURL, l), ![(PLPersistedMemoryMetadata *)v7 _readMetadata]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (PLPersistedMemoryMetadata)initWithPLMemory:(id)memory pathManager:(id)manager
{
  v6 = MEMORY[0x1E695DFF8];
  memoryCopy = memory;
  v8 = [manager privateDirectoryWithSubType:4 createIfNeeded:1 error:0];
  v9 = [v6 fileURLWithPath:v8 isDirectory:1];

  v10 = MEMORY[0x1E696AEC0];
  uuid = [memoryCopy uuid];
  pLMemoryMetadataExtension = [v10 stringWithFormat:@"%@.%@", uuid, PLMemoryMetadataExtension];

  v13 = [v9 URLByAppendingPathComponent:pLMemoryMetadataExtension];
  v14 = [(PLPersistedMemoryMetadata *)self initWithPLMemory:memoryCopy metadataURL:v13];

  return v14;
}

- (PLPersistedMemoryMetadata)initWithPLMemory:(id)memory metadataURL:(id)l
{
  memoryCopy = memory;
  lCopy = l;
  v12.receiver = self;
  v12.super_class = PLPersistedMemoryMetadata;
  v9 = [(PLPersistedMemoryMetadata *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memory, memory);
    objc_storeStrong(&v10->_metadataURL, l);
    v10->_version = 2;
  }

  return v10;
}

- (PLPersistedMemoryMetadata)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLPersistedMemoryMetadata.m" lineNumber:90 description:@"Can't initialize a PLPersistedMemoryMetadata object using -init."];

  return 0;
}

+ (BOOL)isValidPath:(id)path
{
  pathExtension = [path pathExtension];
  v4 = [pathExtension isEqualToString:PLMemoryMetadataExtension];

  return v4;
}

@end