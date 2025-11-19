@interface WFWorkflowMigrator
+ (id)migrationClasses;
+ (id)migrationClassesWithDependencies;
+ (id)orderedMigrationClassesWithoutDependencies;
+ (void)initialize;
+ (void)migrateWorkflowIfNeeded:(id)a3 completion:(id)a4;
+ (void)registerAllWorkflowKitMigrationClasses;
+ (void)registerMigrationClass:(Class)a3;
@end

@implementation WFWorkflowMigrator

+ (id)migrationClassesWithDependencies
{
  v2 = [a1 migrationClasses];
  v3 = [v2 if_compactMap:&__block_literal_global_248];

  return v3;
}

void *__54__WFWorkflowMigrator_migrationClassesWithDependencies__block_invoke(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = [v3 migrationClassDependencies];
  if (![v4 count])
  {
    a2 = 0;
  }

  v5 = a2;

  return a2;
}

+ (id)orderedMigrationClassesWithoutDependencies
{
  v3 = objc_alloc(MEMORY[0x1E695DFA0]);
  v4 = [a1 migrationClasses];
  v5 = [v4 if_compactMap:&__block_literal_global_246];
  v6 = [v3 initWithSet:v5];

  return v6;
}

id __64__WFWorkflowMigrator_orderedMigrationClassesWithoutDependencies__block_invoke(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = [v3 migrationClassDependencies];

  if (v4 && [v4 count])
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  return v5;
}

+ (void)migrateWorkflowIfNeeded:(id)a3 completion:(id)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v40 = a3;
  v35 = a4;
  v39 = [a1 orderedMigrationClassesWithoutDependencies];
  v36 = a1;
  [a1 migrationClassesWithDependencies];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v65 = 0u;
  v41 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v41)
  {
    v38 = *v63;
    do
    {
      v6 = 0;
      do
      {
        if (*v63 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v6;
        v7 = *(*(&v62 + 1) + 8 * v6);
        v8 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObject:v7];
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v9 = obj;
        v10 = [v9 countByEnumeratingWithState:&v58 objects:v68 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v59;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v59 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v58 + 1) + 8 * i);
              v15 = [v7 migrationClassDependencies];
              if ([v15 containsObject:v14])
              {
              }

              else
              {
                v16 = [v14 migrationClassDependencies];
                v17 = [v16 containsObject:v7];

                if (!v17)
                {
                  continue;
                }
              }

              [v8 addObject:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v58 objects:v68 count:16];
          }

          while (v11);
        }

        [v8 sortUsingComparator:&__block_literal_global_233];
        [v39 unionOrderedSet:v8];

        v6 = v44 + 1;
      }

      while (v44 + 1 != v41);
      v41 = [v9 countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v41);
  }

  v18 = v40;
  v45 = [v40 objectForKey:@"WFWorkflowClientVersion"];
  v42 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v19 = v39;
  v20 = [v19 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v55;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v55 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v54 + 1) + 8 * j);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v25 = [v24 migrationClassDependencies];
        v26 = [v25 countByEnumeratingWithState:&v50 objects:v66 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v51;
          do
          {
            v29 = 0;
            do
            {
              if (*v51 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = [v19 indexOfObject:*(*(&v50 + 1) + 8 * v29)];
              if (v30 >= [v19 indexOfObject:v24])
              {
                v31 = [MEMORY[0x1E696AAA8] currentHandler];
                [v31 handleFailureInMethod:a2 object:v36 file:@"WFWorkflowMigrator.m" lineNumber:175 description:@"Dependent migration class is either missing or part of a circular dependency."];
              }

              ++v29;
            }

            while (v27 != v29);
            v27 = [v25 countByEnumeratingWithState:&v50 objects:v66 count:16];
          }

          while (v27);
        }

        v18 = v40;
        if ([v24 workflowNeedsMigration:v40 fromClientVersion:v45])
        {
          [v42 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (v21);
  }

  if ([v42 count])
  {
    v32 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__WFWorkflowMigrator_migrateWorkflowIfNeeded_completion___block_invoke_2;
    block[3] = &unk_1E837ECE0;
    v47 = v18;
    v48 = v42;
    v33 = v35;
    v49 = v35;
    dispatch_async(v32, block);
  }

  else
  {
    v33 = v35;
    (*(v35 + 2))(v35, 0, v18, 0);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __57__WFWorkflowMigrator_migrateWorkflowIfNeeded_completion___block_invoke_2(uint64_t a1)
{
  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], *(a1 + 32), 1uLL);
  v3 = objc_opt_new();
  v4 = [*(a1 + 40) array];
  v5 = [v4 copy];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__WFWorkflowMigrator_migrateWorkflowIfNeeded_completion___block_invoke_3;
  v13[3] = &unk_1E837EC90;
  v14 = DeepCopy;
  v15 = v3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__WFWorkflowMigrator_migrateWorkflowIfNeeded_completion___block_invoke_5;
  v9[3] = &unk_1E837ECB8;
  v6 = *(a1 + 48);
  v11 = v15;
  v12 = v6;
  v10 = v14;
  v7 = v15;
  v8 = v14;
  [v5 if_enumerateAsynchronouslyInSequence:v13 completionHandler:v9];
}

void __57__WFWorkflowMigrator_migrateWorkflowIfNeeded_completion___block_invoke_3(uint64_t a1, objc_class *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = objc_alloc_init(a2);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__WFWorkflowMigrator_migrateWorkflowIfNeeded_completion___block_invoke_4;
  v10[3] = &unk_1E837EC68;
  v8 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = v6;
  v9 = v6;
  [v7 migrateWorkflowIfNeeded:v8 completion:v10];
}

uint64_t __57__WFWorkflowMigrator_migrateWorkflowIfNeeded_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) unionSet:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __57__WFWorkflowMigrator_migrateWorkflowIfNeeded_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 migrationClassDependencies];
  if ([v5 containsObject:a3])
  {
    v6 = 1;
  }

  else
  {
    v7 = [a3 migrationClassDependencies];
    v6 = [v7 containsObject:a2] << 63 >> 63;
  }

  return v6;
}

