@interface PLGraphNode
+ (BOOL)_cleanupDanglingReferencesToDeletedObjectIDs:(id)a3 referenceRelationshipKeys:(id)a4 targetEntityName:(id)a5 inManagedObjectContext:(id)a6;
+ (id)_actingObjectRelationshipNames;
+ (id)_actingRelationshipNameForEntity:(id)a3;
+ (id)_cachedEdgesOfNode:(id)a3 inDirection:(unint64_t)a4 cachedToken:(id *)a5 cachedEdges:(id *)a6;
+ (id)_cachedFetchEdgesOfNode:(id)a3 inDirection:(unint64_t)a4 cachedToken:(id *)a5 cachedEdges:(id *)a6;
+ (id)_edgeRelationshipNames;
+ (id)_entityNameFromDanglingObjectRelationshipName:(id)a3;
+ (id)_fetchNodeForActingObject:(id)a3;
+ (id)_relationshipNameForActingEntityName:(id)a3;
+ (id)actingObjectIDsPendingCleanupInContext:(id)a3;
+ (id)fetchEdgesOfNode:(id)a3 direction:(unint64_t)a4;
+ (id)fetchNodeWithExternalIdentifier:(int64_t)a3 inManagedObjectContext:(id)a4;
+ (id)fetchNodeWithUUID:(id)a3 inManagedObjectContext:(id)a4;
+ (id)fetchNodesWithExternalIdentifiers:(id)a3 inManagedObjectContext:(id)a4;
+ (id)fetchObjectIDsForNodesWithExternalIdentifiers:(id)a3 inManagedObjectContext:(id)a4;
+ (id)insertActorNodeWithActingObject:(id)a3;
+ (id)insertGraphNodeInContext:(id)a3 withPrimaryLabel:(id)a4;
+ (id)nodeForActingObject:(id)a3 createIfMissing:(BOOL)a4;
+ (id)nodesForActingObjectIDs:(id)a3 createIfMissing:(BOOL)a4 inContext:(id)a5;
+ (id)predicateToExcludeActorNodesInContext:(id)a3;
+ (void)_cleanupDanglingEdgeReferencesToDeletedNodesInManagedObjectContext:(id)a3;
+ (void)cleanupDanglingNodeReferencesToDeletedActorsInContext:(id)a3;
+ (void)registerDeletedNodeActorForDanglingNodeCleanup:(id)a3;
- (BOOL)hasChangesOrHasEdgeChanges;
- (BOOL)isEligibleForSearchIndexing;
- (BOOL)shouldUpdatePersistence;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (Class)nodeContainerClass;
- (PLGraphNodeActor)actingObject;
- (id)_assignmentForLabel:(id)a3 createIfMissing:(BOOL)a4;
- (id)edgesIn;
- (id)edgesOut;
- (id)searchIdentifier;
- (id)valueWithCode:(int)a3 createIfMissing:(BOOL)a4;
- (int)primaryLabelCode;
- (int64_t)_actingObjectCount;
- (void)_registerDeletedNodeForDanglingEdgeCleanup;
- (void)addValue:(id)a3;
- (void)awakeFromInsert;
- (void)didSave;
- (void)incrementEdgeDeletionCounter;
- (void)prepareForDeletion;
- (void)removeValue:(id)a3;
- (void)willSave;
@end

@implementation PLGraphNode

- (BOOL)isEligibleForSearchIndexing
{
  v2 = [(PLGraphNode *)self primaryLabel];
  v3 = [v2 code] == 1100;

  return v3;
}

- (id)searchIdentifier
{
  v3 = [(PLGraphNode *)self primaryLabel];
  v4 = [v3 code];

  if (v4 == 1100)
  {
    v5 = [(PLGraphNodeContainer *)PLSearchEntity newNodeContainerWithNode:self];
    v6 = [v5 encodedIdentifierString];
  }

  else
  {
    v6 = [(PLGraphNode *)self uuid];
  }

  return v6;
}

- (void)removeValue:(id)a3
{
  v4 = a3;
  [(PLGraphNode *)self willChangeValueForKey:@"values"];
  v5 = [(PLGraphNode *)self mutableSetValueForKey:@"values"];
  [v5 removeObject:v4];

  [(PLGraphNode *)self didChangeValueForKey:@"values"];
}

- (void)addValue:(id)a3
{
  v4 = a3;
  [(PLGraphNode *)self willChangeValueForKey:@"values"];
  v5 = [(PLGraphNode *)self mutableSetValueForKey:@"values"];
  [v5 addObject:v4];

  [(PLGraphNode *)self didChangeValueForKey:@"values"];
}

- (id)valueWithCode:(int)a3 createIfMissing:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v25 = *MEMORY[0x1E69E9840];
  if ([(PLGraphNode *)self hasFaultForRelationshipNamed:@"values"])
  {
    v7 = [(PLGraphNode *)self values];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __45__PLGraphNode_valueWithCode_createIfMissing___block_invoke;
    v22[3] = &__block_descriptor_36_e56_B24__0__NSManagedObject_PLGraphValue__8__NSDictionary_16l;
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
    v9 = [(PLGraphNode *)self values];
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
    v15 = +[PLGraphNodeValue entityName];
    v16 = [(PLGraphNode *)self managedObjectContext];
    v11 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v15, v16, 0);

    [v11 setNameCode:v5];
    [(PLGraphNode *)self addValue:v11];
  }

  return v11;
}

