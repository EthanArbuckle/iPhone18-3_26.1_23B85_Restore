@interface PLSAsset
+ (id)asset;
+ (id)assetWithUUID:(id)a3;
- (BOOL)isEquivalentTo:(id)a3;
- (PLSAsset)init;
- (PLSAsset)initWithCoder:(id)a3;
- (PLSAsset)initWithUUID:(id)a3;
- (id)description;
- (id)getFacesArray;
- (id)initFromPropertyList:(id)a3;
- (id)propertyList;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLSAsset

- (BOOL)isEquivalentTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v24 = 1;
    goto LABEL_11;
  }

  if (v4)
  {
    v6 = [(PLSAsset *)self exposureDate];
    v7 = [(PLSAsset *)v5 exposureDate];
    v8 = [PLSLibraryChangeSnapshot number:v6 equalsNumber:v7];

    if (v8)
    {
      v9 = [(PLSAsset *)self modificationDate];
      v10 = [(PLSAsset *)v5 modificationDate];
      v11 = [PLSLibraryChangeSnapshot number:v9 equalsNumber:v10];

      if (v11)
      {
        v12 = [(PLSAsset *)self latitude];
        v13 = [(PLSAsset *)v5 latitude];
        v14 = [v12 isEqualToNumber:v13];

        if (v14)
        {
          v15 = [(PLSAsset *)self longitude];
          v16 = [(PLSAsset *)v5 longitude];
          v17 = [v15 isEqualToNumber:v16];

          if (v17)
          {
            v18 = [(PLSAsset *)self originalFileName];
            v19 = [(PLSAsset *)v5 originalFileName];
            v20 = v19;
            if (v18 == v19)
            {
            }

            else
            {
              v21 = [(PLSAsset *)self originalFileName];
              v22 = [(PLSAsset *)v5 originalFileName];
              v23 = [v21 isEqualToString:v22];

              if (!v23)
              {
                goto LABEL_9;
              }
            }

            v26 = [(PLSAsset *)self facesInfo];
            v27 = [v26 count];
            v28 = [(PLSAsset *)v5 facesInfo];
            v24 = v27 == [v28 count];

            goto LABEL_11;
          }
        }
      }
    }
  }

LABEL_9:
  v24 = 0;
LABEL_11:

  return v24;
}

- (id)getFacesArray
{
  v2 = [(PLSAsset *)self facesInfo];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [PLSFace alloc];
        v11 = [(PLSFace *)v10 initWithFaceInfo:v9, v13];
        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)propertyList
{
  v21.receiver = self;
  v21.super_class = PLSAsset;
  v3 = [(PLSItem *)&v21 propertyList];
  v4 = [NSMutableDictionary dictionaryWithDictionary:v3];

  rating = self->_rating;
  if (rating)
  {
    [v4 setObject:rating forKey:kPLSAssetRatingKey];
  }

  isFlagged = self->_isFlagged;
  if (isFlagged)
  {
    [v4 setObject:isFlagged forKey:kPLSAssetIsFlaggedKey];
  }

  v7 = [NSNumber numberWithBool:self->_isVideo];

  if (v7)
  {
    v8 = [NSNumber numberWithBool:self->_isVideo];
    [v4 setObject:v8 forKey:kPLSAssetIsVideoKey];
  }

  v9 = [NSNumber numberWithBool:self->_hasVideoComplement];

  if (v9)
  {
    v10 = [NSNumber numberWithBool:self->_hasVideoComplement];
    [v4 setObject:v10 forKey:kPLSAssetHasVideoComplementKey];
  }

  caption = self->_caption;
  if (caption)
  {
    [v4 setObject:caption forKey:kPLSAssetCaptionKey];
  }

  eventUUID = self->_eventUUID;
  if (eventUUID)
  {
    [v4 setObject:eventUUID forKey:kPLSAssetEventUUIDKey];
  }

  exposureDate = self->_exposureDate;
  if (exposureDate)
  {
    [v4 setObject:exposureDate forKey:kPLSAssetExposureDateKey];
  }

  modificationDate = self->_modificationDate;
  if (modificationDate)
  {
    [v4 setObject:modificationDate forKey:kPLSAssetModificationDateKey];
  }

  longitude = self->_longitude;
  if (longitude)
  {
    [v4 setObject:longitude forKey:kPLSAssetLongitudeKey];
  }

  latitude = self->_latitude;
  if (latitude)
  {
    [v4 setObject:latitude forKey:kPLSAssetLatitudeKey];
  }

  originalFileName = self->_originalFileName;
  if (originalFileName)
  {
    [v4 setObject:originalFileName forKey:kPLSAssetOriginalFileNameKey];
  }

  facesInfo = self->_facesInfo;
  if (facesInfo)
  {
    [v4 setObject:facesInfo forKey:kPLSAssetFacesKey];
  }

  v19 = [(PLSAssetProperties *)self->_properties propertyList];
  if (v19)
  {
    [v4 setObject:v19 forKey:@"assetProperties"];
  }

  return v4;
}

