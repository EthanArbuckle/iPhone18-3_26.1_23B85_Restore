@interface PLGraphEdge
+ (id)fetchEdgesWithExternalIdentifiers:(id)identifiers inManagedObjectContext:(id)context;
+ (id)insertGraphEdgeInContext:(id)context withPrimaryLabel:(id)label;
+ (id)updatedEdgesInvolvingNode:(id)node;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (id)_sourceShortcut;
- (id)_targetShortcut;
- (id)valueWithCode:(int)code createIfMissing:(BOOL)missing;
- (int64_t)_sourceShortcutCount;
- (int64_t)_targetShortcutCount;
- (void)_clearSourceShortcuts;
- (void)_clearTargetShortcuts;
- (void)_setActorObject:(id)object withNodeKey:(id)key andShortcutKey:(id)shortcutKey;
- (void)_updateShortcutWithKey:(id)key usingActorNode:(id)node;
- (void)addEdgeValue:(id)value;
- (void)awakeFromInsert;
- (void)prepareForDeletion;
- (void)removeEdgeValue:(id)value;
- (void)setSourceNode:(id)node;
- (void)setTargetNode:(id)node;
- (void)willSave;
@end

@implementation PLGraphEdge

- (id)valueWithCode:(int)code createIfMissing:(BOOL)missing
{
  missingCopy = missing;
  v5 = *&code;
  v25 = *MEMORY[0x1E69E9840];
  if ([(PLGraphEdge *)self hasFaultForRelationshipNamed:@"values"])
  {
    values = [(PLGraphEdge *)self values];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __45__PLGraphEdge_valueWithCode_createIfMissing___block_invoke;
    v22[3] = &__block_descriptor_36_e43_B24__0__PLGraphEdgeValue_8__NSDictionary_16l;
    v23 = v5;
    v8 = [MEMORY[0x1E696AE18] predicateWithBlock:v22];
    values2 = [values filteredSetUsingPredicate:v8];

    anyObject = [values2 anyObject];
LABEL_13:
    v11 = anyObject;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    values2 = [(PLGraphEdge *)self values];
    v11 = [values2 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v11)
    {
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(values2);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([v14 nameCode] == v5)
          {
            anyObject = v14;
            goto LABEL_13;
          }
        }

        v11 = [values2 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  if (!v11 && missingCopy)
  {
    v15 = +[PLGraphEdgeValue entityName];
    managedObjectContext = [(PLGraphEdge *)self managedObjectContext];
    v11 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v15, managedObjectContext, 0);

    [v11 setNameCode:v5];
    [(PLGraphEdge *)self addEdgeValue:v11];
  }

  return v11;
}

- (void)setTargetNode:(id)node
{
  nodeCopy = node;
  [(PLGraphEdge *)self willChangeValueForKey:@"targetNode"];
  [(PLGraphEdge *)self setPrimitiveValue:nodeCopy forKey:@"targetNode"];
  [(PLGraphEdge *)self didChangeValueForKey:@"targetNode"];
  actingAsset = [nodeCopy actingAsset];

  if (actingAsset)
  {
    v5 = @"targetAsset";
LABEL_7:
    [(PLGraphEdge *)self _updateShortcutWithKey:v5 usingActorNode:nodeCopy];
LABEL_8:
    v8 = nodeCopy;
    goto LABEL_9;
  }

  actingMoment = [nodeCopy actingMoment];

  if (actingMoment)
  {
    v5 = @"targetMoment";
    goto LABEL_7;
  }

  actingPerson = [nodeCopy actingPerson];

  if (actingPerson)
  {
    v5 = @"targetPerson";
    goto LABEL_7;
  }

  v8 = nodeCopy;
  if (!nodeCopy)
  {
    [(PLGraphEdge *)self _clearTargetShortcuts];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)setSourceNode:(id)node
{
  nodeCopy = node;
  [(PLGraphEdge *)self willChangeValueForKey:@"sourceNode"];
  [(PLGraphEdge *)self setPrimitiveValue:nodeCopy forKey:@"sourceNode"];
  [(PLGraphEdge *)self didChangeValueForKey:@"sourceNode"];
  actingAsset = [nodeCopy actingAsset];

  if (actingAsset)
  {
    v5 = @"sourceAsset";
LABEL_7:
    [(PLGraphEdge *)self _updateShortcutWithKey:v5 usingActorNode:nodeCopy];
LABEL_8:
    v8 = nodeCopy;
    goto LABEL_9;
  }

  actingMoment = [nodeCopy actingMoment];

  if (actingMoment)
  {
    v5 = @"sourceMoment";
    goto LABEL_7;
  }

  actingPerson = [nodeCopy actingPerson];

  if (actingPerson)
  {
    v5 = @"sourcePerson";
    goto LABEL_7;
  }

  v8 = nodeCopy;
  if (!nodeCopy)
  {
    [(PLGraphEdge *)self _clearSourceShortcuts];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)removeEdgeValue:(id)value
{
  valueCopy = value;
  [(PLGraphEdge *)self willChangeValueForKey:@"values"];
  v5 = [(PLGraphEdge *)self mutableSetValueForKey:@"values"];
  [v5 removeObject:valueCopy];

  [(PLGraphEdge *)self didChangeValueForKey:@"values"];
}

- (void)addEdgeValue:(id)value
{
  valueCopy = value;
  [(PLGraphEdge *)self willChangeValueForKey:@"values"];
  v5 = [(PLGraphEdge *)self mutableSetValueForKey:@"values"];
  [v5 addObject:valueCopy];

  [(PLGraphEdge *)self didChangeValueForKey:@"values"];
}

- (void)prepareForDeletion
{
  v10.receiver = self;
  v10.super_class = PLGraphEdge;
  [(PLGraphEdge *)&v10 prepareForDeletion];
  primaryLabel = [(PLGraphEdge *)self primaryLabel];
  [primaryLabel handleAddOrRemoveOfBitsetTrackedObject:self isAdd:0];

  additionalLabels = [(PLGraphEdge *)self additionalLabels];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __33__PLGraphEdge_prepareForDeletion__block_invoke;
  v9[3] = &unk_1E75746E0;
  v9[4] = self;
  [additionalLabels enumerateObjectsUsingBlock:v9];

  sourceNode = [(PLGraphEdge *)self sourceNode];

  if (sourceNode)
  {
    sourceNode2 = [(PLGraphEdge *)self sourceNode];
    [objc_msgSend(sourceNode2 "nodeContainerClass")];
  }

  targetNode = [(PLGraphEdge *)self targetNode];

  if (targetNode)
  {
    targetNode2 = [(PLGraphEdge *)self targetNode];
    [objc_msgSend(targetNode2 "nodeContainerClass")];
  }
}

- (void)willSave
{
  v7.receiver = self;
  v7.super_class = PLGraphEdge;
  [(PLManagedObject *)&v7 willSave];
  objc_opt_class();
  managedObjectContext = [(PLGraphEdge *)self managedObjectContext];
  if (objc_opt_isKindOfClass())
  {
    v4 = managedObjectContext;
  }

  else
  {
    v4 = 0;
  }

  if (v4 && [(PLGraphEdge *)self isInserted])
  {
    sourceNode = [(PLGraphEdge *)self sourceNode];

    if (sourceNode)
    {
      sourceNode2 = [(PLGraphEdge *)self sourceNode];
      [objc_msgSend(sourceNode2 "nodeContainerClass")];
    }
  }
}

- (BOOL)validateForUpdate:(id *)update
{
  if (MEMORY[0x19EAEE520](self, a2))
  {
    goto LABEL_2;
  }

  v22.receiver = self;
  v22.super_class = PLGraphEdge;
  v5 = [(PLGraphEdge *)&v22 validateForInsert:update];
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
    if (update)
    {
      v20 = v20;
      *update = v20;
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)validateForInsert:(id *)insert
{
  if (MEMORY[0x19EAEE520](self, a2))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PLGraphEdge;
    v5 = [(PLGraphEdge *)&v7 validateForInsert:insert];
    if (v5)
    {
      LOBYTE(v5) = [(PLGraphEdge *)self validateForUpdate:insert];
    }
  }

  return v5;
}

- (void)awakeFromInsert
{
  managedObjectContext = [(PLGraphEdge *)self managedObjectContext];
  pl_graphCache = [managedObjectContext pl_graphCache];
  if (!pl_graphCache)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphEdge.m" lineNumber:165 description:@"graphCache is required to insert Edges"];
  }

  managedObjectContext2 = [(PLGraphEdge *)self managedObjectContext];
  v6 = [pl_graphCache takeNextAvailableExternalIdentifierInContext:managedObjectContext2 forIdentifierEntity:1];

  if (v6 == 0x8000000000000000)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLGraphEdge.m" lineNumber:169 description:{@"Failed to set initial values for inserted edge, unable to determine next externalIdentifier."}];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
  [(PLManagedObject *)self pl_setValue:v7 forKey:@"externalIdentifier" valueDidChangeHandler:0];
}

- (void)_updateShortcutWithKey:(id)key usingActorNode:(id)node
{
  keyCopy = key;
  nodeCopy = node;
  v8 = keyCopy;
  v9 = nodeCopy;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphEdge.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"shortcutKey"}];

    v8 = 0;
  }

  [(PLGraphEdge *)self willChangeValueForKey:v8];
  actingObject = [v9 actingObject];
  [(PLGraphEdge *)self setPrimitiveValue:actingObject forKey:keyCopy];

  [(PLGraphEdge *)self didChangeValueForKey:keyCopy];
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
  targetAsset = [(PLGraphEdge *)self targetAsset];

  targetMoment = [(PLGraphEdge *)self targetMoment];

  v5 = 1;
  if (targetAsset)
  {
    v5 = 2;
  }

  if (targetMoment)
  {
    v6 = v5;
  }

  else
  {
    v6 = targetAsset != 0;
  }

  targetPerson = [(PLGraphEdge *)self targetPerson];

  if (targetPerson)
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
  sourceAsset = [(PLGraphEdge *)self sourceAsset];

  sourceMoment = [(PLGraphEdge *)self sourceMoment];

  v5 = 1;
  if (sourceAsset)
  {
    v5 = 2;
  }

  if (sourceMoment)
  {
    v6 = v5;
  }

  else
  {
    v6 = sourceAsset != 0;
  }

  sourcePerson = [(PLGraphEdge *)self sourcePerson];

  if (sourcePerson)
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
  targetAsset = [(PLGraphEdge *)self targetAsset];

  if (targetAsset)
  {
    targetAsset2 = [(PLGraphEdge *)self targetAsset];
  }

  else
  {
    targetMoment = [(PLGraphEdge *)self targetMoment];

    if (targetMoment)
    {
      targetAsset2 = [(PLGraphEdge *)self targetMoment];
    }

    else
    {
      targetPerson = [(PLGraphEdge *)self targetPerson];

      if (targetPerson)
      {
        targetAsset2 = [(PLGraphEdge *)self targetPerson];
      }

      else
      {
        targetAsset2 = 0;
      }
    }
  }

  return targetAsset2;
}

