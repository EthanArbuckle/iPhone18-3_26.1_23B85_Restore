@interface PLGraphLabel
+ (BOOL)_needsLabelUpdateCheckFromGlobalValues:(id)a3;
+ (BOOL)labelableObject:(id)a3 hasLabel:(id)a4;
+ (BOOL)labelableObject:(id)a3 hasLabelWithCode:(int)a4;
+ (id)_assignmentForLabel:(id)a3 onLabelableObject:(id)a4 createIfMissing:(BOOL)a5;
+ (id)_fetchExternalIdentifiersHavingLabel:(id)a3 forEntityClass:(Class)a4;
+ (id)_generateBitsetUsingFetchForLabel:(id)a3 forClass:(Class)a4;
+ (id)_generateBitsetUsingObjectGraphFromPrimaryLabelsKey:(id)a3 additionalLabelsKey:(id)a4 forLabel:(id)a5;
+ (id)_insertBuiltInLabelWithCode:(int)a3 inManagedObjectContext:(id)a4;
+ (id)_insertLabelWithAlias:(id)a3 inManagedObjectContext:(id)a4;
+ (id)additionalLabelsFromLabelableObject:(id)a3;
+ (id)fetchBuiltInLabelWithCode:(int)a3 inContext:(id)a4;
+ (id)fetchLabelWithAlias:(id)a3 inContext:(id)a4 createIfMissing:(BOOL)a5;
+ (void)addLabel:(id)a3 toLabelableObject:(id)a4;
+ (void)ensureLabelsAreUpdatedInContext:(id)a3;
+ (void)removeLabel:(id)a3 fromLabelableObject:(id)a4;
+ (void)setAdditionalLabels:(id)a3 onLabelableObject:(id)a4;
+ (void)setPrimaryLabel:(id)a3 onLabelableObject:(id)a4;
- (BOOL)_removeFromAdditionalLabelsOnAllObjectsWithError:(id *)a3 assignmentEntityName:(id)a4;
- (BOOL)removeFromAdditionalLabelsOnAllEdgesWithError:(id *)a3;
- (BOOL)removeFromAdditionalLabelsOnAllNodesWithError:(id *)a3;
- (BOOL)validateForDelete:(id *)a3;
- (PLGraphBitset)edgeExternalIdentifiersHavingLabel;
- (PLGraphBitset)nodeExternalIdentifiersHavingLabel;
- (id)debugDescription;
- (void)clearBitsetData;
- (void)handleAddOrRemoveOfBitsetTrackedObject:(id)a3 isAdd:(BOOL)a4;
- (void)willSave;
@end

@implementation PLGraphLabel