- (void)incrementEdgeDeletionCounter
{
  v3 = [(PLGraphNode *)self valueForKey:@"edgeDeletionCounter"];
  v4 = [v3 integerValue];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:(v4 + 1)];
  [(PLGraphNode *)self setValue:v5 forKey:@"edgeDeletionCounter"];
}

- (PLGraphNodeActor)actingObject
{
  v3 = [(PLGraphNode *)self actingAsset];

  if (v3)
  {
    v4 = [(PLGraphNode *)self actingAsset];
  }

  else
  {
    v5 = [(PLGraphNode *)self actingMoment];

    if (v5)
    {
      v4 = [(PLGraphNode *)self actingMoment];
    }

    else
    {
      v6 = [(PLGraphNode *)self actingPerson];

      if (v6)
      {
        v4 = [(PLGraphNode *)self actingPerson];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (id)edgesOut
{
  v3 = objc_opt_class();

  return [v3 _cachedFetchEdgesOfNode:self inDirection:1 cachedToken:&self->_cachedEdgesQueryGeneration cachedEdges:&self->_cachedEdgesByDirection];
}

- (id)edgesIn
{
  v3 = objc_opt_class();

  return [v3 _cachedFetchEdgesOfNode:self inDirection:0 cachedToken:&self->_cachedEdgesQueryGeneration cachedEdges:&self->_cachedEdgesByDirection];
}

- (BOOL)hasChangesOrHasEdgeChanges
{
  if (([(PLGraphNode *)self hasChanges]& 1) != 0)
  {
    return 1;
  }

  v4 = [PLGraphEdge updatedEdgesInvolvingNode:self];
  v3 = [v4 count] != 0;

  return v3;
}

- (Class)nodeContainerClass
{
  v2 = PLNodeContainerClassFromBuiltInLabelCode([(PLGraphNode *)self primaryLabelCode]);
  if (!v2)
  {
    v2 = objc_opt_class();
  }

  return v2;
}

- (int)primaryLabelCode
{
  [(PLGraphNode *)self willAccessValueForKey:@"primaryLabelCode"];
  v3 = [(PLGraphNode *)self primitiveValueForKey:@"primaryLabelCode"];
  [(PLGraphNode *)self didAccessValueForKey:@"primaryLabelCode"];
  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v5 = [(PLGraphNode *)self primaryLabel];
    v4 = [v5 code];
  }

  return v4;
}

- (BOOL)shouldUpdatePersistence
{
  v2 = [(PLGraphNode *)self managedObjectContext];
  v3 = [v2 pathManager];

  if (v3)
  {
    if ([v3 isDCIM])
    {
      v4 = 1;
    }

    else
    {
      v4 = MEMORY[0x19EAEE520]();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)prepareForDeletion
{
  v6.receiver = self;
  v6.super_class = PLGraphNode;
  [(PLGraphNode *)&v6 prepareForDeletion];
  [(objc_class *)[(PLGraphNode *)self nodeContainerClass] prepareForDeletionWithNode:self];
  v3 = [(PLGraphNode *)self primaryLabel];
  [v3 handleAddOrRemoveOfBitsetTrackedObject:self isAdd:0];

  v4 = [(PLGraphNode *)self additionalLabels];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__PLGraphNode_prepareForDeletion__block_invoke;
  v5[3] = &unk_1E75746E0;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];

  if ((PLIsAssetsd() & 1) != 0 || MEMORY[0x19EAEE520]())
  {
    [(PLGraphNode *)self _registerDeletedNodeForDanglingEdgeCleanup];
  }
}

- (void)didSave
{
  v3.receiver = self;
  v3.super_class = PLGraphNode;
  [(PLManagedObject *)&v3 didSave];
  [(objc_class *)[(PLGraphNode *)self nodeContainerClass] didSaveWithNode:self];
  [(PLGraphNode *)self setNeedsPersistenceUpdate:0];
}

- (void)willSave
{
  v8.receiver = self;
  v8.super_class = PLGraphNode;
  [(PLManagedObject *)&v8 willSave];
  if ([(PLGraphNode *)self isDeleted]&& ((PLIsAssetsd() & 1) != 0 || MEMORY[0x19EAEE520]()))
  {
    v3 = [(PLGraphNode *)self managedObjectContext];
    [PLGraphNode _cleanupDanglingEdgeReferencesToDeletedNodesInManagedObjectContext:v3];
  }

  objc_opt_class();
  v4 = [(PLGraphNode *)self managedObjectContext];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 || MEMORY[0x19EAEE520]())
  {
    [(PLGraphNode *)self setNeedsPersistenceUpdate:0];
    [(objc_class *)[(PLGraphNode *)self nodeContainerClass] willSaveWithNode:self];
  }
}

- (BOOL)validateForUpdate:(id *)a3
{
  v10.receiver = self;
  v10.super_class = PLGraphNode;
  v5 = [(PLGraphNode *)&v10 validateForUpdate:?];
  if (v5)
  {
    v6 = [(PLGraphNode *)self uuid];

    if (v6 && ([(PLGraphNode *)self primaryLabel], v7 = objc_claimAutoreleasedReturnValue(), v7, v7) && [(PLGraphNode *)self _hasAtMostOneActingObject]&& (![(PLGraphNode *)self _hasAtLeastOneActingObject]|| [(PLGraphNode *)self primaryLabelCode]== 2000))
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v8 = PLErrorCreate();
      if (a3)
      {
        v8 = v8;
        *a3 = v8;
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)validateForInsert:(id *)a3
{
  v11.receiver = self;
  v11.super_class = PLGraphNode;
  v5 = [(PLGraphNode *)&v11 validateForInsert:?];
  if (v5)
  {
    v6 = [(PLGraphNode *)self uuid];

    if (v6 && -[PLGraphNode _hasAtMostOneActingObject](self, "_hasAtMostOneActingObject") && (!-[PLGraphNode _hasAtLeastOneActingObject](self, "_hasAtLeastOneActingObject") || (-[PLGraphNode primaryLabel](self, "primaryLabel"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 code], v7, v8 == 2000)))
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v9 = PLErrorCreate();
      if (a3)
      {
        v9 = v9;
        *a3 = v9;
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)awakeFromInsert
{
  v12 = [(PLGraphNode *)self managedObjectContext];
  v4 = [v12 pl_graphCache];
  if (!v4)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:349 description:@"graphCache is required to insert Nodes"];
  }

  v5 = [(PLGraphNode *)self managedObjectContext];
  v6 = [v4 takeNextAvailableExternalIdentifierInContext:v5 forIdentifierEntity:0];

  if (v6 == 0x8000000000000000)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:353 description:{@"Failed to set initial values for inserted node, unable to determine next externalIdentifier."}];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
  [(PLManagedObject *)self pl_setValue:v7 forKey:@"externalIdentifier" valueDidChangeHandler:0];

  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];
  [(PLManagedObject *)self pl_setValue:v9 forKey:@"uuid" valueDidChangeHandler:0];
}

- (id)_assignmentForLabel:(id)a3 createIfMissing:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:327 description:{@"Invalid parameter not satisfying: %@", @"label"}];
  }

  v8 = [(PLGraphNode *)self additionalLabelAssignments];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__PLGraphNode__assignmentForLabel_createIfMissing___block_invoke;
  v15[3] = &unk_1E756EF60;
  v9 = v7;
  v16 = v9;
  v10 = [v8 _pl_firstObjectPassingTest:v15];

  if (!v10 && v4)
  {
    v11 = +[PLGraphNodeAdditionalLabelAssignment entityName];
    v12 = [v9 managedObjectContext];
    v10 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v11, v12, 0);

    [v10 setLabel:v9];
  }

  return v10;
}

