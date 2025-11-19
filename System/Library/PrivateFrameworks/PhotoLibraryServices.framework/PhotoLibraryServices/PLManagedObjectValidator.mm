@interface PLManagedObjectValidator
+ (BOOL)validateAllObjectsUsingManagedObjectContext:(id)a3 resultHandler:(id)a4;
+ (BOOL)validateAllObjectsWithEntityClass:(Class)a3 inManagedObjectContext:(id)a4 resultHandler:(id)a5;
+ (id)_entityClassesToValidate;
+ (id)validateManagedObject:(id)a3;
@end

@implementation PLManagedObjectValidator

+ (id)_entityClassesToValidate
{
  v4[46] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v4[9] = objc_opt_class();
  v4[10] = objc_opt_class();
  v4[11] = objc_opt_class();
  v4[12] = objc_opt_class();
  v4[13] = objc_opt_class();
  v4[14] = objc_opt_class();
  v4[15] = objc_opt_class();
  v4[16] = objc_opt_class();
  v4[17] = objc_opt_class();
  v4[18] = objc_opt_class();
  v4[19] = objc_opt_class();
  v4[20] = objc_opt_class();
  v4[21] = objc_opt_class();
  v4[22] = objc_opt_class();
  v4[23] = objc_opt_class();
  v4[24] = objc_opt_class();
  v4[25] = objc_opt_class();
  v4[26] = objc_opt_class();
  v4[27] = objc_opt_class();
  v4[28] = objc_opt_class();
  v4[29] = objc_opt_class();
  v4[30] = objc_opt_class();
  v4[31] = objc_opt_class();
  v4[32] = objc_opt_class();
  v4[33] = objc_opt_class();
  v4[34] = objc_opt_class();
  v4[35] = objc_opt_class();
  v4[36] = objc_opt_class();
  v4[37] = objc_opt_class();
  v4[38] = objc_opt_class();
  v4[39] = objc_opt_class();
  v4[40] = objc_opt_class();
  v4[41] = objc_opt_class();
  v4[42] = objc_opt_class();
  v4[43] = objc_opt_class();
  v4[44] = objc_opt_class();
  v4[45] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:46];

  return v2;
}

+ (BOOL)validateAllObjectsUsingManagedObjectContext:(id)a3 resultHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [a1 _entityClassesToValidate];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    v12 = 1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v12 &= [PLManagedObjectValidator validateAllObjectsWithEntityClass:*(*(&v15 + 1) + 8 * i) inManagedObjectContext:v6 resultHandler:v7];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  return v12;
}

+ (BOOL)validateAllObjectsWithEntityClass:(Class)a3 inManagedObjectContext:(id)a4 resultHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  if (a3 && v8 && [(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    v10 = MEMORY[0x1E695D5E0];
    v11 = [(objc_class *)a3 entityName];
    v12 = [v10 fetchRequestWithEntityName:v11];

    v19 = a1;
    v20 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __99__PLManagedObjectValidator_validateAllObjectsWithEntityClass_inManagedObjectContext_resultHandler___block_invoke;
    v16[3] = &unk_1E7576D80;
    v18 = &v21;
    v17 = v9;
    v13 = [v8 enumerateObjectsFromFetchRequest:v12 count:&v20 usingDefaultBatchSizeWithBlock:v16];
  }

  v14 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  return v14;
}

void __99__PLManagedObjectValidator_validateAllObjectsWithEntityClass_inManagedObjectContext_resultHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 48) validateManagedObject:a2];
  if (([v3 status] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  (*(*(a1 + 32) + 16))();
}

+ (id)validateManagedObject:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(PLManagedObjectValidationResult);
  [(PLManagedObjectValidationResult *)v4 setStatus:1];
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v3 entity];
  v6 = [v5 attributesByName];
  v7 = [v6 allKeys];

  v8 = [objc_opt_class() attributeValidationRules];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [v8 objectForKeyedSubscript:v14];
        if (!v15)
        {
          v15 = _PLPropertyValidationRuleMake(0, v14, 0, 0, 0, 0);
        }

        v22 = 0;
        v16 = [v15 evaluateWithObject:v3 outMessage:&v22];
        v17 = v22;
        [(PLManagedObjectValidationResult *)v4 setStatus:v16];
        if (v17)
        {
          if ([(PLManagedObjectValidationResult *)v4 status])
          {
            v18 = v20;
          }

          else
          {
            v18 = v21;
          }

          [v18 addObject:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  [(PLManagedObjectValidationResult *)v4 setErrorMessages:v21];
  [(PLManagedObjectValidationResult *)v4 setInfoMessages:v20];
  [(PLManagedObjectValidationResult *)v4 setValidatedObject:v3];

  return v4;
}

@end