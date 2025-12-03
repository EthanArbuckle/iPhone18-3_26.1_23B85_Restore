@interface AssetCollectionInfo
- (AssetCollectionInfo)initWithAssetCollection:(id)collection;
- (AssetCollectionInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AssetCollectionInfo

- (id)description
{
  v6.receiver = self;
  v6.super_class = AssetCollectionInfo;
  v3 = [(AssetCollectionInfo *)&v6 description];
  v4 = [v3 mutableCopy];

  if (self->_GUID)
  {
    [v4 appendFormat:@" GUID: %@", self->_GUID];
  }

  if (self->_personID)
  {
    [v4 appendFormat:@" personID: %@", self->_personID];
  }

  if (self->_isMine)
  {
    [v4 appendFormat:@" isMine: %d", 1];
  }

  if (self->_isVideo)
  {
    [v4 appendFormat:@" isVideo: %d", 1];
  }

  if (self->_isPhotoIris)
  {
    [v4 appendFormat:@" isPhotoIris: %d", 1];
  }

  if (self->_isDeletable)
  {
    [v4 appendFormat:@" isDeletable: %d", 1];
  }

  if (self->_metaData)
  {
    [v4 appendFormat:@" metaData: %@", self->_metaData];
  }

  if (self->_width)
  {
    [v4 appendFormat:@" width: %@", self->_width];
  }

  if (self->_height)
  {
    [v4 appendFormat:@" height: %@", self->_height];
  }

  if (self->_timestamp)
  {
    [v4 appendFormat:@" timestamp: %@", self->_timestamp];
  }

  if (self->_derivativeUTI)
  {
    [v4 appendFormat:@" derivativeUTI: %@", self->_derivativeUTI];
  }

  if (self->_originalFilesize)
  {
    [v4 appendFormat:@" originalFilesize: %@", self->_originalFilesize];
  }

  if (self->_originalFilename)
  {
    [v4 appendFormat:@" originalFilename: %@", self->_originalFilename];
  }

  return v4;
}

- (AssetCollectionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = AssetCollectionInfo;
  v5 = [(AssetCollectionInfo *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GUID"];
    GUID = v5->_GUID;
    v5->_GUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personID"];
    personID = v5->_personID;
    v5->_personID = v8;

    v10 = [coderCopy decodePropertyListForKey:@"metaData"];
    metaData = v5->_metaData;
    v5->_metaData = v10;

    v5->_isMine = [coderCopy decodeBoolForKey:@"isMine"];
    v5->_isVideo = [coderCopy decodeBoolForKey:@"isVideo"];
    v5->_isPhotoIris = [coderCopy decodeBoolForKey:@"isPhotoIris"];
    v5->_isDeletable = [coderCopy decodeBoolForKey:@"isDeletable"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"width"];
    width = v5->_width;
    v5->_width = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"height"];
    height = v5->_height;
    v5->_height = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"derivativeUTI"];
    derivativeUTI = v5->_derivativeUTI;
    v5->_derivativeUTI = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalFilesize"];
    originalFilesize = v5->_originalFilesize;
    v5->_originalFilesize = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalFilename"];
    originalFilename = v5->_originalFilename;
    v5->_originalFilename = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  GUID = self->_GUID;
  coderCopy = coder;
  [coderCopy encodeObject:GUID forKey:@"GUID"];
  [coderCopy encodeObject:self->_personID forKey:@"personID"];
  [coderCopy encodeObject:self->_metaData forKey:@"metaData"];
  [coderCopy encodeBool:self->_isMine forKey:@"isMine"];
  [coderCopy encodeBool:self->_isVideo forKey:@"isVideo"];
  [coderCopy encodeBool:self->_isPhotoIris forKey:@"isPhotoIris"];
  [coderCopy encodeBool:self->_isDeletable forKey:@"isDeletable"];
  [coderCopy encodeObject:self->_width forKey:@"width"];
  [coderCopy encodeObject:self->_height forKey:@"height"];
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
  [coderCopy encodeObject:self->_derivativeUTI forKey:@"derivativeUTI"];
  [coderCopy encodeObject:self->_originalFilesize forKey:@"originalFilesize"];
  [coderCopy encodeObject:self->_originalFilename forKey:@"originalFilename"];
}

- (AssetCollectionInfo)initWithAssetCollection:(id)collection
{
  v46 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v44.receiver = self;
  v44.super_class = AssetCollectionInfo;
  v5 = [(AssetCollectionInfo *)&v44 init];
  if (v5)
  {
    gUID = [collectionCopy GUID];
    GUID = v5->_GUID;
    v5->_GUID = gUID;

    personID = [collectionCopy personID];
    personID = v5->_personID;
    v5->_personID = personID;

    v5->_isMine = [collectionCopy isMine];
    v5->_isVideo = [collectionCopy isVideo];
    v5->_isPhotoIris = [collectionCopy isPhotoIris];
    v5->_isDeletable = [collectionCopy isDeletable];
    metadata = [collectionCopy metadata];
    metaData = v5->_metaData;
    v5->_metaData = metadata;

    timestamp = [collectionCopy timestamp];
    timestamp = v5->_timestamp;
    v5->_timestamp = timestamp;

    identifier = [*MEMORY[0x1E6982E58] identifier];
    derivativeUTI = v5->_derivativeUTI;
    v5->_derivativeUTI = identifier;

    fileName = [collectionCopy fileName];
    originalFilename = v5->_originalFilename;
    v5->_originalFilename = fileName;

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    assets = [collectionCopy assets];
    v19 = [assets countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v41;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(assets);
          }

          v23 = *(*(&v40 + 1) + 8 * i);
          mediaAssetType = [v23 mediaAssetType];
          if (mediaAssetType == 3 || mediaAssetType == 7 && !v5->_isPhotoIris)
          {
            metadata2 = [v23 metadata];
            v26 = metadata2;
            if (metadata2)
            {
              v27 = [metadata2 objectForKey:*MEMORY[0x1E6998080]];
              width = v5->_width;
              v5->_width = v27;

              v29 = [v26 objectForKey:*MEMORY[0x1E6998078]];
              height = v5->_height;
              v5->_height = v29;

              v31 = [v26 objectForKey:*MEMORY[0x1E6998070]];
              originalFilesize = v5->_originalFilesize;
              v5->_originalFilesize = v31;
            }

            type = [v23 type];
            if (type)
            {
              objc_storeStrong(&v5->_derivativeUTI, type);
            }

            goto LABEL_18;
          }
        }

        v20 = [assets countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    if (!v5->_width)
    {
      LODWORD(v34) = 1.0;
      v35 = [MEMORY[0x1E696AD98] numberWithFloat:v34];
      v36 = v5->_width;
      v5->_width = v35;
    }

    if (!v5->_height)
    {
      LODWORD(v34) = 1.0;
      v37 = [MEMORY[0x1E696AD98] numberWithFloat:v34];
      v38 = v5->_height;
      v5->_height = v37;
    }
  }

  return v5;
}

@end