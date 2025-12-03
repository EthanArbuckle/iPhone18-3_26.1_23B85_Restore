@interface PLRevGeoMapItem
+ (id)mapItemWithGEOMapItem:(id)item;
+ (id)placeInfoWithName:(id)name geoPlaceInfo:(id)info dominantOrderType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (PLRevGeoMapItem)initWithCoder:(id)coder;
- (PLRevGeoMapItem)initWithSortedPlaceInfos:(id)infos backupPlaceInfos:(id)placeInfos finalPlaceInfos:(id)finalPlaceInfos;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLRevGeoMapItem

+ (id)mapItemWithGEOMapItem:(id)item
{
  v58 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  _asPlaceInfo = [itemCopy _asPlaceInfo];
  _additionalPlaceInfos = [itemCopy _additionalPlaceInfos];
  geoAddress = [itemCopy geoAddress];
  structuredAddress = [geoAddress structuredAddress];

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  if ([_additionalPlaceInfos count])
  {
    v50 = itemCopy;
    [_asPlaceInfo name];
    v10 = v9 = _additionalPlaceInfos;
    v49 = _asPlaceInfo;
    v11 = [PLRevGeoMapItem placeInfoWithName:v10 geoPlaceInfo:_asPlaceInfo dominantOrderType:0];
    [array addObject:v11];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v48 = v9;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v54;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v54 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v53 + 1) + 8 * i);
          name = [v17 name];
          v19 = [PLRevGeoMapItem placeInfoWithName:name geoPlaceInfo:v17 dominantOrderType:0];
          [array addObject:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v14);
    }

    v20 = +[PLRevGeoMapItem sortedAdditionalPlaceInfoComparator];
    [array sortUsingComparator:v20];

    _asPlaceInfo = v49;
    itemCopy = v50;
    _additionalPlaceInfos = v48;
    v22 = array3;
    v21 = array2;
  }

  else
  {
    areaOfInterestsCount = [structuredAddress areaOfInterestsCount];
    v21 = array2;
    if (areaOfInterestsCount)
    {
      v24 = areaOfInterestsCount;
      _placeType = [itemCopy _placeType];
      if (v24 != 1 || _placeType != 11)
      {
        v26 = [structuredAddress areaOfInterestAtIndex:0];
        v27 = [PLRevGeoMapItem placeInfoWithName:v26 geoPlaceInfo:_asPlaceInfo dominantOrderType:1];

        [array2 addObject:v27];
      }
    }

    if ([structuredAddress hasSubLocality])
    {
      subLocality = [structuredAddress subLocality];
      v29 = [PLRevGeoMapItem placeInfoWithName:subLocality geoPlaceInfo:_asPlaceInfo dominantOrderType:3];

      [array2 addObject:v29];
    }

    v22 = array3;
    if ([structuredAddress hasLocality])
    {
      locality = [structuredAddress locality];
      v31 = [PLRevGeoMapItem placeInfoWithName:locality geoPlaceInfo:_asPlaceInfo dominantOrderType:5];

      [array2 addObject:v31];
    }

    if ([structuredAddress hasSubAdministrativeArea])
    {
      subAdministrativeArea = [structuredAddress subAdministrativeArea];
      v33 = [PLRevGeoMapItem placeInfoWithName:subAdministrativeArea geoPlaceInfo:_asPlaceInfo dominantOrderType:7];

      [array2 addObject:v33];
    }

    if ([structuredAddress hasAdministrativeArea])
    {
      administrativeArea = [structuredAddress administrativeArea];
      v35 = [PLRevGeoMapItem placeInfoWithName:administrativeArea geoPlaceInfo:_asPlaceInfo dominantOrderType:10];

      [array2 addObject:v35];
    }

    if ([structuredAddress hasCountry])
    {
      country = [structuredAddress country];
      v37 = [PLRevGeoMapItem placeInfoWithName:country geoPlaceInfo:_asPlaceInfo dominantOrderType:12];

      [array2 addObject:v37];
    }
  }

  if ([structuredAddress hasThoroughfare])
  {
    thoroughfare = [structuredAddress thoroughfare];
    v39 = [PLRevGeoMapItem placeInfoWithName:thoroughfare geoPlaceInfo:_asPlaceInfo dominantOrderType:2];

    [v22 addObject:v39];
  }

  if ([structuredAddress hasAdministrativeAreaCode])
  {
    administrativeAreaCode = [structuredAddress administrativeAreaCode];
    v41 = [PLRevGeoMapItem placeInfoWithName:administrativeAreaCode geoPlaceInfo:_asPlaceInfo dominantOrderType:11];

    [v22 addObject:v41];
  }

  if ([structuredAddress hasCountryCode])
  {
    countryCode = [structuredAddress countryCode];
    v43 = [PLRevGeoMapItem placeInfoWithName:countryCode geoPlaceInfo:_asPlaceInfo dominantOrderType:13];

    [v22 addObject:v43];
  }

  v44 = [[PLRevGeoMapItem alloc] initWithSortedPlaceInfos:array backupPlaceInfos:v21 finalPlaceInfos:v22];
  v45 = v22;
  v46 = v44;

  return v46;
}

