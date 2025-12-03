@interface PLGraphNode
+ (BOOL)_cleanupDanglingReferencesToDeletedObjectIDs:(id)ds referenceRelationshipKeys:(id)keys targetEntityName:(id)name inManagedObjectContext:(id)context;
+ (id)_actingObjectRelationshipNames;
+ (id)_actingRelationshipNameForEntity:(id)entity;
+ (id)_cachedEdgesOfNode:(id)node inDirection:(unint64_t)direction cachedToken:(id *)token cachedEdges:(id *)edges;
+ (id)_cachedFetchEdgesOfNode:(id)node inDirection:(unint64_t)direction cachedToken:(id *)token cachedEdges:(id *)edges;
+ (id)_edgeRelationshipNames;
+ (id)_entityNameFromDanglingObjectRelationshipName:(id)name;
+ (id)_fetchNodeForActingObject:(id)object;
+ (id)_relationshipNameForActingEntityName:(id)name;
+ (id)actingObjectIDsPendingCleanupInContext:(id)context;
+ (id)fetchEdgesOfNode:(id)node direction:(unint64_t)direction;
+ (id)fetchNodeWithExternalIdentifier:(int64_t)identifier inManagedObjectContext:(id)context;
+ (id)fetchNodeWithUUID:(id)d inManagedObjectContext:(id)context;
+ (id)fetchNodesWithExternalIdentifiers:(id)identifiers inManagedObjectContext:(id)context;
+ (id)fetchObjectIDsForNodesWithExternalIdentifiers:(id)identifiers inManagedObjectContext:(id)context;
+ (id)insertActorNodeWithActingObject:(id)object;
+ (id)insertGraphNodeInContext:(id)context withPrimaryLabel:(id)label;
+ (id)nodeForActingObject:(id)object createIfMissing:(BOOL)missing;
+ (id)nodesForActingObjectIDs:(id)ds createIfMissing:(BOOL)missing inContext:(id)context;
+ (id)predicateToExcludeActorNodesInContext:(id)context;
+ (void)_cleanupDanglingEdgeReferencesToDeletedNodesInManagedObjectContext:(id)context;
+ (void)cleanupDanglingNodeReferencesToDeletedActorsInContext:(id)context;
+ (void)registerDeletedNodeActorForDanglingNodeCleanup:(id)cleanup;
- (BOOL)hasChangesOrHasEdgeChanges;
- (BOOL)isEligibleForSearchIndexing;
- (BOOL)shouldUpdatePersistence;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (Class)nodeContainerClass;
- (PLGraphNodeActor)actingObject;
- (id)_assignmentForLabel:(id)label createIfMissing:(BOOL)missing;
- (id)edgesIn;
- (id)edgesOut;
- (id)searchIdentifier;
- (id)valueWithCode:(int)code createIfMissing:(BOOL)missing;
- (int)primaryLabelCode;
- (int64_t)_actingObjectCount;
- (void)_registerDeletedNodeForDanglingEdgeCleanup;
- (void)addValue:(id)value;
- (void)awakeFromInsert;
- (void)didSave;
- (void)incrementEdgeDeletionCounter;
- (void)prepareForDeletion;
- (void)removeValue:(id)value;
- (void)willSave;
@end

@implementation PLGraphNode

- (BOOL)isEligibleForSearchIndexing
{
  primaryLabel = [(PLGraphNode *)self primaryLabel];
  v3 = [primaryLabel code] == 1100;

  return v3;
}

- (id)searchIdentifier
{
  primaryLabel = [(PLGraphNode *)self primaryLabel];
  code = [primaryLabel code];

  if (code == 1100)
  {
    v5 = [(PLGraphNodeContainer *)PLSearchEntity newNodeContainerWithNode:self];
    encodedIdentifierString = [v5 encodedIdentifierString];
  }

  else
  {
    encodedIdentifierString = [(PLGraphNode *)self uuid];
  }

  return encodedIdentifierString;
}

