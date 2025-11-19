@interface AssetCollectionInfo
- (AssetCollectionInfo)initWithAssetCollection:(id)a3;
- (AssetCollectionInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (AssetCollectionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = AssetCollectionInfo;
  v5 = [(AssetCollectionInfo *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GUID"];
    GUID = v5->_GUID;
    v5->_GUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personID"];
    personID = v5->_personID;
    v5->_personID = v8;

    v10 = [v4 decodePropertyListForKey:@"metaData"];
    metaData = v5->_metaData;
    v5->_metaData = v10;

    v5->_isMine = [v4 decodeBoolForKey:@"isMine"];
    v5->_isVideo = [v4 decodeBoolForKey:@"isVideo"];
    v5->_isPhotoIris = [v4 decodeBoolForKey:@"isPhotoIris"];
    v5->_isDeletable = [v4 decodeBoolForKey:@"isDeletable"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"width"];
    width = v5->_width;
    v5->_width = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"height"];
    height = v5->_height;
    v5->_height = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"derivativeUTI"];
    derivativeUTI = v5->_derivativeUTI;
    v5->_derivativeUTI = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalFilesize"];
    originalFilesize = v5->_originalFilesize;
    v5->_originalFilesize = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalFilename"];
    originalFilename = v5->_originalFilename;
    v5->_originalFilename = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  GUID = self->_GUID;
  v5 = a3;
  [v5 encodeObject:GUID forKey:@"GUID"];
  [v5 encodeObject:self->_personID forKey:@"personID"];
  [v5 encodeObject:self->_metaData forKey:@"metaData"];
  [v5 encodeBool:self->_isMine forKey:@"isMine"];
  [v5 encodeBool:self->_isVideo forKey:@"isVideo"];
  [v5 encodeBool:self->_isPhotoIris forKey:@"isPhotoIris"];
  [v5 encodeBool:self->_isDeletable forKey:@"isDeletable"];
  [v5 encodeObject:self->_width forKey:@"width"];
  [v5 encodeObject:self->_height forKey:@"height"];
  [v5 encodeObject:self->_timestamp forKey:@"timestamp"];
  [v5 encodeObject:self->_derivativeUTI forKey:@"derivativeUTI"];
  [v5 encodeObject:self->_originalFilesize forKey:@"originalFilesize"];
  [v5 encodeObject:self->_originalFilename forKey:@"originalFilename"];
}

- (AssetCollectionInfo)initWithAssetCollection:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v44.receiver = self;
  v44.super_class = AssetCollectionInfo;
  v5 = [(AssetCollectionInfo *)&v44 init];
  if (v5)
  {
    v6 = [v4 GUID];
    GUID = v5->_GUID;
    v5->_GUID = v6;

    v8 = [v4 personID];
    personID = v5->_personID;
    v5->_personID = v8;

    v5->_isMine = [v4 isMine];
    v5->_isVideo = [v4 isVideo];
    v5->_isPhotoIris = [v4 isPhotoIris];
    v5->_isDeletable = [v4 isDeletable];
    v10 = [v4 metadata];
    metaData = v5->_metaData;
    v5->_metaData = v10;

    v12 = [v4 timestamp];
    timestamp = v5->_timestamp;
    v5->_timestamp = v12;

    v14 = [*MEMORY[0x1E6982E58] identifier];
    derivativeUTI = v5->_derivativeUTI;
    v5->_derivativeUTI = v14;

    v16 = [v4 fileName];
    originalFilename = v5->_originalFilename;
    v5->_originalFilename = v16;

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v18 = [v4 assets];
    v19 = [v18 countByEnumeratingWithState:&v40 objects:v45 count:16];
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
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v40 + 1) + 8 * i);
          v24 = [v23 mediaAssetType];
          if (v24 == 3 || v24 == 7 && !v5->_isPhotoIris)
          {
            v25 = [v23 metadata];
            v26 = v25;
            if (v25)
            {
              v27 = [v25 objectForKey:*MEMORY[0x1E6998080]];
              width = v5->_width;
              v5->_width = v27;

              v29 = [v26 objectForKey:*MEMORY[0x1E6998078]];
              height = v5->_height;
              v5->_height = v29;

              v31 = [v26 objectForKey:*MEMORY[0x1E6998070]];
              originalFilesize = v5->_originalFilesize;
              v5->_originalFilesize = v31;
            }

            v33 = [v23 type];
            if (v33)
            {
              objc_storeStrong(&v5->_derivativeUTI, v33);
            }

            goto LABEL_18;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v40 objects:v45 count:16];
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