@interface PLValidatedExternalResource
+ (id)resourceWithExternalResource:(id)a3;
- (BOOL)isEqualToValidatedExternalResource:(id)a3;
- (BOOL)isOriginalResource;
- (NSString)description;
- (PLValidatedExternalResource)init;
- (unint64_t)cplTypeWithAssetID:(id)a3;
- (void)persistResourceTypeToFileURL;
- (void)setTrashedStateFromURL;
@end

@implementation PLValidatedExternalResource

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PLValidatedExternalResource *)self resourceType];
  if (v6 > 0x1F)
  {
    v7 = @"invalid";
  }

  else
  {
    v7 = off_1E75663B0[v6];
  }

  v8 = v7;
  v9 = [(PLValidatedExternalResource *)self version];
  if (v9 > 2)
  {
    v10 = @"cur";
  }

  else
  {
    v10 = off_1E75664B0[v9];
  }

  v11 = v10;
  v12 = [(PLValidatedExternalResource *)self unorientedWidth];
  v13 = [(PLValidatedExternalResource *)self unorientedHeight];
  v14 = [(PLValidatedExternalResource *)self uniformTypeIdentifier];
  v15 = [v14 identifier];
  v16 = [v3 stringWithFormat:@"<%@: %p> type: %@, ver: %@, width: %lu, height: %lu, uti: %@", v5, self, v8, v11, v12, v13, v15];

  return v16;
}

- (void)persistResourceTypeToFileURL
{
  v3 = MEMORY[0x1E69BF230];
  v4 = [(PLValidatedExternalResource *)self fileURL];
  v6 = [v3 filesystemPersistenceBatchItemForFileAtURL:v4];

  v5 = [(PLValidatedExternalResource *)self resourceType];
  [v6 setUInt16:v5 forKey:*MEMORY[0x1E69BFE10]];
  [v6 persist];
}

- (BOOL)isEqualToValidatedExternalResource:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !PLResourceIdentityIsEqual(self, v5))
  {
    goto LABEL_22;
  }

  v6 = [(PLValidatedExternalResource *)self fileURL];

  if (v6)
  {
    v7 = [(PLValidatedExternalResource *)self fileURL];
    v3 = [v5 fileURL];
    v8 = [v7 isEqual:v3];

    if ((v8 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v9 = [v5 fileURL];

    if (v9)
    {
      goto LABEL_22;
    }
  }

  v10 = [(PLValidatedExternalResource *)self dataLength];
  if (v10 != [v5 dataLength])
  {
    goto LABEL_22;
  }

  v11 = [(PLValidatedExternalResource *)self unorientedWidth];
  if (v11 != [v5 unorientedWidth])
  {
    goto LABEL_22;
  }

  v12 = [(PLValidatedExternalResource *)self unorientedHeight];
  if (v12 != [v5 unorientedHeight])
  {
    goto LABEL_22;
  }

  v13 = [(PLValidatedExternalResource *)self codecFourCharCode];
  if (v13 || ([v5 codecFourCharCode], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = [(PLValidatedExternalResource *)self codecFourCharCode];
    v15 = [v5 codecFourCharCode];
    v16 = [v14 isEqualToString:v15];

    if (v13)
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

  v17 = [(PLValidatedExternalResource *)self trashedState];
  if (v17 == [v5 trashedState])
  {
    v18 = [(PLValidatedExternalResource *)self trashedDate];
    if (v18 || ([v5 trashedDate], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v19 = [(PLValidatedExternalResource *)self trashedDate];
      v20 = [v5 trashedDate];
      v21 = [v19 isEqual:v20];

      if (v18)
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
  v3 = [(PLValidatedExternalResource *)self fileURL];
  if (v3)
  {
    v4 = v3;
    v5 = [PLInternalResource supportsTrashedStateForResourceIdentity:self];

    if (v5)
    {
      v6 = MEMORY[0x1E69BF230];
      v7 = [(PLValidatedExternalResource *)self fileURL];
      v8 = [v6 persistedAttributesForFileAtURL:v7];

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

- (unint64_t)cplTypeWithAssetID:(id)a3
{
  v4 = a3;
  if ([(PLValidatedExternalResource *)self isDerivative])
  {
    v5 = [PLResourceInstaller derivativeCPLTypeFromRecipeID:[(PLValidatedExternalResource *)self recipeID] version:[(PLValidatedExternalResource *)self version]];
  }

  else
  {
    v6 = [(PLValidatedExternalResource *)self fileURL];
    v7 = [v6 lastPathComponent];

    if (-[PLValidatedExternalResource version](self, "version") || ([v4 filename], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, (v9 & 1) == 0))
    {
      v10 = [(PLValidatedExternalResource *)self resourceType];
      v11 = [(PLValidatedExternalResource *)self version];
      v12 = [(PLValidatedExternalResource *)self uniformTypeIdentifier];
      v5 = [PLResourceInstaller nonDerivativeCPLTypeFromResourceType:v10 version:v11 uniformTypeIdentifier:v12];
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
  v2 = self;
  if ([(PLValidatedExternalResource *)v2 version])
  {
    v3 = 0;
  }

  else
  {
    v3 = ([(PLValidatedExternalResource *)v2 recipeID]& 1) == 0;
  }

  return v3;
}

- (PLValidatedExternalResource)init
{
  v3.receiver = self;
  v3.super_class = PLValidatedExternalResource;
  return [(PLValidatedExternalResource *)&v3 init];
}

+ (id)resourceWithExternalResource:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setResourceType:{objc_msgSend(v4, "resourceType")}];
  [v5 setVersion:{objc_msgSend(v4, "version")}];
  [v5 setRecipeID:{objc_msgSend(v4, "recipeID")}];
  v6 = [v4 uniformTypeIdentifier];
  [v5 setUniformTypeIdentifier:v6];

  v7 = [v4 fileURL];
  [v5 setFileURL:v7];

  [v5 setDataLength:{objc_msgSend(v4, "dataLength")}];
  [v5 setUnorientedWidth:{objc_msgSend(v4, "unorientedWidth")}];
  [v5 setUnorientedHeight:{objc_msgSend(v4, "unorientedHeight")}];
  v8 = [v4 codecFourCharCode];
  [v5 setCodecFourCharCode:v8];

  [v5 setTrashedState:{objc_msgSend(v4, "trashedState")}];
  v9 = [v4 trashedDate];
  [v5 setTrashedDate:v9];

  [v5 setPtpTrashedState:{objc_msgSend(v4, "ptpTrashedState")}];
  v10 = [v4 sidecarIndex];

  [v5 setSidecarIndex:v10];

  return v5;
}

@end