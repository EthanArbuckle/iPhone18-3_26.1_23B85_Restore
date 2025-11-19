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
  v6 = -[FedStatsBoundedULongType initWithBound:](&v9, "initWithBound:", [v5 count]);
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
  v9 = -[FedStatsBoundedULongType initWithBound:](&v12, "initWithBound:", [v8 count]);
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
  v6 = -[FedStatsBoundedULongType initWithBound:](&v9, "initWithBound:", [v5 dimensionality]);
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
    v59 = a1;
    if (v7)
    {
      v11 = [v6 objectForKey:@"categories"];
      v12 = objc_claimAutoreleasedReturnValue();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v11 = v11;
        v13 = [v11 countByEnumeratingWithState:&v73 objects:v80 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v74;
LABEL_11:
          v16 = 0;
          while (1)
          {
            if (*v74 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v73 + 1) + 8 * v16);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            if (v14 == ++v16)
            {
              v14 = [v11 countByEnumeratingWithState:&v73 objects:v80 count:16];
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

        v18 = [NSSet setWithArray:v11];
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
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v11 = v11;
        v23 = [v11 countByEnumeratingWithState:&v69 objects:v79 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v70;
          do
          {
            for (i = 0; i != v24; i = i + 1)
            {
              if (*v70 != v25)
              {
                objc_enumerationMutation(v11);
              }

              v27 = *(*(&v69 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_49;
              }
            }

            v24 = [v11 countByEnumeratingWithState:&v69 objects:v79 count:16];
          }

          while (v24);
        }

        v28 = [v11 allKeys];
        v29 = [v28 sortedArrayUsingSelector:"compare:"];

        v30 = +[NSMutableDictionary dictionary];
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v31 = v29;
        v32 = [v31 countByEnumeratingWithState:&v65 objects:v78 count:16];
        if (!v32)
        {
          goto LABEL_48;
        }

        v58 = 0;
        v33 = *v66;
        v34 = &sqlite3_close_ptr;
        v54 = v31;
        while (1)
        {
          v35 = 0;
          v51 = v32;
          do
          {
            if (*v66 != v33)
            {
              v36 = v35;
              objc_enumerationMutation(v31);
              v35 = v36;
            }

            v52 = v35;
            v56 = *(*(&v65 + 1) + 8 * v35);
            v37 = [v11 objectForKey:?];
            v38 = v34[145];
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

            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v53 = v37;
            obj = v37;
            v39 = [obj countByEnumeratingWithState:&v61 objects:v77 count:16];
            if (!v39)
            {
              goto LABEL_46;
            }

            v40 = v39;
            v57 = *v62;
            v50 = v33;
            while (2)
            {
              for (j = 0; j != v40; j = j + 1)
              {
                if (*v62 != v57)
                {
                  objc_enumerationMutation(obj);
                }

                v42 = *(*(&v61 + 1) + 8 * j);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v37 = v53;
                  v31 = v54;
                  if (a4)
                  {
                    v49 = v12;
                    goto LABEL_71;
                  }

LABEL_72:

                  goto LABEL_73;
                }

                [v30 allKeys];
                v44 = v43 = v30;
                v45 = [v44 containsObject:v42];

                if (v45)
                {
                  v30 = v43;
                  v37 = v53;
                  v31 = v54;
                  if (a4)
                  {
                    v49 = @"Subcategories must be distinct";
LABEL_71:
                    *a4 = [FedStatsError errorWithCode:302 description:v49];
                  }

                  goto LABEL_72;
                }

                v46 = [FedStatsCategoricalTypeSubcategory categoryWithSuperCategory:v56 index:v58];
                [v43 setObject:v46 forKey:v42];

                v30 = v43;
              }

              v40 = [obj countByEnumeratingWithState:&v61 objects:v77 count:16];
              a1 = v59;
              v33 = v50;
              if (v40)
              {
                continue;
              }

              break;
            }

LABEL_46:

            ++v58;
            v35 = v52 + 1;
            v31 = v54;
            v34 = &sqlite3_close_ptr;
          }

          while ((v52 + 1) != v51);
          v32 = [v54 countByEnumeratingWithState:&v65 objects:v78 count:16];
          if (!v32)
          {
LABEL_48:

            v47 = [[a1 alloc] initWithCategoryMap:v30 categories:v31];
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
        v60 = 0;
        v30 = [FedStatsSQLiteCategoryDatabase databaseWithFileURL:v11 error:&v60];
        v31 = v60;
        if (v30)
        {
          v47 = [[a1 alloc] initWithCategoryFile:v30];
LABEL_56:
          v21 = v47;
        }

        else
        {
          if (!a4)
          {
            goto LABEL_74;
          }

          [FedStatsError errorWithCode:302 underlyingError:v31 description:@"Cannot create database from the provided URL"];
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
    v81[0] = @"categories";
    v81[1] = @"categoryMap";
    v81[2] = @"categoryFile";
    v11 = [NSArray arrayWithObjects:v81 count:3];
    v12 = [v11 componentsJoinedByString:{@", "}];
    v22 = [NSString stringWithFormat:@"You're allowed to have exactly one of {%@} as key in parameters", v12];
    *a4 = [FedStatsError errorWithCode:301 description:v22];

    goto LABEL_59;
  }

  v21 = 0;
LABEL_62:

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
        v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 index] + 1);
      }

      else
      {
        v10 = &off_100034308;
      }

      break;
    case 1uLL:
      v8 = [(FedStatsCategoricalType *)self categories];
      v9 = [v8 indexOfObject:v6];

      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = &off_100034308;
      }

      else
      {
        v10 = [NSNumber numberWithUnsignedInteger:v9 + 1];
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
    v6 = [NSNumber numberWithUnsignedLong:a3];
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
  v14 = sub_10000A314;
  v15 = sub_10000A324;
  v16 = +[NSMutableArray array];
  v8 = [(FedStatsCategoricalType *)self categoryMap];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000A32C;
  v10[3] = &unk_1000306B8;
  v10[4] = &v11;
  v10[5] = a3;
  [v8 enumerateKeysAndObjectsUsingBlock:v10];

  v7 = [v12[5] objectAtIndex:{arc4random_uniform(objc_msgSend(v12[5], "count"))}];
  _Block_object_dispose(&v11, 8);

LABEL_8:

  return v7;
}

@end