@interface WFNextHourPrecipitation(WeatherAdditions)
- (id)dictionaryRepresentation;
- (uint64_t)initWithDictionary:()WeatherAdditions;
@end

@implementation WFNextHourPrecipitation(WeatherAdditions)

- (uint64_t)initWithDictionary:()WeatherAdditions
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKey:0x28822C328];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:unsignedIntegerValue];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }
  v40 = ;
  v6 = [v3 objectForKey:0x28822C348];
  unsignedIntegerValue2 = [v6 unsignedIntegerValue];

  if (unsignedIntegerValue2)
  {
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:unsignedIntegerValue2];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }
  v39 = ;
  v8 = [v3 objectForKey:0x28822C368];
  unsignedIntegerValue3 = [v8 unsignedIntegerValue];

  if (unsignedIntegerValue3)
  {
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:unsignedIntegerValue3];
  }

  else
  {
    [MEMORY[0x277CBEAA8] distantPast];
  }
  v38 = ;
  v10 = [v3 objectForKey:0x28822C388];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v52;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v52 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [objc_alloc(MEMORY[0x277D7B2A0]) initWithDictionary:*(*(&v51 + 1) + 8 * i)];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v14);
  }

  v37 = v12;

  v18 = [v3 objectForKey:0x28822C3A8];
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v48;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v48 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [objc_alloc(MEMORY[0x277D7B298]) initWithDictionary:{*(*(&v47 + 1) + 8 * j), v37}];
        [v19 addObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v22);
  }

  v42 = v3;
  v26 = [v3 objectForKey:0x28822C3C8];
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v28 = v26;
  v29 = [v28 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v44;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v44 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [objc_alloc(MEMORY[0x277D7B290]) initWithDictionary:*(*(&v43 + 1) + 8 * k)];
        [v27 addObject:v33];
      }

      v30 = [v28 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v30);
  }

  v34 = [self initWithReadDate:v40 startDate:v39 expirationDate:v38 minutes:v11 conditions:v27 descriptions:v19];
  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

- (id)dictionaryRepresentation
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  readDate = [self readDate];
  [readDate timeIntervalSince1970];
  v34 = [v2 numberWithDouble:?];

  v4 = MEMORY[0x277CCABB0];
  startDate = [self startDate];
  [startDate timeIntervalSince1970];
  v33 = [v4 numberWithDouble:?];

  v6 = MEMORY[0x277CCABB0];
  expirationDate = [self expirationDate];
  [expirationDate timeIntervalSince1970];
  v8 = [v6 numberWithDouble:?];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  minutes = [self minutes];
  v11 = [minutes countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(minutes);
        }

        dictionaryRepresentation = [*(*(&v43 + 1) + 8 * i) dictionaryRepresentation];
        [v9 addObject:dictionaryRepresentation];
      }

      v12 = [minutes countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v12);
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  precipitationDescriptions = [self precipitationDescriptions];
  v18 = [precipitationDescriptions countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v40;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(precipitationDescriptions);
        }

        dictionaryRepresentation2 = [*(*(&v39 + 1) + 8 * j) dictionaryRepresentation];
        [v16 addObject:dictionaryRepresentation2];
      }

      v19 = [precipitationDescriptions countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v19);
  }

  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  conditions = [self conditions];
  v25 = [conditions countByEnumeratingWithState:&v35 objects:v49 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v36;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(conditions);
        }

        dictionaryRepresentation3 = [*(*(&v35 + 1) + 8 * k) dictionaryRepresentation];
        [v23 addObject:dictionaryRepresentation3];
      }

      v26 = [conditions countByEnumeratingWithState:&v35 objects:v49 count:16];
    }

    while (v26);
  }

  v47[0] = 0x28822C328;
  v47[1] = 0x28822C348;
  v48[0] = v34;
  v48[1] = v33;
  v47[2] = 0x28822C368;
  v47[3] = 0x28822C388;
  v48[2] = v8;
  v48[3] = v9;
  v47[4] = 0x28822C3A8;
  v47[5] = 0x28822C3C8;
  v48[4] = v16;
  v48[5] = v23;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:6];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

@end