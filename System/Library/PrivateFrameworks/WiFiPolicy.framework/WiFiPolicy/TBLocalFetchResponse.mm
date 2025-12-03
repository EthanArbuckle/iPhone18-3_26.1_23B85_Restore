@interface TBLocalFetchResponse
+ (id)responseWithResults:(id)results entityDescription:(id)description;
+ (id)responseWithResultsByBSSID:(id)d;
- (TBLocalFetchResponse)initWithResults:(id)results entityDescription:(id)description;
- (TBLocalFetchResponse)initWithResultsByBSSID:(id)d;
@end

@implementation TBLocalFetchResponse

+ (id)responseWithResults:(id)results entityDescription:(id)description
{
  descriptionCopy = description;
  resultsCopy = results;
  v7 = [[TBLocalFetchResponse alloc] initWithResults:resultsCopy entityDescription:descriptionCopy];

  return v7;
}

+ (id)responseWithResultsByBSSID:(id)d
{
  dCopy = d;
  v4 = [[TBLocalFetchResponse alloc] initWithResultsByBSSID:dCopy];

  return v4;
}

- (TBLocalFetchResponse)initWithResultsByBSSID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = TBLocalFetchResponse;
  v6 = [(TBLocalFetchResponse *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resultsByBSSID, d);
    allValues = [dCopy allValues];
    results = v7->_results;
    v7->_results = allValues;
  }

  return v7;
}

- (TBLocalFetchResponse)initWithResults:(id)results entityDescription:(id)description
{
  v55 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  descriptionCopy = description;
  v52.receiver = self;
  v52.super_class = TBLocalFetchResponse;
  v8 = [(TBLocalFetchResponse *)&v52 init];
  v9 = v8;
  if (descriptionCopy && v8)
  {
    name = [descriptionCopy name];
    v11 = +[TBAccessPointMO entityName];
    v12 = [name isEqualToString:v11];

    if (v12)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      array = [MEMORY[0x277CBEB18] array];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v43 = resultsCopy;
      v15 = resultsCopy;
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
            network = [v20 network];
            [(NSArray *)array addObject:network];

            network2 = [v20 network];
            bSSID = [v20 BSSID];
            [(NSDictionary *)dictionary setObject:network2 forKey:bSSID];
          }

          v17 = [v15 countByEnumeratingWithState:&v48 objects:v54 count:16];
        }

        while (v17);
      }

      results = v9->_results;
      v9->_results = array;
      tiles = array;

      resultsByBSSID = v9->_resultsByBSSID;
      v9->_resultsByBSSID = dictionary;

      resultsCopy = v43;
      goto LABEL_23;
    }

    name2 = [descriptionCopy name];
    v28 = +[TBNetworkMO entityName];
    v29 = [name2 isEqualToString:v28];

    if (v29)
    {
      v30 = resultsCopy;
      tiles = v9->_results;
      v9->_results = v30;
LABEL_23:

      goto LABEL_24;
    }

    name3 = [descriptionCopy name];
    v32 = +[TBTileMO entityName];
    v33 = [name3 isEqualToString:v32];

    if (v33)
    {
      v34 = [MEMORY[0x277CBEB58] set];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v35 = resultsCopy;
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