- (id)initFromPropertyList:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = PLSAsset;
  v5 = [(PLSItem *)&v35 initFromPropertyList:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:kPLSAssetRatingKey];
    v7 = v5[4];
    v5[4] = v6;

    v8 = [v4 objectForKey:kPLSAssetIsFlaggedKey];
    v9 = v5[5];
    v5[5] = v8;

    v10 = [v4 objectForKey:kPLSAssetIsVideoKey];
    *(v5 + 104) = [v10 BOOLValue];

    v11 = [v4 objectForKey:kPLSAssetHasVideoComplementKey];
    *(v5 + 105) = [v11 BOOLValue];

    v12 = [v4 objectForKey:kPLSAssetCaptionKey];
    v13 = v5[6];
    v5[6] = v12;

    v14 = [v4 objectForKey:kPLSAssetEventUUIDKey];
    v15 = v5[7];
    v5[7] = v14;

    v16 = [v4 objectForKey:kPLSAssetLongitudeKey];
    v17 = v5[8];
    v5[8] = v16;

    v18 = [v4 objectForKey:kPLSAssetLatitudeKey];
    v19 = v5[9];
    v5[9] = v18;

    v20 = [v4 objectForKey:kPLSAssetOriginalFileNameKey];
    v21 = v5[12];
    v5[12] = v20;

    v22 = [v4 objectForKey:kPLSAssetExposureDateKey];
    v23 = v5[10];
    v5[10] = v22;

    v24 = kPLSAssetModificationDateKey;
    if (!v5[10])
    {
      v25 = [v4 objectForKey:kPLSAssetModificationDateKey];
      v26 = v5[10];
      v5[10] = v25;
    }

    v27 = [v4 objectForKey:v24];
    v28 = v5[11];
    v5[11] = v27;

    v29 = [v4 objectForKey:kPLSAssetFacesKey];
    v30 = v5[14];
    v5[14] = v29;

    v31 = [v4 objectForKey:@"assetProperties"];
    if (v31)
    {
      v32 = [[PLSAssetProperties alloc] initFromPropertyList:v31];
      v33 = v5[15];
      v5[15] = v32;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PLSAsset *)self rating];
  [v4 encodeObject:v5 forKey:kPLSAssetRatingKey];

  v6 = [(PLSAsset *)self isFlagged];
  [v4 encodeObject:v6 forKey:kPLSAssetIsFlaggedKey];

  v7 = [NSNumber numberWithBool:[(PLSAsset *)self isVideo]];
  [v4 encodeObject:v7 forKey:kPLSAssetIsVideoKey];

  v8 = [NSNumber numberWithBool:[(PLSAsset *)self hasVideoComplement]];
  [v4 encodeObject:v8 forKey:kPLSAssetHasVideoComplementKey];

  v9 = [(PLSAsset *)self caption];
  [v4 encodeObject:v9 forKey:kPLSAssetCaptionKey];

  v10 = [(PLSAsset *)self eventUUID];
  [v4 encodeObject:v10 forKey:kPLSAssetEventUUIDKey];

  v11 = [(PLSAsset *)self facesInfo];
  [v4 encodeObject:v11 forKey:kPLSAssetFacesKey];

  v12 = [(PLSAsset *)self originalFileName];
  [v4 encodeObject:v12 forKey:kPLSAssetOriginalFileNameKey];

  v13 = [(PLSAsset *)self properties];

  if (v13)
  {
    v14 = [(PLSAsset *)self properties];
    [v4 encodeObject:v14 forKey:@"assetProperties"];
  }

  v15.receiver = self;
  v15.super_class = PLSAsset;
  [(PLSItem *)&v15 encodeWithCoder:v4];
}