uint64_t __51__PLGraphNode__assignmentForLabel_createIfMissing___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 label];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (int64_t)_actingObjectCount
{
  v3 = [(PLGraphNode *)self actingAsset];

  v4 = [(PLGraphNode *)self actingMoment];

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

  v7 = [(PLGraphNode *)self actingPerson];

  if (v7)
  {
    return v6 + 1;
  }

  else
  {
    return v6;
  }
}

- (void)_registerDeletedNodeForDanglingEdgeCleanup
{
  v4 = [(PLGraphNode *)self managedObjectContext];

  if (!v4)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"self.managedObjectContext != nil"}];
  }

  v10 = [(PLGraphNode *)self managedObjectContext];
  v5 = [v10 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"pl_nodeIDsPendingEdgeCleanup"];

  if (!v6)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = [v10 userInfo];
    [v7 setObject:v6 forKeyedSubscript:@"pl_nodeIDsPendingEdgeCleanup"];
  }

  v8 = [(PLGraphNode *)self objectID];
  [v6 addObject:v8];
}

+ (id)insertActorNodeWithActingObject:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PLGraphNode.m" lineNumber:831 description:{@"Invalid parameter not satisfying: %@", @"actingObject"}];
  }

  v6 = [v5 managedObjectContext];
  v7 = [v6 pl_graphCache];
  v8 = [v7 labelWithCode:2000 inContext:v6];
  v9 = [PLGraphNode insertGraphNodeInContext:v6 withPrimaryLabel:v8];
  v10 = [v5 entity];
  v11 = [v10 name];
  v12 = [a1 _relationshipNameForActingEntityName:v11];

  [v9 willChangeValueForKey:v12];
  [v9 setPrimitiveValue:v5 forKey:v12];
  [v9 didChangeValueForKey:v12];

  return v9;
}

+ (id)actingObjectIDsPendingCleanupInContext:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"pl_actingobjectIDsPendingNodeCleanup"];

  return v4;
}

