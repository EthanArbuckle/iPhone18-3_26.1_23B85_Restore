@interface PGGraphPlacesResolver
+ (id)_businessItemsAtCoordinate:(CLLocationCoordinate2D)coordinate inCache:(id)cache;
+ (id)_clusteredRegionsFromFeeder:(id)feeder;
+ (id)poiStringFromSpatialLookupCategory:(int64_t)category;
+ (id)resolvePlacesForMomentNode:(id)node feeder:(id)feeder poiCache:(id)cache;
+ (id)resolvedPlaceForRegion:(id)region withPlaceItems:(id)items;
@end

@implementation PGGraphPlacesResolver

+ (id)_businessItemsAtCoordinate:(CLLocationCoordinate2D)coordinate inCache:(id)cache
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  cacheCopy = cache;
  v18.latitude = latitude;
  v18.longitude = longitude;
  v7 = CLLocationCoordinate2DIsValid(v18);
  v8 = MEMORY[0x277CBEBF8];
  if (v7)
  {
    v9 = objc_alloc(MEMORY[0x277CBFBC8]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v12 = [v9 initWithCenter:uUIDString radius:latitude identifier:{longitude, 100.0}];

    v13 = [cacheCopy businessItemsForRegion:v12];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v8;
    }

    v8 = v15;
  }

  return v8;
}

+ (id)_clusteredRegionsFromFeeder:(id)feeder
{
  allItems = [feeder allItems];
  v4 = [MEMORY[0x277D3AD58] performClustering:0 dataset:allItems progressBlock:&__block_literal_global_47222];
  allKeys = [v4 allKeys];

  return allKeys;
}

+ (id)resolvedPlaceForRegion:(id)region withPlaceItems:(id)items
{
  v47 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  itemsCopy = items;
  v7 = [MEMORY[0x277CBEB58] set];
  [regionCopy center];
  v9 = v8;
  v11 = v10;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v12 = itemsCopy;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v41 + 1) + 8 * i);
        categoryNames = [v17 categoryNames];
        if ([categoryNames count])
        {
          region = [v17 region];
          [region center];
          v21 = v20;
          v23 = v22;
          v24 = [region containsCoordinate:{v9, v11}];
          v25 = [regionCopy containsCoordinate:{v21, v23}];
          if ((v24 & 1) != 0 || v25)
          {
            [v7 addObjectsFromArray:categoryNames];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v14);
  }

  v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v27 = v7;
  v28 = [v27 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v38;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v37 + 1) + 8 * j);
        v33 = [PGGraphResolvedPlace alloc];
        v34 = [(PGGraphResolvedPlace *)v33 initWithPlaceOfInterestType:v32 confidence:1.0, v37];
        [v26 addObject:v34];
      }

      v29 = [v27 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v29);
  }

  v35 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)poiStringFromSpatialLookupCategory:(int64_t)category
{
  v3 = 0;
  switch(category)
  {
    case 0:
    case 2:
    case 3:
      v3 = +[PGPhotosGraphProfile poiEntertainment];
      break;
    case 1:
      v3 = +[PGPhotosGraphProfile poiAmusementPark];
      break;
    case 4:
      v3 = +[PGPhotosGraphProfile poiStadium];
      break;
    case 6:
    case 7:
      v3 = +[PGPhotosGraphProfile poiCulture];
      break;
    case 8:
      v3 = +[PGPhotosGraphProfile poiMuseum];
      break;
    case 9:
      v3 = +[PGPhotosGraphProfile poiRestaurant];
      break;
    case 10:
      v3 = +[PGPhotosGraphProfile poiNightlife];
      break;
    case 11:
      v3 = +[PGPhotosGraphProfile poiPark];
      break;
    case 12:
      v3 = +[PGPhotosGraphProfile poiTravel];
      break;
    case 17:
      v3 = +[PGPhotosGraphProfile poiActivity];
      break;
    case 18:
      v3 = +[PGPhotosGraphProfile poiDiving];
      break;
    case 19:
      v3 = +[PGPhotosGraphProfile poiHiking];
      break;
    case 20:
      v3 = +[PGPhotosGraphProfile poiPerformance];
      break;
    case 21:
      v3 = +[PGPhotosGraphProfile poiHospital];
      break;
    default:
      break;
  }

  return v3;
}

+ (id)resolvePlacesForMomentNode:(id)node feeder:(id)feeder poiCache:(id)cache
{
  v26 = *MEMORY[0x277D85DE8];
  feederCopy = feeder;
  cacheCopy = cache;
  if (feederCopy)
  {
    v8 = [objc_opt_class() _clusteredRegionsFromFeeder:feederCopy];
    array = [MEMORY[0x277CBEB18] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = objc_opt_class();
          [v15 center];
          v17 = [v16 _businessItemsAtCoordinate:cacheCopy inCache:?];
          if ([v17 count])
          {
            v18 = [objc_opt_class() resolvedPlaceForRegion:v15 withPlaceItems:v17];
            [array addObjectsFromArray:v18];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  v19 = *MEMORY[0x277D85DE8];

  return array;
}

@end