- (void)removeValue:(id)value
{
  valueCopy = value;
  [(PLGraphNode *)self willChangeValueForKey:@"values"];
  v5 = [(PLGraphNode *)self mutableSetValueForKey:@"values"];
  [v5 removeObject:valueCopy];

  [(PLGraphNode *)self didChangeValueForKey:@"values"];
}

- (void)addValue:(id)value
{
  valueCopy = value;
  [(PLGraphNode *)self willChangeValueForKey:@"values"];
  v5 = [(PLGraphNode *)self mutableSetValueForKey:@"values"];
  [v5 addObject:valueCopy];

  [(PLGraphNode *)self didChangeValueForKey:@"values"];
}

- (id)valueWithCode:(int)code createIfMissing:(BOOL)missing
{
  missingCopy = missing;
  v5 = *&code;
  v25 = *MEMORY[0x1E69E9840];
  if ([(PLGraphNode *)self hasFaultForRelationshipNamed:@"values"])
  {
    values = [(PLGraphNode *)self values];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __45__PLGraphNode_valueWithCode_createIfMissing___block_invoke;
    v22[3] = &__block_descriptor_36_e56_B24__0__NSManagedObject_PLGraphValue__8__NSDictionary_16l;
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
    values2 = [(PLGraphNode *)self values];
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
    v15 = +[PLGraphNodeValue entityName];
    managedObjectContext = [(PLGraphNode *)self managedObjectContext];
    v11 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v15, managedObjectContext, 0);

    [v11 setNameCode:v5];
    [(PLGraphNode *)self addValue:v11];
  }

  return v11;
}

- (void)incrementEdgeDeletionCounter
{
  v3 = [(PLGraphNode *)self valueForKey:@"edgeDeletionCounter"];
  integerValue = [v3 integerValue];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:(integerValue + 1)];
  [(PLGraphNode *)self setValue:v5 forKey:@"edgeDeletionCounter"];
}

- (PLGraphNodeActor)actingObject
{
  actingAsset = [(PLGraphNode *)self actingAsset];

  if (actingAsset)
  {
    actingAsset2 = [(PLGraphNode *)self actingAsset];
  }

  else
  {
    actingMoment = [(PLGraphNode *)self actingMoment];

    if (actingMoment)
    {
      actingAsset2 = [(PLGraphNode *)self actingMoment];
    }

    else
    {
      actingPerson = [(PLGraphNode *)self actingPerson];

      if (actingPerson)
      {
        actingAsset2 = [(PLGraphNode *)self actingPerson];
      }

      else
      {
        actingAsset2 = 0;
      }
    }
  }

  return actingAsset2;
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
    integerValue = [v3 integerValue];
  }

  else
  {
    primaryLabel = [(PLGraphNode *)self primaryLabel];
    integerValue = [primaryLabel code];
  }

  return integerValue;
}

