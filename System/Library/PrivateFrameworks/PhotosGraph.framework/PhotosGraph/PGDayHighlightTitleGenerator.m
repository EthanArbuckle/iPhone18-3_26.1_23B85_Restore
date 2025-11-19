@interface PGDayHighlightTitleGenerator
- (PGDayHighlightTitleGenerator)initWithSummarizedFeatures:(id)a3 momentNodes:(id)a4 titleGenerationContext:(id)a5 loggingConnection:(id)a6;
- (PGTitleTuple)titleTuple;
- (id)dayHighlightMeaningLabels;
- (id)localizedTitleStringForSortedSummarizedFeatures:(id)a3;
- (id)localizedTitleStringFromBusinessFeature:(id)a3;
- (id)localizedTitleStringFromDistrictNode:(id)a3 districtName:(id)a4;
- (id)localizedTitleStringFromHolidayDateFeature:(id)a3;
- (id)localizedTitleStringFromLocationFeature:(id)a3;
- (id)localizedTitleStringFromMeaningFeature:(id)a3;
- (id)localizedTitleStringFromPublicEventFeature:(id)a3;
- (id)nameFromLocationFeature:(id)a3;
@end

@implementation PGDayHighlightTitleGenerator

- (id)dayHighlightMeaningLabels
{
  v5[11] = *MEMORY[0x277D85DE8];
  v5[0] = @"Entertainment";
  v5[1] = @"Theater";
  v5[2] = @"Dance";
  v5[3] = @"AmusementPark";
  v5[4] = @"SportEvent";
  v5[5] = @"Performance";
  v5[6] = @"Concert";
  v5[7] = @"Festival";
  v5[8] = @"Museum";
  v5[9] = @"Birthday";
  v5[10] = @"HolidayEvent";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:11];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)localizedTitleStringFromDistrictNode:(id)a3 districtName:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PGTitleGenerationContext *)self->_titleGenerationContext locationHelper];
  v9 = [v8 cityNodeFromDistrictNode:v6];

  if ([v9 count] == 1)
  {
    v43 = v6;
    v10 = [v9 anyNode];
    v11 = [(PGTitleGenerationContext *)self->_titleGenerationContext locationHelper];
    v12 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:v10 locationHelper:v11];

    v13 = [objc_alloc(MEMORY[0x277CD89E0]) initWithUnit:0];
    v14 = objc_opt_new();
    v15 = objc_opt_new();
    v42 = v12;
    [v13 setString:v12];
    v16 = [v13 string];
    v17 = [v16 length];

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __82__PGDayHighlightTitleGenerator_localizedTitleStringFromDistrictNode_districtName___block_invoke;
    v47[3] = &unk_27887FF90;
    v18 = v13;
    v48 = v18;
    v19 = v14;
    v49 = v19;
    [v18 enumerateTokensInRange:0 usingBlock:{v17, v47}];
    [v18 setString:v7];
    v20 = [v18 string];
    v21 = [v20 length];

    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __82__PGDayHighlightTitleGenerator_localizedTitleStringFromDistrictNode_districtName___block_invoke_2;
    v44[3] = &unk_27887FF90;
    v22 = v18;
    v45 = v22;
    v23 = v15;
    v46 = v23;
    [v22 enumerateTokensInRange:0 usingBlock:{v21, v44}];
    v24 = [v23 count];
    v25 = [v19 count];
    v26 = v24 - v25;
    if (v24 < v25)
    {
LABEL_6:
      v30 = MEMORY[0x277CCACA8];
      v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v32 = [v31 localizedStringForKey:@"PGLocationTitleFormatOneDistrict %@ city %@" value:@"PGLocationTitleFormatOneDistrict %@ city %@" table:@"Localizable"];
      v33 = v42;
      v34 = [v30 localizedStringWithFormat:v32, v7, v42];

      v50[0] = v7;
      v50[1] = v42;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
      v35 = [PGCommonTitleUtility titleWithNoLineBreakSpaceForTitle:v34 andUsedNames:v29];
    }

    else
    {
      v27 = v25;
      v28 = 0;
      while (1)
      {
        v29 = [v23 subarrayWithRange:{v28, v27}];
        if ([v29 isEqualToArray:v19])
        {
          break;
        }

        if (++v28 > v26)
        {
          goto LABEL_6;
        }
      }

      loggingConnection = self->_loggingConnection;
      v33 = v42;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v52 = v42;
        v53 = 2112;
        v54 = v7;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Only city name %@ used for highlight subtitle, not using district name %@", buf, 0x16u);
      }

      v35 = v42;
    }

    v6 = v43;
  }

  else
  {
    v36 = self->_loggingConnection;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v40 = v36;
      v41 = [v6 UUID];
      *buf = 138412546;
      v52 = v41;
      v53 = 2112;
      v54 = v7;
      _os_log_error_impl(&dword_22F0FC000, v40, OS_LOG_TYPE_ERROR, "cityNode from districtNode count is invalid for districtNode: %@ with name: %@", buf, 0x16u);
    }

    v35 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v35;
}