+ (void)cleanupDanglingNodeReferencesToDeletedActorsInContext:(id)a3
{
  v9 = a3;
  v4 = [v9 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"pl_actingobjectIDsPendingNodeCleanup"];

  if ([v5 count])
  {
    v6 = [a1 _actingObjectRelationshipNames];
    v7 = +[PLGraphNode entityName];
    v8 = [a1 _cleanupDanglingReferencesToDeletedObjectIDs:v5 referenceRelationshipKeys:v6 targetEntityName:v7 inManagedObjectContext:v9];

    if (v8)
    {
      [v5 removeAllObjects];
    }
  }
}

+ (id)nodesForActingObjectIDs:(id)a3 createIfMissing:(BOOL)a4 inContext:(id)a5
{
  v6 = a4;
  v119 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (![v8 count])
  {
    v92 = 0;
    goto LABEL_61;
  }

  v85 = a1;
  v88 = v9;
  v93 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v91 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v89 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v108 objects:v118 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v109;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v109 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v108 + 1) + 8 * i);
        v16 = [v15 entity];
        v17 = +[PLManagedAsset entity];
        v18 = [v16 isKindOfEntity:v17];

        v19 = v93;
        if ((v18 & 1) == 0)
        {
          v20 = [v15 entity];
          v21 = +[PLMoment entity];
          v22 = [v20 isKindOfEntity:v21];

          v19 = v91;
          if ((v22 & 1) == 0)
          {
            v23 = [v15 entity];
            v24 = +[PLPerson entity];
            v25 = [v23 isKindOfEntity:v24];

            v19 = v89;
            if (!v25)
            {
              continue;
            }
          }
        }

        [v19 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v108 objects:v118 count:16];
    }

    while (v12);
  }

  v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  if ([v93 count])
  {
    v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"actingAsset", v93];
    [v26 addObject:v27];
  }

  v28 = v91;
  v9 = v88;
  v29 = v89;
  if ([v91 count])
  {
    v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"actingMoment", v91];
    [v26 addObject:v30];
  }

  if ([v89 count])
  {
    v31 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"actingPerson", v89];
    [v26 addObject:v31];
  }

  v32 = +[PLGraphNode fetchRequest];
  v33 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v26];
  [v32 setPredicate:v33];

  v107 = 0;
  v34 = [v88 executeFetchRequest:v32 error:&v107];
  v35 = v107;
  v86 = v35;
  v87 = v34;
  if (!v34)
  {
    v79 = v35;
    v71 = PLBackendGetLog();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v113 = v79;
      _os_log_impl(&dword_19BF1F000, v71, OS_LOG_TYPE_ERROR, "Failed to fetch actor nodes with error: %@", buf, 0xCu);
    }

    v92 = 0;
LABEL_58:

    v80 = v93;
    goto LABEL_60;
  }

  v82 = v32;
  v83 = v26;
  v84 = v8;
  v92 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = v34;
  v36 = [obj countByEnumeratingWithState:&v103 objects:v117 count:16];
  if (!v36)
  {
    goto LABEL_34;
  }

  v37 = v36;
  v38 = *v104;
  do
  {
    for (j = 0; j != v37; ++j)
    {
      if (*v104 != v38)
      {
        objc_enumerationMutation(obj);
      }

      v40 = *(*(&v103 + 1) + 8 * j);
      v41 = [v40 actingObject];
      v42 = [v41 objectID];
      [v92 setObject:v40 forKeyedSubscript:v42];

      v43 = [v40 actingObject];
      v44 = [v43 objectID];
      v45 = [v44 entity];
      v46 = +[PLManagedAsset entity];
      v47 = [v45 isKindOfEntity:v46];

      v48 = [v40 actingObject];
      v49 = [v48 objectID];
      v50 = v49;
      if (v47)
      {
        v51 = v93;
      }

      else
      {
        v52 = [v49 entity];
        v53 = +[PLMoment entity];
        v54 = [v52 isKindOfEntity:v53];

        v48 = [v40 actingObject];
        v55 = [v48 objectID];
        v50 = v55;
        if (v54)
        {
          v51 = v91;
        }

        else
        {
          v56 = [v55 entity];
          v57 = +[PLPerson entity];
          v58 = [v56 isKindOfEntity:v57];

          if (!v58)
          {
            continue;
          }

          v48 = [v40 actingObject];
          v50 = [v48 objectID];
          v51 = v89;
        }
      }

      [v51 removeObject:v50];
    }

    v37 = [obj countByEnumeratingWithState:&v103 objects:v117 count:16];
  }

  while (v37);