- (BOOL)shouldUpdatePersistence
{
  managedObjectContext = [(PLGraphNode *)self managedObjectContext];
  pathManager = [managedObjectContext pathManager];

  if (pathManager)
  {
    if ([pathManager isDCIM])
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
  primaryLabel = [(PLGraphNode *)self primaryLabel];
  [primaryLabel handleAddOrRemoveOfBitsetTrackedObject:self isAdd:0];

  additionalLabels = [(PLGraphNode *)self additionalLabels];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__PLGraphNode_prepareForDeletion__block_invoke;
  v5[3] = &unk_1E75746E0;
  v5[4] = self;
  [additionalLabels enumerateObjectsUsingBlock:v5];

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
    managedObjectContext = [(PLGraphNode *)self managedObjectContext];
    [PLGraphNode _cleanupDanglingEdgeReferencesToDeletedNodesInManagedObjectContext:managedObjectContext];
  }

  objc_opt_class();
  managedObjectContext2 = [(PLGraphNode *)self managedObjectContext];
  if (objc_opt_isKindOfClass())
  {
    v5 = managedObjectContext2;
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

- (BOOL)validateForUpdate:(id *)update
{
  v10.receiver = self;
  v10.super_class = PLGraphNode;
  v5 = [(PLGraphNode *)&v10 validateForUpdate:?];
  if (v5)
  {
    uuid = [(PLGraphNode *)self uuid];

    if (uuid && ([(PLGraphNode *)self primaryLabel], v7 = objc_claimAutoreleasedReturnValue(), v7, v7) && [(PLGraphNode *)self _hasAtMostOneActingObject]&& (![(PLGraphNode *)self _hasAtLeastOneActingObject]|| [(PLGraphNode *)self primaryLabelCode]== 2000))
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v8 = PLErrorCreate();
      if (update)
      {
        v8 = v8;
        *update = v8;
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)validateForInsert:(id *)insert
{
  v11.receiver = self;
  v11.super_class = PLGraphNode;
  v5 = [(PLGraphNode *)&v11 validateForInsert:?];
  if (v5)
  {
    uuid = [(PLGraphNode *)self uuid];

    if (uuid && -[PLGraphNode _hasAtMostOneActingObject](self, "_hasAtMostOneActingObject") && (!-[PLGraphNode _hasAtLeastOneActingObject](self, "_hasAtLeastOneActingObject") || (-[PLGraphNode primaryLabel](self, "primaryLabel"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 code], v7, v8 == 2000)))
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v9 = PLErrorCreate();
      if (insert)
      {
        v9 = v9;
        *insert = v9;
      }

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)awakeFromInsert
{
  managedObjectContext = [(PLGraphNode *)self managedObjectContext];
  pl_graphCache = [managedObjectContext pl_graphCache];
  if (!pl_graphCache)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:349 description:@"graphCache is required to insert Nodes"];
  }

  managedObjectContext2 = [(PLGraphNode *)self managedObjectContext];
  v6 = [pl_graphCache takeNextAvailableExternalIdentifierInContext:managedObjectContext2 forIdentifierEntity:0];

  if (v6 == 0x8000000000000000)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:353 description:{@"Failed to set initial values for inserted node, unable to determine next externalIdentifier."}];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
  [(PLManagedObject *)self pl_setValue:v7 forKey:@"externalIdentifier" valueDidChangeHandler:0];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [(PLManagedObject *)self pl_setValue:uUIDString forKey:@"uuid" valueDidChangeHandler:0];
}

- (id)_assignmentForLabel:(id)label createIfMissing:(BOOL)missing
{
  missingCopy = missing;
  labelCopy = label;
  if (!labelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:327 description:{@"Invalid parameter not satisfying: %@", @"label"}];
  }

  additionalLabelAssignments = [(PLGraphNode *)self additionalLabelAssignments];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__PLGraphNode__assignmentForLabel_createIfMissing___block_invoke;
  v15[3] = &unk_1E756EF60;
  v9 = labelCopy;
  v16 = v9;
  v10 = [additionalLabelAssignments _pl_firstObjectPassingTest:v15];

  if (!v10 && missingCopy)
  {
    v11 = +[PLGraphNodeAdditionalLabelAssignment entityName];
    managedObjectContext = [v9 managedObjectContext];
    v10 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v11, managedObjectContext, 0);

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
  actingAsset = [(PLGraphNode *)self actingAsset];

  actingMoment = [(PLGraphNode *)self actingMoment];

  v5 = 1;
  if (actingAsset)
  {
    v5 = 2;
  }

  if (actingMoment)
  {
    v6 = v5;
  }

  else
  {
    v6 = actingAsset != 0;
  }

  actingPerson = [(PLGraphNode *)self actingPerson];

  if (actingPerson)
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
  managedObjectContext = [(PLGraphNode *)self managedObjectContext];

  if (!managedObjectContext)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"self.managedObjectContext != nil"}];
  }

  managedObjectContext2 = [(PLGraphNode *)self managedObjectContext];
  userInfo = [managedObjectContext2 userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"pl_nodeIDsPendingEdgeCleanup"];

  if (!v6)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    userInfo2 = [managedObjectContext2 userInfo];
    [userInfo2 setObject:v6 forKeyedSubscript:@"pl_nodeIDsPendingEdgeCleanup"];
  }

  objectID = [(PLGraphNode *)self objectID];
  [v6 addObject:objectID];
}