- (id)debugDescription
{
  v3 = [[PLDescriptionBuilder alloc] initWithObject:self style:3 indent:0];
  v4 = [(PLGraphLabel *)self objectID];
  [(PLDescriptionBuilder *)v3 appendName:@"objectID" object:v4];

  v5 = [(PLGraphLabel *)self code];
  if (v5 > 1101)
  {
    if (v5 > 1299)
    {
      if (v5 > 1400)
      {
        if (v5 == 1401)
        {
          v6 = @"MomentThemeNoThemes";
          goto LABEL_37;
        }

        if (v5 == 2000)
        {
          v6 = @"Actor";
          goto LABEL_37;
        }
      }

      else
      {
        if (v5 == 1300)
        {
          v6 = @"GeneratedAssetDescription";
          goto LABEL_37;
        }

        if (v5 == 1400)
        {
          v6 = @"MomentTheme";
          goto LABEL_37;
        }
      }
    }

    else if (v5 > 1199)
    {
      if (v5 == 1200)
      {
        v6 = @"SmallDetectedFace";
        goto LABEL_37;
      }

      if (v5 == 1201)
      {
        v6 = @"LargeDetectedFace";
        goto LABEL_37;
      }
    }

    else
    {
      if (v5 == 1102)
      {
        v6 = @"SearchEntityPersonRelationMe";
        goto LABEL_37;
      }

      if (v5 == 1103)
      {
        v6 = @"SearchEntityPersonRelationSelf";
        goto LABEL_37;
      }
    }

    goto LABEL_35;
  }

  if (v5 <= 1002)
  {
    if (v5)
    {
      if (v5 == 1000)
      {
        v6 = @"SocialGroup";
        goto LABEL_37;
      }

      if (v5 == 1001)
      {
        v6 = @"SocialGroupKeyAsset";
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v6 = @"Unset/0";
  }

  else
  {
    if (v5 <= 1099)
    {
      if (v5 == 1003)
      {
        v6 = @"SocialGroupKeyAssetUserPicked";
        goto LABEL_37;
      }

      if (v5 == 1004)
      {
        v6 = @"SocialGroupExclusiveAsset";
        goto LABEL_37;
      }

LABEL_35:
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown code: %u", v5];
      goto LABEL_37;
    }

    if (v5 == 1100)
    {
      v6 = @"SearchEntity";
    }

    else
    {
      v6 = @"SearchEntityPersonRelation";
    }
  }

LABEL_37:
  [(PLDescriptionBuilder *)v3 appendName:@"name" object:v6];

  v7 = [(PLDescriptionBuilder *)v3 build];

  return v7;
}

- (BOOL)removeFromAdditionalLabelsOnAllEdgesWithError:(id *)a3
{
  v5 = +[PLGraphEdgeAdditionalLabelAssignment entityName];
  LOBYTE(a3) = [(PLGraphLabel *)self _removeFromAdditionalLabelsOnAllObjectsWithError:a3 assignmentEntityName:v5];

  return a3;
}

- (BOOL)removeFromAdditionalLabelsOnAllNodesWithError:(id *)a3
{
  v5 = +[PLGraphNodeAdditionalLabelAssignment entityName];
  LOBYTE(a3) = [(PLGraphLabel *)self _removeFromAdditionalLabelsOnAllObjectsWithError:a3 assignmentEntityName:v5];

  return a3;
}

- (void)clearBitsetData
{
  nodeExternalIdentifiersHavingLabel = self->_nodeExternalIdentifiersHavingLabel;
  self->_nodeExternalIdentifiersHavingLabel = 0;

  edgeExternalIdentifiersHavingLabel = self->_edgeExternalIdentifiersHavingLabel;
  self->_edgeExternalIdentifiersHavingLabel = 0;

  [(PLGraphLabel *)self setNodeExternalIdentifierDataHavingLabel:0];

  [(PLGraphLabel *)self setEdgeExternalIdentifierDataHavingLabel:0];
}

- (void)handleAddOrRemoveOfBitsetTrackedObject:(id)a3 isAdd:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(PLGraphLabel *)self nodeExternalIdentifiersHavingLabel];
    v8 = @"nodeExternalIdentifierDataHavingLabel";
    if (v7)
    {
LABEL_3:
      [v7 setBit:v4 atIndex:{objc_msgSend(v6, "externalIdentifier")}];
      v9 = [MEMORY[0x1E695DEF0] data];
      [(PLManagedObject *)self pl_setValue:v9 forKey:v8 valueDidChangeHandler:0];

      goto LABEL_8;
    }
  }

  else
  {
    v7 = [(PLGraphLabel *)self edgeExternalIdentifiersHavingLabel];
    v8 = @"edgeExternalIdentifierDataHavingLabel";
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = PLBackendGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Unable to resolve a bitset for object: %@", &v11, 0xCu);
  }

LABEL_8:
}