LABEL_34:

  if (v6)
  {
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v115[0] = v93;
    v115[1] = v91;
    v115[2] = v89;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:3];
    v60 = [v59 countByEnumeratingWithState:&v99 objects:v116 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v100;
      do
      {
        for (k = 0; k != v61; ++k)
        {
          if (*v100 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = *(*(&v99 + 1) + 8 * k);
          if ([v64 count])
          {
            v65 = objc_alloc_init(MEMORY[0x1E695D5E0]);
            v66 = [v64 anyObject];
            v67 = [v66 entity];
            [v65 setEntity:v67];

            v68 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v64];
            [v65 setPredicate:v68];

            v98 = 0;
            v69 = [v88 executeFetchRequest:v65 error:&v98];
          }
        }

        v61 = [v59 countByEnumeratingWithState:&v99 objects:v116 count:16];
      }

      while (v61);
    }

    v70 = [MEMORY[0x1E695DFA8] set];
    [v70 unionSet:v93];
    [v70 unionSet:v91];
    [v70 unionSet:v89];
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v71 = v70;
    v72 = [v71 countByEnumeratingWithState:&v94 objects:v114 count:16];
    v8 = v84;
    v9 = v88;
    if (v72)
    {
      v73 = v72;
      v74 = *v95;
      do
      {
        for (m = 0; m != v73; ++m)
        {
          if (*v95 != v74)
          {
            objc_enumerationMutation(v71);
          }

          v76 = *(*(&v94 + 1) + 8 * m);
          v77 = [v88 existingObjectWithID:v76 error:0];
          if (v77)
          {
            v78 = [v85 insertActorNodeWithActingObject:v77];
            [v92 setObject:v78 forKeyedSubscript:v76];
          }
        }

        v73 = [v71 countByEnumeratingWithState:&v94 objects:v114 count:16];
      }

      while (v73);
    }

    v28 = v91;
    v29 = v89;
    v32 = v82;
    v26 = v83;
    goto LABEL_58;
  }

  v26 = v83;
  v8 = v84;
  v9 = v88;
  v29 = v89;
  v80 = v93;
  v28 = v91;
  v32 = v82;
LABEL_60:

LABEL_61:

  return v92;
}

+ (id)nodeForActingObject:(id)a3 createIfMissing:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PLGraphNode.m" lineNumber:644 description:{@"Invalid parameter not satisfying: %@", @"actingObject"}];
  }

  v8 = [a1 _fetchNodeForActingObject:v7];
  if (!v8 && v4)
  {
    v8 = [a1 insertActorNodeWithActingObject:v7];
  }

  return v8;
}

+ (id)_relationshipNameForActingEntityName:(id)a3
{
  v5 = a3;
  v6 = +[PLManagedAsset entityName];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = @"actingAsset";
  }

  else
  {
    v9 = +[PLPerson entityName];
    v10 = [v5 isEqualToString:v9];

    if (v10)
    {
      v8 = @"actingPerson";
    }

    else
    {
      v11 = +[PLMoment entityName];
      v12 = [v5 isEqualToString:v11];

      if (v12)
      {
        v8 = @"actingMoment";
      }

      else
      {
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        [v13 handleFailureInMethod:a2 object:a1 file:@"PLGraphNode.m" lineNumber:638 description:{@"Unsupported actor entity name: %@", v5}];

        v8 = 0;
      }
    }
  }

  return v8;
}

+ (id)fetchEdgesOfNode:(id)a3 direction:(unint64_t)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"PLGraphNode.m" lineNumber:597 description:{@"Invalid parameter not satisfying: %@", @"node"}];
  }

  v8 = +[PLGraphEdge fetchRequest];
  if (a4 == 2)
  {
    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@ OR %K = %@", @"targetNode", v7, @"sourceNode", v7];
    [v8 setPredicate:v14];

    v26[0] = @"sourceNode";
    v26[1] = @"targetNode";
    v10 = MEMORY[0x1E695DEC8];
    v11 = v26;
    v13 = 2;
  }

  else
  {
    if (a4 == 1)
    {
      v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"sourceNode", v7];
      [v8 setPredicate:v12];

      v27 = @"sourceNode";
      v10 = MEMORY[0x1E695DEC8];
      v11 = &v27;
    }

    else
    {
      if (a4)
      {
        goto LABEL_11;
      }

      v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"targetNode", v7];
      [v8 setPredicate:v9];

      v28[0] = @"targetNode";
      v10 = MEMORY[0x1E695DEC8];
      v11 = v28;
    }

    v13 = 1;
  }

  v15 = [v10 arrayWithObjects:v11 count:v13];
  [v8 setRelationshipKeyPathsForPrefetching:v15];

LABEL_11:
  v16 = [v7 managedObjectContext];
  v23 = 0;
  v17 = [v16 executeFetchRequest:v8 error:&v23];
  v18 = v23;
  if (v17)
  {
    v19 = [MEMORY[0x1E695DFD8] setWithArray:v17];
  }

  else
  {
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v18;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to fetch edges with error: %@", buf, 0xCu);
    }

    v19 = 0;
  }

  return v19;
}

+ (id)predicateToExcludeActorNodesInContext:(id)a3
{
  v3 = a3;
  v4 = [v3 pl_graphCache];
  v5 = [v4 labelWithCode:2000 inContext:v3];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %@", @"primaryLabel", v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)registerDeletedNodeActorForDanglingNodeCleanup:(id)a3
{
  v8 = a3;
  v3 = [v8 managedObjectContext];
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"pl_actingobjectIDsPendingNodeCleanup"];

  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v6 = [v3 userInfo];
    [v6 setObject:v5 forKeyedSubscript:@"pl_actingobjectIDsPendingNodeCleanup"];
  }

  v7 = [v8 objectID];
  [v5 addObject:v7];
}

