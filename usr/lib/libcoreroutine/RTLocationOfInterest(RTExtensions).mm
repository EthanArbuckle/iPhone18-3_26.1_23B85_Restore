@interface RTLocationOfInterest(RTExtensions)
+ (id)locationsOfInterestFromLearnedLocationsOfInterest:()RTExtensions;
+ (uint64_t)routineModeFromLearnedLocationMode:()RTExtensions;
+ (uint64_t)typeFromPlaceType:()RTExtensions;
- (id)initWithLearnedLocationOfInterest:()RTExtensions;
@end

@implementation RTLocationOfInterest(RTExtensions)

+ (uint64_t)typeFromPlaceType:()RTExtensions
{
  if ((a3 - 1) >= 4)
  {
    return -1;
  }

  else
  {
    return a3 - 1;
  }
}

- (id)initWithLearnedLocationOfInterest:()RTExtensions
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v33 = a1;
    v6 = [v4 visits];

    if (v6)
    {
      v7 = MEMORY[0x277CBEB18];
      v8 = [v5 visits];
      v6 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v9 = [v5 visits];
      v10 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v35;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v35 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [objc_alloc(MEMORY[0x277D01188]) initWithLearnedVisit:*(*(&v34 + 1) + 8 * i)];
            if (v14)
            {
              [v6 addObject:v14];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v11);
      }
    }

    v32 = [v5 location];
    v15 = [v32 location];
    v31 = [v5 location];
    [v31 confidence];
    v17 = v16;
    v18 = [v5 identifier];
    v19 = MEMORY[0x277D01170];
    v30 = [v5 place];
    v29 = [v19 typeFromPlaceType:{objc_msgSend(v30, "type")}];
    v20 = MEMORY[0x277D01170];
    v21 = [v5 place];
    v22 = [v20 typeSourceFromPlaceTypeSource:{objc_msgSend(v21, "typeSource")}];
    v23 = [v5 place];
    v24 = [v23 customLabel];
    v25 = [v5 place];
    v26 = [v25 mapItem];
    a1 = [v33 initWithLocation:v15 confidence:v18 identifier:v29 type:v22 typeSource:v6 visits:v24 customLabel:v17 mapItem:v26];

    v27 = a1;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

+ (id)locationsOfInterestFromLearnedLocationsOfInterest:()RTExtensions
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = objc_alloc(MEMORY[0x277D01170]);
          v13 = [v12 initWithLearnedLocationOfInterest:{v11, v15}];
          if (v13)
          {
            [v5 addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (uint64_t)routineModeFromLearnedLocationMode:()RTExtensions
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

@end