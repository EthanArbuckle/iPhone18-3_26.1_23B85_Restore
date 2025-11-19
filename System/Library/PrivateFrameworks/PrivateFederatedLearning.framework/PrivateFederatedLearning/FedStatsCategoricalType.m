@interface FedStatsCategoricalType
+ (id)createFromDict:(id)a3 possibleError:(id *)a4;
- (FedStatsCategoricalType)initWithCategories:(id)a3;
- (FedStatsCategoricalType)initWithCategoryFile:(id)a3;
- (FedStatsCategoricalType)initWithCategoryMap:(id)a3 categories:(id)a4;
- (id)decodeFromIndex:(id)a3 possibleError:(id *)a4;
- (id)encodeToIndex:(id)a3 possibleError:(id *)a4;
- (id)sampleForIndex:(unint64_t)a3;
- (void)setVersion:(unint64_t)a3;
@end

@implementation FedStatsCategoricalType

- (void)setVersion:(unint64_t)a3
{
  self->_version = a3;
  categories = self->_categories;
  self->_categories = 0;

  categoryMap = self->_categoryMap;
  self->_categoryMap = 0;

  categoryFile = self->_categoryFile;
  self->_categoryFile = 0;
}

- (FedStatsCategoricalType)initWithCategories:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FedStatsCategoricalType;
  v6 = -[FedStatsBoundedULongType initWithBound:](&v9, sel_initWithBound_, [v5 count]);
  v7 = v6;
  if (v6)
  {
    [(FedStatsCategoricalType *)v6 setVersion:1];
    objc_storeStrong(&v7->_categories, a3);
  }

  return v7;
}

- (FedStatsCategoricalType)initWithCategoryMap:(id)a3 categories:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FedStatsCategoricalType;
  v9 = -[FedStatsBoundedULongType initWithBound:](&v12, sel_initWithBound_, [v8 count]);
  v10 = v9;
  if (v9)
  {
    [(FedStatsCategoricalType *)v9 setVersion:2];
    objc_storeStrong(&v10->_categoryMap, a3);
    objc_storeStrong(&v10->_categories, a4);
  }

  return v10;
}

- (FedStatsCategoricalType)initWithCategoryFile:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FedStatsCategoricalType;
  v6 = -[FedStatsBoundedULongType initWithBound:](&v9, sel_initWithBound_, [v5 dimensionality]);
  v7 = v6;
  if (v6)
  {
    [(FedStatsCategoricalType *)v6 setVersion:3];
    objc_storeStrong(&v7->_categoryFile, a3);
  }

  return v7;
}