+ (id)fetchNodeWithUUID:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__63205;
  v20 = __Block_byref_object_dispose__63206;
  v21 = 0;
  if (v6)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__PLGraphNode_fetchNodeWithUUID_inManagedObjectContext___block_invoke;
    v11[3] = &unk_1E7576680;
    v12 = v6;
    v15 = a1;
    v13 = v7;
    v14 = &v16;
    [v13 performBlockAndWait:v11];

    v8 = v17[5];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  _Block_object_dispose(&v16, 8);

  return v9;
}

void __56__PLGraphNode_fetchNodeWithUUID_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uuid", *(a1 + 32)];
  v3 = MEMORY[0x1E695D5E0];
  v4 = [*(a1 + 56) entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  [v5 setPredicate:v2];
  [v5 setFetchLimit:1];
  v6 = *(a1 + 40);
  v12 = 0;
  v7 = [v6 executeFetchRequest:v5 error:&v12];
  v8 = v12;
  if (v7)
  {
    v9 = [v7 firstObject];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch node with error: %@", buf, 0xCu);
    }
  }
}

+ (id)fetchNodeWithExternalIdentifier:(int64_t)a3 inManagedObjectContext:(id)a4
{
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__63205;
  v19 = __Block_byref_object_dispose__63206;
  v20 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PLGraphNode_fetchNodeWithExternalIdentifier_inManagedObjectContext___block_invoke;
  v10[3] = &unk_1E7576590;
  v13 = a3;
  v14 = a1;
  v7 = v6;
  v11 = v7;
  v12 = &v15;
  [v7 performBlockAndWait:v10];
  v8 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __70__PLGraphNode_fetchNodeWithExternalIdentifier_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"externalIdentifier", *(a1 + 48)];
  v3 = MEMORY[0x1E695D5E0];
  v4 = [*(a1 + 56) entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  [v5 setPredicate:v2];
  [v5 setFetchLimit:1];
  v6 = *(a1 + 32);
  v12 = 0;
  v7 = [v6 executeFetchRequest:v5 error:&v12];
  v8 = v12;
  if (v7)
  {
    v9 = [v7 firstObject];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch node with error: %@", buf, 0xCu);
    }
  }
}

+ (id)fetchNodesWithExternalIdentifiers:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__63205;
  v21 = __Block_byref_object_dispose__63206;
  v22 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PLGraphNode_fetchNodesWithExternalIdentifiers_inManagedObjectContext___block_invoke;
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

void __72__PLGraphNode_fetchNodesWithExternalIdentifiers_inManagedObjectContext___block_invoke(uint64_t a1)
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
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch nodes with error: %@", buf, 0xCu);
    }
  }
}

+ (id)fetchObjectIDsForNodesWithExternalIdentifiers:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__63205;
  v21 = __Block_byref_object_dispose__63206;
  v22 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__PLGraphNode_fetchObjectIDsForNodesWithExternalIdentifiers_inManagedObjectContext___block_invoke;
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

void __84__PLGraphNode_fetchObjectIDsForNodesWithExternalIdentifiers_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"externalIdentifier", *(a1 + 32)];
  v3 = MEMORY[0x1E695D5E0];
  v4 = [*(a1 + 56) entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  [v5 setPredicate:v2];
  [v5 setResultType:1];
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
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch objectIDs of nodes with error: %@", buf, 0xCu);
    }
  }
}

+ (id)insertGraphNodeInContext:(id)a3 withPrimaryLabel:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PLGraphNode.m" lineNumber:470 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v7 = +[PLGraphNode entityName];
  v8 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v7, v5, 0);

  if (v6)
  {
    [v8 setPrimaryLabel:v6];
  }

  v9 = [v8 nodeContainerClass];
  v10 = [v9 requiredNodeValueCodes];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v9 defaultValueForRequiredNodeValueCode:objc_msgSend(*(*(&v22 + 1) + 8 * v14) forNode:{"intValue"), v8}];
        v16 = [v15 owningObject];

        if (v16 != v8)
        {
          v17 = [MEMORY[0x1E696AAA8] currentHandler];
          [v17 handleFailureInMethod:a2 object:a1 file:@"PLGraphNode.m" lineNumber:483 description:{@"Invalid parameter not satisfying: %@", @"value.owningObject == node"}];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  return v8;
}