+ (id)insertActorNodeWithActingObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:831 description:{@"Invalid parameter not satisfying: %@", @"actingObject"}];
  }

  managedObjectContext = [objectCopy managedObjectContext];
  pl_graphCache = [managedObjectContext pl_graphCache];
  v8 = [pl_graphCache labelWithCode:2000 inContext:managedObjectContext];
  v9 = [PLGraphNode insertGraphNodeInContext:managedObjectContext withPrimaryLabel:v8];
  entity = [objectCopy entity];
  name = [entity name];
  v12 = [self _relationshipNameForActingEntityName:name];

  [v9 willChangeValueForKey:v12];
  [v9 setPrimitiveValue:objectCopy forKey:v12];
  [v9 didChangeValueForKey:v12];

  return v9;
}

+ (id)actingObjectIDsPendingCleanupInContext:(id)context
{
  userInfo = [context userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"pl_actingobjectIDsPendingNodeCleanup"];

  return v4;
}

+ (void)cleanupDanglingNodeReferencesToDeletedActorsInContext:(id)context
{
  contextCopy = context;
  userInfo = [contextCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"pl_actingobjectIDsPendingNodeCleanup"];

  if ([v5 count])
  {
    _actingObjectRelationshipNames = [self _actingObjectRelationshipNames];
    v7 = +[PLGraphNode entityName];
    v8 = [self _cleanupDanglingReferencesToDeletedObjectIDs:v5 referenceRelationshipKeys:_actingObjectRelationshipNames targetEntityName:v7 inManagedObjectContext:contextCopy];

    if (v8)
    {
      [v5 removeAllObjects];
    }
  }
}

+ (id)nodesForActingObjectIDs:(id)ds createIfMissing:(BOOL)missing inContext:(id)context
{
  missingCopy = missing;
  v119 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  if (![dsCopy count])
  {
    v92 = 0;
    goto LABEL_61;
  }

  selfCopy = self;
  v88 = contextCopy;
  v93 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v91 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v89 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v10 = dsCopy;
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
        entity = [v15 entity];
        v17 = +[PLManagedAsset entity];
        v18 = [entity isKindOfEntity:v17];

        v19 = v93;
        if ((v18 & 1) == 0)
        {
          entity2 = [v15 entity];
          v21 = +[PLMoment entity];
          v22 = [entity2 isKindOfEntity:v21];

          v19 = v91;
          if ((v22 & 1) == 0)
          {
            entity3 = [v15 entity];
            v24 = +[PLPerson entity];
            v25 = [entity3 isKindOfEntity:v24];

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
  contextCopy = v88;
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
  v84 = dsCopy;
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
      actingObject = [v40 actingObject];
      objectID = [actingObject objectID];
      [v92 setObject:v40 forKeyedSubscript:objectID];

      actingObject2 = [v40 actingObject];
      objectID2 = [actingObject2 objectID];
      entity4 = [objectID2 entity];
      v46 = +[PLManagedAsset entity];
      v47 = [entity4 isKindOfEntity:v46];

      actingObject3 = [v40 actingObject];
      objectID3 = [actingObject3 objectID];
      objectID5 = objectID3;
      if (v47)
      {
        v51 = v93;
      }

      else
      {
        entity5 = [objectID3 entity];
        v53 = +[PLMoment entity];
        v54 = [entity5 isKindOfEntity:v53];

        actingObject3 = [v40 actingObject];
        objectID4 = [actingObject3 objectID];
        objectID5 = objectID4;
        if (v54)
        {
          v51 = v91;
        }

        else
        {
          entity6 = [objectID4 entity];
          v57 = +[PLPerson entity];
          v58 = [entity6 isKindOfEntity:v57];

          if (!v58)
          {
            continue;
          }

          actingObject3 = [v40 actingObject];
          objectID5 = [actingObject3 objectID];
          v51 = v89;
        }
      }

      [v51 removeObject:objectID5];
    }

    v37 = [obj countByEnumeratingWithState:&v103 objects:v117 count:16];
  }

  while (v37);
LABEL_34:

  if (missingCopy)
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
            anyObject = [v64 anyObject];
            entity7 = [anyObject entity];
            [v65 setEntity:entity7];

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
    dsCopy = v84;
    contextCopy = v88;
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
            v78 = [selfCopy insertActorNodeWithActingObject:v77];
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
  dsCopy = v84;
  contextCopy = v88;
  v29 = v89;
  v80 = v93;
  v28 = v91;
  v32 = v82;
LABEL_60:

LABEL_61:

  return v92;
}

