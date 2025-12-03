@interface CLPPoiHarvest(RTExtensions)
- (id)description;
- (id)initWithMapItem:()RTExtensions accessPoints:locations:motionActivities:;
@end

@implementation CLPPoiHarvest(RTExtensions)

- (id)initWithMapItem:()RTExtensions accessPoints:locations:motionActivities:
{
  v76 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  obj = a5;
  v12 = a6;
  if ([v10 validMUID] && objc_msgSend(v11, "count"))
  {
    v13 = objc_alloc(MEMORY[0x277CFFE90]);
    firstObject = [v11 firstObject];
    date = [firstObject date];
    v16 = [v13 initWithMapItem:v10 date:date];

    if (v16)
    {
      selfCopy = self;
      v17 = objc_opt_new();
      v51 = v16;
      [v17 setTriggerEvent:v16];
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v53 = v11;
      v18 = v11;
      v19 = [v18 countByEnumeratingWithState:&v66 objects:v75 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v67;
        do
        {
          v22 = 0;
          do
          {
            if (*v67 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [objc_alloc(MEMORY[0x277CFFE98]) initWithRTWifiAccessPoint:*(*(&v66 + 1) + 8 * v22)];
            if (v23)
            {
              [v17 addAccessPoints:v23];
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v66 objects:v75 count:16];
        }

        while (v20);
      }

      v54 = v10;

      v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"date" ascending:0];
      v74 = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
      v26 = [obj sortedArrayUsingDescriptors:v25];

      v27 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
      v73 = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
      v52 = v12;
      v29 = [v12 sortedArrayUsingDescriptors:v28];
      objectEnumerator = [v29 objectEnumerator];

      nextObject = [objectEnumerator nextObject];
      array = [MEMORY[0x277CBEB18] array];
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      obj = v26;
      v32 = [obj countByEnumeratingWithState:&v62 objects:v72 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v63;
        do
        {
          v35 = 0;
          do
          {
            if (*v63 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v62 + 1) + 8 * v35);
            if (nextObject)
            {
              do
              {
                date2 = [v36 date];
                startDate = [nextObject startDate];
                v39 = [date2 compare:startDate];

                if (v39 != -1)
                {
                  break;
                }

                nextObject2 = [objectEnumerator nextObject];

                nextObject = nextObject2;
              }

              while (nextObject2);
            }

            v41 = [objc_alloc(MEMORY[0x277CFFE78]) initWithRTLocation:v36 rtMotionActivity:nextObject];
            if (v41)
            {
              [array addObject:v41];
            }

            ++v35;
          }

          while (v35 != v33);
          v33 = [obj countByEnumeratingWithState:&v62 objects:v72 count:16];
        }

        while (v33);
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v42 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:1];
      v70 = v42;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
      v44 = [array sortedArrayUsingDescriptors:v43];

      v45 = [v44 countByEnumeratingWithState:&v58 objects:v71 count:16];
      v10 = v54;
      v16 = v51;
      if (v45)
      {
        v46 = v45;
        v47 = *v59;
        do
        {
          v48 = 0;
          do
          {
            if (*v59 != v47)
            {
              objc_enumerationMutation(v44);
            }

            [v17 addLocations:*(*(&v58 + 1) + 8 * v48++)];
          }

          while (v46 != v48);
          v46 = [v44 countByEnumeratingWithState:&v58 objects:v71 count:16];
        }

        while (v46);
      }

      v49 = v17;
      self = selfCopy;
      v12 = v52;
      v11 = v53;
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    v49 = 0;
  }

  return v49;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  triggerEvent = [self triggerEvent];
  accessPoints = [self accessPoints];
  v5 = [accessPoints count];
  locations = [self locations];
  v7 = [v2 stringWithFormat:@"triggerEvent, %@, wifiAccessPoints, %lu, locations, %lu", triggerEvent, v5, objc_msgSend(locations, "count")];

  return v7;
}

@end