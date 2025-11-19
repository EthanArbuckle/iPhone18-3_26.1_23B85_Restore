@interface PLPersistedMemoryMetadata
+ (BOOL)isValidPath:(id)a3;
- (BOOL)_readMetadata;
- (BOOL)_updateAssetsInMemory:(id)a3 relationshipName:(id)a4 persistedAssetUUIDs:(id)a5 includePendingChanges:(BOOL)a6;
- (BOOL)_updateAssetsInMemory:(id)a3 relationshipName:(id)a4 persistedOrderedAssetUUIDs:(id)a5 includePendingChanges:(BOOL)a6;
- (BOOL)hasAllAssetsAvailableInManagedObjectContext:(id)a3 includePendingAssetChanges:(BOOL)a4;
- (BOOL)updateAssetsInMemory:(id)a3 includePendingAssetChanges:(BOOL)a4;
- (PLPersistedMemoryMetadata)init;
- (PLPersistedMemoryMetadata)initWithPLMemory:(id)a3 metadataURL:(id)a4;
- (PLPersistedMemoryMetadata)initWithPLMemory:(id)a3 pathManager:(id)a4;
- (PLPersistedMemoryMetadata)initWithPersistedDataAtURL:(id)a3;
- (id)_metadataData;
- (id)description;
- (id)insertMemoryFromDataInManagedObjectContext:(id)a3;
- (void)_saveMetadata;
- (void)removePersistedData;
@end

@implementation PLPersistedMemoryMetadata