+ (id)nodeForActingObject:(id)object createIfMissing:(BOOL)missing
{
  missingCopy = missing;
  objectCopy = object;
  if (!objectCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:644 description:{@"Invalid parameter not satisfying: %@", @"actingObject"}];
  }

  v8 = [self _fetchNodeForActingObject:objectCopy];
  if (!v8 && missingCopy)
  {
    v8 = [self insertActorNodeWithActingObject:objectCopy];
  }

  return v8;
}

+ (id)_relationshipNameForActingEntityName:(id)name
{
  nameCopy = name;
  v6 = +[PLManagedAsset entityName];
  v7 = [nameCopy isEqualToString:v6];

  if (v7)
  {
    v8 = @"actingAsset";
  }

  else
  {
    v9 = +[PLPerson entityName];
    v10 = [nameCopy isEqualToString:v9];

    if (v10)
    {
      v8 = @"actingPerson";
    }

    else
    {
      v11 = +[PLMoment entityName];
      v12 = [nameCopy isEqualToString:v11];

      if (v12)
      {
        v8 = @"actingMoment";
      }

      else
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:638 description:{@"Unsupported actor entity name: %@", nameCopy}];

        v8 = 0;
      }
    }
  }

  return v8;
}

+ (id)fetchEdgesOfNode:(id)node direction:(unint64_t)direction
{
  v28[1] = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  if (!nodeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:597 description:{@"Invalid parameter not satisfying: %@", @"node"}];
  }

  v8 = +[PLGraphEdge fetchRequest];
  if (direction == 2)
  {
    nodeCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@ OR %K = %@", @"targetNode", nodeCopy, @"sourceNode", nodeCopy];
    [v8 setPredicate:nodeCopy];

    v26[0] = @"sourceNode";
    v26[1] = @"targetNode";
    v10 = MEMORY[0x1E695DEC8];
    v11 = v26;
    v13 = 2;
  }

  else
  {
    if (direction == 1)
    {
      nodeCopy2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"sourceNode", nodeCopy];
      [v8 setPredicate:nodeCopy2];

      v27 = @"sourceNode";
      v10 = MEMORY[0x1E695DEC8];
      v11 = &v27;
    }

    else
    {
      if (direction)
      {
        goto LABEL_11;
      }

      nodeCopy3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"targetNode", nodeCopy];
      [v8 setPredicate:nodeCopy3];

      v28[0] = @"targetNode";
      v10 = MEMORY[0x1E695DEC8];
      v11 = v28;
    }

    v13 = 1;
  }

  v15 = [v10 arrayWithObjects:v11 count:v13];
  [v8 setRelationshipKeyPathsForPrefetching:v15];

LABEL_11:
  managedObjectContext = [nodeCopy managedObjectContext];
  v23 = 0;
  v17 = [managedObjectContext executeFetchRequest:v8 error:&v23];
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

