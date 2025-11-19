@interface PLGraphEdge
+ (id)fetchEdgesWithExternalIdentifiers:(id)a3 inManagedObjectContext:(id)a4;
+ (id)insertGraphEdgeInContext:(id)a3 withPrimaryLabel:(id)a4;
+ (id)updatedEdgesInvolvingNode:(id)a3;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (id)_sourceShortcut;
- (id)_targetShortcut;
- (id)valueWithCode:(int)a3 createIfMissing:(BOOL)a4;
- (int64_t)_sourceShortcutCount;
- (int64_t)_targetShortcutCount;
- (void)_clearSourceShortcuts;
- (void)_clearTargetShortcuts;
- (void)_setActorObject:(id)a3 withNodeKey:(id)a4 andShortcutKey:(id)a5;
- (void)_updateShortcutWithKey:(id)a3 usingActorNode:(id)a4;
- (void)addEdgeValue:(id)a3;
- (void)awakeFromInsert;
- (void)prepareForDeletion;
- (void)removeEdgeValue:(id)a3;
- (void)setSourceNode:(id)a3;
- (void)setTargetNode:(id)a3;
- (void)willSave;
@end

@implementation PLGraphEdge

- (id)valueWithCode:(int)a3 createIfMissing:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v25 = *MEMORY[0x1E69E9840];
  if ([(PLGraphEdge *)self hasFaultForRelationshipNamed:@"values"])
  {
    v7 = [(PLGraphEdge *)self values];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __45__PLGraphEdge_valueWithCode_createIfMissing___block_invoke;
    v22[3] = &__block_descriptor_36_e43_B24__0__PLGraphEdgeValue_8__NSDictionary_16l;
    v23 = v5;
    v8 = [MEMORY[0x1E696AE18] predicateWithBlock:v22];
    v9 = [v7 filteredSetUsingPredicate:v8];

    v10 = [v9 anyObject];
LABEL_13:
    v11 = v10;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [(PLGraphEdge *)self values];
    v11 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v11)
    {
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([v14 nameCode] == v5)
          {
            v10 = v14;
            goto LABEL_13;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  if (!v11 && v4)
  {
    v15 = +[PLGraphEdgeValue entityName];
    v16 = [(PLGraphEdge *)self managedObjectContext];
    v11 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v15, v16, 0);

    [v11 setNameCode:v5];
    [(PLGraphEdge *)self addEdgeValue:v11];
  }

  return v11;
}

