@interface PLValidatedExternalResource
+ (id)resourceWithExternalResource:(id)resource;
- (BOOL)isEqualToValidatedExternalResource:(id)resource;
- (BOOL)isOriginalResource;
- (NSString)description;
- (PLValidatedExternalResource)init;
- (unint64_t)cplTypeWithAssetID:(id)d;
- (void)persistResourceTypeToFileURL;
- (void)setTrashedStateFromURL;
@end

@implementation PLValidatedExternalResource

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  resourceType = [(PLValidatedExternalResource *)self resourceType];
  if (resourceType > 0x1F)
  {
    v7 = @"invalid";
  }

  else
  {
    v7 = off_1E75663B0[resourceType];
  }

  v8 = v7;
  version = [(PLValidatedExternalResource *)self version];
  if (version > 2)
  {
    v10 = @"cur";
  }

  else
  {
    v10 = off_1E75664B0[version];
  }

  v11 = v10;
  unorientedWidth = [(PLValidatedExternalResource *)self unorientedWidth];
  unorientedHeight = [(PLValidatedExternalResource *)self unorientedHeight];
  uniformTypeIdentifier = [(PLValidatedExternalResource *)self uniformTypeIdentifier];
  identifier = [uniformTypeIdentifier identifier];
  v16 = [v3 stringWithFormat:@"<%@: %p> type: %@, ver: %@, width: %lu, height: %lu, uti: %@", v5, self, v8, v11, unorientedWidth, unorientedHeight, identifier];

  return v16;
}

- (void)persistResourceTypeToFileURL
{
  v3 = MEMORY[0x1E69BF230];
  fileURL = [(PLValidatedExternalResource *)self fileURL];
  v6 = [v3 filesystemPersistenceBatchItemForFileAtURL:fileURL];

  resourceType = [(PLValidatedExternalResource *)self resourceType];
  [v6 setUInt16:resourceType forKey:*MEMORY[0x1E69BFE10]];
  [v6 persist];
}