- (PLGraphBitset)edgeExternalIdentifiersHavingLabel
{
  v3 = self->_edgeExternalIdentifiersHavingLabel;
  if (!v3)
  {
    if ((-[PLGraphLabel edgeExternalIdentifierDataHavingLabel](self, "edgeExternalIdentifierDataHavingLabel"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4) && (v5 = [PLGraphBitset alloc], -[PLGraphLabel edgeExternalIdentifierDataHavingLabel](self, "edgeExternalIdentifierDataHavingLabel"), v6 = objc_claimAutoreleasedReturnValue(), v3 = -[PLGraphBitset initWithEncodedData:error:](v5, "initWithEncodedData:error:", v6, 0), v6, v3) || (v7 = objc_opt_class(), [v7 _generateBitsetUsingFetchForLabel:self forClass:objc_opt_class()], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      objc_storeStrong(&self->_edgeExternalIdentifiersHavingLabel, v3);
    }
  }

  return v3;
}

- (PLGraphBitset)nodeExternalIdentifiersHavingLabel
{
  v3 = self->_nodeExternalIdentifiersHavingLabel;
  if (!v3)
  {
    if ((-[PLGraphLabel nodeExternalIdentifierDataHavingLabel](self, "nodeExternalIdentifierDataHavingLabel"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4) && (v5 = [PLGraphBitset alloc], -[PLGraphLabel nodeExternalIdentifierDataHavingLabel](self, "nodeExternalIdentifierDataHavingLabel"), v6 = objc_claimAutoreleasedReturnValue(), v3 = -[PLGraphBitset initWithEncodedData:error:](v5, "initWithEncodedData:error:", v6, 0), v6, v3) || (v7 = objc_opt_class(), [v7 _generateBitsetUsingFetchForLabel:self forClass:objc_opt_class()], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      objc_storeStrong(&self->_nodeExternalIdentifiersHavingLabel, v3);
    }
  }

  return v3;
}

- (BOOL)validateForDelete:(id *)a3
{
  v28.receiver = self;
  v28.super_class = PLGraphLabel;
  v5 = [(PLGraphLabel *)&v28 validateForDelete:?];
  v6 = +[PLGraphNode fetchRequest];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"primaryLabel", self];
  [v6 setPredicate:v7];

  v8 = [(PLGraphLabel *)self managedObjectContext];
  v9 = [v8 countForFetchRequest:v6 error:0];

  if (v9)
  {
    v10 = v9 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = PLErrorCreate();
    if (a3)
    {
      v11 = v11;
      *a3 = v11;
    }

    v5 = 0;
  }

  v12 = +[PLGraphEdge fetchRequest];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"primaryLabel", self];
  [v12 setPredicate:v13];

  v14 = [(PLGraphLabel *)self managedObjectContext];
  v15 = [v14 countForFetchRequest:v12 error:0];

  if (v15 && v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = PLErrorCreate();
    if (a3)
    {
      v16 = v16;
      *a3 = v16;
    }

    v5 = 0;
  }

  v17 = +[PLGraphNodeAdditionalLabelAssignment fetchRequest];
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"label", self];
  [v17 setPredicate:v18];

  v19 = [(PLGraphLabel *)self managedObjectContext];
  v20 = [v19 countForFetchRequest:v17 error:0];

  if (v20 && v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = PLErrorCreate();
    if (a3)
    {
      v21 = v21;
      *a3 = v21;
    }

    v5 = 0;
  }

  v22 = +[PLGraphEdgeAdditionalLabelAssignment fetchRequest];
  v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"label", self];
  [v22 setPredicate:v23];

  v24 = [(PLGraphLabel *)self managedObjectContext];
  v25 = [v24 countForFetchRequest:v22 error:0];

  if (v25 && v25 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = PLErrorCreate();
    if (a3)
    {
      v26 = v26;
      *a3 = v26;
    }

    v5 = 0;
  }

  return v5;
}

- (void)willSave
{
  v10.receiver = self;
  v10.super_class = PLGraphLabel;
  [(PLManagedObject *)&v10 willSave];
  v3 = [(PLGraphLabel *)self changedValues];
  v4 = [v3 objectForKeyedSubscript:@"nodeExternalIdentifierDataHavingLabel"];

  if (v4 && self->_nodeExternalIdentifiersHavingLabel)
  {
    v5 = [(PLGraphLabel *)self nodeExternalIdentifiersHavingLabel];
    v6 = [v5 encodedData];
    [(PLManagedObject *)self pl_safeSetValue:v6 forKey:@"nodeExternalIdentifierDataHavingLabel" valueDidChangeHandler:0];
  }

  v7 = [v3 objectForKeyedSubscript:@"edgeExternalIdentifierDataHavingLabel"];

  if (v7 && self->_edgeExternalIdentifiersHavingLabel)
  {
    v8 = [(PLGraphLabel *)self edgeExternalIdentifiersHavingLabel];
    v9 = [v8 encodedData];
    [(PLManagedObject *)self pl_safeSetValue:v9 forKey:@"edgeExternalIdentifierDataHavingLabel" valueDidChangeHandler:0];
  }
}