+ (id)predicateToExcludeActorNodesInContext:(id)context
{
  contextCopy = context;
  pl_graphCache = [contextCopy pl_graphCache];
  v5 = [pl_graphCache labelWithCode:2000 inContext:contextCopy];

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

+ (void)registerDeletedNodeActorForDanglingNodeCleanup:(id)cleanup
{
  cleanupCopy = cleanup;
  managedObjectContext = [cleanupCopy managedObjectContext];
  userInfo = [managedObjectContext userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"pl_actingobjectIDsPendingNodeCleanup"];

  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    userInfo2 = [managedObjectContext userInfo];
    [userInfo2 setObject:v5 forKeyedSubscript:@"pl_actingobjectIDsPendingNodeCleanup"];
  }

  objectID = [cleanupCopy objectID];
  [v5 addObject:objectID];
}

+ (id)fetchNodeWithUUID:(id)d inManagedObjectContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__63205;
  v20 = __Block_byref_object_dispose__63206;
  v21 = 0;
  if (dCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__PLGraphNode_fetchNodeWithUUID_inManagedObjectContext___block_invoke;
    v11[3] = &unk_1E7576680;
    v12 = dCopy;
    selfCopy = self;
    v13 = contextCopy;
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

+ (id)fetchNodeWithExternalIdentifier:(int64_t)identifier inManagedObjectContext:(id)context
{
  contextCopy = context;
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
  identifierCopy = identifier;
  selfCopy = self;
  v7 = contextCopy;
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

+ (id)fetchNodesWithExternalIdentifiers:(id)identifiers inManagedObjectContext:(id)context
{
  identifiersCopy = identifiers;
  contextCopy = context;
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

+ (id)fetchObjectIDsForNodesWithExternalIdentifiers:(id)identifiers inManagedObjectContext:(id)context
{
  identifiersCopy = identifiers;
  contextCopy = context;
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

+ (id)insertGraphNodeInContext:(id)context withPrimaryLabel:(id)label
{
  v27 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  labelCopy = label;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:470 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v7 = +[PLGraphNode entityName];
  v8 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v7, contextCopy, 0);

  if (labelCopy)
  {
    [v8 setPrimaryLabel:labelCopy];
  }

  nodeContainerClass = [v8 nodeContainerClass];
  requiredNodeValueCodes = [nodeContainerClass requiredNodeValueCodes];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [requiredNodeValueCodes countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(requiredNodeValueCodes);
        }

        v15 = [nodeContainerClass defaultValueForRequiredNodeValueCode:objc_msgSend(*(*(&v22 + 1) + 8 * v14) forNode:{"intValue"), v8}];
        owningObject = [v15 owningObject];

        if (owningObject != v8)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:483 description:{@"Invalid parameter not satisfying: %@", @"value.owningObject == node"}];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [requiredNodeValueCodes countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  return v8;
}

+ (id)_fetchNodeForActingObject:(id)object
{
  v24 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  if (!objectCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"actingObject"}];
  }

  managedObjectContext = [objectCopy managedObjectContext];

  if (!managedObjectContext)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"actingObject.managedObjectContext"}];
  }

  v7 = +[PLGraphNode fetchRequest];
  v8 = MEMORY[0x1E696AEC0];
  entity = [objectCopy entity];
  v10 = [self _actingRelationshipNameForEntity:entity];
  v11 = [v8 stringWithFormat:@"%@", v10];

  objectCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", v11, objectCopy];
  [v7 setPredicate:objectCopy];

  managedObjectContext2 = [objectCopy managedObjectContext];
  v21 = 0;
  v14 = [managedObjectContext2 executeFetchRequest:v7 error:&v21];
  v15 = v21;

  if (v14)
  {
    firstObject = [v14 firstObject];
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

    firstObject = 0;
  }

  return firstObject;
}

