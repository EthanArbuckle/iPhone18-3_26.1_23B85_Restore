@interface PLInternalResourceSidecarRepresentation
- (NSDate)captureDate;
- (NSDate)modificationDate;
- (NSManagedObjectID)objectID;
- (NSNumber)compressedSize;
- (NSNumber)index;
- (NSString)description;
- (NSString)filename;
- (NSString)originalFilename;
- (NSString)uniformTypeIdentifier;
- (NSURL)fileURL;
- (PLInternalResource)resource;
- (PLInternalResourceSidecarRepresentation)initWithResource:(id)resource;
- (PLManagedAsset)asset;
- (id)extension;
- (int64_t)ptpTrashedState;
- (signed)indexValue;
- (unint64_t)compressedSizeValue;
- (unsigned)resourceType;
- (void)setPtpTrashedState:(int64_t)state;
@end

@implementation PLInternalResourceSidecarRepresentation

- (PLInternalResource)resource
{
  WeakRetained = objc_loadWeakRetained(&self->_resource);

  return WeakRetained;
}

- (unsigned)resourceType
{
  resource = [(PLInternalResourceSidecarRepresentation *)self resource];
  resourceType = [resource resourceType];

  return resourceType;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = PLInternalResourceSidecarRepresentation;
  v3 = [(PLInternalResourceSidecarRepresentation *)&v10 description];
  filename = [(PLInternalResourceSidecarRepresentation *)self filename];
  fileURL = [(PLInternalResourceSidecarRepresentation *)self fileURL];
  compressedSize = [(PLInternalResourceSidecarRepresentation *)self compressedSize];
  index = [(PLInternalResourceSidecarRepresentation *)self index];
  v8 = [v3 stringByAppendingFormat:@" filename: %@, fileURL: %@, compressedSize: %@, index: %@, trashedState: %ld", filename, fileURL, compressedSize, index, -[PLInternalResourceSidecarRepresentation ptpTrashedState](self, "ptpTrashedState")];

  return v8;
}

- (NSURL)fileURL
{
  resource = [(PLInternalResourceSidecarRepresentation *)self resource];
  fileURL = [resource fileURL];

  if (!fileURL)
  {
    resource2 = [(PLInternalResourceSidecarRepresentation *)self resource];
    pathManager = [resource2 pathManager];
    isUBF = [pathManager isUBF];

    resource3 = [(PLInternalResourceSidecarRepresentation *)self resource];
    v9 = resource3;
    if (isUBF)
    {
      photoLibrary = [resource3 photoLibrary];
      pathManager2 = [photoLibrary pathManager];

      v24 = objc_alloc(MEMORY[0x1E69BF298]);
      resource4 = [(PLInternalResourceSidecarRepresentation *)self resource];
      asset = [resource4 asset];
      uuid = [asset uuid];
      resource5 = [(PLInternalResourceSidecarRepresentation *)self resource];
      asset2 = [resource5 asset];
      bundleScope = [asset2 bundleScope];
      resource6 = [(PLInternalResourceSidecarRepresentation *)self resource];
      uniformTypeIdentifier = [resource6 uniformTypeIdentifier];
      identifier = [uniformTypeIdentifier identifier];
      resource7 = [(PLInternalResourceSidecarRepresentation *)self resource];
      filename = [v24 initWithAssetUuid:uuid bundleScope:bundleScope uti:identifier resourceVersion:0 resourceType:{objc_msgSend(resource7, "resourceType")}];

      [pathManager2 readOnlyUrlWithIdentifier:filename];
    }

    else
    {
      asset3 = [resource3 asset];
      mainFileURL = [asset3 mainFileURL];
      pathManager2 = [mainFileURL URLByDeletingLastPathComponent];

      filename = [(PLInternalResourceSidecarRepresentation *)self filename];
      [pathManager2 URLByAppendingPathComponent:filename];
    }
    fileURL = ;
  }

  return fileURL;
}

- (NSManagedObjectID)objectID
{
  resource = [(PLInternalResourceSidecarRepresentation *)self resource];
  objectID = [resource objectID];

  return objectID;
}

- (NSString)originalFilename
{
  resource = [(PLInternalResourceSidecarRepresentation *)self resource];
  asset = [resource asset];
  originalFilename = [asset originalFilename];
  stringByDeletingPathExtension = [originalFilename stringByDeletingPathExtension];

  extension = [(PLInternalResourceSidecarRepresentation *)self extension];
  v8 = [stringByDeletingPathExtension stringByAppendingPathExtension:extension];

  return v8;
}

- (NSString)filename
{
  resource = [(PLInternalResourceSidecarRepresentation *)self resource];
  asset = [resource asset];
  filename = [asset filename];
  stringByDeletingPathExtension = [filename stringByDeletingPathExtension];

  extension = [(PLInternalResourceSidecarRepresentation *)self extension];
  v8 = [stringByDeletingPathExtension stringByAppendingPathExtension:extension];

  return v8;
}