- (void)_saveMetadata
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(PLPersistedMemoryMetadata *)self _metadataData];
  v5 = MEMORY[0x1E69BF230];
  v6 = [(PLPersistedMemoryMetadata *)self metadataURL];
  [v5 persistMetadata:v4 fileURL:v6];

  v7 = MEMORY[0x1E69BF238];
  v8 = [(PLPersistedMemoryMetadata *)self metadataURL];
  v9 = [v8 path];
  [v7 changeFileOwnerToMobileAtPath:v9 error:0];

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

  v5 = [memory uuid];

  if (v5)
  {
    [v3 encodeObject:v5 forKey:@"uuid"];
  }

  if (self->_memory)
  {
    v6 = self->_memory;
  }

  else
  {
    v6 = self;
  }

  v7 = [v6 title];

  if (v7)
  {
    [v3 encodeObject:v7 forKey:@"title"];
  }

  if (self->_memory)
  {
    v8 = self->_memory;
  }

  else
  {
    v8 = self;
  }

  v9 = [v8 subtitle];

  if (v9)
  {
    [v3 encodeObject:v9 forKey:@"subtitle"];
  }

  if (self->_memory)
  {
    v10 = self->_memory;
  }

  else
  {
    v10 = self;
  }

  v11 = [v10 creationDate];

  if (v11)
  {
    [v3 encodeObject:v11 forKey:@"creationDate"];
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
  v17 = self->_memory;
  if (!v17)
  {
    v17 = self;
  }

  v18 = [v17 pendingState];
  if (v18)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithShort:v18];
    [v3 encodeObject:v19 forKey:@"isPending"];
  }

  v20 = self->_memory;
  if (!v20)
  {
    v20 = self;
  }

  v21 = [v20 creationType];
  if (v21)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithShort:v21];
    [v3 encodeObject:v22 forKey:@"creationType"];
  }

  v23 = self->_memory;
  if (!v23)
  {
    v23 = self;
  }

  v24 = [v23 userActionOptions];
  if (v24)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithShort:v24];
    [v3 encodeObject:v25 forKey:@"isUserCreated"];
  }

  if (self->_memory)
  {
    v26 = self->_memory;
  }

  else
  {
    v26 = self;
  }

  v27 = [v26 category];
  if (v27)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithShort:v27];
    [v3 encodeObject:v28 forKey:@"category"];
  }

  if (self->_memory)
  {
    v29 = self->_memory;
  }

  else
  {
    v29 = self;
  }

  v30 = [v29 subcategory];
  if (v30)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithShort:v30];
    [v3 encodeObject:v31 forKey:@"subcategory"];
  }

  v32 = self->_memory;
  if (v32)
  {
    v33 = [(PLMemory *)v32 keyAsset];
    v34 = [v33 uuid];
  }

  else
  {
    v33 = [(PLPersistedMemoryMetadata *)self keyAssetUUID];
    v34 = v33;
  }

  if (v34)
  {
    [v3 encodeObject:v34 forKey:@"keyAssetUUID"];
  }

  v35 = self->_memory;
  v123 = v34;
  v124 = v11;
  v130 = v5;
  v125 = v9;
  v126 = v7;
  if (v35)
  {
    v36 = [(PLMemory *)v35 representativeAssets];
    v37 = [v36 valueForKey:@"uuid"];

    v38 = PLArchiveDataFromUUIDStringsSet();
    if (v38)
    {
      [v3 encodeObject:v38 forKey:@"representativeAssetUUIDs"];
    }

    v39 = [(PLMemory *)self->_memory curatedAssets];
    v40 = [v39 valueForKey:@"uuid"];

    v41 = PLArchiveDataFromUUIDStringsSet();
    if (v41)
    {
      [v3 encodeObject:v41 forKey:@"curatedAssetUUIDs"];
    }

    v121 = v41;
    v42 = [(PLMemory *)self->_memory extendedCuratedAssets];
    v43 = [v42 valueForKey:@"uuid"];

    v44 = PLArchiveDataFromUUIDStringsSet();
    if (v44)
    {
      [v3 encodeObject:v44 forKey:@"extendedCuratedAssetUUIDs"];
    }

    v119 = v43;
    v129 = v38;
    v45 = [(PLMemory *)self->_memory movieCuratedAssets];
    v46 = [v45 valueForKey:@"uuid"];

    v117 = v46;
    v47 = PLArchiveDataFromUUIDStringsSet();
    if (v47)
    {
      [v3 encodeObject:v47 forKey:@"movieCuratedAssetUUIDs"];
    }

    v116 = v37;
    v48 = [(PLMemory *)self->_memory userCuratedAssets];
    v49 = [v48 valueForKey:@"uuid"];

    v50 = v49;
    v51 = PLArchiveDataFromUUIDStringsSet();
    if (v51)
    {
      [v3 encodeObject:v47 forKey:@"userCuratedAssetUUIDs"];
    }

    v127 = v40;
    v52 = [(PLMemory *)self->_memory userRemovedAssets];
    v53 = [v52 valueForKey:@"uuid"];

    v54 = PLArchiveDataFromUUIDStringsSet();
    if (v54)
    {
      [v3 encodeObject:v54 forKey:@"userRemovedAssetUUIDs"];
    }

    v55 = [(PLMemory *)self->_memory customUserAssets];
    v56 = [v55 valueForKey:@"uuid"];

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
    v62 = [(PLPersistedMemoryMetadata *)self representativeAssetUUIDs];
    v57 = PLArchiveDataFromUUIDStringsSet();

    if (v57)
    {
      [v3 encodeObject:v57 forKey:@"representativeAssetUUIDs"];
    }

    v63 = [(PLPersistedMemoryMetadata *)self curatedAssetUUIDs];
    v58 = PLArchiveDataFromUUIDStringsSet();

    if (v58)
    {
      [v3 encodeObject:v58 forKey:@"curatedAssetUUIDs"];
    }

    v64 = [(PLPersistedMemoryMetadata *)self extendedCuratedAssetUUIDs];
    v59 = PLArchiveDataFromUUIDStringsSet();

    if (v59)
    {
      [v3 encodeObject:v59 forKey:@"extendedCuratedAssetUUIDs"];
    }

    v65 = [(PLPersistedMemoryMetadata *)self movieCuratedAssetUUIDs];
    v61 = PLArchiveDataFromUUIDStringsSet();

    if (v61)
    {
      [v3 encodeObject:v61 forKey:@"movieCuratedAssetUUIDs"];
    }

    v66 = [(PLPersistedMemoryMetadata *)self userCuratedAssetUUIDs];
    v60 = PLArchiveDataFromUUIDStringsSet();

    if (v60)
    {
      [v3 encodeObject:v60 forKey:@"userCuratedAssetUUIDs"];
    }

    v67 = [(PLMemory *)self->_memory customUserAssets];
    v44 = [v67 valueForKey:@"uuid"];

    if (v44)
    {
      [v3 encodeObject:v44 forKey:@"customUserAssetUUIDs"];
    }
  }

  if (self->_memory)
  {
    v68 = self->_memory;
  }

  else
  {
    v68 = self;
  }

  v69 = [v68 movieData];

  if (v69)
  {
    [v3 encodeObject:v69 forKey:@"movieData"];
  }

  if (self->_memory)
  {
    v70 = self->_memory;
  }

  else
  {
    v70 = self;
  }

  v71 = [v70 movieAssetState];

  if (v71)
  {
    [v3 encodeObject:v71 forKey:@"movieAssetState"];
  }

  if (self->_memory)
  {
    v72 = self->_memory;
  }

  else
  {
    v72 = self;
  }

  v73 = [v72 photosGraphVersion];
  if (v73)
  {
    v74 = [*(v13 + 3480) numberWithLongLong:v73];
    [v3 encodeObject:v74 forKey:@"photosGraphVersion"];
  }

  if (self->_memory)
  {
    v75 = self->_memory;
  }

  else
  {
    v75 = self;
  }

  v76 = [v75 photosGraphData];

  if (v76)
  {
    [v3 encodeObject:v76 forKey:@"photosGraphData"];
  }

  if (self->_memory)
  {
    v77 = self->_memory;
  }

  else
  {
    v77 = self;
  }

  v78 = [v77 assetListPredicate];

  if (v78)
  {
    [v3 encodeObject:v78 forKey:@"assetListPredicate"];
  }

  if (self->_memory)
  {
    v79 = self->_memory;
  }

  else
  {
    v79 = self;
  }

  [v79 score];
  if (v80 != 0.0)
  {
    v81 = [*(v13 + 3480) numberWithDouble:?];
    [v3 encodeObject:v81 forKey:@"score"];
  }

  if (self->_memory)
  {
    v82 = self->_memory;
  }

  else
  {
    v82 = self;
  }

  v83 = [v82 notificationState];
  if (v83)
  {
    v84 = [*(v13 + 3480) numberWithShort:v83];
    [v3 encodeObject:v84 forKey:@"notificationState"];
  }

  if (self->_memory)
  {
    v85 = self->_memory;
  }

  else
  {
    v85 = self;
  }

  v86 = [v85 blacklistedFeature];

  if (v86)
  {
    [v3 encodeObject:v86 forKey:@"blacklistedFeature"];
  }

  if (self->_memory)
  {
    v87 = self->_memory;
  }

  else
  {
    v87 = self;
  }

  v88 = [v87 playCount];
  if (v88)
  {
    [v3 encodeInt64:v88 forKey:@"playCount"];
  }

  if (self->_memory)
  {
    v89 = self->_memory;
  }

  else
  {
    v89 = self;
  }

  v90 = [v89 shareCount];
  if (v90)
  {
    [v3 encodeInt64:v90 forKey:@"shareCount"];
  }

  if (self->_memory)
  {
    v91 = self->_memory;
  }

  else
  {
    v91 = self;
  }

  v92 = [v91 viewCount];
  if (v92)
  {
    [v3 encodeInt64:v92 forKey:@"viewCount"];
  }

  if (self->_memory)
  {
    v93 = self->_memory;
  }

  else
  {
    v93 = self;
  }

  v94 = [v93 pendingPlayCount];
  if (v94)
  {
    [v3 encodeInt64:v94 forKey:@"pendingPlayCount"];
  }

  if (self->_memory)
  {
    v95 = self->_memory;
  }

  else
  {
    v95 = self;
  }

  v96 = [v95 pendingShareCount];
  if (v96)
  {
    [v3 encodeInt64:v96 forKey:@"pendingShareCount"];
  }

  if (self->_memory)
  {
    v97 = self->_memory;
  }

  else
  {
    v97 = self;
  }

  v98 = [v97 pendingViewCount];
  if (v98)
  {
    [v3 encodeInt64:v98 forKey:@"pendingViewCount"];
  }

  v118 = v76;
  v120 = v71;
  v122 = v69;
  if (self->_memory)
  {
    v99 = self->_memory;
  }

  else
  {
    v99 = self;
  }

  v100 = [v99 featuredState];
  if (v100)
  {
    [v3 encodeInt64:v100 forKey:@"featuredState"];
  }

  v128 = v3;
  if (self->_memory)
  {
    v101 = self->_memory;
  }

  else
  {
    v101 = self;
  }

  v102 = [v101 userFeedbacks];

  v103 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v102, "count")}];
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v104 = v102;
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
        v110 = [v109 dictionaryRepresentation];
        if (v110)
        {
          [v103 addObject:v110];
        }

        else
        {
          v111 = PLMigrationGetLog();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
          {
            v112 = [v109 uuid];
            *buf = 138543618;
            v136 = v130;
            v137 = 2114;
            v138 = v112;
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

  v113 = [v128 encodedData];

  return v113;
}

- (BOOL)_readMetadata
{
  v3 = MEMORY[0x1E695DEF0];
  v4 = [(PLPersistedMemoryMetadata *)self metadataURL];
  v5 = [v3 dataWithContentsOfURL:v4];

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
  v2 = self;
  if (self->_memory)
  {
    self = self->_memory;
  }

  v3 = [(PLPersistedMemoryMetadata *)self title];
  if (v2->_memory)
  {
    memory = v2->_memory;
  }

  else
  {
    memory = v2;
  }

  v5 = [memory subtitle];
  if (v2->_memory)
  {
    v6 = v2->_memory;
  }

  else
  {
    v6 = v2;
  }

  v28 = [v6 category];
  if (v2->_memory)
  {
    v7 = v2->_memory;
  }

  else
  {
    v7 = v2;
  }

  v27 = [v7 subcategory];
  if (v2->_memory)
  {
    v8 = v2->_memory;
  }

  else
  {
    v8 = v2;
  }

  v9 = [v8 uuid];
  v10 = v2->_memory;
  if (v10)
  {
    v11 = [(PLMemory *)v10 favorite];
  }

  else
  {
    v11 = [(PLPersistedMemoryMetadata *)v2 isFavorite];
  }

  v12 = v11;
  v13 = v2->_memory;
  if (!v13)
  {
    v13 = v2;
  }

  v14 = [v13 pendingState];
  v15 = v2->_memory;
  if (!v15)
  {
    v15 = v2;
  }

  v16 = [v15 creationType];
  v17 = v2->_memory;
  if (v17)
  {
    v18 = [(PLMemory *)v17 rejected];
  }

  else
  {
    v18 = [(PLPersistedMemoryMetadata *)v2 isRejected];
  }

  v19 = v18;
  v20 = v2->_memory;
  if (!v20)
  {
    v20 = v2;
  }

  v21 = [v20 userActionOptions];
  v29.receiver = v2;
  v29.super_class = PLPersistedMemoryMetadata;
  v22 = [(PLPersistedMemoryMetadata *)&v29 description];
  v23 = v2->_memory;
  if (v23)
  {
    [(PLMemory *)v23 objectID];
  }

  else
  {
    [(NSURL *)v2->_metadataURL path];
  }
  v24 = ;
  v25 = [v22 stringByAppendingFormat:@" memory %@: uuid:%@ title:%@ / %@, category:%d/%d [fav:%d, rej:%d, pend:%d, user:%d, creaType:%d]", v24, v9, v3, v5, v28, v27, v12, v19, v14, v21, v16];

  return v25;
}

- (BOOL)hasAllAssetsAvailableInManagedObjectContext:(id)a3 includePendingAssetChanges:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DFA8];
  v7 = a3;
  v8 = [v6 set];
  v9 = [(PLPersistedMemoryMetadata *)self representativeAssetUUIDs];
  [v8 unionSet:v9];

  v10 = [(PLPersistedMemoryMetadata *)self curatedAssetUUIDs];
  [v8 unionSet:v10];

  v11 = [(PLPersistedMemoryMetadata *)self extendedCuratedAssetUUIDs];
  [v8 unionSet:v11];

  v12 = [(PLPersistedMemoryMetadata *)self movieCuratedAssetUUIDs];
  [v8 unionSet:v12];

  v13 = [(PLPersistedMemoryMetadata *)self userCuratedAssetUUIDs];
  [v8 unionSet:v13];

  v14 = [(PLPersistedMemoryMetadata *)self userRemovedAssetUUIDs];
  [v8 unionSet:v14];

  v15 = [(PLPersistedMemoryMetadata *)self customUserAssetUUIDs];
  v16 = [v15 set];
  [v8 unionSet:v16];

  v17 = [(PLPersistedMemoryMetadata *)self keyAssetUUID];
  if (v17)
  {
    [v8 addObject:v17];
  }

  v18 = [v8 allObjects];
  v24 = 0;
  v19 = [PLManagedAsset countForAssetsWithUUIDs:v18 includePendingChanges:v4 inManagedObjectContext:v7 error:&v24];

  v20 = v24;
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = PLMigrationGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = self;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to fetch count for assets in memory metadata %@, %@", buf, 0x16u);
    }
  }

  v22 = v19 == [v8 count];

  return v22;
}