- (void)setTargetNode:(id)a3
{
  v9 = a3;
  [(PLGraphEdge *)self willChangeValueForKey:@"targetNode"];
  [(PLGraphEdge *)self setPrimitiveValue:v9 forKey:@"targetNode"];
  [(PLGraphEdge *)self didChangeValueForKey:@"targetNode"];
  v4 = [v9 actingAsset];

  if (v4)
  {
    v5 = @"targetAsset";
LABEL_7:
    [(PLGraphEdge *)self _updateShortcutWithKey:v5 usingActorNode:v9];
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  v6 = [v9 actingMoment];

  if (v6)
  {
    v5 = @"targetMoment";
    goto LABEL_7;
  }

  v7 = [v9 actingPerson];

  if (v7)
  {
    v5 = @"targetPerson";
    goto LABEL_7;
  }

  v8 = v9;
  if (!v9)
  {
    [(PLGraphEdge *)self _clearTargetShortcuts];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)setSourceNode:(id)a3
{
  v9 = a3;
  [(PLGraphEdge *)self willChangeValueForKey:@"sourceNode"];
  [(PLGraphEdge *)self setPrimitiveValue:v9 forKey:@"sourceNode"];
  [(PLGraphEdge *)self didChangeValueForKey:@"sourceNode"];
  v4 = [v9 actingAsset];

  if (v4)
  {
    v5 = @"sourceAsset";
LABEL_7:
    [(PLGraphEdge *)self _updateShortcutWithKey:v5 usingActorNode:v9];
LABEL_8:
    v8 = v9;
    goto LABEL_9;
  }

  v6 = [v9 actingMoment];

  if (v6)
  {
    v5 = @"sourceMoment";
    goto LABEL_7;
  }

  v7 = [v9 actingPerson];

  if (v7)
  {
    v5 = @"sourcePerson";
    goto LABEL_7;
  }

  v8 = v9;
  if (!v9)
  {
    [(PLGraphEdge *)self _clearSourceShortcuts];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)removeEdgeValue:(id)a3
{
  v4 = a3;
  [(PLGraphEdge *)self willChangeValueForKey:@"values"];
  v5 = [(PLGraphEdge *)self mutableSetValueForKey:@"values"];
  [v5 removeObject:v4];

  [(PLGraphEdge *)self didChangeValueForKey:@"values"];
}

- (void)addEdgeValue:(id)a3
{
  v4 = a3;
  [(PLGraphEdge *)self willChangeValueForKey:@"values"];
  v5 = [(PLGraphEdge *)self mutableSetValueForKey:@"values"];
  [v5 addObject:v4];

  [(PLGraphEdge *)self didChangeValueForKey:@"values"];
}

- (void)prepareForDeletion
{
  v10.receiver = self;
  v10.super_class = PLGraphEdge;
  [(PLGraphEdge *)&v10 prepareForDeletion];
  v3 = [(PLGraphEdge *)self primaryLabel];
  [v3 handleAddOrRemoveOfBitsetTrackedObject:self isAdd:0];

  v4 = [(PLGraphEdge *)self additionalLabels];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__PLGraphEdge_prepareForDeletion__block_invoke;
  v9[3] = &unk_1E75746E0;
  v9[4] = self;
  [v4 enumerateObjectsUsingBlock:v9];

  v5 = [(PLGraphEdge *)self sourceNode];

  if (v5)
  {
    v6 = [(PLGraphEdge *)self sourceNode];
    [objc_msgSend(v6 "nodeContainerClass")];
  }

  v7 = [(PLGraphEdge *)self targetNode];

  if (v7)
  {
    v8 = [(PLGraphEdge *)self targetNode];
    [objc_msgSend(v8 "nodeContainerClass")];
  }
}

- (void)willSave
{
  v7.receiver = self;
  v7.super_class = PLGraphEdge;
  [(PLManagedObject *)&v7 willSave];
  objc_opt_class();
  v3 = [(PLGraphEdge *)self managedObjectContext];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 && [(PLGraphEdge *)self isInserted])
  {
    v5 = [(PLGraphEdge *)self sourceNode];

    if (v5)
    {
      v6 = [(PLGraphEdge *)self sourceNode];
      [objc_msgSend(v6 "nodeContainerClass")];
    }
  }
}

- (BOOL)validateForUpdate:(id *)a3
{
  if (MEMORY[0x19EAEE520](self, a2))
  {
    goto LABEL_2;
  }

  v22.receiver = self;
  v22.super_class = PLGraphEdge;
  v5 = [(PLGraphEdge *)&v22 validateForInsert:a3];
  if (!v5)
  {
    return v5;
  }

  if ((-[PLGraphEdge sourceNode](self, "sourceNode"), v6 = objc_claimAutoreleasedReturnValue(), v6, -[PLGraphEdge targetNode](self, "targetNode"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7 | v6) || (-[PLGraphEdge isDeleted](self, "isDeleted")) && ((-[PLGraphEdge sourceNode](self, "sourceNode"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8) || (v9 = -[PLGraphEdge _sourceShortcutCount](self, "_sourceShortcutCount"), v9 < 1) || v9 == 1 && (-[PLGraphEdge sourceNode](self, "sourceNode"), v10 = objc_claimAutoreleasedReturnValue(), [v10 actingObject], v11 = objc_claimAutoreleasedReturnValue(), -[PLGraphEdge _sourceShortcut](self, "_sourceShortcut"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqual:", v12), v12, v11, v10, (v13)) && ((-[PLGraphEdge targetNode](self, "targetNode"), v14 = objc_claimAutoreleasedReturnValue(), v14, !v14) || (v15 = -[PLGraphEdge _targetShortcutCount](self, "_targetShortcutCount"), v15 < 1) || v15 == 1 && (-[PLGraphEdge targetNode](self, "targetNode"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "actingObject"), v17 = objc_claimAutoreleasedReturnValue(), -[PLGraphEdge _targetShortcut](self, "_targetShortcut"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqual:", v18), v18, v17, v16, (v19)))
  {
LABEL_2:
    LOBYTE(v5) = 1;
  }

  else
  {
    v20 = PLErrorCreate();
    if (a3)
    {
      v20 = v20;
      *a3 = v20;
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)validateForInsert:(id *)a3
{
  if (MEMORY[0x19EAEE520](self, a2))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PLGraphEdge;
    v5 = [(PLGraphEdge *)&v7 validateForInsert:a3];
    if (v5)
    {
      LOBYTE(v5) = [(PLGraphEdge *)self validateForUpdate:a3];
    }
  }

  return v5;
}

- (void)awakeFromInsert
{
  v10 = [(PLGraphEdge *)self managedObjectContext];
  v4 = [v10 pl_graphCache];
  if (!v4)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLGraphEdge.m" lineNumber:165 description:@"graphCache is required to insert Edges"];
  }

  v5 = [(PLGraphEdge *)self managedObjectContext];
  v6 = [v4 takeNextAvailableExternalIdentifierInContext:v5 forIdentifierEntity:1];

  if (v6 == 0x8000000000000000)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PLGraphEdge.m" lineNumber:169 description:{@"Failed to set initial values for inserted edge, unable to determine next externalIdentifier."}];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
  [(PLManagedObject *)self pl_setValue:v7 forKey:@"externalIdentifier" valueDidChangeHandler:0];
}

- (void)_updateShortcutWithKey:(id)a3 usingActorNode:(id)a4
{
  v12 = a3;
  v7 = a4;
  v8 = v12;
  v9 = v7;
  if (!v12)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLGraphEdge.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"shortcutKey"}];

    v8 = 0;
  }

  [(PLGraphEdge *)self willChangeValueForKey:v8];
  v10 = [v9 actingObject];
  [(PLGraphEdge *)self setPrimitiveValue:v10 forKey:v12];

  [(PLGraphEdge *)self didChangeValueForKey:v12];
}

- (void)_clearTargetShortcuts
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13[0] = @"targetAsset";
  v13[1] = @"targetMoment";
  v13[2] = @"targetPerson";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:{3, 0}];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [(PLGraphEdge *)self willChangeValueForKey:v8];
        [(PLGraphEdge *)self setPrimitiveValue:0 forKey:v8];
        [(PLGraphEdge *)self didChangeValueForKey:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_clearSourceShortcuts
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13[0] = @"sourceAsset";
  v13[1] = @"sourceMoment";
  v13[2] = @"sourcePerson";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:{3, 0}];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [(PLGraphEdge *)self willChangeValueForKey:v8];
        [(PLGraphEdge *)self setPrimitiveValue:0 forKey:v8];
        [(PLGraphEdge *)self didChangeValueForKey:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

- (int64_t)_targetShortcutCount
{
  v3 = [(PLGraphEdge *)self targetAsset];

  v4 = [(PLGraphEdge *)self targetMoment];

  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3 != 0;
  }

  v7 = [(PLGraphEdge *)self targetPerson];

  if (v7)
  {
    return v6 + 1;
  }

  else
  {
    return v6;
  }
}

- (int64_t)_sourceShortcutCount
{
  v3 = [(PLGraphEdge *)self sourceAsset];

  v4 = [(PLGraphEdge *)self sourceMoment];

  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3 != 0;
  }

  v7 = [(PLGraphEdge *)self sourcePerson];

  if (v7)
  {
    return v6 + 1;
  }

  else
  {
    return v6;
  }
}