+ (id)_actingRelationshipNameForEntity:(id)entity
{
  entityCopy = entity;
  name = [entityCopy name];
  v7 = +[PLManagedAsset entityName];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    v9 = @"actingAsset";
  }

  else
  {
    name2 = [entityCopy name];
    v11 = +[PLPerson entityName];
    v12 = [name2 isEqualToString:v11];

    if (v12)
    {
      v9 = @"actingPerson";
    }

    else
    {
      name3 = [entityCopy name];
      v14 = +[PLMoment entityName];
      v15 = [name3 isEqualToString:v14];

      if (v15)
      {
        v9 = @"actingMoment";
      }

      else
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:300 description:{@"Unsupported actor entity type: %@", entityCopy}];

        v9 = 0;
      }
    }
  }

  return v9;
}

+ (void)_cleanupDanglingEdgeReferencesToDeletedNodesInManagedObjectContext:(id)context
{
  contextCopy = context;
  userInfo = [contextCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"pl_nodeIDsPendingEdgeCleanup"];

  if ([v5 count])
  {
    _edgeRelationshipNames = [self _edgeRelationshipNames];
    v7 = +[PLGraphEdge entityName];
    v8 = [self _cleanupDanglingReferencesToDeletedObjectIDs:v5 referenceRelationshipKeys:_edgeRelationshipNames targetEntityName:v7 inManagedObjectContext:contextCopy];

    if (v8)
    {
      [v5 removeAllObjects];
    }
  }
}

+ (BOOL)_cleanupDanglingReferencesToDeletedObjectIDs:(id)ds referenceRelationshipKeys:(id)keys targetEntityName:(id)name inManagedObjectContext:(id)context
{
  v71 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  keysCopy = keys;
  nameCopy = name;
  contextCopy = context;
  if ([dsCopy count])
  {
    v52 = nameCopy;
    v53 = contextCopy;
    v56 = dsCopy;
    array = [MEMORY[0x1E695DF70] array];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v51 = keysCopy;
    v14 = keysCopy;
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
          v62[5] = self;
          v20 = [dsCopy _pl_filter:v62];
          if ([v20 count])
          {
            v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", v19, v20];
            [array addObject:v21];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v16);
    }

    nameCopy = v52;
    v22 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v52];
    v23 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:array];
    [v22 setPredicate:v23];

    [v22 setFetchBatchSize:100];
    v61 = 0;
    contextCopy = v53;
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
            entity = [v32 entity];
            v34 = +[PLGraphNode entity];
            v35 = [entity isKindOfEntity:v34];

            if (v35)
            {
              [contextCopy deleteObject:v32];
              continue;
            }

            entity2 = [v32 entity];
            v37 = +[PLGraphEdge entity];
            v38 = [entity2 isKindOfEntity:v37];

            if (v38)
            {
              v39 = v32;
              sourceNode = [v39 sourceNode];
              objectID = [sourceNode objectID];
              if ([dsCopy containsObject:objectID])
              {

                goto LABEL_23;
              }

              targetNode = [v39 targetNode];
              objectID2 = [targetNode objectID];
              v44 = [dsCopy containsObject:objectID2];

              contextCopy = v53;
              if (v44)
              {
LABEL_23:
                [contextCopy deleteObject:v39];
              }

              v27 = v54;
              continue;
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v57 objects:v69 count:16];
          if (!v29)
          {
            keysCopy = v51;
            nameCopy = v52;
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

    dsCopy = v56;
    keysCopy = v51;
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

+ (id)_entityNameFromDanglingObjectRelationshipName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %@", @"relationshipName"}];
  }

  if ([nameCopy isEqualToString:@"actingAsset"])
  {
    v6 = PLManagedAsset;
LABEL_12:
    entityName = [(__objc2_class *)v6 entityName];
    goto LABEL_13;
  }

  if ([nameCopy isEqualToString:@"actingPerson"])
  {
    v6 = PLPerson;
    goto LABEL_12;
  }

  if ([nameCopy isEqualToString:@"actingMoment"])
  {
    v6 = PLMoment;
    goto LABEL_12;
  }

  if ([nameCopy isEqualToString:@"sourceNode"] || objc_msgSend(nameCopy, "isEqualToString:", @"targetNode"))
  {
    v6 = PLGraphNode;
    goto LABEL_12;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:216 description:{@"unsupported relationshipName: %@", nameCopy}];

  entityName = 0;