- (BOOL)updateAssetsInMemory:(id)a3 includePendingAssetChanges:(BOOL)a4
{
  v4 = a4;
  v36[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLPersistedMemoryMetadata *)self representativeAssetUUIDs];
  v8 = [(PLPersistedMemoryMetadata *)self _updateAssetsInMemory:v6 relationshipName:@"representativeAssets" persistedAssetUUIDs:v7 includePendingChanges:v4];

  v9 = [(PLPersistedMemoryMetadata *)self curatedAssetUUIDs];
  LOBYTE(v7) = [(PLPersistedMemoryMetadata *)self _updateAssetsInMemory:v6 relationshipName:@"curatedAssets" persistedAssetUUIDs:v9 includePendingChanges:v4];

  v10 = [(PLPersistedMemoryMetadata *)self extendedCuratedAssetUUIDs];
  LOBYTE(v9) = [(PLPersistedMemoryMetadata *)self _updateAssetsInMemory:v6 relationshipName:@"extendedCuratedAssets" persistedAssetUUIDs:v10 includePendingChanges:v4];

  v11 = [(PLPersistedMemoryMetadata *)self movieCuratedAssetUUIDs];
  LOBYTE(v10) = [(PLPersistedMemoryMetadata *)self _updateAssetsInMemory:v6 relationshipName:@"movieCuratedAssets" persistedAssetUUIDs:v11 includePendingChanges:v4];

  v12 = [(PLPersistedMemoryMetadata *)self userCuratedAssetUUIDs];
  v13 = [(PLPersistedMemoryMetadata *)self _updateAssetsInMemory:v6 relationshipName:@"userCuratedAssets" persistedAssetUUIDs:v12 includePendingChanges:v4];

  v14 = [(PLPersistedMemoryMetadata *)self userRemovedAssetUUIDs];
  v15 = [(PLPersistedMemoryMetadata *)self _updateAssetsInMemory:v6 relationshipName:@"userRemovedAssets" persistedAssetUUIDs:v14 includePendingChanges:v4];

  v16 = [(PLPersistedMemoryMetadata *)self customUserAssetUUIDs];
  v17 = ([(PLPersistedMemoryMetadata *)self _updateAssetsInMemory:v6 relationshipName:@"customUserAssets" persistedOrderedAssetUUIDs:v16 includePendingChanges:v4]&& v15) & v13 & v10 & v9 & v7 & v8;

  v18 = [(PLPersistedMemoryMetadata *)self keyAssetUUID];
  if (v18)
  {
    v19 = [v6 keyAsset];
    v20 = v19;
    if (!v19 || ([v19 uuid], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", v18), v21, (v22 & 1) == 0))
    {
      v36[0] = v18;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
      v24 = [v6 photoLibrary];
      v25 = [PLManagedAsset assetsWithUUIDs:v23 options:v4 inLibrary:v24];

      if ([v25 count])
      {
        v26 = PLMigrationGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = [v6 uuid];
          v28 = [(PLPersistedMemoryMetadata *)self metadataURL];
          v29 = [v28 path];
          v32 = 138412546;
          v33 = v27;
          v34 = 2112;
          v35 = v29;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_INFO, "Updating key asset in memory %@ to match persisted UUID from %@", &v32, 0x16u);
        }

        v30 = [v25 objectAtIndexedSubscript:0];
        [v6 setKeyAsset:v30];
      }

      else
      {
        v17 = 0;
      }
    }
  }

  return v17 & 1;
}