- (id)_sourceShortcut
{
  sourceAsset = [(PLGraphEdge *)self sourceAsset];

  if (sourceAsset)
  {
    sourceAsset2 = [(PLGraphEdge *)self sourceAsset];
  }

  else
  {
    sourceMoment = [(PLGraphEdge *)self sourceMoment];

    if (sourceMoment)
    {
      sourceAsset2 = [(PLGraphEdge *)self sourceMoment];
    }

    else
    {
      sourcePerson = [(PLGraphEdge *)self sourcePerson];

      if (sourcePerson)
      {
        sourceAsset2 = [(PLGraphEdge *)self sourcePerson];
      }

      else
      {
        sourceAsset2 = 0;
      }
    }
  }

  return sourceAsset2;
}

- (void)_setActorObject:(id)object withNodeKey:(id)key andShortcutKey:(id)shortcutKey
{
  objectCopy = object;
  keyCopy = key;
  shortcutKeyCopy = shortcutKey;
  if (objectCopy)
  {
    v10 = [PLGraphNode nodeForActingObject:objectCopy createIfMissing:1];
  }

  else
  {
    v10 = 0;
  }

  [(PLGraphEdge *)self willChangeValueForKey:keyCopy];
  [(PLGraphEdge *)self setPrimitiveValue:v10 forKey:keyCopy];
  [(PLGraphEdge *)self didChangeValueForKey:keyCopy];
  [(PLGraphEdge *)self willChangeValueForKey:shortcutKeyCopy];
  [(PLGraphEdge *)self setPrimitiveValue:objectCopy forKey:shortcutKeyCopy];
  [(PLGraphEdge *)self didChangeValueForKey:shortcutKeyCopy];
}