- (BOOL)_removeFromAdditionalLabelsOnAllObjectsWithError:(id *)a3 assignmentEntityName:(id)a4
{
  v6 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:a4];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"label", self];
  [v6 setPredicate:v7];

  v8 = [PLEnumerateAndSaveController alloc];
  v9 = [(PLGraphLabel *)self managedObjectContext];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__PLGraphLabel__removeFromAdditionalLabelsOnAllObjectsWithError_assignmentEntityName___block_invoke;
  v15[3] = &unk_1E7575B30;
  v15[4] = self;
  v10 = [(PLEnumerateAndSaveController *)v8 initWithName:@"removeFromAdditionalLabelsOnAllObjectsWithError:assignmentEntityName:" fetchRequest:v6 context:v9 options:4 generateContextBlock:v15 didFetchObjectIDsBlock:0 processResultBlock:&__block_literal_global_105582];

  v14 = 0;
  v11 = [(PLEnumerateAndSaveController *)v10 processObjectsWithError:&v14];
  v12 = v14;
  if (!v11 && a3)
  {
    v12 = v12;
    *a3 = v12;
  }

  return v11;
}

+ (void)setPrimaryLabel:(id)a3 onLabelableObject:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__PLGraphLabel_setPrimaryLabel_onLabelableObject___block_invoke;
  v9[3] = &unk_1E7575C28;
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  [v8 pl_setValue:v7 forKey:@"primaryLabel" valueDidChangeHandler:v9];
}

void __50__PLGraphLabel_setPrimaryLabel_onLabelableObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v6 = v3;
  if (v3)
  {
    [v3 handleAddOrRemoveOfBitsetTrackedObject:*(a1 + 32) isAdd:0];
    v4 = v6;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    [v5 handleAddOrRemoveOfBitsetTrackedObject:*(a1 + 32) isAdd:1];
    v4 = v6;
  }
}

+ (void)setAdditionalLabels:(id)a3 onLabelableObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__PLGraphLabel_setAdditionalLabels_onLabelableObject___block_invoke;
  v15[3] = &unk_1E7575BD8;
  v17 = a1;
  v8 = v7;
  v16 = v8;
  v9 = [v6 _pl_map:v15];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__PLGraphLabel_setAdditionalLabels_onLabelableObject___block_invoke_2;
  v12[3] = &unk_1E7575C00;
  v13 = v6;
  v14 = v8;
  v10 = v8;
  v11 = v6;
  [v10 pl_setValue:v9 forKey:@"additionalLabelAssignments" valueDidChangeHandler:v12];
}

void __54__PLGraphLabel_setAdditionalLabels_onLabelableObject___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [a2 _pl_map:&__block_literal_global_138_105625];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFA8] setWithSet:v3];
    [v4 minusSet:*(a1 + 32)];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        v9 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v20 + 1) + 8 * v9++) handleAddOrRemoveOfBitsetTrackedObject:*(a1 + 40) isAdd:0];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v7);
    }
  }

  if (*(a1 + 32))
  {
    v10 = [MEMORY[0x1E695DFA8] setWithSet:?];
    [v10 minusSet:v3];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v15++) handleAddOrRemoveOfBitsetTrackedObject:*(a1 + 40) isAdd:{1, v16}];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }
  }
}

+ (id)additionalLabelsFromLabelableObject:(id)a3
{
  v3 = [a3 additionalLabelAssignments];
  v4 = [v3 _pl_map:&__block_literal_global_135_105630];

  return v4;
}

+ (void)removeLabel:(id)a3 fromLabelableObject:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [a1 _assignmentForLabel:v10 onLabelableObject:v6 createIfMissing:0];
  if (v7)
  {
    v8 = [v6 mutableSetValueForKey:@"additionalLabelAssignments"];
    [v6 willChangeValueForKey:@"additionalLabelAssignments"];
    [v8 removeObject:v7];
    [v6 didChangeValueForKey:@"additionalLabelAssignments"];
    v9 = [v10 managedObjectContext];
    [v9 deleteObject:v7];

    [v10 handleAddOrRemoveOfBitsetTrackedObject:v6 isAdd:0];
  }
}

