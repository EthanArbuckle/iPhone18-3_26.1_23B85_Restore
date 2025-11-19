@interface TBLocalFetchResponse
+ (id)responseWithResults:(id)a3 entityDescription:(id)a4;
+ (id)responseWithResultsByBSSID:(id)a3;
- (TBLocalFetchResponse)initWithResults:(id)a3 entityDescription:(id)a4;
- (TBLocalFetchResponse)initWithResultsByBSSID:(id)a3;
@end

@implementation TBLocalFetchResponse

+ (id)responseWithResults:(id)a3 entityDescription:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TBLocalFetchResponse alloc] initWithResults:v6 entityDescription:v5];

  return v7;
}

+ (id)responseWithResultsByBSSID:(id)a3
{
  v3 = a3;
  v4 = [[TBLocalFetchResponse alloc] initWithResultsByBSSID:v3];

  return v4;
}

- (TBLocalFetchResponse)initWithResultsByBSSID:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TBLocalFetchResponse;
  v6 = [(TBLocalFetchResponse *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resultsByBSSID, a3);
    v8 = [v5 allValues];
    results = v7->_results;
    v7->_results = v8;
  }

  return v7;
}

- (TBLocalFetchResponse)initWithResults:(id)a3 entityDescription:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v52.receiver = self;
  v52.super_class = TBLocalFetchResponse;
  v8 = [(TBLocalFetchResponse *)&v52 init];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [v7 name];
    v11 = +[TBAccessPointMO entityName];
    v12 = [v10 isEqualToString:v11];

    if (v12)
    {
      v13 = [MEMORY[0x277CBEB38] dictionary];
      v14 = [MEMORY[0x277CBEB18] array];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v43 = v6;
      v15 = v6;
      v16 = [v15 countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v49;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v49 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v48 + 1) + 8 * i);
            v21 = [v20 network];
            [(NSArray *)v14 addObject:v21];

            v22 = [v20 network];
            v23 = [v20 BSSID];
            [(NSDictionary *)v13 setObject:v22 forKey:v23];
          }

          v17 = [v15 countByEnumeratingWithState:&v48 objects:v54 count:16];
        }

        while (v17);
      }

      results = v9->_results;
      v9->_results = v14;
      tiles = v14;

      resultsByBSSID = v9->_resultsByBSSID;
      v9->_resultsByBSSID = v13;

      v6 = v43;
      goto LABEL_23;
    }

    v27 = [v7 name];
    v28 = +[TBNetworkMO entityName];
    v29 = [v27 isEqualToString:v28];

    if (v29)
    {
      v30 = v6;
      tiles = v9->_results;
      v9->_results = v30;
LABEL_23:

      goto LABEL_24;
    }

    v31 = [v7 name];
    v32 = +[TBTileMO entityName];
    v33 = [v31 isEqualToString:v32];

    if (v33)
    {
      v34 = [MEMORY[0x277CBEB58] set];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v35 = v6;
      v36 = [v35 countByEnumeratingWithState:&v44 objects:v53 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v45;
        do
        {
          for (j = 0; j != v37; ++j)
          {
            if (*v45 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = [[TBLocalFetchTileItem alloc] initWithTile:*(*(&v44 + 1) + 8 * j) error:0];
            [(NSSet *)v34 addObject:v40];
          }

          v37 = [v35 countByEnumeratingWithState:&v44 objects:v53 count:16];
        }

        while (v37);
      }

      tiles = v9->_tiles;
      v9->_tiles = v34;
      goto LABEL_23;
    }
  }

LABEL_24:

  v41 = *MEMORY[0x277D85DE8];
  return v9;
}

@end