void __82__PGDayHighlightTitleGenerator_localizedTitleStringFromDistrictNode_districtName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) string];
  v7 = [v6 substringWithRange:{a2, a3}];

  [*(a1 + 40) addObject:v7];
}

void __82__PGDayHighlightTitleGenerator_localizedTitleStringFromDistrictNode_districtName___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) string];
  v7 = [v6 substringWithRange:{a2, a3}];

  [*(a1 + 40) addObject:v7];
}

- (id)localizedTitleStringFromHolidayDateFeature:(id)a3
{
  v4 = a3;
  v5 = [PGTitleGeneratorDateMatching alloc];
  v6 = [(MAElementCollection *)self->_momentNodes set];
  titleGenerationContext = self->_titleGenerationContext;
  v8 = [v4 holidayName];

  v9 = [(PGTitleGeneratorDateMatching *)v5 initWithType:4 referenceDateInterval:0 momentNodes:v6 titleGenerationContext:titleGenerationContext holidayName:v8 isForHighlight:1];
  [(PGTitleGeneratorDateMatching *)v9 setLineBreakBehavior:2];
  v10 = [(PGTitleGeneratorDateMatching *)v9 title];
  v11 = [v10 stringValue];

  return v11;
}

- (id)localizedTitleStringFromLocationFeature:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGDayHighlightTitleGenerator *)self nameFromLocationFeature:v4];
  v6 = [v4 locationNode];

  if (v5)
  {
    v7 = [v6 label];
    v8 = [v7 isEqualToString:@"District"];

    if (v8)
    {
      v9 = [(PGDayHighlightTitleGenerator *)self localizedTitleStringFromDistrictNode:v6 districtName:v5];
    }

    else
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"PGDayHighlightTitleFormatOneLocation %@" value:@"PGDayHighlightTitleFormatOneLocation %@" table:@"Localizable"];
      v14 = [v11 localizedStringWithFormat:v13, v5];

      v9 = [v14 stringByReplacingOccurrencesOfString:@" " withString:@" "];
    }
  }

  else
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v17 = loggingConnection;
      v18 = [v6 name];
      *buf = 138412290;
      v20 = v18;
      _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Nil beautified locationName for locationNode %@", buf, 0xCu);
    }

    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)localizedTitleStringFromPublicEventFeature:(id)a3
{
  v4 = a3;
  v5 = [PGSpecBasedHighlightTitleGenerator alloc];
  v6 = [(MAElementCollection *)self->_momentNodes set];
  v7 = [v4 publicEventLabel];

  v8 = [(PGSpecBasedHighlightTitleGenerator *)v5 initWithMomentNodes:v6 meaningLabel:v7 createVerboseTitle:0 titleGenerationContext:self->_titleGenerationContext];
  [(PGTitleGenerator *)v8 setLineBreakBehavior:2];
  v9 = [(PGTitleGenerator *)v8 title];
  v10 = [v9 stringValue];

  return v10;
}

- (id)localizedTitleStringFromBusinessFeature:(id)a3
{
  v3 = [a3 businessNode];
  v4 = [v3 name];

  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"PGDayHighlightTitleFormatOneBusinessLocation %@" value:@"PGDayHighlightTitleFormatOneBusinessLocation %@" table:@"Localizable"];
  v8 = [v5 localizedStringWithFormat:v7, v4];

  v9 = [v8 stringByReplacingOccurrencesOfString:@" " withString:@" "];

  return v9;
}

- (id)localizedTitleStringFromMeaningFeature:(id)a3
{
  v4 = a3;
  v5 = [PGSpecBasedHighlightTitleGenerator alloc];
  v6 = [(MAElementCollection *)self->_momentNodes set];
  v7 = [v4 meaningLabel];

  v8 = [(PGSpecBasedHighlightTitleGenerator *)v5 initWithMomentNodes:v6 meaningLabel:v7 createVerboseTitle:0 titleGenerationContext:self->_titleGenerationContext];
  [(PGTitleGenerator *)v8 setLineBreakBehavior:2];
  v9 = [(PGTitleGenerator *)v8 title];
  v10 = [v9 stringValue];

  return v10;
}