- (BOOL)_updateAssetsInMemory:(id)a3 relationshipName:(id)a4 persistedOrderedAssetUUIDs:(id)a5 includePendingChanges:(BOOL)a6
{
  v6 = a6;
  v68 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 valueForKey:v11];
  v14 = [v13 valueForKey:@"uuid"];

  LODWORD(v13) = [v12 isEqual:v14];
  v15 = PLMigrationGetLog();
  v16 = v15;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v14 count];
      v18 = [v10 uuid];
      *buf = 67109634;
      *v67 = v17;
      *&v67[4] = 2112;
      *&v67[6] = v11;
      *&v67[14] = 2112;
      *&v67[16] = v18;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "Persisted asset UUIDs (%d total) match database for memory %@ %@", buf, 0x1Cu);
    }

    v19 = 1;
  }

  else
  {
    v52 = v14;
    v53 = v11;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = [v10 uuid];
      v21 = [(PLPersistedMemoryMetadata *)self metadataURL];
      v22 = [v21 path];
      *buf = 138412546;
      *v67 = v20;
      *&v67[8] = 2112;
      *&v67[10] = v22;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_INFO, "Updating assets in memory %@ to match persisted UUIDs from %@", buf, 0x16u);
    }

    v54 = v12;
    v23 = [v12 array];
    v55 = v10;
    v24 = [v10 photoLibrary];
    v25 = [PLManagedAsset assetsWithUUIDs:v23 options:v6 inLibrary:v24];

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
          v32 = [v31 uuid];
          v33 = v32;
          if (v31)
          {
            v34 = v32 == 0;
          }

          else
          {
            v34 = 1;
          }

          if (!v34)
          {
            [v26 setObject:v31 forKey:v32];
          }

          v35 = [v31 uuid];

          if (!v35)
          {
            v36 = PLMigrationGetLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              v37 = [v55 uuid];
              *buf = 138543362;
              *v67 = v37;
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
              v48 = [v55 uuid];
              *buf = 138543362;
              *v67 = v48;
              _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_INFO, "Missing asset for persisted asset uuids for memory %{public}@", buf, 0xCu);
            }
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v41);
    }

    v10 = v55;
    v11 = v53;
    v49 = [v55 mutableOrderedSetValueForKey:v53];
    [v49 addObjectsFromArray:v38];
    v50 = [v16 count];
    v19 = v50 == [v39 count];

    v12 = v54;
    v14 = v52;
  }

  return v19;
}