+ (id)createFromDict:(id)a3 possibleError:(id *)a4
{
  v83[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 objectForKey:@"categories"];

  v8 = [v6 objectForKey:@"categoryMap"];

  v9 = [v6 objectForKey:@"categoryFile"];

  if (v8)
  {
    v10 = (v7 != 0) + 1;
  }

  else
  {
    v10 = v7 != 0;
  }

  if (v9)
  {
    ++v10;
  }

  if (v10 == 1)
  {
    v61 = a1;
    if (v7)
    {
      v11 = [v6 objectForKey:@"categories"];
      v12 = objc_claimAutoreleasedReturnValue();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v11 = v11;
        v13 = [v11 countByEnumeratingWithState:&v75 objects:v82 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v76;
LABEL_11:
          v16 = 0;
          while (1)
          {
            if (*v76 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v75 + 1) + 8 * v16);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            if (v14 == ++v16)
            {
              v14 = [v11 countByEnumeratingWithState:&v75 objects:v82 count:16];
              if (v14)
              {
                goto LABEL_11;
              }

              goto LABEL_17;
            }
          }

LABEL_49:
          if (a4)
          {
            *a4 = [FedStatsError errorWithCode:302 description:v12];
          }

          goto LABEL_59;
        }

LABEL_17:

        v18 = [MEMORY[0x277CBEB98] setWithArray:v11];
        v19 = [v18 count];
        v20 = [v11 count];

        if (v19 == v20)
        {
          v21 = [[a1 alloc] initWithCategories:v11];
LABEL_60:

          goto LABEL_62;
        }
      }

      goto LABEL_57;
    }

    if (v8)
    {
      v11 = [v6 objectForKey:@"categoryMap"];
      v12 = objc_claimAutoreleasedReturnValue();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v11 = v11;
        v24 = [v11 countByEnumeratingWithState:&v71 objects:v81 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v72;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v72 != v26)
              {
                objc_enumerationMutation(v11);
              }

              v28 = *(*(&v71 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_49;
              }
            }

            v25 = [v11 countByEnumeratingWithState:&v71 objects:v81 count:16];
          }

          while (v25);
        }

        v29 = [v11 allKeys];
        v30 = [v29 sortedArrayUsingSelector:sel_compare_];

        v31 = [MEMORY[0x277CBEB38] dictionary];
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v32 = v30;
        v33 = [v32 countByEnumeratingWithState:&v67 objects:v80 count:16];
        if (!v33)
        {
          goto LABEL_48;
        }

        v60 = 0;
        v34 = *v68;
        v35 = 0x277CBE000uLL;
        v56 = v32;
        while (1)
        {
          v36 = 0;
          v53 = v33;
          do
          {
            if (*v68 != v34)
            {
              v37 = v36;
              objc_enumerationMutation(v32);
              v36 = v37;
            }

            v54 = v36;
            v58 = *(*(&v67 + 1) + 8 * v36);
            v38 = [v11 objectForKey:?];
            v39 = *(v35 + 2656);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (a4)
              {
                *a4 = [FedStatsError errorWithCode:302 description:v12];
              }

LABEL_73:

LABEL_74:
              v21 = 0;
              goto LABEL_75;
            }

            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v55 = v38;
            obj = v38;
            v40 = [obj countByEnumeratingWithState:&v63 objects:v79 count:16];
            if (!v40)
            {
              goto LABEL_46;
            }

            v41 = v40;
            v59 = *v64;
            v52 = v34;
            while (2)
            {
              for (j = 0; j != v41; ++j)
              {
                if (*v64 != v59)
                {
                  objc_enumerationMutation(obj);
                }

                v43 = *(*(&v63 + 1) + 8 * j);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v38 = v55;
                  v32 = v56;
                  if (a4)
                  {
                    v51 = v12;
                    goto LABEL_71;
                  }

LABEL_72:

                  goto LABEL_73;
                }

                [v31 allKeys];
                v45 = v44 = v31;
                v46 = [v45 containsObject:v43];

                if (v46)
                {
                  v31 = v44;
                  v38 = v55;
                  v32 = v56;
                  if (a4)
                  {
                    v51 = @"Subcategories must be distinct";
LABEL_71:
                    *a4 = [FedStatsError errorWithCode:302 description:v51];
                  }

                  goto LABEL_72;
                }

                v47 = [FedStatsCategoricalTypeSubcategory categoryWithSuperCategory:v58 index:v60];
                [v44 setObject:v47 forKey:v43];

                v31 = v44;
              }

              v41 = [obj countByEnumeratingWithState:&v63 objects:v79 count:16];
              a1 = v61;
              v34 = v52;
              if (v41)
              {
                continue;
              }

              break;
            }

LABEL_46:

            ++v60;
            v36 = v54 + 1;
            v32 = v56;
            v35 = 0x277CBE000;
          }

          while (v54 + 1 != v53);
          v33 = [v56 countByEnumeratingWithState:&v67 objects:v80 count:16];
          if (!v33)
          {
LABEL_48:

            v48 = [[a1 alloc] initWithCategoryMap:v31 categories:v32];
            goto LABEL_56;
          }
        }
      }

      goto LABEL_57;
    }

    if (v9)
    {
      v11 = [v6 objectForKey:@"categoryFile"];
      v12 = objc_claimAutoreleasedReturnValue();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v62 = 0;
        v31 = [FedStatsSQLiteCategoryDatabase databaseWithFileURL:v11 error:&v62];
        v32 = v62;
        if (v31)
        {
          v48 = [[a1 alloc] initWithCategoryFile:v31];
LABEL_56:
          v21 = v48;
        }

        else
        {
          if (!a4)
          {
            goto LABEL_74;
          }

          [FedStatsError errorWithCode:302 underlyingError:v32 description:@"Cannot create database from the provided URL"];
          *a4 = v21 = 0;
        }

LABEL_75:

        goto LABEL_60;
      }

LABEL_57:
      if (a4)
      {
        [FedStatsError errorWithCode:302 description:v12];
        *a4 = v21 = 0;
        goto LABEL_60;
      }

