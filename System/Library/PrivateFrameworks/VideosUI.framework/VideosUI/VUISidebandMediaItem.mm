@interface VUISidebandMediaItem
- (BOOL)allowsManualDownloadRenewal;
- (BOOL)isFamilySharingContent;
- (BOOL)markedAsDeleted;
- (BOOL)renewsOfflineKeysAutomatically;
- (VUIMediaEntityAssetController)assetController;
- (VUISidebandMediaItem)initWithMediaLibrary:(id)library videoManagedObject:(id)object requestedProperties:(id)properties;
- (id)addedDate;
- (id)assetType;
- (id)availabilityEndDate;
- (id)brandID;
- (id)brandName;
- (id)canonicalID;
- (id)downloadExpirationDate;
- (id)duration;
- (id)episodeIndexInSeries;
- (id)episodeNumber;
- (id)fractionalEpisodeNumber;
- (id)genreTitle;
- (id)imageLoadParamsWithImageType:(unint64_t)type;
- (id)isLocal;
- (id)releaseDate;
- (id)seasonCanonicalID;
- (id)seasonIdentifier;
- (id)seasonNumber;
- (id)seasonTitle;
- (id)showCanonicalID;
- (id)showIdentifier;
- (id)showTitle;
- (id)storeID;
- (id)title;
- (void)dealloc;
@end

@implementation VUISidebandMediaItem

- (VUISidebandMediaItem)initWithMediaLibrary:(id)library videoManagedObject:(id)object requestedProperties:(id)properties
{
  libraryCopy = library;
  objectCopy = object;
  propertiesCopy = properties;
  if (libraryCopy)
  {
    if (objectCopy)
    {
      goto LABEL_3;
    }

LABEL_13:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"videoManagedObject"}];
    if (propertiesCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaLibrary"}];
  if (!objectCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (propertiesCopy)
  {
    goto LABEL_4;
  }

LABEL_14:
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"requestedProperties"}];
LABEL_4:
  v11 = +[VUIMediaEntityType movie];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = +[VUIMediaEntityType movie];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v12 = +[VUIMediaEntityType episode];
  }

  v13 = v12;

  v11 = v13;
LABEL_9:
  v14 = [VUISidebandMediaEntityIdentifier alloc];
  objectID = [objectCopy objectID];
  v16 = [(VUISidebandMediaEntityIdentifier *)v14 initWithManagedObjectID:objectID mediaEntityType:v11];

  v17 = VUISidebandMediaItemKind();
  v22.receiver = self;
  v22.super_class = VUISidebandMediaItem;
  v18 = [(VUIMediaEntity *)&v22 initWithMediaLibrary:libraryCopy identifier:v16 requestedProperties:propertiesCopy kind:v17];

  if (v18)
  {
    objc_storeStrong(&v18->_videoManagedObject, object);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    objectID2 = [(VUIVideoManagedObject *)v18->_videoManagedObject objectID];
    [defaultCenter addObserver:v18 selector:sel__videoManagedObjectPlaybackExpirationWillChange_ name:@"VUIVideoManagedObjectPlaybackExpirationWillChangeNotification" object:objectID2];
  }

  return v18;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUISidebandMediaItem;
  [(VUISidebandMediaItem *)&v4 dealloc];
}

- (id)assetType
{
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__29;
  v19 = __Block_byref_object_dispose__29;
  v20 = 0;
  managedObjectContext = [videoManagedObject managedObjectContext];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __33__VUISidebandMediaItem_assetType__block_invoke;
  v12 = &unk_1E872E5B0;
  v14 = &v15;
  v4 = videoManagedObject;
  v13 = v4;
  [managedObjectContext performBlockAndWait:&v9];

  v5 = v16[5];
  if (v5)
  {
    if ([v5 isEqualToNumber:{&unk_1F5E5DD58, v9, v10, v11, v12}])
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v6, v9, v10, v11, v12}];

  _Block_object_dispose(&v15, 8);

  return v7;
}

