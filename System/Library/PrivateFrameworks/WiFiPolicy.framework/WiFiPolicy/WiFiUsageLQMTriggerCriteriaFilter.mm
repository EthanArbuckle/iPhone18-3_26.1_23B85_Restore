@interface WiFiUsageLQMTriggerCriteriaFilter
- (WiFiUsageLQMTriggerCriteriaFilter)initWith:(id)a3 forFields:(id)a4 andFeatures:(id)a5;
@end

@implementation WiFiUsageLQMTriggerCriteriaFilter

- (WiFiUsageLQMTriggerCriteriaFilter)initWith:(id)a3 forFields:(id)a4 andFeatures:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 objectForKey:@"type"];
  if (v12)
  {
  }

  else
  {
    v13 = [v9 objectForKey:@"test"];

    if (!v13)
    {
      NSLog(&cfstr_SFailedToParse.isa, "[WiFiUsageLQMTriggerCriteriaFilter initWith:forFields:andFeatures:]", v9);
LABEL_36:
      v5 = 0;
      goto LABEL_37;
    }
  }

  v37 = objc_opt_new();
  v14 = objc_opt_new();
  v15 = [v9 objectForKey:@"type"];
  if (v15)
  {
    v16 = [v9 objectForKey:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v9 objectForKey:@"type"];
      v17 = [(WiFiUsageLQMTriggerCriteriaFilter *)v5 isEqualToString:@"filter"];

      if (v17)
      {
        v18 = [v9 objectForKey:@"filterconditions"];
        if (v18)
        {
          v19 = [v9 objectForKey:@"filterconditions"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v9 objectForKey:@"conditions"], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v20 = [v9 objectForKey:@"conditions"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v33 = [v9 objectForKey:@"filterconditions"];
              v22 = [objc_opt_class() parseCriteria:v33 intoRequiredFields:0 andFeatures:0 forFields:v10 withType:0 isFilter:1];
              if (v22)
              {
                v23 = [MEMORY[0x277CCAC30] predicateWithFormat:v22];
                v41 = 0u;
                v42 = 0u;
                v39 = 0u;
                v40 = 0u;
                obj = [v9 objectForKey:@"conditions"];
                v36 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
                if (v36)
                {
                  v35 = *v40;
                  while (2)
                  {
                    for (i = 0; i != v36; ++i)
                    {
                      if (*v40 != v35)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v25 = *(*(&v39 + 1) + 8 * i);
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        NSLog(&cfstr_SFailedToParse_2.isa, "[WiFiUsageLQMTriggerCriteriaFilter initWith:forFields:andFeatures:]", v9);

                        goto LABEL_34;
                      }

                      v26 = [[WiFiUsageLQMTriggerCriteria alloc] initWith:v25 forFields:v10 andFeatures:v37];
                      if (v26)
                      {
                        v5 = [WiFiUsageLQMTriggerCriteria predicateNoQuotes:v23];
                        [(WiFiUsageLQMTriggerCriteria *)v26 setFilterCriteria:v5];

                        [v14 addObject:v26];
                      }
                    }

                    v36 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
                    if (v36)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }

              else
              {
                v23 = 0;
              }

              goto LABEL_26;
            }
          }

          else
          {
          }
        }

        NSLog(&cfstr_SFailedToParse_0.isa, "[WiFiUsageLQMTriggerCriteriaFilter initWith:forFields:andFeatures:]", v9);
        goto LABEL_33;
      }
    }

    else
    {
    }
  }

  v27 = [v9 objectForKey:@"test"];

  if (v27)
  {
    v28 = [[WiFiUsageLQMTriggerCriteria alloc] initWith:v9 forFields:v10 andFeatures:v11];
    [v14 addObject:v28];

    v22 = 0;
    v23 = 0;
LABEL_26:
    if ([v14 count])
    {
      v38.receiver = self;
      v38.super_class = WiFiUsageLQMTriggerCriteriaFilter;
      v29 = [(WiFiUsageLQMTriggerCriteriaFilter *)&v38 init];
      objc_storeStrong(&v29->_filterSamplesPredicate, v23);
      objc_storeStrong(&v29->_features, v37);
      objc_storeStrong(&v29->_criterias, v14);
      self = v29;
      v30 = 0;
      v5 = self;
    }

    else
    {
      v30 = 0;
      v5 = 0;
    }

    goto LABEL_35;
  }

  NSLog(&cfstr_SFailedToParse_3.isa, "[WiFiUsageLQMTriggerCriteriaFilter initWith:forFields:andFeatures:]", v9);
LABEL_33:
  v22 = 0;
  v23 = 0;
LABEL_34:
  v30 = 1;
LABEL_35:

  if (v30)
  {
    goto LABEL_36;
  }

LABEL_37:

  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

@end