LABEL_59:
      v21 = 0;
      goto LABEL_60;
    }
  }

  else if (a4)
  {
    v83[0] = @"categories";
    v83[1] = @"categoryMap";
    v83[2] = @"categoryFile";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:3];
    v22 = MEMORY[0x277CCACA8];
    v12 = [v11 componentsJoinedByString:{@", "}];
    v23 = [v22 stringWithFormat:@"You're allowed to have exactly one of {%@} as key in parameters", v12];
    *a4 = [FedStatsError errorWithCode:301 description:v23];

    goto LABEL_59;
  }

  v21 = 0;
LABEL_62:

  v49 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)encodeToIndex:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  v7 = [(FedStatsCategoricalType *)self version];
  switch(v7)
  {
    case 3uLL:
      v13 = [(FedStatsCategoricalType *)self categoryFile];
      v17 = 0;
      v10 = [v13 encode:v6 error:&v17];
      v14 = v17;

      if (v10)
      {
        v15 = v10;
      }

      else if (a4)
      {
        *a4 = [FedStatsError errorWithCode:401 underlyingError:v14 description:@"Error when encoding categorical type over database"];
      }

      break;
    case 2uLL:
      v11 = [(FedStatsCategoricalType *)self categoryMap];
      v12 = [v11 objectForKey:v6];

      if (v12)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "index") + 1}];
      }

      else
      {
        v10 = &unk_282B4B9D0;
      }

      break;
    case 1uLL:
      v8 = [(FedStatsCategoricalType *)self categories];
      v9 = [v8 indexOfObject:v6];

      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = &unk_282B4B9D0;
      }

      else
      {
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9 + 1];
      }

      break;
    default:
      if (a4)
      {
        [FedStatsError errorWithCode:900 description:@"The categorical type version is not supported"];
        *a4 = v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      break;
  }

  return v10;
}

- (id)decodeFromIndex:(id)a3 possibleError:(id *)a4
{
  v6 = a3;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (a4)
    {
      v10 = @"The decoder can only work with a non-null number type";
      v11 = 500;
LABEL_8:
      [FedStatsError errorWithCode:v11 description:v10];
      *a4 = v9 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v7 = [(FedStatsCategoricalType *)self version];
  if (v7 - 1 < 2)
  {
    if ([v6 unsignedLongValue])
    {
      v8 = [(FedStatsCategoricalType *)self categories];
      v9 = [v8 objectAtIndex:{objc_msgSend(v6, "unsignedLongValue") - 1}];
    }

    else
    {
      v9 = [(FedStatsCategoricalType *)self kOutOfCategories];
    }

    goto LABEL_16;
  }

  if (v7 != 3)
  {
    if (a4)
    {
      v10 = @"The categorical type version is not supported";
      v11 = 900;
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v12 = [(FedStatsCategoricalType *)self categoryFile];
  v15 = 0;
  v9 = [v12 decode:objc_msgSend(v6 error:{"unsignedLongValue"), &v15}];

  if (v9)
  {
    v13 = v9;
  }

LABEL_16:

  return v9;
}

- (id)sampleForIndex:(unint64_t)a3
{
  if (!a3)
  {
LABEL_6:
    v7 = [(FedStatsCategoricalType *)self kOutOfCategories];
    goto LABEL_8;
  }

  v5 = [(FedStatsCategoricalType *)self version];
  if (v5 == 3)
  {
LABEL_5:
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
    v7 = [(FedStatsCategoricalType *)self decodeFromIndex:v6 possibleError:0];

    goto LABEL_8;
  }

  if (v5 != 2)
  {
    if (v5 == 1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = [MEMORY[0x277CBEB18] array];
  v8 = [(FedStatsCategoricalType *)self categoryMap];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__FedStatsCategoricalType_sampleForIndex___block_invoke;
  v10[3] = &unk_278253640;
  v10[4] = &v11;
  v10[5] = a3;
  [v8 enumerateKeysAndObjectsUsingBlock:v10];

  v7 = [v12[5] objectAtIndex:{arc4random_uniform(objc_msgSend(v12[5], "count"))}];
  _Block_object_dispose(&v11, 8);

LABEL_8:

  return v7;
}

void __42__FedStatsCategoricalType_sampleForIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = *(a1 + 40) - 1;
  if (v5 == [a3 index])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
  }
}

@end