- (id)_targetShortcut
{
  v3 = [(PLGraphEdge *)self targetAsset];

  if (v3)
  {
    v4 = [(PLGraphEdge *)self targetAsset];
  }

  else
  {
    v5 = [(PLGraphEdge *)self targetMoment];

    if (v5)
    {
      v4 = [(PLGraphEdge *)self targetMoment];
    }

    else
    {
      v6 = [(PLGraphEdge *)self targetPerson];

      if (v6)
      {
        v4 = [(PLGraphEdge *)self targetPerson];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (id)_sourceShortcut
{
  v3 = [(PLGraphEdge *)self sourceAsset];

  if (v3)
  {
    v4 = [(PLGraphEdge *)self sourceAsset];
  }

  else
  {
    v5 = [(PLGraphEdge *)self sourceMoment];

    if (v5)
    {
      v4 = [(PLGraphEdge *)self sourceMoment];
    }

    else
    {
      v6 = [(PLGraphEdge *)self sourcePerson];

      if (v6)
      {
        v4 = [(PLGraphEdge *)self sourcePerson];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (void)_setActorObject:(id)a3 withNodeKey:(id)a4 andShortcutKey:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (v11)
  {
    v10 = [PLGraphNode nodeForActingObject:v11 createIfMissing:1];
  }

  else
  {
    v10 = 0;
  }

  [(PLGraphEdge *)self willChangeValueForKey:v8];
  [(PLGraphEdge *)self setPrimitiveValue:v10 forKey:v8];
  [(PLGraphEdge *)self didChangeValueForKey:v8];
  [(PLGraphEdge *)self willChangeValueForKey:v9];
  [(PLGraphEdge *)self setPrimitiveValue:v11 forKey:v9];
  [(PLGraphEdge *)self didChangeValueForKey:v9];
}

+ (id)fetchEdgesWithExternalIdentifiers:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__94746;
  v21 = __Block_byref_object_dispose__94747;
  v22 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PLGraphEdge_fetchEdgesWithExternalIdentifiers_inManagedObjectContext___block_invoke;
  v12[3] = &unk_1E7576680;
  v8 = v6;
  v15 = &v17;
  v16 = a1;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  [v9 performBlockAndWait:v12];
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

void __72__PLGraphEdge_fetchEdgesWithExternalIdentifiers_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"externalIdentifier", *(a1 + 32)];
  v3 = MEMORY[0x1E695D5E0];
  v4 = [*(a1 + 56) entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  [v5 setPredicate:v2];
  v6 = *(a1 + 40);
  v12 = 0;
  v7 = [v6 executeFetchRequest:v5 error:&v12];
  v8 = v12;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch edges with error: %@", buf, 0xCu);
    }
  }
}

+ (id)updatedEdgesInvolvingNode:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"PLGraphEdge.m" lineNumber:277 description:{@"Invalid parameter not satisfying: %@", @"node"}];
  }

  v6 = [v5 managedObjectContext];
  [MEMORY[0x1E695DFA8] set];
  v27 = v26 = v6;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [v6 updatedObjects];
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      v11 = 0;
      v28 = v9;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          v14 = [v13 objectIDsForRelationshipNamed:@"sourceNode"];
          v15 = [v14 firstObject];

          v16 = [v13 objectIDsForRelationshipNamed:@"targetNode"];
          v17 = [v16 firstObject];

          v18 = [v5 objectID];
          if ([v15 isEqual:v18])
          {

            goto LABEL_12;
          }

          [v5 objectID];
          v19 = v10;
          v20 = v5;
          v22 = v21 = v7;
          v23 = [v17 isEqual:v22];

          v7 = v21;
          v5 = v20;
          v10 = v19;

          if (v23)
          {
LABEL_12:
            [v27 addObject:v13];
          }

          v9 = v28;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  return v27;
}

+ (id)insertGraphEdgeInContext:(id)a3 withPrimaryLabel:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PLGraphEdge.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v9 = +[PLGraphEdge entityName];
  v10 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v9, v7, 0);

  if (v8)
  {
    [v10 setPrimaryLabel:v8];
  }

  return v10;
}

@end