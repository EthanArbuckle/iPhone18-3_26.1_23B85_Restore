@interface SHTimeAndPlaceAffinityGroup
- (NSDictionary)geohashKeyedRegions;
- (SHTimeAndPlaceAffinityGroup)initWithRegions:(id)regions affinityGroup:(id)group;
- (id)regionsForGeohash:(id)geohash;
@end

@implementation SHTimeAndPlaceAffinityGroup

- (SHTimeAndPlaceAffinityGroup)initWithRegions:(id)regions affinityGroup:(id)group
{
  regionsCopy = regions;
  groupCopy = group;
  v12.receiver = self;
  v12.super_class = SHTimeAndPlaceAffinityGroup;
  v9 = [(SHTimeAndPlaceAffinityGroup *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_regions, regions);
    objc_storeStrong(&v10->_affinityGroup, group);
  }

  return v10;
}

- (NSDictionary)geohashKeyedRegions
{
  v24 = *MEMORY[0x277D85DE8];
  geohashKeyedRegions = self->_geohashKeyedRegions;
  if (!geohashKeyedRegions)
  {
    v4 = MEMORY[0x277CBEB38];
    regions = [(SHTimeAndPlaceAffinityGroup *)self regions];
    v6 = [v4 dictionaryWithCapacity:{objc_msgSend(regions, "count")}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    regions2 = [(SHTimeAndPlaceAffinityGroup *)self regions];
    v8 = [regions2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(regions2);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          geohash = [v12 geohash];

          if (geohash)
          {
            geohash2 = [v12 geohash];
            [v6 setObject:v12 forKeyedSubscript:geohash2];
          }
        }

        v9 = [regions2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v15 = [v6 copy];
    v16 = self->_geohashKeyedRegions;
    self->_geohashKeyedRegions = v15;

    geohashKeyedRegions = self->_geohashKeyedRegions;
  }

  v17 = *MEMORY[0x277D85DE8];

  return geohashKeyedRegions;
}

- (id)regionsForGeohash:(id)geohash
{
  v27 = *MEMORY[0x277D85DE8];
  geohashCopy = geohash;
  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  regions = [(SHTimeAndPlaceAffinityGroup *)self regions];
  v7 = [regions countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(regions);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        geohash = [v11 geohash];
        v13 = [geohash hasPrefix:geohashCopy];

        if (v13)
        {
          [array addObject:v11];
        }
      }

      v8 = [regions countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  if (![array count] && objc_msgSend(geohashCopy, "length"))
  {
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v19 = [geohashCopy substringToIndex:{objc_msgSend(geohashCopy, "length") + v17}];
      geohashKeyedRegions = [(SHTimeAndPlaceAffinityGroup *)self geohashKeyedRegions];
      v21 = [geohashKeyedRegions objectForKeyedSubscript:v19];

      if (v21)
      {
        break;
      }

      ++v18;
      --v17;
      if (v18 == [geohashCopy length])
      {
        goto LABEL_11;
      }
    }

    [array addObject:v21];
  }

LABEL_11:
  v14 = [array copy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end