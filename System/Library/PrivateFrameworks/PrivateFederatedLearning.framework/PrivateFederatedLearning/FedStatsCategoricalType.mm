@interface FedStatsCategoricalType
+ (id)createFromDict:(id)dict possibleError:(id *)error;
- (FedStatsCategoricalType)initWithCategories:(id)categories;
- (FedStatsCategoricalType)initWithCategoryFile:(id)file;
- (FedStatsCategoricalType)initWithCategoryMap:(id)map categories:(id)categories;
- (id)decodeFromIndex:(id)index possibleError:(id *)error;
- (id)encodeToIndex:(id)index possibleError:(id *)error;
- (id)sampleForIndex:(unint64_t)index;
- (void)setVersion:(unint64_t)version;
@end

@implementation FedStatsCategoricalType

- (void)setVersion:(unint64_t)version
{
  self->_version = version;
  categories = self->_categories;
  self->_categories = 0;

  categoryMap = self->_categoryMap;
  self->_categoryMap = 0;

  categoryFile = self->_categoryFile;
  self->_categoryFile = 0;
}

- (FedStatsCategoricalType)initWithCategories:(id)categories
{
  categoriesCopy = categories;
  v9.receiver = self;
  v9.super_class = FedStatsCategoricalType;
  v6 = -[FedStatsBoundedULongType initWithBound:](&v9, sel_initWithBound_, [categoriesCopy count]);
  v7 = v6;
  if (v6)
  {
    [(FedStatsCategoricalType *)v6 setVersion:1];
    objc_storeStrong(&v7->_categories, categories);
  }

  return v7;
}

- (FedStatsCategoricalType)initWithCategoryMap:(id)map categories:(id)categories
{
  mapCopy = map;
  categoriesCopy = categories;
  v12.receiver = self;
  v12.super_class = FedStatsCategoricalType;
  v9 = -[FedStatsBoundedULongType initWithBound:](&v12, sel_initWithBound_, [categoriesCopy count]);
  v10 = v9;
  if (v9)
  {
    [(FedStatsCategoricalType *)v9 setVersion:2];
    objc_storeStrong(&v10->_categoryMap, map);
    objc_storeStrong(&v10->_categories, categories);
  }

  return v10;
}

- (FedStatsCategoricalType)initWithCategoryFile:(id)file
{
  fileCopy = file;
  v9.receiver = self;
  v9.super_class = FedStatsCategoricalType;
  v6 = -[FedStatsBoundedULongType initWithBound:](&v9, sel_initWithBound_, [fileCopy dimensionality]);
  v7 = v6;
  if (v6)
  {
    [(FedStatsCategoricalType *)v6 setVersion:3];
    objc_storeStrong(&v7->_categoryFile, file);
  }

  return v7;
}

+ (id)createFromDict:(id)dict possibleError:(id *)error
{
  v83[3] = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v7 = [dictCopy objectForKey:@"categories"];

  v8 = [dictCopy objectForKey:@"categoryMap"];

  v9 = [dictCopy objectForKey:@"categoryFile"];

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
    selfCopy = self;
    if (v7)
    {
      v11 = [dictCopy objectForKey:@"categories"];
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
          if (error)
          {
            *error = [FedStatsError errorWithCode:302 description:v12];
          }

          goto LABEL_59;
        }

LABEL_17:

        v18 = [MEMORY[0x277CBEB98] setWithArray:v11];
        v19 = [v18 count];
        v20 = [v11 count];

        if (v19 == v20)
        {
          v21 = [[self alloc] initWithCategories:v11];
LABEL_60:

          goto LABEL_62;
        }
      }

      goto LABEL_57;
    }

    if (v8)
    {
      v11 = [dictCopy objectForKey:@"categoryMap"];
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

        allKeys = [v11 allKeys];
        v30 = [allKeys sortedArrayUsingSelector:sel_compare_];

        dictionary = [MEMORY[0x277CBEB38] dictionary];
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
              if (error)
              {
                *error = [FedStatsError errorWithCode:302 description:v12];
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
                  if (error)
                  {
                    v51 = v12;
                    goto LABEL_71;
                  }

LABEL_72:

                  goto LABEL_73;
                }

                [dictionary allKeys];
                v45 = v44 = dictionary;
                v46 = [v45 containsObject:v43];

                if (v46)
                {
                  dictionary = v44;
                  v38 = v55;
                  v32 = v56;
                  if (error)
                  {
                    v51 = @"Subcategories must be distinct";
LABEL_71:
                    *error = [FedStatsError errorWithCode:302 description:v51];
                  }

                  goto LABEL_72;
                }

                v47 = [FedStatsCategoricalTypeSubcategory categoryWithSuperCategory:v58 index:v60];
                [v44 setObject:v47 forKey:v43];

                dictionary = v44;
              }

              v41 = [obj countByEnumeratingWithState:&v63 objects:v79 count:16];
              self = selfCopy;
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

            v48 = [[self alloc] initWithCategoryMap:dictionary categories:v32];
            goto LABEL_56;
          }
        }
      }

      goto LABEL_57;
    }

    if (v9)
    {
      v11 = [dictCopy objectForKey:@"categoryFile"];
      v12 = objc_claimAutoreleasedReturnValue();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v62 = 0;
        dictionary = [FedStatsSQLiteCategoryDatabase databaseWithFileURL:v11 error:&v62];
        v32 = v62;
        if (dictionary)
        {
          v48 = [[self alloc] initWithCategoryFile:dictionary];
LABEL_56:
          v21 = v48;
        }

        else
        {
          if (!error)
          {
            goto LABEL_74;
          }

          [FedStatsError errorWithCode:302 underlyingError:v32 description:@"Cannot create database from the provided URL"];
          *error = v21 = 0;
        }

LABEL_75:

        goto LABEL_60;
      }