- (unint64_t)compressedSizeValue
{
  resource = [(PLInternalResourceSidecarRepresentation *)self resource];
  dataLength = [resource dataLength];

  return dataLength;
}

- (signed)indexValue
{
  resource = [(PLInternalResourceSidecarRepresentation *)self resource];
  sidecarIndex = [resource sidecarIndex];
  shortValue = [sidecarIndex shortValue];

  return shortValue;
}

- (int64_t)ptpTrashedState
{
  resource = [(PLInternalResourceSidecarRepresentation *)self resource];
  ptpTrashedState = [resource ptpTrashedState];

  return ptpTrashedState;
}

- (void)setPtpTrashedState:(int64_t)state
{
  resource = [(PLInternalResourceSidecarRepresentation *)self resource];
  [resource setPtpTrashedState:state];
}

- (NSNumber)index
{
  resource = [(PLInternalResourceSidecarRepresentation *)self resource];
  sidecarIndex = [resource sidecarIndex];

  return sidecarIndex;
}

- (PLManagedAsset)asset
{
  resource = [(PLInternalResourceSidecarRepresentation *)self resource];
  asset = [resource asset];

  return asset;
}

- (NSNumber)compressedSize
{
  v2 = MEMORY[0x1E696AD98];
  resource = [(PLInternalResourceSidecarRepresentation *)self resource];
  v4 = [v2 numberWithLongLong:{objc_msgSend(resource, "dataLength")}];

  return v4;
}

- (NSString)uniformTypeIdentifier
{
  resource = [(PLInternalResourceSidecarRepresentation *)self resource];
  uniformTypeIdentifier = [resource uniformTypeIdentifier];
  identifier = [uniformTypeIdentifier identifier];

  return identifier;
}

- (NSDate)modificationDate
{
  resource = [(PLInternalResourceSidecarRepresentation *)self resource];
  asset = [resource asset];
  modificationDate = [asset modificationDate];

  return modificationDate;
}

- (NSDate)captureDate
{
  resource = [(PLInternalResourceSidecarRepresentation *)self resource];
  asset = [resource asset];
  dateCreated = [asset dateCreated];

  return dateCreated;
}

- (PLInternalResourceSidecarRepresentation)initWithResource:(id)resource
{
  resourceCopy = resource;
  v9.receiver = self;
  v9.super_class = PLInternalResourceSidecarRepresentation;
  v6 = [(PLInternalResourceSidecarRepresentation *)&v9 init];
  if (v6)
  {
    if (!resourceCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"PLInternalResource+SidecarAdoption.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"resource"}];
    }

    objc_storeWeak(&v6->_resource, resourceCopy);
  }

  return v6;
}

- (id)extension
{
  resource = [(PLInternalResourceSidecarRepresentation *)self resource];
  fileURL = [resource fileURL];

  resource2 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v6 = resource2;
  if (fileURL)
  {
    fileURL2 = [resource2 fileURL];
    pathExtension = [fileURL2 pathExtension];

    identifier = v6;
    goto LABEL_11;
  }

  uniformTypeIdentifier = [resource2 uniformTypeIdentifier];
  identifier = [uniformTypeIdentifier identifier];

  resource3 = [(PLInternalResourceSidecarRepresentation *)self resource];
  if ([resource3 resourceType] != 5)
  {

    goto LABEL_8;
  }

  v12 = [MEMORY[0x1E69C08F0] typeWithIdentifier:identifier];
  v13 = [v12 isEqual:*MEMORY[0x1E6982D60]];

  if (!v13)
  {
LABEL_8:
    resource4 = [(PLInternalResourceSidecarRepresentation *)self resource];
    uniformTypeIdentifier2 = [resource4 uniformTypeIdentifier];
    pathExtension = [uniformTypeIdentifier2 preferredExtension];

    goto LABEL_11;
  }

  resource5 = [(PLInternalResourceSidecarRepresentation *)self resource];
  pathManager = [resource5 pathManager];
  isUBF = [pathManager isUBF];

  v17 = *MEMORY[0x1E69C0E20];
  if (isUBF)
  {
    uppercaseString = v17;
  }

  else
  {
    uppercaseString = [v17 uppercaseString];
  }

  pathExtension = uppercaseString;
LABEL_11:

  resource6 = [(PLInternalResourceSidecarRepresentation *)self resource];
  resourceType = [resource6 resourceType];

  if (resourceType == 3)
  {
    uppercaseString2 = [pathExtension uppercaseString];

    pathExtension = uppercaseString2;
  }

  return pathExtension;
}

@end