void __33__VUISidebandMediaItem_assetType__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entitlementType];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)isFamilySharingContent
{
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__29;
  v18 = __Block_byref_object_dispose__29;
  v19 = 0;
  managedObjectContext = [videoManagedObject managedObjectContext];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __46__VUISidebandMediaItem_isFamilySharingContent__block_invoke;
  v11 = &unk_1E872E5B0;
  v13 = &v14;
  v4 = videoManagedObject;
  v12 = v4;
  [managedObjectContext performBlockAndWait:&v8];

  v5 = v15[5];
  if (v5)
  {
    v6 = [v5 isEqualToNumber:{&unk_1F5E5DD58, v8, v9, v10, v11}];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v14, 8);
  return v6;
}

void __46__VUISidebandMediaItem_isFamilySharingContent__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) entitlementType];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)canonicalID
{
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__29;
  v14 = __Block_byref_object_dispose__29;
  v15 = 0;
  managedObjectContext = [videoManagedObject managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__VUISidebandMediaItem_canonicalID__block_invoke;
  v7[3] = &unk_1E872E5B0;
  v9 = &v10;
  v4 = videoManagedObject;
  v8 = v4;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __35__VUISidebandMediaItem_canonicalID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) canonicalID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)markedAsDeleted
{
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  managedObjectContext = [videoManagedObject managedObjectContext];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__VUISidebandMediaItem_markedAsDeleted__block_invoke;
  v6[3] = &unk_1E872E5B0;
  v8 = &v9;
  v4 = videoManagedObject;
  v7 = v4;
  [managedObjectContext performBlockAndWait:v6];

  LOBYTE(managedObjectContext) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return managedObjectContext;
}