- (id)nameFromLocationFeature:(id)a3
{
  v4 = a3;
  v5 = [v4 subtype];
  if ((v5 - 2) >= 4)
  {
    if (v5 == 1)
    {
      v8 = [v4 locationName];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v6 = [v4 locationNode];
    v7 = [(PGTitleGenerationContext *)self->_titleGenerationContext locationHelper];
    v8 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:v6 locationHelper:v7];
  }

  return v8;
}

- (id)localizedTitleStringForSortedSummarizedFeatures:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v3;
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

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = [v14 type];
        v16 = v4;
        if (v15 == 1)
        {
          goto LABEL_11;
        }

        v17 = [v14 type];
        v16 = v5;
        if (v17 != 3)
        {
          v18 = [v14 type];
          v16 = v6;
          if (v18 != 2)
          {
            v19 = [v14 type];
            v16 = v7;
            if (v19 != 4)
            {
              v20 = [v14 type];
              v16 = v8;
              if (v20 != 5)
              {
                continue;
              }
            }
          }
        }

LABEL_11:
        [v16 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v11);
  }

  v21 = [(PGDayHighlightTitleGenerator *)self dayHighlightMeaningLabels];
  v22 = [v5 firstObject];
  if ([v5 count] == 1 && (objc_msgSend(v22, "meaningLabel"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v21, "containsObject:", v23), v23, v24) && (-[PGDayHighlightTitleGenerator localizedTitleStringFromMeaningFeature:](self, "localizedTitleStringFromMeaningFeature:", v22), (v25 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v26 = v25;
  }

  else if ([v8 count] != 1 || (objc_msgSend(v8, "firstObject"), v27 = objc_claimAutoreleasedReturnValue(), -[PGDayHighlightTitleGenerator localizedTitleStringFromHolidayDateFeature:](self, "localizedTitleStringFromHolidayDateFeature:", v27), v26 = objc_claimAutoreleasedReturnValue(), v27, !v26))
  {
    if ([v7 count] != 1 || (objc_msgSend(v7, "firstObject"), v28 = objc_claimAutoreleasedReturnValue(), -[PGDayHighlightTitleGenerator localizedTitleStringFromPublicEventFeature:](self, "localizedTitleStringFromPublicEventFeature:", v28), v26 = objc_claimAutoreleasedReturnValue(), v28, !v26))
    {
      if ([v6 count] != 1 || (objc_msgSend(v6, "firstObject"), v29 = objc_claimAutoreleasedReturnValue(), -[PGDayHighlightTitleGenerator localizedTitleStringFromBusinessFeature:](self, "localizedTitleStringFromBusinessFeature:", v29), v26 = objc_claimAutoreleasedReturnValue(), v29, !v26))
      {
        if ([v4 count] == 1)
        {
          v30 = [v4 firstObject];
          v26 = [(PGDayHighlightTitleGenerator *)self localizedTitleStringFromLocationFeature:v30];
        }

        else
        {
          v26 = 0;
        }
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];

  return v26;
}

- (PGTitleTuple)titleTuple
{
  titleTuple = self->_titleTuple;
  if (!titleTuple)
  {
    v4 = [(PGDayHighlightTitleGenerator *)self localizedTitleStringForSortedSummarizedFeatures:self->_summarizedFeatures];
    if (v4)
    {
      v5 = [PGTitle titleWithString:v4 category:4];
      v6 = [PGTitle titleWithString:&stru_2843F5C58 category:0];
      v7 = [[PGTitleTuple alloc] initWithWithTitle:v5 subtitle:v6];
      v8 = self->_titleTuple;
      self->_titleTuple = v7;
    }

    titleTuple = self->_titleTuple;
  }

  return titleTuple;
}

- (PGDayHighlightTitleGenerator)initWithSummarizedFeatures:(id)a3 momentNodes:(id)a4 titleGenerationContext:(id)a5 loggingConnection:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PGDayHighlightTitleGenerator;
  v15 = [(PGDayHighlightTitleGenerator *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_summarizedFeatures, a3);
    objc_storeStrong(&v16->_momentNodes, a4);
    objc_storeStrong(&v16->_loggingConnection, a6);
    objc_storeStrong(&v16->_titleGenerationContext, a5);
  }

  return v16;
}

@end