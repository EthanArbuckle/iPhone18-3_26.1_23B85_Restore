@interface SHTimeAndPlaceServerResponseParser
+ (id)regionAffinityGroupsFromServerData:(id)a3 error:(id *)a4;
@end

@implementation SHTimeAndPlaceServerResponseParser

+ (id)regionAffinityGroupsFromServerData:(id)a3 error:(id *)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v56 = 0;
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:&v56];
  v6 = v56;
  v7 = v6;
  if (v5)
  {
    v35 = v6;
    v43 = [v5 objectForKeyedSubscript:@"geoHash"];
    v8 = [MEMORY[0x277CBEB18] array];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v36 = v5;
    obj = [v5 objectForKeyedSubscript:@"geoHashTrackPools"];
    v41 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v41)
    {
      v40 = *v53;
      v9 = *MEMORY[0x277CDC750];
      v37 = v8;
      do
      {
        v10 = 0;
        do
        {
          if (*v53 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v42 = v10;
          v11 = *(*(&v52 + 1) + 8 * v10);
          v12 = [v11 objectForKeyedSubscript:@"trackPool"];
          v13 = [[SHAffinityGroup alloc] initWithType:1 cohesionLevel:1];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v14 = v12;
          v15 = [v14 countByEnumeratingWithState:&v48 objects:v60 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v49;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v49 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v48 + 1) + 8 * i);
                v20 = MEMORY[0x277CDC730];
                v58 = v9;
                v59 = v19;
                v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
                v22 = [v20 mediaItemWithProperties:v21];

                [(SHAffinityGroup *)v13 appendMediaItem:v22];
              }

              v16 = [v14 countByEnumeratingWithState:&v48 objects:v60 count:16];
            }

            while (v16);
          }

          v23 = [v11 objectForKeyedSubscript:@"geoHashSuffixes"];
          v24 = [MEMORY[0x277CBEB18] array];
          if ([v23 count])
          {
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v25 = v23;
            v26 = [(SHRegion *)v25 countByEnumeratingWithState:&v44 objects:v57 count:16];
            if (v26)
            {
              v27 = v26;
              v39 = v23;
              v28 = *v45;
              do
              {
                for (j = 0; j != v27; ++j)
                {
                  if (*v45 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v43, *(*(&v44 + 1) + 8 * j)];
                  v31 = [[SHRegion alloc] initWithGeohash:v30];
                  [v24 addObject:v31];
                }

                v27 = [(SHRegion *)v25 countByEnumeratingWithState:&v44 objects:v57 count:16];
              }

              while (v27);
              v8 = v37;
              v23 = v39;
            }
          }

          else
          {
            v25 = [[SHRegion alloc] initWithGeohash:v43];
            [v24 addObject:v25];
          }

          v32 = [[SHTimeAndPlaceAffinityGroup alloc] initWithRegions:v24 affinityGroup:v13];
          [v8 addObject:v32];

          v10 = v42 + 1;
        }

        while (v42 + 1 != v41);
        v41 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v41);
    }

    v7 = v35;
    v5 = v36;
  }

  else if (a4)
  {
    [SHInsightsError errorWithCode:200 underlyingError:v6];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v8;
}

@end