uint64_t __39__VUISidebandMediaItem_markedAsDeleted__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) markedAsDeleted];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)title
{
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__29;
  v15 = __Block_byref_object_dispose__29;
  v16 = 0;
  managedObjectContext = [videoManagedObject managedObjectContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__VUISidebandMediaItem_title__block_invoke;
  v8[3] = &unk_1E872E5B0;
  v10 = &v11;
  v4 = videoManagedObject;
  v9 = v4;
  [managedObjectContext performBlockAndWait:v8];

  v5 = v12[5];
  if (!v5)
  {
    v12[5] = &stru_1F5DB25C0;

    v5 = v12[5];
  }

  v6 = v5;

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __29__VUISidebandMediaItem_title__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) title];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)duration
{
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__29;
  v14 = __Block_byref_object_dispose__29;
  v15 = 0;
  managedObjectContext = [videoManagedObject managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__VUISidebandMediaItem_duration__block_invoke;
  v7[3] = &unk_1E872E5B0;
  v9 = &v10;
  v4 = videoManagedObject;
  v8 = v4;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __32__VUISidebandMediaItem_duration__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) duration];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)genreTitle
{
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__29;
  v14 = __Block_byref_object_dispose__29;
  v15 = &stru_1F5DB25C0;
  managedObjectContext = [videoManagedObject managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__VUISidebandMediaItem_genreTitle__block_invoke;
  v7[3] = &unk_1E872E5B0;
  v9 = &v10;
  v4 = videoManagedObject;
  v8 = v4;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __34__VUISidebandMediaItem_genreTitle__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) genreName];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)addedDate
{
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__29;
  v14 = __Block_byref_object_dispose__29;
  v15 = 0;
  managedObjectContext = [videoManagedObject managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__VUISidebandMediaItem_addedDate__block_invoke;
  v7[3] = &unk_1E872E5B0;
  v9 = &v10;
  v4 = videoManagedObject;
  v8 = v4;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __33__VUISidebandMediaItem_addedDate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dateAdded];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)releaseDate
{
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__29;
  v14 = __Block_byref_object_dispose__29;
  v15 = 0;
  managedObjectContext = [videoManagedObject managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__VUISidebandMediaItem_releaseDate__block_invoke;
  v7[3] = &unk_1E872E5B0;
  v9 = &v10;
  v4 = videoManagedObject;
  v8 = v4;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __35__VUISidebandMediaItem_releaseDate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) releaseDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)storeID
{
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__29;
  v14 = __Block_byref_object_dispose__29;
  v15 = 0;
  managedObjectContext = [videoManagedObject managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__VUISidebandMediaItem_storeID__block_invoke;
  v7[3] = &unk_1E872DB58;
  v4 = videoManagedObject;
  v8 = v4;
  v9 = &v10;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __31__VUISidebandMediaItem_storeID__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) adamID];
  v2 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v5, "longLongValue")}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)isLocal
{
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__29;
  v14 = __Block_byref_object_dispose__29;
  v15 = MEMORY[0x1E695E110];
  managedObjectContext = [videoManagedObject managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__VUISidebandMediaItem_isLocal__block_invoke;
  v7[3] = &unk_1E872E5B0;
  v9 = &v10;
  v4 = videoManagedObject;
  v8 = v4;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __31__VUISidebandMediaItem_isLocal__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 32), "downloadState") == 2}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)showTitle
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__29;
  v18 = __Block_byref_object_dispose__29;
  v19 = 0;
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    videoManagedObject2 = [(VUISidebandMediaItem *)self videoManagedObject];
    managedObjectContext = [videoManagedObject2 managedObjectContext];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __33__VUISidebandMediaItem_showTitle__block_invoke;
    v11[3] = &unk_1E872E5B0;
    v13 = &v14;
    v7 = videoManagedObject2;
    v12 = v7;
    [managedObjectContext performBlockAndWait:v11];
  }

  v8 = v15[5];
  if (!v8)
  {
    v15[5] = &stru_1F5DB25C0;

    v8 = v15[5];
  }

  v9 = v8;
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __33__VUISidebandMediaItem_showTitle__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) series];
  v2 = [v5 title];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)showIdentifier
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__29;
  v17 = __Block_byref_object_dispose__29;
  v18 = 0;
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    videoManagedObject2 = [(VUISidebandMediaItem *)self videoManagedObject];
    managedObjectContext = [videoManagedObject2 managedObjectContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __38__VUISidebandMediaItem_showIdentifier__block_invoke;
    v10[3] = &unk_1E872DB58;
    v7 = videoManagedObject2;
    v11 = v7;
    v12 = &v13;
    [managedObjectContext performBlockAndWait:v10];
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __38__VUISidebandMediaItem_showIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) series];
  v8 = [v2 objectID];

  if (v8)
  {
    v3 = [VUISidebandMediaEntityIdentifier alloc];
    v4 = +[VUIMediaEntityType show];
    v5 = [(VUISidebandMediaEntityIdentifier *)v3 initWithManagedObjectID:v8 mediaEntityType:v4];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (id)seasonNumber
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__29;
  v17 = __Block_byref_object_dispose__29;
  v18 = 0;
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    videoManagedObject2 = [(VUISidebandMediaItem *)self videoManagedObject];
    managedObjectContext = [videoManagedObject2 managedObjectContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __36__VUISidebandMediaItem_seasonNumber__block_invoke;
    v10[3] = &unk_1E872E5B0;
    v12 = &v13;
    v7 = videoManagedObject2;
    v11 = v7;
    [managedObjectContext performBlockAndWait:v10];
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __36__VUISidebandMediaItem_seasonNumber__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) season];
  v2 = [v5 seasonNumber];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)seasonTitle
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__29;
  v17 = __Block_byref_object_dispose__29;
  v18 = 0;
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    videoManagedObject2 = [(VUISidebandMediaItem *)self videoManagedObject];
    managedObjectContext = [videoManagedObject2 managedObjectContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __35__VUISidebandMediaItem_seasonTitle__block_invoke;
    v10[3] = &unk_1E872E5B0;
    v12 = &v13;
    v7 = videoManagedObject2;
    v11 = v7;
    [managedObjectContext performBlockAndWait:v10];
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __35__VUISidebandMediaItem_seasonTitle__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) season];
  v2 = [v5 title];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)seasonIdentifier
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__29;
  v17 = __Block_byref_object_dispose__29;
  v18 = 0;
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    videoManagedObject2 = [(VUISidebandMediaItem *)self videoManagedObject];
    managedObjectContext = [videoManagedObject2 managedObjectContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__VUISidebandMediaItem_seasonIdentifier__block_invoke;
    v10[3] = &unk_1E872DB58;
    v7 = videoManagedObject2;
    v11 = v7;
    v12 = &v13;
    [managedObjectContext performBlockAndWait:v10];
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __40__VUISidebandMediaItem_seasonIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) season];
  v11 = [v2 objectID];

  v3 = [*(a1 + 32) series];
  v4 = [v3 objectID];

  v5 = v11;
  if (v11 || (v5 = v4) != 0)
  {
    v6 = [VUISidebandMediaEntityIdentifier alloc];
    v7 = +[VUIMediaEntityType season];
    v8 = [(VUISidebandMediaEntityIdentifier *)v6 initWithManagedObjectID:v5 mediaEntityType:v7];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (id)seasonCanonicalID
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__29;
  v17 = __Block_byref_object_dispose__29;
  v18 = 0;
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    videoManagedObject2 = [(VUISidebandMediaItem *)self videoManagedObject];
    managedObjectContext = [videoManagedObject2 managedObjectContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__VUISidebandMediaItem_seasonCanonicalID__block_invoke;
    v10[3] = &unk_1E872E5B0;
    v12 = &v13;
    v7 = videoManagedObject2;
    v11 = v7;
    [managedObjectContext performBlockAndWait:v10];
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __41__VUISidebandMediaItem_seasonCanonicalID__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) season];
  v2 = [v5 canonicalID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)showCanonicalID
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__29;
  v17 = __Block_byref_object_dispose__29;
  v18 = 0;
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    videoManagedObject2 = [(VUISidebandMediaItem *)self videoManagedObject];
    managedObjectContext = [videoManagedObject2 managedObjectContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__VUISidebandMediaItem_showCanonicalID__block_invoke;
    v10[3] = &unk_1E872E5B0;
    v12 = &v13;
    v7 = videoManagedObject2;
    v11 = v7;
    [managedObjectContext performBlockAndWait:v10];
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __39__VUISidebandMediaItem_showCanonicalID__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) series];
  v2 = [v5 canonicalID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)episodeNumber
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__29;
  v17 = __Block_byref_object_dispose__29;
  v18 = 0;
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    videoManagedObject2 = [(VUISidebandMediaItem *)self videoManagedObject];
    managedObjectContext = [videoManagedObject2 managedObjectContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__VUISidebandMediaItem_episodeNumber__block_invoke;
    v10[3] = &unk_1E872E5B0;
    v12 = &v13;
    v7 = videoManagedObject2;
    v11 = v7;
    [managedObjectContext performBlockAndWait:v10];
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __37__VUISidebandMediaItem_episodeNumber__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) episodeNumberInSeason];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)fractionalEpisodeNumber
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__29;
  v17 = __Block_byref_object_dispose__29;
  v18 = 0;
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    videoManagedObject2 = [(VUISidebandMediaItem *)self videoManagedObject];
    managedObjectContext = [videoManagedObject2 managedObjectContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__VUISidebandMediaItem_fractionalEpisodeNumber__block_invoke;
    v10[3] = &unk_1E872E5B0;
    v12 = &v13;
    v7 = videoManagedObject2;
    v11 = v7;
    [managedObjectContext performBlockAndWait:v10];
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __47__VUISidebandMediaItem_fractionalEpisodeNumber__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fractionalEpisodeNumberInSeason];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)episodeIndexInSeries
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__29;
  v17 = __Block_byref_object_dispose__29;
  v18 = 0;
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    videoManagedObject2 = [(VUISidebandMediaItem *)self videoManagedObject];
    managedObjectContext = [videoManagedObject2 managedObjectContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__VUISidebandMediaItem_episodeIndexInSeries__block_invoke;
    v10[3] = &unk_1E872E5B0;
    v12 = &v13;
    v7 = videoManagedObject2;
    v11 = v7;
    [managedObjectContext performBlockAndWait:v10];
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __44__VUISidebandMediaItem_episodeIndexInSeries__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) episodeNumberInSeries];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)downloadExpirationDate
{
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__29;
  v14 = __Block_byref_object_dispose__29;
  v15 = 0;
  managedObjectContext = [videoManagedObject managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__VUISidebandMediaItem_downloadExpirationDate__block_invoke;
  v7[3] = &unk_1E872E5B0;
  v9 = &v10;
  v4 = videoManagedObject;
  v8 = v4;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __46__VUISidebandMediaItem_downloadExpirationDate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) expirationDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)availabilityEndDate
{
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__29;
  v14 = __Block_byref_object_dispose__29;
  v15 = 0;
  managedObjectContext = [videoManagedObject managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__VUISidebandMediaItem_availabilityEndDate__block_invoke;
  v7[3] = &unk_1E872E5B0;
  v9 = &v10;
  v4 = videoManagedObject;
  v8 = v4;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __43__VUISidebandMediaItem_availabilityEndDate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) availabilityEndDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)allowsManualDownloadRenewal
{
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  managedObjectContext = [videoManagedObject managedObjectContext];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__VUISidebandMediaItem_allowsManualDownloadRenewal__block_invoke;
  v6[3] = &unk_1E872E5B0;
  v8 = &v9;
  v4 = videoManagedObject;
  v7 = v4;
  [managedObjectContext performBlockAndWait:v6];

  LOBYTE(managedObjectContext) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return managedObjectContext;
}

