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
- (PLInternalResourceSidecarRepresentation)initWithResource:(id)a3;
- (PLManagedAsset)asset;
- (id)extension;
- (int64_t)ptpTrashedState;
- (signed)indexValue;
- (unint64_t)compressedSizeValue;
- (unsigned)resourceType;
- (void)setPtpTrashedState:(int64_t)a3;
@end

@implementation PLInternalResourceSidecarRepresentation

- (PLInternalResource)resource
{
  WeakRetained = objc_loadWeakRetained(&self->_resource);

  return WeakRetained;
}

- (unsigned)resourceType
{
  v2 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v3 = [v2 resourceType];

  return v3;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = PLInternalResourceSidecarRepresentation;
  v3 = [(PLInternalResourceSidecarRepresentation *)&v10 description];
  v4 = [(PLInternalResourceSidecarRepresentation *)self filename];
  v5 = [(PLInternalResourceSidecarRepresentation *)self fileURL];
  v6 = [(PLInternalResourceSidecarRepresentation *)self compressedSize];
  v7 = [(PLInternalResourceSidecarRepresentation *)self index];
  v8 = [v3 stringByAppendingFormat:@" filename: %@, fileURL: %@, compressedSize: %@, index: %@, trashedState: %ld", v4, v5, v6, v7, -[PLInternalResourceSidecarRepresentation ptpTrashedState](self, "ptpTrashedState")];

  return v8;
}

- (NSURL)fileURL
{
  v3 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v4 = [v3 fileURL];

  if (!v4)
  {
    v5 = [(PLInternalResourceSidecarRepresentation *)self resource];
    v6 = [v5 pathManager];
    v7 = [v6 isUBF];

    v8 = [(PLInternalResourceSidecarRepresentation *)self resource];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 photoLibrary];
      v11 = [v10 pathManager];

      v24 = objc_alloc(MEMORY[0x1E69BF298]);
      v26 = [(PLInternalResourceSidecarRepresentation *)self resource];
      v25 = [v26 asset];
      v12 = [v25 uuid];
      v13 = [(PLInternalResourceSidecarRepresentation *)self resource];
      v14 = [v13 asset];
      v15 = [v14 bundleScope];
      v16 = [(PLInternalResourceSidecarRepresentation *)self resource];
      v17 = [v16 uniformTypeIdentifier];
      v18 = [v17 identifier];
      v19 = [(PLInternalResourceSidecarRepresentation *)self resource];
      v20 = [v24 initWithAssetUuid:v12 bundleScope:v15 uti:v18 resourceVersion:0 resourceType:{objc_msgSend(v19, "resourceType")}];

      [v11 readOnlyUrlWithIdentifier:v20];
    }

    else
    {
      v21 = [v8 asset];
      v22 = [v21 mainFileURL];
      v11 = [v22 URLByDeletingLastPathComponent];

      v20 = [(PLInternalResourceSidecarRepresentation *)self filename];
      [v11 URLByAppendingPathComponent:v20];
    }
    v4 = ;
  }

  return v4;
}

- (NSManagedObjectID)objectID
{
  v2 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v3 = [v2 objectID];

  return v3;
}

- (NSString)originalFilename
{
  v3 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v4 = [v3 asset];
  v5 = [v4 originalFilename];
  v6 = [v5 stringByDeletingPathExtension];

  v7 = [(PLInternalResourceSidecarRepresentation *)self extension];
  v8 = [v6 stringByAppendingPathExtension:v7];

  return v8;
}

- (NSString)filename
{
  v3 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v4 = [v3 asset];
  v5 = [v4 filename];
  v6 = [v5 stringByDeletingPathExtension];

  v7 = [(PLInternalResourceSidecarRepresentation *)self extension];
  v8 = [v6 stringByAppendingPathExtension:v7];

  return v8;
}

- (unint64_t)compressedSizeValue
{
  v2 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v3 = [v2 dataLength];

  return v3;
}

- (signed)indexValue
{
  v2 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v3 = [v2 sidecarIndex];
  v4 = [v3 shortValue];

  return v4;
}

- (int64_t)ptpTrashedState
{
  v2 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v3 = [v2 ptpTrashedState];

  return v3;
}

- (void)setPtpTrashedState:(int64_t)a3
{
  v4 = [(PLInternalResourceSidecarRepresentation *)self resource];
  [v4 setPtpTrashedState:a3];
}

- (NSNumber)index
{
  v2 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v3 = [v2 sidecarIndex];

  return v3;
}

- (PLManagedAsset)asset
{
  v2 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v3 = [v2 asset];

  return v3;
}

- (NSNumber)compressedSize
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v4 = [v2 numberWithLongLong:{objc_msgSend(v3, "dataLength")}];

  return v4;
}

- (NSString)uniformTypeIdentifier
{
  v2 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v3 = [v2 uniformTypeIdentifier];
  v4 = [v3 identifier];

  return v4;
}

- (NSDate)modificationDate
{
  v2 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v3 = [v2 asset];
  v4 = [v3 modificationDate];

  return v4;
}

- (NSDate)captureDate
{
  v2 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v3 = [v2 asset];
  v4 = [v3 dateCreated];

  return v4;
}

- (PLInternalResourceSidecarRepresentation)initWithResource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLInternalResourceSidecarRepresentation;
  v6 = [(PLInternalResourceSidecarRepresentation *)&v9 init];
  if (v6)
  {
    if (!v5)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:v6 file:@"PLInternalResource+SidecarAdoption.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"resource"}];
    }

    objc_storeWeak(&v6->_resource, v5);
  }

  return v6;
}

- (id)extension
{
  v3 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v4 = [v3 fileURL];

  v5 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 fileURL];
    v8 = [v7 pathExtension];

    v9 = v6;
    goto LABEL_11;
  }

  v10 = [v5 uniformTypeIdentifier];
  v9 = [v10 identifier];

  v11 = [(PLInternalResourceSidecarRepresentation *)self resource];
  if ([v11 resourceType] != 5)
  {

    goto LABEL_8;
  }

  v12 = [MEMORY[0x1E69C08F0] typeWithIdentifier:v9];
  v13 = [v12 isEqual:*MEMORY[0x1E6982D60]];

  if (!v13)
  {
LABEL_8:
    v19 = [(PLInternalResourceSidecarRepresentation *)self resource];
    v20 = [v19 uniformTypeIdentifier];
    v8 = [v20 preferredExtension];

    goto LABEL_11;
  }

  v14 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v15 = [v14 pathManager];
  v16 = [v15 isUBF];

  v17 = *MEMORY[0x1E69C0E20];
  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = [v17 uppercaseString];
  }

  v8 = v18;
LABEL_11:

  v21 = [(PLInternalResourceSidecarRepresentation *)self resource];
  v22 = [v21 resourceType];

  if (v22 == 3)
  {
    v23 = [v8 uppercaseString];

    v8 = v23;
  }

  return v8;
}

@end