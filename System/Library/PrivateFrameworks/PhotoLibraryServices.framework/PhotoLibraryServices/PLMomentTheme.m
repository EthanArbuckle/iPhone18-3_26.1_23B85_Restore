@interface PLMomentTheme
+ (id)_fetchThemeNodeWithName:(id)a3 inContext:(id)a4;
+ (id)_insertThemeWithName:(id)a3 inContext:(id)a4;
+ (id)fetchExistingOrInsertThemeWithName:(id)a3 inContext:(id)a4;
+ (id)momentThemeLabelInContext:(id)a3;
+ (id)newNodeContainerWithManagedObjectContext:(id)a3;
+ (id)noThemesLabelInContext:(id)a3;
+ (id)predicateForThemeNodesWithName:(id)a3 inContext:(id)a4;
+ (void)_resolveThemeEdgeCardinalityConstraintConflictsForNode:(id)a3;
+ (void)_resolveThemeUniquenessConstraintConflictsForNode:(id)a3;
+ (void)resolveConstraintConflictsForNode:(id)a3;
- (NSString)themeName;
- (PLMomentTheme)initWithNode:(id)a3;
- (id)debugDescription;
- (void)setThemeName:(id)a3;
@end

@implementation PLMomentTheme

- (id)debugDescription
{
  v3 = [[PLDescriptionBuilder alloc] initWithObject:self style:3 indent:1];
  v4 = [(PLMomentTheme *)self themeName];
  [(PLDescriptionBuilder *)v3 appendName:@"themeName" object:v4];

  v5 = [(PLDescriptionBuilder *)v3 build];

  return v5;
}

- (void)setThemeName:(id)a3
{
  v4 = a3;
  v5 = [(PLGraphNodeContainer *)self sourceNode];
  v6 = [v5 valueWithCode:4000 createIfMissing:1];

  [v6 setStringValue:v4];
}

- (NSString)themeName
{
  v2 = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [v2 valueWithCode:4000];

  v4 = [v3 stringValue];

  return v4;
}

- (PLMomentTheme)initWithNode:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLMomentTheme.m" lineNumber:498 description:{@"Invalid parameter not satisfying: %@", @"node"}];
  }

  v9.receiver = self;
  v9.super_class = PLMomentTheme;
  v6 = [(PLGraphNodeContainer *)&v9 initWithNode:v5];

  return v6;
}

+ (id)noThemesLabelInContext:(id)a3
{
  v3 = a3;
  v4 = [v3 pl_graphCache];
  v5 = [v4 labelWithCode:1401 inContext:v3];

  return v5;
}

+ (id)momentThemeLabelInContext:(id)a3
{
  v3 = a3;
  v4 = [v3 pl_graphCache];
  v5 = [v4 labelWithCode:1400 inContext:v3];

  return v5;
}

+ (id)fetchExistingOrInsertThemeWithName:(id)a3 inContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PLMomentTheme.m" lineNumber:524 description:{@"Invalid parameter not satisfying: %@", @"themeName"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"PLMomentTheme.m" lineNumber:525 description:{@"Invalid parameter not satisfying: %@", @"context"}];

LABEL_3:
  v10 = [a1 _fetchThemeNodeWithName:v7 inContext:v9];
  if (v10)
  {
    v11 = [[PLMomentTheme alloc] initWithNode:v10];
  }

  else
  {
    v11 = [a1 _insertThemeWithName:v7 inContext:v9];
  }

  v12 = v11;

  return v12;
}

+ (id)predicateForThemeNodesWithName:(id)a3 inContext:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"PLMomentTheme.m" lineNumber:509 description:{@"Invalid parameter not satisfying: %@", @"themeName"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:a1 file:@"PLMomentTheme.m" lineNumber:510 description:{@"Invalid parameter not satisfying: %@", @"context"}];

LABEL_3:
  v10 = [a1 momentThemeLabelInContext:v9];
  v11 = MEMORY[0x1E696AB28];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"primaryLabel", v10];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $v, $v.%K = %d AND $v.%K = %@).@count = 1", @"values", @"nameCode", 4000, @"stringValue", v7, v12];
  v19[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v15 = [v11 andPredicateWithSubpredicates:v14];

  return v15;
}

+ (void)resolveConstraintConflictsForNode:(id)a3
{
  v4 = a3;
  [a1 _resolveThemeUniquenessConstraintConflictsForNode:v4];
  [a1 _resolveThemeEdgeCardinalityConstraintConflictsForNode:v4];
}

+ (id)newNodeContainerWithManagedObjectContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PLMomentTheme.m" lineNumber:477 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v6 = [v5 pl_graphCache];
  v7 = [v6 labelWithCode:1400 inContext:v5];
  v8 = [PLGraphNode insertGraphNodeInContext:v5 withPrimaryLabel:v7];
  v9 = [[a1 alloc] initWithNode:v8];

  return v9;
}