- (BOOL)_updateAssetsInMemory:(id)a3 relationshipName:(id)a4 persistedAssetUUIDs:(id)a5 includePendingChanges:(BOOL)a6
{
  v6 = a6;
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 valueForKey:v11];
  v14 = [v13 valueForKey:@"uuid"];

  v15 = [v12 isEqual:v14];
  v16 = PLMigrationGetLog();
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v14 count];
      v19 = [v10 uuid];
      v29 = 67109634;
      *v30 = v18;
      *&v30[4] = 2112;
      *&v30[6] = v11;
      *&v30[14] = 2112;
      *&v30[16] = v19;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "Persisted asset UUIDs (%d total) match database for memory %@ %@", &v29, 0x1Cu);
    }

    v20 = 1;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v21 = [v10 uuid];
      v22 = [(PLPersistedMemoryMetadata *)self metadataURL];
      v23 = [v22 path];
      v29 = 138412546;
      *v30 = v21;
      *&v30[8] = 2112;
      *&v30[10] = v23;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_INFO, "Updating assets in memory %@ to match persisted UUIDs from %@", &v29, 0x16u);
    }

    v24 = [v12 allObjects];
    v25 = [v10 photoLibrary];
    v17 = [PLManagedAsset assetsWithUUIDs:v24 options:v6 inLibrary:v25];

    v26 = [v10 mutableSetValueForKey:v11];
    [v26 addObjectsFromArray:v17];
    v27 = [v17 count];
    v20 = v27 == [v12 count];
  }

  return v20;
}