+ (id)_fetchNodeForActingObject:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PLGraphNode.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"actingObject"}];
  }

  v6 = [v5 managedObjectContext];

  if (!v6)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PLGraphNode.m" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"actingObject.managedObjectContext"}];
  }

  v7 = +[PLGraphNode fetchRequest];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v5 entity];
  v10 = [a1 _actingRelationshipNameForEntity:v9];
  v11 = [v8 stringWithFormat:@"%@", v10];

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", v11, v5];
  [v7 setPredicate:v12];

  v13 = [v5 managedObjectContext];
  v21 = 0;
  v14 = [v13 executeFetchRequest:v7 error:&v21];
  v15 = v21;

  if (v14)
  {
    v16 = [v14 firstObject];
  }

  else
  {
    v17 = PLBackendGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v15;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Failed to fetch nodeForActingObject with error: %@", buf, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

+ (id)_actingRelationshipNameForEntity:(id)a3
{
  v5 = a3;
  v6 = [v5 name];
  v7 = +[PLManagedAsset entityName];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = @"actingAsset";
  }

  else
  {
    v10 = [v5 name];
    v11 = +[PLPerson entityName];
    v12 = [v10 isEqualToString:v11];

    if (v12)
    {
      v9 = @"actingPerson";
    }

    else
    {
      v13 = [v5 name];
      v14 = +[PLMoment entityName];
      v15 = [v13 isEqualToString:v14];

      if (v15)
      {
        v9 = @"actingMoment";
      }

      else
      {
        v16 = [MEMORY[0x1E696AAA8] currentHandler];
        [v16 handleFailureInMethod:a2 object:a1 file:@"PLGraphNode.m" lineNumber:300 description:{@"Unsupported actor entity type: %@", v5}];

        v9 = 0;
      }
    }
  }

  return v9;
}

+ (void)_cleanupDanglingEdgeReferencesToDeletedNodesInManagedObjectContext:(id)a3
{
  v9 = a3;
  v4 = [v9 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"pl_nodeIDsPendingEdgeCleanup"];

  if ([v5 count])
  {
    v6 = [a1 _edgeRelationshipNames];
    v7 = +[PLGraphEdge entityName];
    v8 = [a1 _cleanupDanglingReferencesToDeletedObjectIDs:v5 referenceRelationshipKeys:v6 targetEntityName:v7 inManagedObjectContext:v9];

    if (v8)
    {
      [v5 removeAllObjects];
    }
  }
}

+ (BOOL)_cleanupDanglingReferencesToDeletedObjectIDs:(id)a3 referenceRelationshipKeys:(id)a4 targetEntityName:(id)a5 inManagedObjectContext:(id)a6
{
  v71 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 count])
  {
    v52 = v12;
    v53 = v13;
    v56 = v10;
    v55 = [MEMORY[0x1E695DF70] array];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v51 = v11;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v64;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v64 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v63 + 1) + 8 * i);
          v62[0] = MEMORY[0x1E69E9820];
          v62[1] = 3221225472;
          v62[2] = __126__PLGraphNode__cleanupDanglingReferencesToDeletedObjectIDs_referenceRelationshipKeys_targetEntityName_inManagedObjectContext___block_invoke;
          v62[3] = &unk_1E756EF38;
          v62[4] = v19;
          v62[5] = a1;
          v20 = [v10 _pl_filter:v62];
          if ([v20 count])
          {
            v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", v19, v20];
            [v55 addObject:v21];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v16);
    }

    v12 = v52;
    v22 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v52];
    v23 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v55];
    [v22 setPredicate:v23];

    [v22 setFetchBatchSize:100];
    v61 = 0;
    v13 = v53;
    v24 = [v53 executeFetchRequest:v22 error:&v61];
    v25 = v61;
    v26 = v24 != 0;
    if (v24)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v27 = v24;
      v28 = [v27 countByEnumeratingWithState:&v57 objects:v69 count:16];
      v54 = v27;
      if (v28)
      {
        v29 = v28;
        v47 = v25;
        v48 = v24;
        v49 = v24 != 0;
        v50 = v22;
        v30 = *v58;
        while (1)
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v58 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v57 + 1) + 8 * j);
            v33 = [v32 entity];
            v34 = +[PLGraphNode entity];
            v35 = [v33 isKindOfEntity:v34];

            if (v35)
            {
              [v13 deleteObject:v32];
              continue;
            }

            v36 = [v32 entity];
            v37 = +[PLGraphEdge entity];
            v38 = [v36 isKindOfEntity:v37];

            if (v38)
            {
              v39 = v32;
              v40 = [v39 sourceNode];
              v41 = [v40 objectID];
              if ([v10 containsObject:v41])
              {

                goto LABEL_23;
              }

              v42 = [v39 targetNode];
              v43 = [v42 objectID];
              v44 = [v10 containsObject:v43];

              v13 = v53;
              if (v44)
              {
LABEL_23:
                [v13 deleteObject:v39];
              }

              v27 = v54;
              continue;
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v57 objects:v69 count:16];
          if (!v29)
          {
            v11 = v51;
            v12 = v52;
            v22 = v50;
            v26 = v49;
            v25 = v47;
            v24 = v48;
            goto LABEL_32;
          }
        }
      }
    }

    else
    {
      v45 = PLBackendGetLog();
      v54 = v45;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v68 = v25;
        _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_ERROR, "Failed to fetch dangling objects with error: %@", buf, 0xCu);
      }
    }

    v10 = v56;
    v11 = v51;
LABEL_32:
  }

  else
  {
    v26 = 1;
  }

  return v26;
}