- (PLSAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PLSAsset;
  v5 = [(PLSItem *)&v23 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:kPLSAssetRatingKey];
    rating = v5->_rating;
    v5->_rating = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:kPLSAssetIsFlaggedKey];
    isFlagged = v5->_isFlagged;
    v5->_isFlagged = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:kPLSAssetIsVideoKey];
    v5->_isVideo = [v10 BOOLValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:kPLSAssetHasVideoComplementKey];
    v5->_hasVideoComplement = [v11 BOOLValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:kPLSAssetCaptionKey];
    caption = v5->_caption;
    v5->_caption = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:kPLSAssetEventUUIDKey];
    eventUUID = v5->_eventUUID;
    v5->_eventUUID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:kPLSAssetOriginalFileNameKey];
    originalFileName = v5->_originalFileName;
    v5->_originalFileName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetProperties"];
    properties = v5->_properties;
    v5->_properties = v18;

    v20 = [v4 decodePropertyListForKey:kPLSAssetFacesKey];
    facesInfo = v5->_facesInfo;
    v5->_facesInfo = v20;
  }

  return v5;
}

- (id)description
{
  v19.receiver = self;
  v19.super_class = PLSAsset;
  v17 = [(PLSItem *)&v19 description];
  v3 = [(PLSAsset *)self rating];
  v4 = [(PLSAsset *)self isFlagged];
  v5 = [(PLSAsset *)self isVideo];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v16 = v6;
  v7 = [(PLSAsset *)self caption];
  v8 = [(PLSAsset *)self eventUUID];
  v9 = [(PLSAsset *)self exposureDate];
  v10 = [(PLSAsset *)self modificationDate];
  v11 = [(PLSAsset *)self latitude];
  v12 = [(PLSAsset *)self longitude];
  v13 = [(PLSAsset *)self originalFileName];
  v14 = [(PLSAsset *)self facesInfo];
  v18 = [NSString stringWithFormat:@"Asset - %@, rating: %@, isFlagged: %@, isVideo:%@, caption: %@, eventUUID: %@, exposureDate: %@, modificationDate: %@, latitude: %@, longitude: %@, originalFileName: %@, facesInfo: %@", v17, v3, v4, v16, v7, v8, v9, v10, v11, v12, v13, v14];

  return v18;
}

- (PLSAsset)initWithUUID:(id)a3
{
  v13.receiver = self;
  v13.super_class = PLSAsset;
  v3 = [(PLSItem *)&v13 initWithUUID:a3];
  v4 = v3;
  if (v3)
  {
    rating = v3->_rating;
    v3->_rating = &off_25CE8;

    isFlagged = v4->_isFlagged;
    v4->_isFlagged = &__kCFBooleanFalse;

    v4->_isVideo = 0;
    caption = v4->_caption;
    v4->_caption = &stru_24CF0;

    eventUUID = v4->_eventUUID;
    v4->_eventUUID = &stru_24CF0;

    exposureDate = v4->_exposureDate;
    v4->_exposureDate = &off_25D18;

    modificationDate = v4->_modificationDate;
    v4->_modificationDate = &off_25D18;

    facesInfo = v4->_facesInfo;
    v4->_facesInfo = &__NSArray0__struct;
  }

  return v4;
}

- (PLSAsset)init
{
  v3 = +[PLSUUID generateUUIDAsString];
  v4 = [(PLSAsset *)self initWithUUID:v3];

  return v4;
}

+ (id)assetWithUUID:(id)a3
{
  v3 = a3;
  v4 = [[PLSAsset alloc] initWithUUID:v3];

  return v4;
}

+ (id)asset
{
  v2 = objc_alloc_init(PLSAsset);

  return v2;
}

@end