uint64_t __51__VUISidebandMediaItem_allowsManualDownloadRenewal__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) allowsManualRenewal];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)renewsOfflineKeysAutomatically
{
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  managedObjectContext = [videoManagedObject managedObjectContext];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__VUISidebandMediaItem_renewsOfflineKeysAutomatically__block_invoke;
  v6[3] = &unk_1E872E5B0;
  v8 = &v9;
  v4 = videoManagedObject;
  v7 = v4;
  [managedObjectContext performBlockAndWait:v6];

  LOBYTE(managedObjectContext) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return managedObjectContext;
}

void __54__VUISidebandMediaItem_renewsOfflineKeysAutomatically__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) offlineKeyRenewalPolicy];
  *(*(*(a1 + 40) + 8) + 24) = [v2 integerValue] == 1;
}

- (id)brandID
{
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__29;
  v14 = __Block_byref_object_dispose__29;
  v15 = 0;
  managedObjectContext = [videoManagedObject managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__VUISidebandMediaItem_brandID__block_invoke;
  v7[3] = &unk_1E872E5B0;
  v9 = &v10;
  v4 = videoManagedObject;
  v8 = v4;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __31__VUISidebandMediaItem_brandID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) brandID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)brandName
{
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__29;
  v14 = __Block_byref_object_dispose__29;
  v15 = 0;
  managedObjectContext = [videoManagedObject managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__VUISidebandMediaItem_brandName__block_invoke;
  v7[3] = &unk_1E872E5B0;
  v9 = &v10;
  v4 = videoManagedObject;
  v8 = v4;
  [managedObjectContext performBlockAndWait:v7];

  v5 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __33__VUISidebandMediaItem_brandName__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) brandName];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (VUIMediaEntityAssetController)assetController
{
  assetController = self->_assetController;
  if (!assetController)
  {
    v4 = [VUIUniversalAssetController alloc];
    videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
    v6 = [(VUIUniversalAssetController *)v4 initWithVideoManagedObject:videoManagedObject];
    v7 = self->_assetController;
    self->_assetController = v6;

    assetController = self->_assetController;
  }

  return assetController;
}

- (id)imageLoadParamsWithImageType:(unint64_t)type
{
  v5 = [VUISidebandMediaEntityImageLoadParams alloc];
  videoManagedObject = [(VUISidebandMediaItem *)self videoManagedObject];
  v7 = [(VUISidebandMediaEntityImageLoadParams *)v5 initWithVideoManagedObject:videoManagedObject imageType:type];

  return v7;
}

@end