uint64_t __126__PLGraphNode__cleanupDanglingReferencesToDeletedObjectIDs_referenceRelationshipKeys_targetEntityName_inManagedObjectContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 _entityNameFromDanglingObjectRelationshipName:v3];
  v6 = [v4 entity];

  v7 = [v6 name];
  v8 = [v7 isEqualToString:v5];

  return v8;
}

+ (id)_entityNameFromDanglingObjectRelationshipName:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PLGraphNode.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"relationshipName"}];
  }

  if ([v5 isEqualToString:@"actingAsset"])
  {
    v6 = PLManagedAsset;
LABEL_12:
    v7 = [(__objc2_class *)v6 entityName];
    goto LABEL_13;
  }

  if ([v5 isEqualToString:@"actingPerson"])
  {
    v6 = PLPerson;
    goto LABEL_12;
  }

  if ([v5 isEqualToString:@"actingMoment"])
  {
    v6 = PLMoment;
    goto LABEL_12;
  }

  if ([v5 isEqualToString:@"sourceNode"] || objc_msgSend(v5, "isEqualToString:", @"targetNode"))
  {
    v6 = PLGraphNode;
    goto LABEL_12;
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:a1 file:@"PLGraphNode.m" lineNumber:216 description:{@"unsupported relationshipName: %@", v5}];

  v7 = 0;
LABEL_13:

  return v7;
}

+ (id)_edgeRelationshipNames
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"sourceNode";
  v4[1] = @"targetNode";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)_actingObjectRelationshipNames
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"actingAsset";
  v4[1] = @"actingPerson";
  v4[2] = @"actingMoment";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

+ (id)_cachedFetchEdgesOfNode:(id)a3 inDirection:(unint64_t)a4 cachedToken:(id *)a5 cachedEdges:(id *)a6
{
  v11 = a3;
  if (!a5)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"PLGraphNode.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"inOutCachedGenerationToken"}];

    if (a6)
    {
      goto LABEL_3;
    }

LABEL_13:
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PLGraphNode.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"inOutCachedEdges"}];

    goto LABEL_3;
  }

  if (!a6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v12 = [v11 managedObjectContext];
  v13 = [a1 _cachedEdgesOfNode:v11 inDirection:a4 cachedToken:a5 cachedEdges:a6];
  if (!v13)
  {
    v13 = [objc_opt_class() fetchEdgesOfNode:v11 direction:a4];
    if (v13)
    {
      v15 = [v12 queryGenerationToken];

      if (v15)
      {
        v16 = *a6;
        if (!*a6)
        {
          v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
          v18 = *a6;
          *a6 = v17;

          v19 = [v12 queryGenerationToken];
          v20 = *a5;
          *a5 = v19;

          v16 = *a6;
        }

        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
        [v16 setObject:v13 forKey:v21];
      }
    }
  }

  return v13;
}

+ (id)_cachedEdgesOfNode:(id)a3 inDirection:(unint64_t)a4 cachedToken:(id *)a5 cachedEdges:(id *)a6
{
  v52 = *MEMORY[0x1E69E9840];
  v43 = a3;
  if (!a5)
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:a1 file:@"PLGraphNode.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"inOutCachedGenerationToken"}];

    if (a6)
    {
      goto LABEL_3;
    }

LABEL_28:
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:a1 file:@"PLGraphNode.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"inOutCachedEdges"}];

    goto LABEL_3;
  }

  if (!a6)
  {
    goto LABEL_28;
  }

LABEL_3:
  v41 = [v43 managedObjectContext];
  v11 = *a6;
  if (*a6)
  {
    v12 = *a5;
    if (*a5)
    {
      v13 = [v41 queryGenerationToken];
      v14 = [v12 isEqual:v13];

      v11 = *a6;
      if ((v14 & 1) == 0)
      {
        *a6 = 0;

        v15 = *a5;
        *a5 = 0;

        v11 = *a6;
      }
    }
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v17 = [v11 objectForKey:v16];

  if (v17)
  {
    v18 = +[PLGraphEdge entity];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = [v41 insertedObjects];
    v19 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v48;
      v44 = a4 - 1;
      v45 = a4 & 0xFFFFFFFFFFFFFFFDLL;
      v42 = v18;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v48 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v47 + 1) + 8 * i);
          v24 = [v23 entity];
          v25 = [v24 isKindOfEntity:v18];

          if (v25)
          {
            v26 = [MEMORY[0x1E695DFA8] set];
            v27 = v23;
            v28 = v27;
            if (!v45)
            {
              v29 = [v27 targetNode];
              v30 = [v29 objectID];
              v31 = [v43 objectID];
              v32 = [v30 isEqual:v31];

              v18 = v42;
              if (v32)
              {
                [v26 addObject:v28];
              }
            }

            if (v44 <= 1)
            {
              v33 = [v28 sourceNode];
              v34 = [v33 objectID];
              v35 = [v43 objectID];
              v36 = [v34 isEqual:v35];

              v18 = v42;
              if (v36)
              {
                [v26 addObject:v28];
              }
            }

            v37 = [v17 setByAddingObjectsFromSet:v26];

            v17 = v37;
          }
        }

        v20 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v20);
    }
  }

  return v17;
}

@end