- (id)insertMemoryFromDataInManagedObjectContext:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLPersistedMemoryMetadata *)self uuid];
  v6 = [(PLPersistedMemoryMetadata *)self title];
  v7 = [(PLPersistedMemoryMetadata *)self subtitle];
  v8 = [(PLPersistedMemoryMetadata *)self creationDate];
  v9 = [PLMemory insertIntoContext:v4 withUUID:v5 title:v6 subtitle:v7 creationDate:v8];

  [v9 setRejected:{-[PLPersistedMemoryMetadata isRejected](self, "isRejected")}];
  [v9 setFavorite:{-[PLPersistedMemoryMetadata isFavorite](self, "isFavorite")}];
  [v9 setPendingState:{-[PLPersistedMemoryMetadata pendingState](self, "pendingState")}];
  [v9 setCreationType:{-[PLPersistedMemoryMetadata creationType](self, "creationType")}];
  [v9 setUserActionOptions:{-[PLPersistedMemoryMetadata userActionOptions](self, "userActionOptions")}];
  [v9 setCategory:{-[PLPersistedMemoryMetadata category](self, "category")}];
  [v9 setSubcategory:{-[PLPersistedMemoryMetadata subcategory](self, "subcategory")}];
  v10 = [(PLPersistedMemoryMetadata *)self movieData];
  [v9 setMovieData:v10];

  v11 = [(PLPersistedMemoryMetadata *)self movieAssetState];
  [v9 setMovieAssetState:v11];

  [v9 setPhotosGraphVersion:{-[PLPersistedMemoryMetadata photosGraphVersion](self, "photosGraphVersion")}];
  v12 = [(PLPersistedMemoryMetadata *)self photosGraphData];
  [v9 setPhotosGraphData:v12];

  v13 = [(PLPersistedMemoryMetadata *)self assetListPredicate];
  [v9 setAssetListPredicate:v13];

  [v9 setNotificationState:{-[PLPersistedMemoryMetadata notificationState](self, "notificationState")}];
  [(PLPersistedMemoryMetadata *)self score];
  [v9 setScore:?];
  v14 = [(PLPersistedMemoryMetadata *)self blacklistedFeature];
  [v9 setBlacklistedFeature:v14];

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
  v26 = self;
  v16 = [(PLPersistedMemoryMetadata *)self userFeedbacksDictionaryArray];
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v33 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = [PLUserFeedback insertIntoManagedObjectContext:v4 withDictionaryRepresentation:*(*(&v27 + 1) + 8 * i)];
        if (v21)
        {
          [v15 addObject:v21];
        }

        else
        {
          v22 = PLMigrationGetLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = [(PLPersistedMemoryMetadata *)v26 uuid];
            *buf = 138543362;
            v32 = v23;
            _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_INFO, "Missing user feedback for memory %{public}@", buf, 0xCu);
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v18);
  }

  [v25 setUserFeedbacks:v15];

  return v25;
}

