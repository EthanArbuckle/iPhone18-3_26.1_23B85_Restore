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
    selfCopy = self;
    visits = [v4 visits];

    if (visits)
    {
      v7 = MEMORY[0x277CBEB18];
      visits2 = [v5 visits];
      visits = [v7 arrayWithCapacity:{objc_msgSend(visits2, "count")}];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      visits3 = [v5 visits];
      v10 = [visits3 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
              objc_enumerationMutation(visits3);
            }

            v14 = [objc_alloc(MEMORY[0x277D01188]) initWithLearnedVisit:*(*(&v34 + 1) + 8 * i)];
            if (v14)
            {
              [visits addObject:v14];
            }
          }

          v11 = [visits3 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v11);
      }
    }

    location = [v5 location];
    v32Location = [location location];
    location2 = [v5 location];
    [location2 confidence];
    v17 = v16;
    identifier = [v5 identifier];
    v19 = MEMORY[0x277D01170];
    place = [v5 place];
    v29 = [v19 typeFromPlaceType:{objc_msgSend(place, "type")}];
    v20 = MEMORY[0x277D01170];
    place2 = [v5 place];
    v22 = [v20 typeSourceFromPlaceTypeSource:{objc_msgSend(place2, "typeSource")}];
    place3 = [v5 place];
    customLabel = [place3 customLabel];
    place4 = [v5 place];
    mapItem = [place4 mapItem];
    self = [selfCopy initWithLocation:v32Location confidence:identifier identifier:v29 type:v22 typeSource:visits visits:customLabel customLabel:v17 mapItem:mapItem];

    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
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