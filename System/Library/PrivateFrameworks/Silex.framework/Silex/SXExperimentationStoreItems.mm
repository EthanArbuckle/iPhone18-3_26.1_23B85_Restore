@interface SXExperimentationStoreItems
+ (id)deserialize:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SXExperimentationStoreItems)init;
- (id)serialize;
@end

@implementation SXExperimentationStoreItems

- (SXExperimentationStoreItems)init
{
  v6.receiver = self;
  v6.super_class = SXExperimentationStoreItems;
  v2 = [(SXExperimentationStoreItems *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DEC8] array];
    items = v2->_items;
    v2->_items = v3;
  }

  return v2;
}

+ (id)deserialize:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:0];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 objectForKey:SXExperimentationStoreItemsKey];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v28 = v3;
      v30 = [MEMORY[0x1E695DF70] array];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v27 = v4;
      obj = v4;
      v5 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = 0x1E84FC000uLL;
        v8 = &OBJC_PROTOCOL___SXIssueCoverComponent;
        v9 = *v34;
        v29 = *v34;
        do
        {
          v10 = 0;
          v31 = v6;
          do
          {
            if (*v34 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v33 + 1) + 8 * v10);
            v12 = objc_alloc_init(*(v7 + 3272));
            v13 = [v11 objectForKeyedSubscript:v8[53].class_meths];
            v14 = [v11 objectForKeyedSubscript:SXExperimentationStoreItemTreatmentGroupKey];
            v15 = [v11 objectForKeyedSubscript:SXExperimentationStoreItemStartDateKey];
            v16 = [v11 objectForKeyedSubscript:SXExperimentationStoreItemExpiryDateKey];
            v17 = v16;
            if (v13)
            {
              v18 = v14 == 0;
            }

            else
            {
              v18 = 1;
            }

            if (!v18 && v15 != 0 && v16 != 0)
            {
              [v12 setExperimentIdentifier:v13];
              [v12 setTreatmentGroup:v14];
              v21 = v8;
              v22 = v7;
              v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v15, "integerValue")}];
              [v12 setStartDate:v23];

              v24 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v17, "integerValue")}];
              [v12 setExpiryDate:v24];

              v7 = v22;
              v8 = v21;
              v9 = v29;
              v6 = v31;
              [v30 addObject:v12];
            }

            ++v10;
          }

          while (v6 != v10);
          v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v6);
      }

      v25 = objc_alloc_init(SXExperimentationStoreItems);
      [(SXExperimentationStoreItems *)v25 setItems:v30];

      v4 = v27;
      v3 = v28;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)serialize
{
  v31 = *MEMORY[0x1E69E9840];
  v21 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(SXExperimentationStoreItems *)self items];
  v3 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v20 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v28[0] = SXExperimentationStoreItemExperimentIdentifierKey;
        v7 = [v6 experimentIdentifier];
        v29[0] = v7;
        v28[1] = SXExperimentationStoreItemTreatmentGroupKey;
        v8 = [v6 treatmentGroup];
        v29[1] = v8;
        v28[2] = SXExperimentationStoreItemStartDateKey;
        v9 = MEMORY[0x1E696AD98];
        v10 = [v6 startDate];
        [v10 timeIntervalSince1970];
        v11 = [v9 numberWithDouble:?];
        v29[2] = v11;
        v28[3] = SXExperimentationStoreItemExpiryDateKey;
        v12 = MEMORY[0x1E696AD98];
        v13 = [v6 expiryDate];
        [v13 timeIntervalSince1970];
        v14 = [v12 numberWithDouble:?];
        v29[3] = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];

        [v21 addObject:v15];
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v4);
  }

  v26 = SXExperimentationStoreItemsKey;
  v27 = v21;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v17 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v16 options:0 error:0];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SXExperimentationStoreItems *)self items];
    v7 = [v5 items];

    v8 = [v6 isEqualToArray:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end