@interface PLSAsset
+ (id)asset;
+ (id)assetWithUUID:(id)d;
- (BOOL)isEquivalentTo:(id)to;
- (PLSAsset)init;
- (PLSAsset)initWithCoder:(id)coder;
- (PLSAsset)initWithUUID:(id)d;
- (id)description;
- (id)getFacesArray;
- (id)initFromPropertyList:(id)list;
- (id)propertyList;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLSAsset

- (BOOL)isEquivalentTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self == toCopy)
  {
    v24 = 1;
    goto LABEL_11;
  }

  if (toCopy)
  {
    exposureDate = [(PLSAsset *)self exposureDate];
    exposureDate2 = [(PLSAsset *)v5 exposureDate];
    v8 = [PLSLibraryChangeSnapshot number:exposureDate equalsNumber:exposureDate2];

    if (v8)
    {
      modificationDate = [(PLSAsset *)self modificationDate];
      modificationDate2 = [(PLSAsset *)v5 modificationDate];
      v11 = [PLSLibraryChangeSnapshot number:modificationDate equalsNumber:modificationDate2];

      if (v11)
      {
        latitude = [(PLSAsset *)self latitude];
        latitude2 = [(PLSAsset *)v5 latitude];
        v14 = [latitude isEqualToNumber:latitude2];

        if (v14)
        {
          longitude = [(PLSAsset *)self longitude];
          longitude2 = [(PLSAsset *)v5 longitude];
          v17 = [longitude isEqualToNumber:longitude2];

          if (v17)
          {
            originalFileName = [(PLSAsset *)self originalFileName];
            originalFileName2 = [(PLSAsset *)v5 originalFileName];
            v20 = originalFileName2;
            if (originalFileName == originalFileName2)
            {
            }

            else
            {
              originalFileName3 = [(PLSAsset *)self originalFileName];
              originalFileName4 = [(PLSAsset *)v5 originalFileName];
              v23 = [originalFileName3 isEqualToString:originalFileName4];

              if (!v23)
              {
                goto LABEL_9;
              }
            }

            facesInfo = [(PLSAsset *)self facesInfo];
            v27 = [facesInfo count];
            facesInfo2 = [(PLSAsset *)v5 facesInfo];
            v24 = v27 == [facesInfo2 count];

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
  facesInfo = [(PLSAsset *)self facesInfo];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [facesInfo count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = facesInfo;
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
  propertyList = [(PLSItem *)&v21 propertyList];
  v4 = [NSMutableDictionary dictionaryWithDictionary:propertyList];

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

  propertyList2 = [(PLSAssetProperties *)self->_properties propertyList];
  if (propertyList2)
  {
    [v4 setObject:propertyList2 forKey:@"assetProperties"];
  }

  return v4;
}

- (id)initFromPropertyList:(id)list
{
  listCopy = list;
  v35.receiver = self;
  v35.super_class = PLSAsset;
  v5 = [(PLSItem *)&v35 initFromPropertyList:listCopy];
  if (v5)
  {
    v6 = [listCopy objectForKey:kPLSAssetRatingKey];
    v7 = v5[4];
    v5[4] = v6;

    v8 = [listCopy objectForKey:kPLSAssetIsFlaggedKey];
    v9 = v5[5];
    v5[5] = v8;

    v10 = [listCopy objectForKey:kPLSAssetIsVideoKey];
    *(v5 + 104) = [v10 BOOLValue];

    v11 = [listCopy objectForKey:kPLSAssetHasVideoComplementKey];
    *(v5 + 105) = [v11 BOOLValue];

    v12 = [listCopy objectForKey:kPLSAssetCaptionKey];
    v13 = v5[6];
    v5[6] = v12;

    v14 = [listCopy objectForKey:kPLSAssetEventUUIDKey];
    v15 = v5[7];
    v5[7] = v14;

    v16 = [listCopy objectForKey:kPLSAssetLongitudeKey];
    v17 = v5[8];
    v5[8] = v16;

    v18 = [listCopy objectForKey:kPLSAssetLatitudeKey];
    v19 = v5[9];
    v5[9] = v18;

    v20 = [listCopy objectForKey:kPLSAssetOriginalFileNameKey];
    v21 = v5[12];
    v5[12] = v20;

    v22 = [listCopy objectForKey:kPLSAssetExposureDateKey];
    v23 = v5[10];
    v5[10] = v22;

    v24 = kPLSAssetModificationDateKey;
    if (!v5[10])
    {
      v25 = [listCopy objectForKey:kPLSAssetModificationDateKey];
      v26 = v5[10];
      v5[10] = v25;
    }

    v27 = [listCopy objectForKey:v24];
    v28 = v5[11];
    v5[11] = v27;

    v29 = [listCopy objectForKey:kPLSAssetFacesKey];
    v30 = v5[14];
    v5[14] = v29;

    v31 = [listCopy objectForKey:@"assetProperties"];
    if (v31)
    {
      v32 = [[PLSAssetProperties alloc] initFromPropertyList:v31];
      v33 = v5[15];
      v5[15] = v32;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rating = [(PLSAsset *)self rating];
  [coderCopy encodeObject:rating forKey:kPLSAssetRatingKey];

  isFlagged = [(PLSAsset *)self isFlagged];
  [coderCopy encodeObject:isFlagged forKey:kPLSAssetIsFlaggedKey];

  v7 = [NSNumber numberWithBool:[(PLSAsset *)self isVideo]];
  [coderCopy encodeObject:v7 forKey:kPLSAssetIsVideoKey];

  v8 = [NSNumber numberWithBool:[(PLSAsset *)self hasVideoComplement]];
  [coderCopy encodeObject:v8 forKey:kPLSAssetHasVideoComplementKey];

  caption = [(PLSAsset *)self caption];
  [coderCopy encodeObject:caption forKey:kPLSAssetCaptionKey];

  eventUUID = [(PLSAsset *)self eventUUID];
  [coderCopy encodeObject:eventUUID forKey:kPLSAssetEventUUIDKey];

  facesInfo = [(PLSAsset *)self facesInfo];
  [coderCopy encodeObject:facesInfo forKey:kPLSAssetFacesKey];

  originalFileName = [(PLSAsset *)self originalFileName];
  [coderCopy encodeObject:originalFileName forKey:kPLSAssetOriginalFileNameKey];

  properties = [(PLSAsset *)self properties];

  if (properties)
  {
    properties2 = [(PLSAsset *)self properties];
    [coderCopy encodeObject:properties2 forKey:@"assetProperties"];
  }

  v15.receiver = self;
  v15.super_class = PLSAsset;
  [(PLSItem *)&v15 encodeWithCoder:coderCopy];
}

- (PLSAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = PLSAsset;
  v5 = [(PLSItem *)&v23 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kPLSAssetRatingKey];
    rating = v5->_rating;
    v5->_rating = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kPLSAssetIsFlaggedKey];
    isFlagged = v5->_isFlagged;
    v5->_isFlagged = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kPLSAssetIsVideoKey];
    v5->_isVideo = [v10 BOOLValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kPLSAssetHasVideoComplementKey];
    v5->_hasVideoComplement = [v11 BOOLValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kPLSAssetCaptionKey];
    caption = v5->_caption;
    v5->_caption = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kPLSAssetEventUUIDKey];
    eventUUID = v5->_eventUUID;
    v5->_eventUUID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kPLSAssetOriginalFileNameKey];
    originalFileName = v5->_originalFileName;
    v5->_originalFileName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetProperties"];
    properties = v5->_properties;
    v5->_properties = v18;

    v20 = [coderCopy decodePropertyListForKey:kPLSAssetFacesKey];
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
  rating = [(PLSAsset *)self rating];
  isFlagged = [(PLSAsset *)self isFlagged];
  isVideo = [(PLSAsset *)self isVideo];
  v6 = @"NO";
  if (isVideo)
  {
    v6 = @"YES";
  }

  v16 = v6;
  caption = [(PLSAsset *)self caption];
  eventUUID = [(PLSAsset *)self eventUUID];
  exposureDate = [(PLSAsset *)self exposureDate];
  modificationDate = [(PLSAsset *)self modificationDate];
  latitude = [(PLSAsset *)self latitude];
  longitude = [(PLSAsset *)self longitude];
  originalFileName = [(PLSAsset *)self originalFileName];
  facesInfo = [(PLSAsset *)self facesInfo];
  v18 = [NSString stringWithFormat:@"Asset - %@, rating: %@, isFlagged: %@, isVideo:%@, caption: %@, eventUUID: %@, exposureDate: %@, modificationDate: %@, latitude: %@, longitude: %@, originalFileName: %@, facesInfo: %@", v17, rating, isFlagged, v16, caption, eventUUID, exposureDate, modificationDate, latitude, longitude, originalFileName, facesInfo];

  return v18;
}

- (PLSAsset)initWithUUID:(id)d
{
  v13.receiver = self;
  v13.super_class = PLSAsset;
  v3 = [(PLSItem *)&v13 initWithUUID:d];
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

+ (id)assetWithUUID:(id)d
{
  dCopy = d;
  v4 = [[PLSAsset alloc] initWithUUID:dCopy];

  return v4;
}

+ (id)asset
{
  v2 = objc_alloc_init(PLSAsset);

  return v2;
}

@end