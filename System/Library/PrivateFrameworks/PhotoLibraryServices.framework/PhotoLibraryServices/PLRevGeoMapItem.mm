@interface PLRevGeoMapItem
+ (id)mapItemWithGEOMapItem:(id)a3;
+ (id)placeInfoWithName:(id)a3 geoPlaceInfo:(id)a4 dominantOrderType:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (PLRevGeoMapItem)initWithCoder:(id)a3;
- (PLRevGeoMapItem)initWithSortedPlaceInfos:(id)a3 backupPlaceInfos:(id)a4 finalPlaceInfos:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLRevGeoMapItem

+ (id)mapItemWithGEOMapItem:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 _asPlaceInfo];
  v5 = [v3 _additionalPlaceInfos];
  v6 = [v3 geoAddress];
  v7 = [v6 structuredAddress];

  v8 = [MEMORY[0x1E695DF70] array];
  v52 = [MEMORY[0x1E695DF70] array];
  v51 = [MEMORY[0x1E695DF70] array];
  if ([v5 count])
  {
    v50 = v3;
    [v4 name];
    v10 = v9 = v5;
    v49 = v4;
    v11 = [PLRevGeoMapItem placeInfoWithName:v10 geoPlaceInfo:v4 dominantOrderType:0];
    [v8 addObject:v11];

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
          v18 = [v17 name];
          v19 = [PLRevGeoMapItem placeInfoWithName:v18 geoPlaceInfo:v17 dominantOrderType:0];
          [v8 addObject:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v14);
    }

    v20 = +[PLRevGeoMapItem sortedAdditionalPlaceInfoComparator];
    [v8 sortUsingComparator:v20];

    v4 = v49;
    v3 = v50;
    v5 = v48;
    v22 = v51;
    v21 = v52;
  }

  else
  {
    v23 = [v7 areaOfInterestsCount];
    v21 = v52;
    if (v23)
    {
      v24 = v23;
      v25 = [v3 _placeType];
      if (v24 != 1 || v25 != 11)
      {
        v26 = [v7 areaOfInterestAtIndex:0];
        v27 = [PLRevGeoMapItem placeInfoWithName:v26 geoPlaceInfo:v4 dominantOrderType:1];

        [v52 addObject:v27];
      }
    }

    if ([v7 hasSubLocality])
    {
      v28 = [v7 subLocality];
      v29 = [PLRevGeoMapItem placeInfoWithName:v28 geoPlaceInfo:v4 dominantOrderType:3];

      [v52 addObject:v29];
    }

    v22 = v51;
    if ([v7 hasLocality])
    {
      v30 = [v7 locality];
      v31 = [PLRevGeoMapItem placeInfoWithName:v30 geoPlaceInfo:v4 dominantOrderType:5];

      [v52 addObject:v31];
    }

    if ([v7 hasSubAdministrativeArea])
    {
      v32 = [v7 subAdministrativeArea];
      v33 = [PLRevGeoMapItem placeInfoWithName:v32 geoPlaceInfo:v4 dominantOrderType:7];

      [v52 addObject:v33];
    }

    if ([v7 hasAdministrativeArea])
    {
      v34 = [v7 administrativeArea];
      v35 = [PLRevGeoMapItem placeInfoWithName:v34 geoPlaceInfo:v4 dominantOrderType:10];

      [v52 addObject:v35];
    }

    if ([v7 hasCountry])
    {
      v36 = [v7 country];
      v37 = [PLRevGeoMapItem placeInfoWithName:v36 geoPlaceInfo:v4 dominantOrderType:12];

      [v52 addObject:v37];
    }
  }

  if ([v7 hasThoroughfare])
  {
    v38 = [v7 thoroughfare];
    v39 = [PLRevGeoMapItem placeInfoWithName:v38 geoPlaceInfo:v4 dominantOrderType:2];

    [v22 addObject:v39];
  }

  if ([v7 hasAdministrativeAreaCode])
  {
    v40 = [v7 administrativeAreaCode];
    v41 = [PLRevGeoMapItem placeInfoWithName:v40 geoPlaceInfo:v4 dominantOrderType:11];

    [v22 addObject:v41];
  }

  if ([v7 hasCountryCode])
  {
    v42 = [v7 countryCode];
    v43 = [PLRevGeoMapItem placeInfoWithName:v42 geoPlaceInfo:v4 dominantOrderType:13];

    [v22 addObject:v43];
  }

  v44 = [[PLRevGeoMapItem alloc] initWithSortedPlaceInfos:v8 backupPlaceInfos:v21 finalPlaceInfos:v22];
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

+ (id)placeInfoWithName:(id)a3 geoPlaceInfo:(id)a4 dominantOrderType:(unint64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [PLRevGeoMapItemAdditionalPlaceInfo alloc];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v7, "placeType")}];
  [v7 areaInMeters];
  v12 = v11;

  v13 = [(PLRevGeoMapItemAdditionalPlaceInfo *)v9 initWithName:v8 placeType:v10 dominantOrderType:a5 areaInSquareMeters:v12];

  return v13;
}

- (PLRevGeoMapItem)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"sortedPlaceInfos"];
  v9 = [v5 decodeObjectOfClasses:v7 forKey:@"backupPlaceInfos"];
  v10 = [v5 decodeObjectOfClasses:v7 forKey:@"finalPlaceInfos"];

  v11 = [(PLRevGeoMapItem *)self initWithSortedPlaceInfos:v8 backupPlaceInfos:v9 finalPlaceInfos:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  sortedPlaceInfos = self->_sortedPlaceInfos;
  v5 = a3;
  [v5 encodeObject:sortedPlaceInfos forKey:@"sortedPlaceInfos"];
  [v5 encodeObject:self->_backupPlaceInfos forKey:@"backupPlaceInfos"];
  [v5 encodeObject:self->_finalPlaceInfos forKey:@"finalPlaceInfos"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      sortedPlaceInfos = self->_sortedPlaceInfos;
      v9 = [(PLRevGeoMapItem *)v7 sortedPlaceInfos];
      LODWORD(sortedPlaceInfos) = [(NSArray *)sortedPlaceInfos isEqualToArray:v9];

      if (sortedPlaceInfos && (backupPlaceInfos = self->_backupPlaceInfos, [(PLRevGeoMapItem *)v7 backupPlaceInfos], v11 = objc_claimAutoreleasedReturnValue(), LODWORD(backupPlaceInfos) = [(NSArray *)backupPlaceInfos isEqualToArray:v11], v11, backupPlaceInfos))
      {
        finalPlaceInfos = self->_finalPlaceInfos;
        v13 = [(PLRevGeoMapItem *)v7 finalPlaceInfos];
        v6 = [(NSArray *)finalPlaceInfos isEqualToArray:v13];
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

- (PLRevGeoMapItem)initWithSortedPlaceInfos:(id)a3 backupPlaceInfos:(id)a4 finalPlaceInfos:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PLRevGeoMapItem;
  v12 = [(PLRevGeoMapItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sortedPlaceInfos, a3);
    objc_storeStrong(&v13->_backupPlaceInfos, a4);
    objc_storeStrong(&v13->_finalPlaceInfos, a5);
  }

  return v13;
}

@end