+ (void)registerMigrationClass:(Class)a3
{
  v4 = [a1 migrationClasses];
  [v4 addObject:a3];
}

+ (id)migrationClasses
{
  if (migrationClasses_onceToken != -1)
  {
    dispatch_once(&migrationClasses_onceToken, &__block_literal_global_69201);
  }

  v3 = migrationClasses_migrationClasses;

  return v3;
}

void __38__WFWorkflowMigrator_migrationClasses__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = migrationClasses_migrationClasses;
  migrationClasses_migrationClasses = v0;
}

+ (void)registerAllWorkflowKitMigrationClasses
{
  v14[58] = *MEMORY[0x1E69E9840];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v14[2] = objc_opt_class();
  v14[3] = objc_opt_class();
  v14[4] = objc_opt_class();
  v14[5] = objc_opt_class();
  v14[6] = objc_opt_class();
  v14[7] = objc_opt_class();
  v14[8] = objc_opt_class();
  v14[9] = objc_opt_class();
  v14[10] = objc_opt_class();
  v14[11] = objc_opt_class();
  v14[12] = objc_opt_class();
  v14[13] = objc_opt_class();
  v14[14] = objc_opt_class();
  v14[15] = objc_opt_class();
  v14[16] = objc_opt_class();
  v14[17] = objc_opt_class();
  v14[18] = objc_opt_class();
  v14[19] = objc_opt_class();
  v14[20] = objc_opt_class();
  v14[21] = objc_opt_class();
  v14[22] = objc_opt_class();
  v14[23] = objc_opt_class();
  v14[24] = objc_opt_class();
  v14[25] = objc_opt_class();
  v14[26] = objc_opt_class();
  v14[27] = objc_opt_class();
  v14[28] = objc_opt_class();
  v14[29] = objc_opt_class();
  v14[30] = objc_opt_class();
  v14[31] = objc_opt_class();
  v14[32] = objc_opt_class();
  v14[33] = objc_opt_class();
  v14[34] = objc_opt_class();
  v14[35] = objc_opt_class();
  v14[36] = objc_opt_class();
  v14[37] = objc_opt_class();
  v14[38] = objc_opt_class();
  v14[39] = objc_opt_class();
  v14[40] = objc_opt_class();
  v14[41] = objc_opt_class();
  v14[42] = objc_opt_class();
  v14[43] = objc_opt_class();
  v14[44] = objc_opt_class();
  v14[45] = objc_opt_class();
  v14[46] = objc_opt_class();
  v14[47] = objc_opt_class();
  v14[48] = objc_opt_class();
  v14[49] = objc_opt_class();
  v14[50] = objc_opt_class();
  v14[51] = objc_opt_class();
  v14[52] = objc_opt_class();
  v14[53] = objc_opt_class();
  v14[54] = objc_opt_class();
  v14[55] = objc_opt_class();
  v14[56] = objc_opt_class();
  v14[57] = objc_opt_class();
  [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:58];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [a1 registerMigrationClass:{*(*(&v9 + 1) + 8 * v7++), v9}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 registerAllWorkflowKitMigrationClasses];
  }
}

@end