+ (void)_resolveThemeEdgeCardinalityConstraintConflictsForNode:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 managedObjectContext];
  v5 = +[PLGraphEdge fetchRequest];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@ AND %K != nil", @"targetNode", v3, @"sourceMoment"];
  [v5 setPredicate:v6];

  v62 = 0;
  v7 = [v4 executeFetchRequest:v5 error:&v62];
  v8 = v62;
  v9 = v8;
  if (v7)
  {
    v37 = v8;
    v39 = v5;
    v40 = v3;
    v10 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v38 = v7;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v59;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v59 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v58 + 1) + 8 * i) objectIDsForRelationshipNamed:@"sourceMoment"];
          v17 = [v16 firstObject];

          [v10 addObject:v17];
        }

        v13 = [v11 countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v13);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v18 = v10;
    v19 = [v18 countByEnumeratingWithState:&v54 objects:v66 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v55;
      v44 = v11;
      v41 = *v55;
      v42 = v18;
      do
      {
        v22 = 0;
        v43 = v20;
        do
        {
          if (*v55 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v54 + 1) + 8 * v22);
          if ([v18 countForObject:v23]>= 2)
          {
            v24 = PLBackendGetLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v65 = v23;
              _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_INFO, "theme node constraint conflict detected: more than 1 edge for theme/Moment combination for Moment with id: %@", buf, 0xCu);
            }

            v25 = v23;
            v52[0] = MEMORY[0x1E69E9820];
            v52[1] = 3221225472;
            v52[2] = __72__PLMomentTheme__resolveThemeEdgeCardinalityConstraintConflictsForNode___block_invoke;
            v52[3] = &unk_1E756B3A8;
            v26 = v25;
            v53 = v26;
            v27 = [v11 _pl_filter:v52];
            v28 = [v27 _pl_firstObjectPassingTest:&__block_literal_global_34604];
            if (v28)
            {
              v46 = v22;
              v47 = v27;
              v45 = v26;
              v29 = PLBackendGetLog();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v65 = v28;
                _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_INFO, "theme node constraint conflict: keeping edge: %@", buf, 0xCu);
              }

              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              v30 = v47;
              v31 = [v30 countByEnumeratingWithState:&v48 objects:v63 count:16];
              if (v31)
              {
                v32 = v31;
                v33 = *v49;
                do
                {
                  for (j = 0; j != v32; ++j)
                  {
                    if (*v49 != v33)
                    {
                      objc_enumerationMutation(v30);
                    }

                    v35 = *(*(&v48 + 1) + 8 * j);
                    if (([v35 isEqual:v28] & 1) == 0)
                    {
                      v36 = PLBackendGetLog();
                      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v65 = v35;
                        _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_INFO, "theme node constraint conflict: deleting conflicting edge: %@", buf, 0xCu);
                      }

                      [v4 deleteObject:v35];
                    }
                  }

                  v32 = [v30 countByEnumeratingWithState:&v48 objects:v63 count:16];
                }

                while (v32);
              }

              v21 = v41;
              v18 = v42;
              v20 = v43;
              v26 = v45;
              v22 = v46;
              v27 = v47;
            }

            v11 = v44;
          }

          ++v22;
        }

        while (v22 != v20);
        v20 = [v18 countByEnumeratingWithState:&v54 objects:v66 count:16];
      }

      while (v20);
    }

    v5 = v39;
    v3 = v40;
    v9 = v37;
    v7 = v38;
  }

  else
  {
    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v65 = v9;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "theme node constraint conflict: unable to fetch edges with error: %@", buf, 0xCu);
    }
  }
}

uint64_t __72__PLMomentTheme__resolveThemeEdgeCardinalityConstraintConflictsForNode___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sourceMoment];
  v4 = [v3 objectID];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

+ (void)_resolveThemeUniquenessConstraintConflictsForNode:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 managedObjectContext];
  if ([v4 isInserted])
  {
    v6 = [[PLMomentTheme alloc] initWithNode:v4];
    v7 = [(PLMomentTheme *)v6 themeName];
    if (v7)
    {
      v8 = +[PLGraphNode fetchRequest];
      v9 = [a1 predicateForThemeNodesWithName:v7 inContext:v5];
      [v8 setPredicate:v9];

      v15 = 0;
      v10 = [v5 countForFetchRequest:v8 error:&v15];
      v11 = v15;
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = PLBackendGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v17 = v11;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "theme node constraint conflict: unable to count themes with error: %@", buf, 0xCu);
        }
      }

      else if (v10 >= 2)
      {
        v13 = PLBackendGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v17 = v7;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "theme node constraint conflict detected: more than 1 theme detected for name: %@", buf, 0xCu);
        }

        v14 = PLBackendGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v17 = v4;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "theme node constraint conflict: deleting theme node: %@", buf, 0xCu);
        }

        [v5 deleteObject:v4];
      }
    }
  }
}

+ (id)_insertThemeWithName:(id)a3 inContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PLMomentTheme.m" lineNumber:383 description:{@"Invalid parameter not satisfying: %@", @"themeName"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"PLMomentTheme.m" lineNumber:384 description:{@"Invalid parameter not satisfying: %@", @"context"}];

LABEL_3:
  v10 = [a1 momentThemeLabelInContext:v9];
  v11 = [PLGraphNode insertGraphNodeInContext:v9 withPrimaryLabel:v10];

  v12 = [[PLMomentTheme alloc] initWithNode:v11];
  [(PLMomentTheme *)v12 setThemeName:v7];

  return v12;
}

+ (id)_fetchThemeNodeWithName:(id)a3 inContext:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PLMomentTheme.m" lineNumber:363 description:{@"Invalid parameter not satisfying: %@", @"themeName"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:a1 file:@"PLMomentTheme.m" lineNumber:364 description:{@"Invalid parameter not satisfying: %@", @"context"}];

LABEL_3:
  v10 = +[PLGraphNode fetchRequest];
  v11 = [a1 predicateForThemeNodesWithName:v7 inContext:v9];
  [v10 setPredicate:v11];

  v23[0] = @"values";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [v10 setRelationshipKeyPathsForPrefetching:v12];

  [v10 setFetchLimit:1];
  v20 = 0;
  v13 = [v9 executeFetchRequest:v10 error:&v20];
  v14 = v20;
  if (!v13)
  {
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v14;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Error fetching nodes: %@", buf, 0xCu);
    }
  }

  v16 = [v13 firstObject];

  return v16;
}

@end