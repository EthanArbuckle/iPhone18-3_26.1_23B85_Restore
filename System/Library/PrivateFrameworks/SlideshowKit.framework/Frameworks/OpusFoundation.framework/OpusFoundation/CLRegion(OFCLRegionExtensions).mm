@interface CLRegion(OFCLRegionExtensions)
+ (id)regionWithLocations:()OFCLRegionExtensions andIdentifier:;
@end

@implementation CLRegion(OFCLRegionExtensions)

+ (id)regionWithLocations:()OFCLRegionExtensions andIdentifier:
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = CLLocationCoordinate2DMake(NAN, NAN);
  latitude = v6.latitude;
  longitude = v6.longitude;
  v9 = CLLocationCoordinate2DMake(NAN, NAN);
  v10 = v9.latitude;
  v11 = v9.longitude;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = [a3 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v41;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(a3);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        [v16 coordinate];
        if (CLLocationCoordinate2DIsValid(v47))
        {
          [v16 coordinate];
          [v16 coordinate];
          [v16 coordinate];
          latitude = v17;
          longitude = v18;
          [v16 coordinate];
          v10 = v19;
          v11 = v20;
          goto LABEL_10;
        }
      }

      v13 = [a3 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v13);
  }

LABEL_10:
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = [a3 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(a3);
        }

        v25 = *(*(&v36 + 1) + 8 * j);
        [v25 coordinate];
        if (CLLocationCoordinate2DIsValid(v48))
        {
          [v25 coordinate];
          [v25 coordinate];
          [v25 coordinate];
          longitude = fmin(longitude, v26);
          [v25 coordinate];
          latitude = fmax(latitude, v27);
          [v25 coordinate];
          v11 = fmax(v11, v28);
          [v25 coordinate];
          v10 = fmin(v10, v29);
        }
      }

      v22 = [a3 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v22);
  }

  v49.latitude = latitude;
  v49.longitude = longitude;
  v30 = CLLocationCoordinate2DIsValid(v49);
  result = 0;
  if (v30)
  {
    v50.latitude = v10;
    v50.longitude = v11;
    v32 = CLLocationCoordinate2DIsValid(v50);
    result = 0;
    if (v32)
    {
      v33 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude - (latitude - v10) * 0.5 longitude:longitude + (v11 - longitude) * 0.5];
      v34 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:latitude longitude:longitude];
      [v33 distanceFromLocation:v34];

      [v33 coordinate];
      if (CLLocationCoordinate2DIsValid(v51) && ([v33 coordinate], objc_msgSend(v33, "coordinate"), v33))
      {
        v35 = objc_alloc(MEMORY[0x277CBFBC8]);
        [v33 coordinate];
        return [v35 initWithCenter:a4 radius:? identifier:?];
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

@end