+ (void)addLabel:(id)a3 toLabelableObject:(id)a4
{
  v13 = a3;
  v7 = a4;
  v8 = v13;
  v9 = v7;
  if (!v13)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PLGraphLabel.m" lineNumber:498 description:{@"Invalid parameter not satisfying: %@", @"label"}];

    v8 = 0;
  }

  v10 = [a1 _assignmentForLabel:v8 onLabelableObject:v9 createIfMissing:1];
  if ([v10 isInserted])
  {
    v11 = [v9 mutableSetValueForKey:@"additionalLabelAssignments"];
    [v9 willChangeValueForKey:@"additionalLabelAssignments"];
    [v11 addObject:v10];
    [v9 didChangeValueForKey:@"additionalLabelAssignments"];
    [v13 handleAddOrRemoveOfBitsetTrackedObject:v9 isAdd:1];
  }
}

+ (BOOL)labelableObject:(id)a3 hasLabelWithCode:(int)a4
{
  v5 = [a3 additionalLabelAssignments];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PLGraphLabel_labelableObject_hasLabelWithCode___block_invoke;
  v8[3] = &__block_descriptor_36_e46_B16__0__PLGraphEdgeAdditionalLabelAssignment_8l;
  v9 = a4;
  v6 = [v5 _pl_firstObjectPassingTest:v8];
  LOBYTE(a4) = v6 != 0;

  return a4;
}

BOOL __49__PLGraphLabel_labelableObject_hasLabelWithCode___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 label];
  v4 = [v3 code] == *(a1 + 32);

  return v4;
}

+ (BOOL)labelableObject:(id)a3 hasLabel:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = [a3 additionalLabelAssignments];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__PLGraphLabel_labelableObject_hasLabel___block_invoke;
    v9[3] = &unk_1E7575B08;
    v10 = v5;
    v7 = [v6 _pl_firstObjectPassingTest:v9];
    LOBYTE(a3) = v7 != 0;
  }

  return a3;
}

uint64_t __41__PLGraphLabel_labelableObject_hasLabel___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 label];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

+ (id)fetchLabelWithAlias:(id)a3 inContext:(id)a4 createIfMissing:(BOOL)a5
{
  v5 = a5;
  v24 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PLGraphLabel.m" lineNumber:365 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  if (!v9)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PLGraphLabel.m" lineNumber:366 description:{@"Invalid parameter not satisfying: %@", @"alias"}];
  }

  v11 = +[PLGraphLabel fetchRequest];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"alias", v9];
  [v11 setPredicate:v12];

  v21 = 0;
  v13 = [v10 executeFetchRequest:v11 error:&v21];
  v14 = v21;
  if (!v13)
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v14;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Error fetching labels: %@", buf, 0xCu);
    }

    v15 = 0;
    goto LABEL_13;
  }

  v15 = [v13 firstObject];
  if (!v15 && v5)
  {
    v15 = [a1 _insertLabelWithAlias:v9 inManagedObjectContext:v10];
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v15;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_INFO, "Inserted GraphLabel: %@", buf, 0xCu);
    }

LABEL_13:
  }

  v17 = v15;

  return v15;
}