- (void)removePersistedData
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  metadataURL = self->_metadataURL;
  v9 = 0;
  v5 = [v3 removeItemAtURL:metadataURL error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v7 = PLMigrationGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(NSURL *)self->_metadataURL path];
      *buf = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Failed to remove persisted memory metadata %@ %@", buf, 0x16u);
    }
  }
}

- (PLPersistedMemoryMetadata)initWithPersistedDataAtURL:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PLPersistedMemoryMetadata;
  v6 = [(PLPersistedMemoryMetadata *)&v10 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_metadataURL, a3), ![(PLPersistedMemoryMetadata *)v7 _readMetadata]))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (PLPersistedMemoryMetadata)initWithPLMemory:(id)a3 pathManager:(id)a4
{
  v6 = MEMORY[0x1E695DFF8];
  v7 = a3;
  v8 = [a4 privateDirectoryWithSubType:4 createIfNeeded:1 error:0];
  v9 = [v6 fileURLWithPath:v8 isDirectory:1];

  v10 = MEMORY[0x1E696AEC0];
  v11 = [v7 uuid];
  v12 = [v10 stringWithFormat:@"%@.%@", v11, PLMemoryMetadataExtension];

  v13 = [v9 URLByAppendingPathComponent:v12];
  v14 = [(PLPersistedMemoryMetadata *)self initWithPLMemory:v7 metadataURL:v13];

  return v14;
}

- (PLPersistedMemoryMetadata)initWithPLMemory:(id)a3 metadataURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PLPersistedMemoryMetadata;
  v9 = [(PLPersistedMemoryMetadata *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memory, a3);
    objc_storeStrong(&v10->_metadataURL, a4);
    v10->_version = 2;
  }

  return v10;
}

- (PLPersistedMemoryMetadata)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PLPersistedMemoryMetadata.m" lineNumber:90 description:@"Can't initialize a PLPersistedMemoryMetadata object using -init."];

  return 0;
}

+ (BOOL)isValidPath:(id)a3
{
  v3 = [a3 pathExtension];
  v4 = [v3 isEqualToString:PLMemoryMetadataExtension];

  return v4;
}

@end