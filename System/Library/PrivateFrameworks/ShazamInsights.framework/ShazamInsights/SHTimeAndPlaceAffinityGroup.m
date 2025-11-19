@interface SHTimeAndPlaceAffinityGroup
- (NSDictionary)geohashKeyedRegions;
- (SHTimeAndPlaceAffinityGroup)initWithRegions:(id)a3 affinityGroup:(id)a4;
- (id)regionsForGeohash:(id)a3;
@end

@implementation SHTimeAndPlaceAffinityGroup

- (SHTimeAndPlaceAffinityGroup)initWithRegions:(id)a3 affinityGroup:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SHTimeAndPlaceAffinityGroup;
  v9 = [(SHTimeAndPlaceAffinityGroup *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_regions, a3);
    objc_storeStrong(&v10->_affinityGroup, a4);
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
    v5 = [(SHTimeAndPlaceAffinityGroup *)self regions];
    v6 = [v4 dictionaryWithCapacity:{objc_msgSend(v5, "count")}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(SHTimeAndPlaceAffinityGroup *)self regions];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v12 geohash];

          if (v13)
          {
            v14 = [v12 geohash];
            [v6 setObject:v12 forKeyedSubscript:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (id)regionsForGeohash:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [(SHTimeAndPlaceAffinityGroup *)self regions];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 geohash];
        v13 = [v12 hasPrefix:v4];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  if (![v5 count] && objc_msgSend(v4, "length"))
  {
    v17 = 0;
    v18 = 0;
    while (1)
    {
      v19 = [v4 substringToIndex:{objc_msgSend(v4, "length") + v17}];
      v20 = [(SHTimeAndPlaceAffinityGroup *)self geohashKeyedRegions];
      v21 = [v20 objectForKeyedSubscript:v19];

      if (v21)
      {
        break;
      }

      ++v18;
      --v17;
      if (v18 == [v4 length])
      {
        goto LABEL_11;
      }
    }

    [v5 addObject:v21];
  }

LABEL_11:
  v14 = [v5 copy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end