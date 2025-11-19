@interface PGRecurrentTripMemoryTitleGenerator
- (PGRecurrentTripMemoryTitleGenerator)initWithLocationNodes:(id)a3 titleGenerationContext:(id)a4;
- (id)_locationTitle;
- (id)_timeTitle;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
@end

@implementation PGRecurrentTripMemoryTitleGenerator

- (id)_timeTitle
{
  v2 = objc_alloc_init(PGTimeTitleOptions);
  [(PGTimeTitleOptions *)v2 setAllowedFormats:16];
  v3 = [PGTimeTitleUtility timeTitleWithOptions:v2];
  v4 = [PGTitle titleWithString:v3 category:5];

  return v4;
}

- (id)_locationTitle
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = [(NSSet *)self->_locationNodes count];
  v4 = [MEMORY[0x277CBEB58] setWithCapacity:v3];
  v5 = [(NSSet *)self->_locationNodes anyObject];
  v6 = [v5 label];

  v43 = v6;
  if ([v6 isEqualToString:@"State"])
  {
    v42 = 1;
  }

  else
  {
    v42 = [v6 isEqualToString:@"Country"];
  }

  v7 = [(PGTitleGenerator *)self titleGenerationContext];
  v8 = [v7 locationHelper];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v9 = self->_locationNodes;
  v10 = [(NSSet *)v9 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v46;
    v13 = 1;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v45 + 1) + 8 * i);
        v16 = [v8 locationIsInSupersetCategoryForLocationNode:v15];
        v17 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:v15 locationHelper:v8];
        if ([v17 length])
        {
          [v4 addObject:v17];
        }

        v13 &= v16;
      }

      v11 = [(NSSet *)v9 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 1;
  }

  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:sel_localizedCompare_];
  v50 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v20 = [v4 sortedArrayUsingDescriptors:v19];

  v21 = [v20 count];
  v22 = v20;
  v23 = v22;
  if (v21 == 2)
  {
    v29 = [v22 firstObject];
    v32 = [v23 lastObject];
    v34 = MEMORY[0x277CCACA8];
    v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v36 = [v35 localizedStringForKey:@"PGRecurrentTripMemoryTitleFormatWithLocation %@ otherLocation %@" value:@"PGRecurrentTripMemoryTitleFormatWithLocation %@ otherLocation %@" table:@"Localizable"];
    v37 = [v34 localizedStringWithFormat:v36, v29, v32];

LABEL_27:
    v28 = v23;
LABEL_28:

    if (v37)
    {
      v26 = [PGCommonTitleUtility titleWithLineBreakForTitle:v37 andUsedNames:v28];

      v27 = [PGTitle titleWithString:v26 category:4];
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    goto LABEL_31;
  }

  if (v21 == 1)
  {
    v29 = [v22 firstObject];
    v30 = MEMORY[0x277CCACA8];
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = v31;
    if ((v13 & v42) == 1)
    {
      v33 = @"PGRecurrentTripMemoryTitleFormatInSupersetWithLocation %@";
    }

    else
    {
      v33 = @"PGRecurrentTripMemoryTitleFormatWithLocation %@";
    }

    v35 = [v31 localizedStringForKey:v33 value:v33 table:@"Localizable"];
    v37 = [v30 localizedStringWithFormat:v35, v29];
    goto LABEL_27;
  }

  if (v21)
  {
    v29 = [v22 firstObject];
    v32 = [v23 lastObject];
    v49[0] = v29;
    v49[1] = v32;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];

    v38 = MEMORY[0x277CCACA8];
    v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v39 = [v35 localizedStringForKey:@"PGRecurrentTripMemoryTitleFormatWithFromLocation %@ toLocation %@" value:@"PGRecurrentTripMemoryTitleFormatWithFromLocation %@ toLocation %@" table:@"Localizable"];
    v37 = [v38 localizedStringWithFormat:v39, v29, v32];

    goto LABEL_28;
  }

  v24 = +[PGLogging sharedLogging];
  v25 = [v24 loggingConnection];

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_ERROR, "RecurrentTripTitle requires at least one location node", buf, 2u);
  }

  v26 = 0;
  v27 = 0;
  v28 = v23;
LABEL_31:

  v40 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v6 = a3;
  v4 = [(PGRecurrentTripMemoryTitleGenerator *)self _locationTitle];
  v5 = [(PGRecurrentTripMemoryTitleGenerator *)self _timeTitle];
  if (v6)
  {
    v6[2](v6, v4, v5);
  }
}

- (PGRecurrentTripMemoryTitleGenerator)initWithLocationNodes:(id)a3 titleGenerationContext:(id)a4
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB98];
  v9 = a4;
  v10 = [v8 set];
  v13.receiver = self;
  v13.super_class = PGRecurrentTripMemoryTitleGenerator;
  v11 = [(PGTitleGenerator *)&v13 initWithMomentNodes:v10 type:0 titleGenerationContext:v9];

  if (v11)
  {
    objc_storeStrong(&v11->_locationNodes, a3);
  }

  return v11;
}

@end