- (BOOL)isEqualToValidatedExternalResource:(id)resource
{
  resourceCopy = resource;
  if (!resourceCopy)
  {
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !PLResourceIdentityIsEqual(self, resourceCopy))
  {
    goto LABEL_22;
  }

  fileURL = [(PLValidatedExternalResource *)self fileURL];

  if (fileURL)
  {
    fileURL2 = [(PLValidatedExternalResource *)self fileURL];
    fileURL3 = [resourceCopy fileURL];
    v8 = [fileURL2 isEqual:fileURL3];

    if ((v8 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    fileURL4 = [resourceCopy fileURL];

    if (fileURL4)
    {
      goto LABEL_22;
    }
  }

  dataLength = [(PLValidatedExternalResource *)self dataLength];
  if (dataLength != [resourceCopy dataLength])
  {
    goto LABEL_22;
  }

  unorientedWidth = [(PLValidatedExternalResource *)self unorientedWidth];
  if (unorientedWidth != [resourceCopy unorientedWidth])
  {
    goto LABEL_22;
  }

  unorientedHeight = [(PLValidatedExternalResource *)self unorientedHeight];
  if (unorientedHeight != [resourceCopy unorientedHeight])
  {
    goto LABEL_22;
  }

  codecFourCharCode = [(PLValidatedExternalResource *)self codecFourCharCode];
  if (codecFourCharCode || ([resourceCopy codecFourCharCode], (fileURL3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    codecFourCharCode2 = [(PLValidatedExternalResource *)self codecFourCharCode];
    codecFourCharCode3 = [resourceCopy codecFourCharCode];
    v16 = [codecFourCharCode2 isEqualToString:codecFourCharCode3];

    if (codecFourCharCode)
    {

      if (!v16)
      {
        goto LABEL_22;
      }
    }

    else
    {

      if ((v16 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  trashedState = [(PLValidatedExternalResource *)self trashedState];
  if (trashedState == [resourceCopy trashedState])
  {
    trashedDate = [(PLValidatedExternalResource *)self trashedDate];
    if (trashedDate || ([resourceCopy trashedDate], (fileURL3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      trashedDate2 = [(PLValidatedExternalResource *)self trashedDate];
      trashedDate3 = [resourceCopy trashedDate];
      v21 = [trashedDate2 isEqual:trashedDate3];

      if (trashedDate)
      {
LABEL_26:

        goto LABEL_23;
      }
    }

    else
    {
      v21 = 1;
    }

    goto LABEL_26;
  }

LABEL_22:
  v21 = 0;
LABEL_23:

  return v21;
}

- (void)setTrashedStateFromURL
{
  fileURL = [(PLValidatedExternalResource *)self fileURL];
  if (fileURL)
  {
    v4 = fileURL;
    v5 = [PLInternalResource supportsTrashedStateForResourceIdentity:self];

    if (v5)
    {
      v6 = MEMORY[0x1E69BF230];
      fileURL2 = [(PLValidatedExternalResource *)self fileURL];
      v8 = [v6 persistedAttributesForFileAtURL:fileURL2];

      v11 = 0;
      if ([v8 getUInt16:&v11 forKey:*MEMORY[0x1E69BFE58]])
      {
        v9 = v11 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        [(PLValidatedExternalResource *)self setTrashedState:1];
        v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:2592000.0];
        [(PLValidatedExternalResource *)self setTrashedDate:v10];
      }
    }
  }
}

- (unint64_t)cplTypeWithAssetID:(id)d
{
  dCopy = d;
  if ([(PLValidatedExternalResource *)self isDerivative])
  {
    v5 = [PLResourceInstaller derivativeCPLTypeFromRecipeID:[(PLValidatedExternalResource *)self recipeID] version:[(PLValidatedExternalResource *)self version]];
  }

  else
  {
    fileURL = [(PLValidatedExternalResource *)self fileURL];
    lastPathComponent = [fileURL lastPathComponent];

    if (-[PLValidatedExternalResource version](self, "version") || ([dCopy filename], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(lastPathComponent, "isEqualToString:", v8), v8, (v9 & 1) == 0))
    {
      resourceType = [(PLValidatedExternalResource *)self resourceType];
      version = [(PLValidatedExternalResource *)self version];
      uniformTypeIdentifier = [(PLValidatedExternalResource *)self uniformTypeIdentifier];
      v5 = [PLResourceInstaller nonDerivativeCPLTypeFromResourceType:resourceType version:version uniformTypeIdentifier:uniformTypeIdentifier];
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)isOriginalResource
{
  selfCopy = self;
  if ([(PLValidatedExternalResource *)selfCopy version])
  {
    v3 = 0;
  }

  else
  {
    v3 = ([(PLValidatedExternalResource *)selfCopy recipeID]& 1) == 0;
  }

  return v3;
}

- (PLValidatedExternalResource)init
{
  v3.receiver = self;
  v3.super_class = PLValidatedExternalResource;
  return [(PLValidatedExternalResource *)&v3 init];
}

+ (id)resourceWithExternalResource:(id)resource
{
  resourceCopy = resource;
  v5 = objc_alloc_init(self);
  [v5 setResourceType:{objc_msgSend(resourceCopy, "resourceType")}];
  [v5 setVersion:{objc_msgSend(resourceCopy, "version")}];
  [v5 setRecipeID:{objc_msgSend(resourceCopy, "recipeID")}];
  uniformTypeIdentifier = [resourceCopy uniformTypeIdentifier];
  [v5 setUniformTypeIdentifier:uniformTypeIdentifier];

  fileURL = [resourceCopy fileURL];
  [v5 setFileURL:fileURL];

  [v5 setDataLength:{objc_msgSend(resourceCopy, "dataLength")}];
  [v5 setUnorientedWidth:{objc_msgSend(resourceCopy, "unorientedWidth")}];
  [v5 setUnorientedHeight:{objc_msgSend(resourceCopy, "unorientedHeight")}];
  codecFourCharCode = [resourceCopy codecFourCharCode];
  [v5 setCodecFourCharCode:codecFourCharCode];

  [v5 setTrashedState:{objc_msgSend(resourceCopy, "trashedState")}];
  trashedDate = [resourceCopy trashedDate];
  [v5 setTrashedDate:trashedDate];

  [v5 setPtpTrashedState:{objc_msgSend(resourceCopy, "ptpTrashedState")}];
  sidecarIndex = [resourceCopy sidecarIndex];

  [v5 setSidecarIndex:sidecarIndex];

  return v5;
}

@end