+ (id)fetchBuiltInLabelWithCode:(int)a3 inContext:(id)a4
{
  v4 = *&a3;
  v19 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PLGraphLabel.m" lineNumber:345 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v8 = +[PLGraphLabel fetchRequest];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"code", v4];
  [v8 setPredicate:v9];

  v16 = 0;
  v10 = [v7 executeFetchRequest:v8 error:&v16];
  v11 = v16;
  if (v10)
  {
    v12 = [v10 firstObject];
  }

  else
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Error fetching labels: %@", buf, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

+ (void)ensureLabelsAreUpdatedInContext:(id)a3
{
  v46[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PLManagedObject *)PLGraphLabel entityInManagedObjectContext:v5];
  v7 = [v6 managedObjectClassName];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    if (!v5)
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      [v33 handleFailureInMethod:a2 object:a1 file:@"PLGraphLabel.m" lineNumber:304 description:{@"Invalid parameter not satisfying: %@", @"context"}];
    }

    v11 = [[PLGlobalValues alloc] initWithManagedObjectContext:v5];
    if ([a1 _needsLabelUpdateCheckFromGlobalValues:v11])
    {
      v12 = +[PLGraphLabel fetchRequest];
      [v12 setResultType:2];
      v46[0] = @"code";
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
      [v12 setPropertiesToFetch:v13];

      v14 = MEMORY[0x1E695DFD8];
      v42 = 0;
      v15 = [v5 executeFetchRequest:v12 error:&v42];
      v16 = v42;
      v17 = [v15 _pl_map:&__block_literal_global_121_105661];
      v18 = [v14 setWithArray:v17];

      if (v18)
      {
        v34 = v16;
        v35 = v12;
        v36 = v11;
        v19 = [MEMORY[0x1E695DFA8] setWithArray:PLBuiltInGraphLabelCodes];
        [v19 minusSet:v18];
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v20 = v19;
        v21 = [v20 countByEnumeratingWithState:&v38 objects:v45 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = 0;
          v24 = *v39;
          do
          {
            v37 = v23;
            for (i = 0; i != v22; ++i)
            {
              if (*v39 != v24)
              {
                objc_enumerationMutation(v20);
              }

              v26 = *(*(&v38 + 1) + 8 * i);
              v27 = PLBackendGetLog();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v28 = [v26 integerValue];
                *buf = 134217984;
                v44 = v28;
                _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "Adding missing GraphLabel with code %ld", buf, 0xCu);
              }

              v29 = [a1 _insertBuiltInLabelWithCode:objc_msgSend(v26 inManagedObjectContext:{"integerValue"), v5}];
            }

            v23 = v37 + v22;
            v22 = [v20 countByEnumeratingWithState:&v38 objects:v45 count:16];
          }

          while (v22);
        }

        else
        {
          v23 = 0;
        }

        v30 = PLPhotoLibraryServicesBinaryImageUUID();
        v31 = [v30 UUIDString];
        v11 = v36;
        [(PLGlobalValues *)v36 setLastUpdatedGraphLabelsAgainstPLSImageUUID:v31];

        v16 = v34;
        v12 = v35;
      }

      else
      {
        v20 = PLBackendGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v44 = v16;
          _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_FAULT, "Unable to update existing GraphLabel set due to fetch error: %@", buf, 0xCu);
        }

        v23 = 0;
      }

      v32 = PLBackendGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v44 = v23;
        _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEFAULT, "Checked existing GraphLabel set, added count: %ld", buf, 0xCu);
      }
    }
  }
}

+ (id)_assignmentForLabel:(id)a3 onLabelableObject:(id)a4 createIfMissing:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PLGraphLabel.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"object"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_12:
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"PLGraphLabel.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"label"}];

    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_3:
  v11 = [v10 additionalLabelAssignments];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __70__PLGraphLabel__assignmentForLabel_onLabelableObject_createIfMissing___block_invoke;
  v22[3] = &unk_1E7575B08;
  v12 = v9;
  v23 = v12;
  v13 = [v11 _pl_firstObjectPassingTest:v22];

  if (!v13 && v5)
  {
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = off_1E755FF28;
    if (v14 != v15)
    {
      v16 = off_1E755FF08;
    }

    v17 = [(__objc2_class *)*v16 entityName];
    v18 = [v12 managedObjectContext];
    v13 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v17, v18, 0);

    [v13 pl_setValue:v12 forKey:@"label" valueDidChangeHandler:0];
  }

  return v13;
}

uint64_t __70__PLGraphLabel__assignmentForLabel_onLabelableObject_createIfMissing___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 label];
  v4 = [v2 isEqual:v3];

  return v4;
}