+ (id)fetchEdgesWithExternalIdentifiers:(id)identifiers inManagedObjectContext:(id)context
{
  identifiersCopy = identifiers;
  contextCopy = context;
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
  v8 = identifiersCopy;
  v15 = &v17;
  selfCopy = self;
  v13 = v8;
  v9 = contextCopy;
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

+ (id)updatedEdgesInvolvingNode:(id)node
{
  v34 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  if (!nodeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphEdge.m" lineNumber:277 description:{@"Invalid parameter not satisfying: %@", @"node"}];
  }

  managedObjectContext = [nodeCopy managedObjectContext];
  [MEMORY[0x1E695DFA8] set];
  v27 = v26 = managedObjectContext;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  updatedObjects = [managedObjectContext updatedObjects];
  v8 = [updatedObjects countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(updatedObjects);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          v14 = [v13 objectIDsForRelationshipNamed:@"sourceNode"];
          firstObject = [v14 firstObject];

          v16 = [v13 objectIDsForRelationshipNamed:@"targetNode"];
          firstObject2 = [v16 firstObject];

          objectID = [nodeCopy objectID];
          if ([firstObject isEqual:objectID])
          {

            goto LABEL_12;
          }

          [nodeCopy objectID];
          v19 = v10;
          v20 = nodeCopy;
          v22 = v21 = updatedObjects;
          v23 = [firstObject2 isEqual:v22];

          updatedObjects = v21;
          nodeCopy = v20;
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
      v9 = [updatedObjects countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  return v27;
}

+ (id)insertGraphEdgeInContext:(id)context withPrimaryLabel:(id)label
{
  contextCopy = context;
  labelCopy = label;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphEdge.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v9 = +[PLGraphEdge entityName];
  v10 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v9, contextCopy, 0);

  if (labelCopy)
  {
    [v10 setPrimaryLabel:labelCopy];
  }

  return v10;
}

@end