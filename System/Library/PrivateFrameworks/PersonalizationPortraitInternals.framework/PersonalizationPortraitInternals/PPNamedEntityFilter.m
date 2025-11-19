@interface PPNamedEntityFilter
- (BOOL)isAcceptableRecord:(id)a3;
- (PPNamedEntityFilter)init;
- (PPNamedEntityFilter)initWithModel:(id)a3;
- (id)_filterNamedEntities:(uint64_t)a1;
- (id)filterNamedEntityRecords:(id)a3;
- (id)filterScoredNamedEntities:(id)a3;
@end

@implementation PPNamedEntityFilter

- (BOOL)isAcceptableRecord:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 entity];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  objc_autoreleasePoolPop(v5);
  v8 = [(PPNamedEntityFilter *)self _filterNamedEntities:v7];
  LOBYTE(self) = [v8 count] == 1;

  v9 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)_filterNamedEntities:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, objc_msgSend(v3, "count")}];
    v5 = v4;
    if (*(a1 + 8))
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __44__PPNamedEntityFilter__filterNamedEntities___block_invoke;
      v10[3] = &unk_278975780;
      v10[4] = a1;
      v6 = v4;
      v11 = v6;
      [v3 enumerateObjectsUsingBlock:v10];
      v7 = v11;
      v8 = v6;
    }

    else
    {
      v8 = pp_default_log_handle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_23224A000, v8, OS_LOG_TYPE_FAULT, "PPNamedEntityFilter: no model available to perform filtering.", buf, 2u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __44__PPNamedEntityFilter__filterNamedEntities___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 name];
  IsWellFormed = PPStringIsWellFormed();

  if (IsWellFormed)
  {
    v8 = *(*(a1 + 32) + 8);
    v35 = 0;
    v9 = [v8 predictionFromFeatures:v5 error:&v35];
    v10 = v35;
    if (v9)
    {
      v11 = *(a1 + 32);
      v12 = v9;
      v13 = v12;
      if (v11)
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        obj = [v12 featureNames];
        v14 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v37;
          v32 = v10;
          v33 = v9;
          v30 = a3;
          v31 = a1;
          while (2)
          {
            v17 = 0;
            do
            {
              if (*v37 != v16)
              {
                objc_enumerationMutation(obj);
              }

              v18 = *(*(&v36 + 1) + 8 * v17);
              v19 = objc_autoreleasePoolPush();
              v20 = v13;
              v21 = [v13 featureValueForName:v18];
              v22 = [v21 multiArrayValue];

              if ([v18 isEqualToString:@"computed_filterScore"])
              {
                v28 = pp_default_log_handle();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_fault_impl(&dword_23224A000, v28, OS_LOG_TYPE_FAULT, "PPNamedEntityFilter: encountered a stale model for filtering.", buf, 2u);
                }

LABEL_26:
                v10 = v32;
                v9 = v33;
                a3 = v30;

                objc_autoreleasePoolPop(v19);
                goto LABEL_27;
              }

              if ([v18 hasPrefix:@"computed_"] && objc_msgSend(v22, "count") >= 1)
              {
                v23 = 0;
                while (1)
                {
                  v24 = [v22 objectAtIndexedSubscript:{v23, v30}];
                  [v24 doubleValue];
                  v26 = v25;

                  if (v26 > 0.00999999978)
                  {
                    break;
                  }

                  if (++v23 >= [v22 count])
                  {
                    goto LABEL_15;
                  }
                }

                v28 = pp_entities_log_handle();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v41 = v18;
                  _os_log_impl(&dword_23224A000, v28, OS_LOG_TYPE_DEFAULT, "PPNamedEntityFilter: filtering based on output of feature %@", buf, 0xCu);
                }

                goto LABEL_26;
              }

LABEL_15:

              objc_autoreleasePoolPop(v19);
              ++v17;
              v13 = v20;
            }

            while (v17 != v15);
            v15 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
            v10 = v32;
            v9 = v33;
            if (v15)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        v31 = a1;

LABEL_27:
        [*(v31 + 40) removeIndex:{a3, v30}];
      }
    }

    else
    {
      v27 = pp_entities_log_handle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *v42 = 138412290;
        v43 = v10;
        _os_log_error_impl(&dword_23224A000, v27, OS_LOG_TYPE_ERROR, "PPNamedEntityFilter: encountered error in filtering %@", v42, 0xCu);
      }
    }
  }

  else
  {
    [*(a1 + 40) removeIndex:a3];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)filterNamedEntityRecords:(id)a3
{
  v4 = a3;
  v5 = [v4 _pas_mappedArrayWithTransform:&__block_literal_global_21_15576];
  v6 = [(PPNamedEntityFilter *)self _filterNamedEntities:v5];

  v7 = [v6 count];
  if (v7 >= [v4 count])
  {
    v8 = v4;
  }

  else
  {
    v8 = [v4 objectsAtIndexes:v6];
  }

  v9 = v8;

  return v9;
}

- (id)filterScoredNamedEntities:(id)a3
{
  v4 = a3;
  v5 = [v4 _pas_mappedArrayWithTransform:&__block_literal_global_15579];
  v6 = [(PPNamedEntityFilter *)self _filterNamedEntities:v5];

  v7 = [v6 count];
  if (v7 >= [v4 count])
  {
    v8 = v4;
  }

  else
  {
    v8 = [v4 objectsAtIndexes:v6];
  }

  v9 = v8;

  return v9;
}

- (PPNamedEntityFilter)init
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[PPTrialWrapper sharedInstance];
  v14 = 0;
  v4 = [v3 mlModelForModelName:@"PPModel_NE_Filtering.mlmodelc" namespaceName:@"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES" error:&v14];
  v5 = v14;

  if (!v4)
  {
    goto LABEL_3;
  }

  v6 = [v4 modelDescription];
  v7 = [v6 outputDescriptionsByName];
  v8 = [v7 allKeys];
  v9 = [v8 containsObject:@"computed_filterScore"];

  if (v9)
  {
LABEL_3:
    v10 = pp_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_fault_impl(&dword_23224A000, v10, OS_LOG_TYPE_FAULT, "PPNamedEntityFilter: unable to initialize correct model from Trial: %@", buf, 0xCu);
    }
  }

  v11 = [(PPNamedEntityFilter *)self initWithModel:v4];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (PPNamedEntityFilter)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PPNamedEntityFilter;
  v6 = [(PPNamedEntityFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
  }

  return v7;
}

@end