+ (id)_generateBitsetUsingFetchForLabel:(id)a3 forClass:(Class)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = PLBackendGetLog();
  v8 = os_signpost_id_generate(v7);
  info = 0;
  mach_timebase_info(&info);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "FetchExternalIdentifiersHavingLabel", "", buf, 2u);
  }

  v11 = mach_absolute_time();
  v12 = [a1 _fetchExternalIdentifiersHavingLabel:v6 forEntityClass:a4];

  if (v12)
  {
    v13 = objc_alloc_init(PLGraphBitset);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__PLGraphLabel__generateBitsetUsingFetchForLabel_forClass___block_invoke;
    v21[3] = &unk_1E7576338;
    v14 = v13;
    v22 = v14;
    [v12 enumerateIndexesUsingBlock:v21];
  }

  else
  {
    v14 = 0;
  }

  v15 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v18 = v10;
  v19 = v18;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v19, OS_SIGNPOST_INTERVAL_END, v8, "FetchExternalIdentifiersHavingLabel", "", buf, 2u);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "FetchExternalIdentifiersHavingLabel";
    v26 = 2048;
    v27 = ((((v15 - v11) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v14;
}

+ (id)_fetchExternalIdentifiersHavingLabel:(id)a3 forEntityClass:(Class)a4
{
  v36[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (objc_opt_class() == a4 || objc_opt_class() == a4)
  {
    v11 = @"primaryLabel";
    v10 = @"additionalLabelAssignments";
    v9 = @"label";
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PLGraphLabel.m" lineNumber:123 description:{@"unexpected class passed to _fetchExternalIdentifiersHavingLabel: %@", a4}];

    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = [(objc_class *)a4 fetchRequest];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@ OR ANY %K.%K = %@", v11, v7, v10, v9, v7];
  [v13 setPredicate:v14];

  [v13 setResultType:2];
  v36[0] = @"externalIdentifier";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  [v13 setPropertiesToFetch:v15];

  v16 = [v7 managedObjectContext];
  v32 = 0;
  v17 = [v16 executeFetchRequest:v13 error:&v32];
  v18 = v32;

  if (v17)
  {
    v19 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = v17;
    v21 = [v20 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v21)
    {
      v22 = v21;
      v27 = v18;
      v23 = *v29;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v28 + 1) + 8 * i) objectForKeyedSubscript:@"externalIdentifier"];
          [v19 addIndex:{objc_msgSend(v25, "unsignedIntegerValue")}];
        }

        v22 = [v20 countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v22);
      v18 = v27;
    }
  }

  else
  {
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v18;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to fetch externalIdentifiers with error: %@", buf, 0xCu);
    }

    v19 = 0;
  }

  objc_autoreleasePoolPop(v12);

  return v19;
}

+ (id)_generateBitsetUsingObjectGraphFromPrimaryLabelsKey:(id)a3 additionalLabelsKey:(id)a4 forLabel:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(PLGraphBitset);
  v11 = objc_autoreleasePoolPush();
  v12 = MEMORY[0x1E695DFA8];
  v13 = [v9 valueForKey:v7];
  v14 = [v12 setWithSet:v13];

  v15 = [v9 valueForKey:v8];
  [v14 unionSet:v15];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        -[PLGraphBitset setBit:atIndex:](v10, "setBit:atIndex:", 1, [*(*(&v22 + 1) + 8 * i) externalIdentifier]);
      }

      v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }

  objc_autoreleasePoolPop(v11);

  return v10;
}

+ (id)_insertLabelWithAlias:(id)a3 inManagedObjectContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PLGraphLabel.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:a1 file:@"PLGraphLabel.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"alias"}];

LABEL_3:
  v9 = [a1 insertInManagedObjectContext:v8];
  [v9 pl_setValue:v7 forKey:@"alias" valueDidChangeHandler:0];

  return v9;
}

+ (id)_insertBuiltInLabelWithCode:(int)a3 inManagedObjectContext:(id)a4
{
  v4 = *&a3;
  v7 = a4;
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PLGraphLabel.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v8 = [a1 insertInManagedObjectContext:v7];
  [v8 setCode:v4];

  return v8;
}

+ (BOOL)_needsLabelUpdateCheckFromGlobalValues:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PLGraphLabel.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"globalValues"}];
  }

  v6 = PLPhotoLibraryServicesBinaryImageUUID();
  v7 = [v6 UUIDString];

  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PLGraphLabel.m" lineNumber:65 description:@"can't read PLS image UUID"];
  }

  v8 = [v5 lastUpdatedGraphLabelsAgainstPLSImageUUID];
  IsEqual = PLObjectIsEqual();

  return IsEqual ^ 1;
}

@end