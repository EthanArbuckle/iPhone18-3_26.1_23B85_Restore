@interface PGGraphPlacesResolver
+ (id)_businessItemsAtCoordinate:(CLLocationCoordinate2D)a3 inCache:(id)a4;
+ (id)_clusteredRegionsFromFeeder:(id)a3;
+ (id)poiStringFromSpatialLookupCategory:(int64_t)a3;
+ (id)resolvePlacesForMomentNode:(id)a3 feeder:(id)a4 poiCache:(id)a5;
+ (id)resolvedPlaceForRegion:(id)a3 withPlaceItems:(id)a4;
@end

@implementation PGGraphPlacesResolver

+ (id)_businessItemsAtCoordinate:(CLLocationCoordinate2D)a3 inCache:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v6 = a4;
  v18.latitude = latitude;
  v18.longitude = longitude;
  v7 = CLLocationCoordinate2DIsValid(v18);
  v8 = MEMORY[0x277CBEBF8];
  if (v7)
  {
    v9 = objc_alloc(MEMORY[0x277CBFBC8]);
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v10 UUIDString];
    v12 = [v9 initWithCenter:v11 radius:latitude identifier:{longitude, 100.0}];

    v13 = [v6 businessItemsForRegion:v12];
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

+ (id)_clusteredRegionsFromFeeder:(id)a3
{
  v3 = [a3 allItems];
  v4 = [MEMORY[0x277D3AD58] performClustering:0 dataset:v3 progressBlock:&__block_literal_global_47222];
  v5 = [v4 allKeys];

  return v5;
}

+ (id)resolvedPlaceForRegion:(id)a3 withPlaceItems:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB58] set];
  [v5 center];
  v9 = v8;
  v11 = v10;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v12 = v6;
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
        v18 = [v17 categoryNames];
        if ([v18 count])
        {
          v19 = [v17 region];
          [v19 center];
          v21 = v20;
          v23 = v22;
          v24 = [v19 containsCoordinate:{v9, v11}];
          v25 = [v5 containsCoordinate:{v21, v23}];
          if ((v24 & 1) != 0 || v25)
          {
            [v7 addObjectsFromArray:v18];
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

+ (id)poiStringFromSpatialLookupCategory:(int64_t)a3
{
  v3 = 0;
  switch(a3)
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

+ (id)resolvePlacesForMomentNode:(id)a3 feeder:(id)a4 poiCache:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a5;
  if (v6)
  {
    v8 = [objc_opt_class() _clusteredRegionsFromFeeder:v6];
    v9 = [MEMORY[0x277CBEB18] array];
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
          v17 = [v16 _businessItemsAtCoordinate:v7 inCache:?];
          if ([v17 count])
          {
            v18 = [objc_opt_class() resolvedPlaceForRegion:v15 withPlaceItems:v17];
            [v9 addObjectsFromArray:v18];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

@end