LABEL_13:

  return entityName;
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

+ (id)_cachedFetchEdgesOfNode:(id)node inDirection:(unint64_t)direction cachedToken:(id *)token cachedEdges:(id *)edges
{
  nodeCopy = node;
  if (!token)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"inOutCachedGenerationToken"}];

    if (edges)
    {
      goto LABEL_3;
    }

LABEL_13:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"inOutCachedEdges"}];

    goto LABEL_3;
  }

  if (!edges)
  {
    goto LABEL_13;
  }

LABEL_3:
  managedObjectContext = [nodeCopy managedObjectContext];
  v13 = [self _cachedEdgesOfNode:nodeCopy inDirection:direction cachedToken:token cachedEdges:edges];
  if (!v13)
  {
    v13 = [objc_opt_class() fetchEdgesOfNode:nodeCopy direction:direction];
    if (v13)
    {
      queryGenerationToken = [managedObjectContext queryGenerationToken];

      if (queryGenerationToken)
      {
        v16 = *edges;
        if (!*edges)
        {
          v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
          v18 = *edges;
          *edges = v17;

          queryGenerationToken2 = [managedObjectContext queryGenerationToken];
          v20 = *token;
          *token = queryGenerationToken2;

          v16 = *edges;
        }

        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:direction];
        [v16 setObject:v13 forKey:v21];
      }
    }
  }

  return v13;
}

+ (id)_cachedEdgesOfNode:(id)node inDirection:(unint64_t)direction cachedToken:(id *)token cachedEdges:(id *)edges
{
  v52 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  if (!token)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"inOutCachedGenerationToken"}];

    if (edges)
    {
      goto LABEL_3;
    }

LABEL_28:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLGraphNode.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"inOutCachedEdges"}];

    goto LABEL_3;
  }

  if (!edges)
  {
    goto LABEL_28;
  }

LABEL_3:
  managedObjectContext = [nodeCopy managedObjectContext];
  v11 = *edges;
  if (*edges)
  {
    v12 = *token;
    if (*token)
    {
      queryGenerationToken = [managedObjectContext queryGenerationToken];
      v14 = [v12 isEqual:queryGenerationToken];

      v11 = *edges;
      if ((v14 & 1) == 0)
      {
        *edges = 0;

        v15 = *token;
        *token = 0;

        v11 = *edges;
      }
    }
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:direction];
  v17 = [v11 objectForKey:v16];

  if (v17)
  {
    v18 = +[PLGraphEdge entity];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = [managedObjectContext insertedObjects];
    v19 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v48;
      v44 = direction - 1;
      v45 = direction & 0xFFFFFFFFFFFFFFFDLL;
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
          entity = [v23 entity];
          v25 = [entity isKindOfEntity:v18];

          if (v25)
          {
            v26 = [MEMORY[0x1E695DFA8] set];
            v27 = v23;
            v28 = v27;
            if (!v45)
            {
              targetNode = [v27 targetNode];
              objectID = [targetNode objectID];
              objectID2 = [nodeCopy objectID];
              v32 = [objectID isEqual:objectID2];

              v18 = v42;
              if (v32)
              {
                [v26 addObject:v28];
              }
            }

            if (v44 <= 1)
            {
              sourceNode = [v28 sourceNode];
              objectID3 = [sourceNode objectID];
              objectID4 = [nodeCopy objectID];
              v36 = [objectID3 isEqual:objectID4];

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