LABEL_57:
      if (error)
      {
        [FedStatsError errorWithCode:302 description:v12];
        *error = v21 = 0;
        goto LABEL_60;
      }

LABEL_59:
      v21 = 0;
      goto LABEL_60;
    }
  }

  else if (error)
  {
    v83[0] = @"categories";
    v83[1] = @"categoryMap";
    v83[2] = @"categoryFile";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:3];
    v22 = MEMORY[0x277CCACA8];
    v12 = [v11 componentsJoinedByString:{@", "}];
    v23 = [v22 stringWithFormat:@"You're allowed to have exactly one of {%@} as key in parameters", v12];
    *error = [FedStatsError errorWithCode:301 description:v23];

    goto LABEL_59;
  }

  v21 = 0;
LABEL_62:

  v49 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)encodeToIndex:(id)index possibleError:(id *)error
{
  indexCopy = index;
  version = [(FedStatsCategoricalType *)self version];
  switch(version)
  {
    case 3uLL:
      categoryFile = [(FedStatsCategoricalType *)self categoryFile];
      v17 = 0;
      v10 = [categoryFile encode:indexCopy error:&v17];
      v14 = v17;

      if (v10)
      {
        v15 = v10;
      }

      else if (error)
      {
        *error = [FedStatsError errorWithCode:401 underlyingError:v14 description:@"Error when encoding categorical type over database"];
      }

      break;
    case 2uLL:
      categoryMap = [(FedStatsCategoricalType *)self categoryMap];
      v12 = [categoryMap objectForKey:indexCopy];

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
      categories = [(FedStatsCategoricalType *)self categories];
      v9 = [categories indexOfObject:indexCopy];

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
      if (error)
      {
        [FedStatsError errorWithCode:900 description:@"The categorical type version is not supported"];
        *error = v10 = 0;
      }

      else
      {
        v10 = 0;
      }

      break;
  }

  return v10;
}

- (id)decodeFromIndex:(id)index possibleError:(id *)error
{
  indexCopy = index;
  if (!indexCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (error)
    {
      v10 = @"The decoder can only work with a non-null number type";
      v11 = 500;
LABEL_8:
      [FedStatsError errorWithCode:v11 description:v10];
      *error = kOutOfCategories = 0;
      goto LABEL_16;
    }

LABEL_15:
    kOutOfCategories = 0;
    goto LABEL_16;
  }

  version = [(FedStatsCategoricalType *)self version];
  if (version - 1 < 2)
  {
    if ([indexCopy unsignedLongValue])
    {
      categories = [(FedStatsCategoricalType *)self categories];
      kOutOfCategories = [categories objectAtIndex:{objc_msgSend(indexCopy, "unsignedLongValue") - 1}];
    }

    else
    {
      kOutOfCategories = [(FedStatsCategoricalType *)self kOutOfCategories];
    }

    goto LABEL_16;
  }

  if (version != 3)
  {
    if (error)
    {
      v10 = @"The categorical type version is not supported";
      v11 = 900;
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  categoryFile = [(FedStatsCategoricalType *)self categoryFile];
  v15 = 0;
  kOutOfCategories = [categoryFile decode:objc_msgSend(indexCopy error:{"unsignedLongValue"), &v15}];

  if (kOutOfCategories)
  {
    v13 = kOutOfCategories;
  }

LABEL_16:

  return kOutOfCategories;
}

- (id)sampleForIndex:(unint64_t)index
{
  if (!index)
  {
LABEL_6:
    kOutOfCategories = [(FedStatsCategoricalType *)self kOutOfCategories];
    goto LABEL_8;
  }

  version = [(FedStatsCategoricalType *)self version];
  if (version == 3)
  {
LABEL_5:
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:index];
    kOutOfCategories = [(FedStatsCategoricalType *)self decodeFromIndex:v6 possibleError:0];

    goto LABEL_8;
  }

  if (version != 2)
  {
    if (version == 1)
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
  array = [MEMORY[0x277CBEB18] array];
  categoryMap = [(FedStatsCategoricalType *)self categoryMap];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__FedStatsCategoricalType_sampleForIndex___block_invoke;
  v10[3] = &unk_278253640;
  v10[4] = &v11;
  v10[5] = index;
  [categoryMap enumerateKeysAndObjectsUsingBlock:v10];

  kOutOfCategories = [v12[5] objectAtIndex:{arc4random_uniform(objc_msgSend(v12[5], "count"))}];
  _Block_object_dispose(&v11, 8);

LABEL_8:

  return kOutOfCategories;
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