@interface PLPropertyListFilter
+ (BOOL)canEncodeInPropertyList:(id)a3;
+ (id)_filterArray:(id)a3 block:(id)a4;
+ (id)_filterDictionary:(id)a3 block:(id)a4;
+ (id)filterPropertyList:(id)a3;
+ (id)filterPropertyList:(id)a3 block:(id)a4;
+ (id)filterPropertyListNoData:(id)a3;
@end

@implementation PLPropertyListFilter

+ (BOOL)canEncodeInPropertyList:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (id)filterPropertyListNoData:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__PLPropertyListFilter_filterPropertyListNoData___block_invoke;
  v5[3] = &__block_descriptor_40_e11__24__0_8_16l;
  v5[4] = a1;
  v3 = [a1 filterPropertyList:a3 block:v5];

  return v3;
}

id __49__PLPropertyListFilter_filterPropertyListNoData___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    if ([*(a1 + 32) canEncodeInPropertyList:v4])
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    v5 = v6;
  }

  return v5;
}

+ (id)filterPropertyList:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__PLPropertyListFilter_filterPropertyList___block_invoke;
  v5[3] = &__block_descriptor_40_e11__24__0_8_16l;
  v5[4] = a1;
  v3 = [a1 filterPropertyList:a3 block:v5];

  return v3;
}

void *__43__PLPropertyListFilter_filterPropertyList___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  if ([v3 canEncodeInPropertyList:v4])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

+ (id)filterPropertyList:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [a1 _filterDictionary:v6 block:v7];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [a1 _filterArray:v6 block:v7];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)_filterArray:(id)a3 block:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = (*(v7 + 2))(v7, 0, *(*(&v20 + 1) + 8 * i));
        if (v14)
        {
          v15 = v14;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [a1 _filterDictionary:v15 block:v7];
LABEL_11:
            v17 = v16;

            v15 = v17;
            if (!v17)
            {
              continue;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [a1 _filterArray:v15 block:{v7, v20}];
              goto LABEL_11;
            }
          }

          [v8 addObject:{v15, v20}];

          continue;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  if ([v9 count] && !objc_msgSend(v8, "count"))
  {
    v18 = 0;
  }

  else
  {
    v18 = v8;
  }

  return v18;
}

+ (id)_filterDictionary:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E695DF90];
  v8 = a3;
  v9 = [v7 dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__PLPropertyListFilter__filterDictionary_block___block_invoke;
  v15[3] = &unk_1E756B7D8;
  v17 = v6;
  v18 = a1;
  v10 = v9;
  v16 = v10;
  v11 = v6;
  [v8 enumerateKeysAndObjectsUsingBlock:v15];
  v12 = [v8 count];

  if (v12 && ![v10 count])
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  return v13;
}

uint64_t __48__PLPropertyListFilter__filterDictionary_block___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [*(a1 + 48) _filterDictionary:v4 block:*(a1 + 40)];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = v9;
        goto LABEL_9;
      }

      v5 = [*(a1 + 48) _filterArray:v4 block:*(a1 + 40)];
    }

    v6 = v5;

    v4 = v6;
    v7 = v9;
    if (!v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    [*(a1 + 32) setObject:v4 forKey:v7];
  }

LABEL_10:

  return MEMORY[0x1EEE66C30]();
}

@end