uint64_t __67__PLRevGeoMapItem_GEOServices__sortedAdditionalPlaceInfoComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 placeType];
  v7 = [v6 intValue];

  v8 = [v5 placeType];
  v9 = [v8 intValue];

  if (v7 == 7 || v9 != 7)
  {
    if (v7 != 7 || v9 == 7)
    {
      [v4 areaInSquareMeters];
      v12 = v11;
      [v5 areaInSquareMeters];
      if (v9 != 9 || v13 != 0.0 || (v10 = -1, v7 == 9) && v12 == 0.0)
      {
        if (v7 != 9 || v12 != 0.0 || (v10 = 1, v9 == 9) && v13 == 0.0)
        {
          v14 = -1;
          if (v12 >= v13)
          {
            v14 = 1;
          }

          if (v12 == v13)
          {
            v10 = 0;
          }

          else
          {
            v10 = v14;
          }
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

+ (id)placeInfoWithName:(id)name geoPlaceInfo:(id)info dominantOrderType:(unint64_t)type
{
  infoCopy = info;
  nameCopy = name;
  v9 = [PLRevGeoMapItemAdditionalPlaceInfo alloc];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(infoCopy, "placeType")}];
  [infoCopy areaInMeters];
  v12 = v11;

  v13 = [(PLRevGeoMapItemAdditionalPlaceInfo *)v9 initWithName:nameCopy placeType:v10 dominantOrderType:type areaInSquareMeters:v12];

  return v13;
}

- (PLRevGeoMapItem)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"sortedPlaceInfos"];
  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:@"backupPlaceInfos"];
  v10 = [coderCopy decodeObjectOfClasses:v7 forKey:@"finalPlaceInfos"];

  v11 = [(PLRevGeoMapItem *)self initWithSortedPlaceInfos:v8 backupPlaceInfos:v9 finalPlaceInfos:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  sortedPlaceInfos = self->_sortedPlaceInfos;
  coderCopy = coder;
  [coderCopy encodeObject:sortedPlaceInfos forKey:@"sortedPlaceInfos"];
  [coderCopy encodeObject:self->_backupPlaceInfos forKey:@"backupPlaceInfos"];
  [coderCopy encodeObject:self->_finalPlaceInfos forKey:@"finalPlaceInfos"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      sortedPlaceInfos = self->_sortedPlaceInfos;
      sortedPlaceInfos = [(PLRevGeoMapItem *)v7 sortedPlaceInfos];
      LODWORD(sortedPlaceInfos) = [(NSArray *)sortedPlaceInfos isEqualToArray:sortedPlaceInfos];

      if (sortedPlaceInfos && (backupPlaceInfos = self->_backupPlaceInfos, [(PLRevGeoMapItem *)v7 backupPlaceInfos], v11 = objc_claimAutoreleasedReturnValue(), LODWORD(backupPlaceInfos) = [(NSArray *)backupPlaceInfos isEqualToArray:v11], v11, backupPlaceInfos))
      {
        finalPlaceInfos = self->_finalPlaceInfos;
        finalPlaceInfos = [(PLRevGeoMapItem *)v7 finalPlaceInfos];
        v6 = [(NSArray *)finalPlaceInfos isEqualToArray:finalPlaceInfos];
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
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p sortedPlaceInfos=%@ backupPlaceInfos=%@ finalPlaceInfos=%@>", v5, self, self->_sortedPlaceInfos, self->_backupPlaceInfos, self->_finalPlaceInfos];

  return v6;
}

- (PLRevGeoMapItem)initWithSortedPlaceInfos:(id)infos backupPlaceInfos:(id)placeInfos finalPlaceInfos:(id)finalPlaceInfos
{
  infosCopy = infos;
  placeInfosCopy = placeInfos;
  finalPlaceInfosCopy = finalPlaceInfos;
  v15.receiver = self;
  v15.super_class = PLRevGeoMapItem;
  v12 = [(PLRevGeoMapItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sortedPlaceInfos, infos);
    objc_storeStrong(&v13->_backupPlaceInfos, placeInfos);
    objc_storeStrong(&v13->_finalPlaceInfos, finalPlaceInfos);
  }

  return v13;
}

@end