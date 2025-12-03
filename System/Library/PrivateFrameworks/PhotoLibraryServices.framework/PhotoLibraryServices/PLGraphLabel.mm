@interface PLGraphLabel
+ (BOOL)_needsLabelUpdateCheckFromGlobalValues:(id)values;
+ (BOOL)labelableObject:(id)object hasLabel:(id)label;
+ (BOOL)labelableObject:(id)object hasLabelWithCode:(int)code;
+ (id)_assignmentForLabel:(id)label onLabelableObject:(id)object createIfMissing:(BOOL)missing;
+ (id)_fetchExternalIdentifiersHavingLabel:(id)label forEntityClass:(Class)class;
+ (id)_generateBitsetUsingFetchForLabel:(id)label forClass:(Class)class;
+ (id)_generateBitsetUsingObjectGraphFromPrimaryLabelsKey:(id)key additionalLabelsKey:(id)labelsKey forLabel:(id)label;
+ (id)_insertBuiltInLabelWithCode:(int)code inManagedObjectContext:(id)context;
+ (id)_insertLabelWithAlias:(id)alias inManagedObjectContext:(id)context;
+ (id)additionalLabelsFromLabelableObject:(id)object;
+ (id)fetchBuiltInLabelWithCode:(int)code inContext:(id)context;
+ (id)fetchLabelWithAlias:(id)alias inContext:(id)context createIfMissing:(BOOL)missing;
+ (void)addLabel:(id)label toLabelableObject:(id)object;
+ (void)ensureLabelsAreUpdatedInContext:(id)context;
+ (void)removeLabel:(id)label fromLabelableObject:(id)object;
+ (void)setAdditionalLabels:(id)labels onLabelableObject:(id)object;
+ (void)setPrimaryLabel:(id)label onLabelableObject:(id)object;
- (BOOL)_removeFromAdditionalLabelsOnAllObjectsWithError:(id *)error assignmentEntityName:(id)name;
- (BOOL)removeFromAdditionalLabelsOnAllEdgesWithError:(id *)error;
- (BOOL)removeFromAdditionalLabelsOnAllNodesWithError:(id *)error;
- (BOOL)validateForDelete:(id *)delete;
- (PLGraphBitset)edgeExternalIdentifiersHavingLabel;
- (PLGraphBitset)nodeExternalIdentifiersHavingLabel;
- (id)debugDescription;
- (void)clearBitsetData;
- (void)handleAddOrRemoveOfBitsetTrackedObject:(id)object isAdd:(BOOL)add;
- (void)willSave;
@end

@implementation PLGraphLabel

- (id)debugDescription
{
  v3 = [[PLDescriptionBuilder alloc] initWithObject:self style:3 indent:0];
  objectID = [(PLGraphLabel *)self objectID];
  [(PLDescriptionBuilder *)v3 appendName:@"objectID" object:objectID];

  code = [(PLGraphLabel *)self code];
  if (code > 1101)
  {
    if (code > 1299)
    {
      if (code > 1400)
      {
        if (code == 1401)
        {
          v6 = @"MomentThemeNoThemes";
          goto LABEL_37;
        }

        if (code == 2000)
        {
          v6 = @"Actor";
          goto LABEL_37;
        }
      }

      else
      {
        if (code == 1300)
        {
          v6 = @"GeneratedAssetDescription";
          goto LABEL_37;
        }

        if (code == 1400)
        {
          v6 = @"MomentTheme";
          goto LABEL_37;
        }
      }
    }

    else if (code > 1199)
    {
      if (code == 1200)
      {
        v6 = @"SmallDetectedFace";
        goto LABEL_37;
      }

      if (code == 1201)
      {
        v6 = @"LargeDetectedFace";
        goto LABEL_37;
      }
    }

    else
    {
      if (code == 1102)
      {
        v6 = @"SearchEntityPersonRelationMe";
        goto LABEL_37;
      }

      if (code == 1103)
      {
        v6 = @"SearchEntityPersonRelationSelf";
        goto LABEL_37;
      }
    }

    goto LABEL_35;
  }

  if (code <= 1002)
  {
    if (code)
    {
      if (code == 1000)
      {
        v6 = @"SocialGroup";
        goto LABEL_37;
      }

      if (code == 1001)
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
    if (code <= 1099)
    {
      if (code == 1003)
      {
        v6 = @"SocialGroupKeyAssetUserPicked";
        goto LABEL_37;
      }

      if (code == 1004)
      {
        v6 = @"SocialGroupExclusiveAsset";
        goto LABEL_37;
      }

LABEL_35:
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown code: %u", code];
      goto LABEL_37;
    }

    if (code == 1100)
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

  build = [(PLDescriptionBuilder *)v3 build];

  return build;
}

- (BOOL)removeFromAdditionalLabelsOnAllEdgesWithError:(id *)error
{
  v5 = +[PLGraphEdgeAdditionalLabelAssignment entityName];
  LOBYTE(error) = [(PLGraphLabel *)self _removeFromAdditionalLabelsOnAllObjectsWithError:error assignmentEntityName:v5];

  return error;
}

- (BOOL)removeFromAdditionalLabelsOnAllNodesWithError:(id *)error
{
  v5 = +[PLGraphNodeAdditionalLabelAssignment entityName];
  LOBYTE(error) = [(PLGraphLabel *)self _removeFromAdditionalLabelsOnAllObjectsWithError:error assignmentEntityName:v5];

  return error;
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

- (void)handleAddOrRemoveOfBitsetTrackedObject:(id)object isAdd:(BOOL)add
{
  addCopy = add;
  v13 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    nodeExternalIdentifiersHavingLabel = [(PLGraphLabel *)self nodeExternalIdentifiersHavingLabel];
    v8 = @"nodeExternalIdentifierDataHavingLabel";
    if (nodeExternalIdentifiersHavingLabel)
    {
LABEL_3:
      [nodeExternalIdentifiersHavingLabel setBit:addCopy atIndex:{objc_msgSend(objectCopy, "externalIdentifier")}];
      data = [MEMORY[0x1E695DEF0] data];
      [(PLManagedObject *)self pl_setValue:data forKey:v8 valueDidChangeHandler:0];

      goto LABEL_8;
    }
  }

  else
  {
    nodeExternalIdentifiersHavingLabel = [(PLGraphLabel *)self edgeExternalIdentifiersHavingLabel];
    v8 = @"edgeExternalIdentifierDataHavingLabel";
    if (nodeExternalIdentifiersHavingLabel)
    {
      goto LABEL_3;
    }
  }

  v10 = PLBackendGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = objectCopy;
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

- (BOOL)validateForDelete:(id *)delete
{
  v28.receiver = self;
  v28.super_class = PLGraphLabel;
  v5 = [(PLGraphLabel *)&v28 validateForDelete:?];
  v6 = +[PLGraphNode fetchRequest];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"primaryLabel", self];
  [v6 setPredicate:v7];

  managedObjectContext = [(PLGraphLabel *)self managedObjectContext];
  v9 = [managedObjectContext countForFetchRequest:v6 error:0];

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
    if (delete)
    {
      v11 = v11;
      *delete = v11;
    }

    v5 = 0;
  }

  v12 = +[PLGraphEdge fetchRequest];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"primaryLabel", self];
  [v12 setPredicate:v13];

  managedObjectContext2 = [(PLGraphLabel *)self managedObjectContext];
  v15 = [managedObjectContext2 countForFetchRequest:v12 error:0];

  if (v15 && v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = PLErrorCreate();
    if (delete)
    {
      v16 = v16;
      *delete = v16;
    }

    v5 = 0;
  }

  v17 = +[PLGraphNodeAdditionalLabelAssignment fetchRequest];
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"label", self];
  [v17 setPredicate:v18];

  managedObjectContext3 = [(PLGraphLabel *)self managedObjectContext];
  v20 = [managedObjectContext3 countForFetchRequest:v17 error:0];

  if (v20 && v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = PLErrorCreate();
    if (delete)
    {
      v21 = v21;
      *delete = v21;
    }

    v5 = 0;
  }

  v22 = +[PLGraphEdgeAdditionalLabelAssignment fetchRequest];
  v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"label", self];
  [v22 setPredicate:v23];

  managedObjectContext4 = [(PLGraphLabel *)self managedObjectContext];
  v25 = [managedObjectContext4 countForFetchRequest:v22 error:0];

  if (v25 && v25 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = PLErrorCreate();
    if (delete)
    {
      v26 = v26;
      *delete = v26;
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
  changedValues = [(PLGraphLabel *)self changedValues];
  v4 = [changedValues objectForKeyedSubscript:@"nodeExternalIdentifierDataHavingLabel"];

  if (v4 && self->_nodeExternalIdentifiersHavingLabel)
  {
    nodeExternalIdentifiersHavingLabel = [(PLGraphLabel *)self nodeExternalIdentifiersHavingLabel];
    encodedData = [nodeExternalIdentifiersHavingLabel encodedData];
    [(PLManagedObject *)self pl_safeSetValue:encodedData forKey:@"nodeExternalIdentifierDataHavingLabel" valueDidChangeHandler:0];
  }

  v7 = [changedValues objectForKeyedSubscript:@"edgeExternalIdentifierDataHavingLabel"];

  if (v7 && self->_edgeExternalIdentifiersHavingLabel)
  {
    edgeExternalIdentifiersHavingLabel = [(PLGraphLabel *)self edgeExternalIdentifiersHavingLabel];
    encodedData2 = [edgeExternalIdentifiersHavingLabel encodedData];
    [(PLManagedObject *)self pl_safeSetValue:encodedData2 forKey:@"edgeExternalIdentifierDataHavingLabel" valueDidChangeHandler:0];
  }
}

- (BOOL)_removeFromAdditionalLabelsOnAllObjectsWithError:(id *)error assignmentEntityName:(id)name
{
  v6 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:name];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"label", self];
  [v6 setPredicate:v7];

  v8 = [PLEnumerateAndSaveController alloc];
  managedObjectContext = [(PLGraphLabel *)self managedObjectContext];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__PLGraphLabel__removeFromAdditionalLabelsOnAllObjectsWithError_assignmentEntityName___block_invoke;
  v15[3] = &unk_1E7575B30;
  v15[4] = self;
  v10 = [(PLEnumerateAndSaveController *)v8 initWithName:@"removeFromAdditionalLabelsOnAllObjectsWithError:assignmentEntityName:" fetchRequest:v6 context:managedObjectContext options:4 generateContextBlock:v15 didFetchObjectIDsBlock:0 processResultBlock:&__block_literal_global_105582];

  v14 = 0;
  v11 = [(PLEnumerateAndSaveController *)v10 processObjectsWithError:&v14];
  v12 = v14;
  if (!v11 && error)
  {
    v12 = v12;
    *error = v12;
  }

  return v11;
}

+ (void)setPrimaryLabel:(id)label onLabelableObject:(id)object
{
  labelCopy = label;
  objectCopy = object;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__PLGraphLabel_setPrimaryLabel_onLabelableObject___block_invoke;
  v9[3] = &unk_1E7575C28;
  v10 = objectCopy;
  v11 = labelCopy;
  v7 = labelCopy;
  v8 = objectCopy;
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

+ (void)setAdditionalLabels:(id)labels onLabelableObject:(id)object
{
  labelsCopy = labels;
  objectCopy = object;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__PLGraphLabel_setAdditionalLabels_onLabelableObject___block_invoke;
  v15[3] = &unk_1E7575BD8;
  selfCopy = self;
  v8 = objectCopy;
  v16 = v8;
  v9 = [labelsCopy _pl_map:v15];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__PLGraphLabel_setAdditionalLabels_onLabelableObject___block_invoke_2;
  v12[3] = &unk_1E7575C00;
  v13 = labelsCopy;
  v14 = v8;
  v10 = v8;
  v11 = labelsCopy;
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

+ (id)additionalLabelsFromLabelableObject:(id)object
{
  additionalLabelAssignments = [object additionalLabelAssignments];
  v4 = [additionalLabelAssignments _pl_map:&__block_literal_global_135_105630];

  return v4;
}

+ (void)removeLabel:(id)label fromLabelableObject:(id)object
{
  labelCopy = label;
  objectCopy = object;
  v7 = [self _assignmentForLabel:labelCopy onLabelableObject:objectCopy createIfMissing:0];
  if (v7)
  {
    v8 = [objectCopy mutableSetValueForKey:@"additionalLabelAssignments"];
    [objectCopy willChangeValueForKey:@"additionalLabelAssignments"];
    [v8 removeObject:v7];
    [objectCopy didChangeValueForKey:@"additionalLabelAssignments"];
    managedObjectContext = [labelCopy managedObjectContext];
    [managedObjectContext deleteObject:v7];

    [labelCopy handleAddOrRemoveOfBitsetTrackedObject:objectCopy isAdd:0];
  }
}

+ (void)addLabel:(id)label toLabelableObject:(id)object
{
  labelCopy = label;
  objectCopy = object;
  v8 = labelCopy;
  v9 = objectCopy;
  if (!labelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphLabel.m" lineNumber:498 description:{@"Invalid parameter not satisfying: %@", @"label"}];

    v8 = 0;
  }

  v10 = [self _assignmentForLabel:v8 onLabelableObject:v9 createIfMissing:1];
  if ([v10 isInserted])
  {
    v11 = [v9 mutableSetValueForKey:@"additionalLabelAssignments"];
    [v9 willChangeValueForKey:@"additionalLabelAssignments"];
    [v11 addObject:v10];
    [v9 didChangeValueForKey:@"additionalLabelAssignments"];
    [labelCopy handleAddOrRemoveOfBitsetTrackedObject:v9 isAdd:1];
  }
}

+ (BOOL)labelableObject:(id)object hasLabelWithCode:(int)code
{
  additionalLabelAssignments = [object additionalLabelAssignments];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PLGraphLabel_labelableObject_hasLabelWithCode___block_invoke;
  v8[3] = &__block_descriptor_36_e46_B16__0__PLGraphEdgeAdditionalLabelAssignment_8l;
  codeCopy = code;
  v6 = [additionalLabelAssignments _pl_firstObjectPassingTest:v8];
  LOBYTE(code) = v6 != 0;

  return code;
}

BOOL __49__PLGraphLabel_labelableObject_hasLabelWithCode___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 label];
  v4 = [v3 code] == *(a1 + 32);

  return v4;
}

+ (BOOL)labelableObject:(id)object hasLabel:(id)label
{
  labelCopy = label;
  if (object)
  {
    additionalLabelAssignments = [object additionalLabelAssignments];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__PLGraphLabel_labelableObject_hasLabel___block_invoke;
    v9[3] = &unk_1E7575B08;
    v10 = labelCopy;
    v7 = [additionalLabelAssignments _pl_firstObjectPassingTest:v9];
    LOBYTE(object) = v7 != 0;
  }

  return object;
}

uint64_t __41__PLGraphLabel_labelableObject_hasLabel___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 label];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

+ (id)fetchLabelWithAlias:(id)alias inContext:(id)context createIfMissing:(BOOL)missing
{
  missingCopy = missing;
  v24 = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphLabel.m" lineNumber:365 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  if (!aliasCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLGraphLabel.m" lineNumber:366 description:{@"Invalid parameter not satisfying: %@", @"alias"}];
  }

  v11 = +[PLGraphLabel fetchRequest];
  aliasCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"alias", aliasCopy];
  [v11 setPredicate:aliasCopy];

  v21 = 0;
  v13 = [contextCopy executeFetchRequest:v11 error:&v21];
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

    firstObject = 0;
    goto LABEL_13;
  }

  firstObject = [v13 firstObject];
  if (!firstObject && missingCopy)
  {
    firstObject = [self _insertLabelWithAlias:aliasCopy inManagedObjectContext:contextCopy];
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = firstObject;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_INFO, "Inserted GraphLabel: %@", buf, 0xCu);
    }

LABEL_13:
  }

  v17 = firstObject;

  return firstObject;
}

+ (id)fetchBuiltInLabelWithCode:(int)code inContext:(id)context
{
  v4 = *&code;
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphLabel.m" lineNumber:345 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v8 = +[PLGraphLabel fetchRequest];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"code", v4];
  [v8 setPredicate:v9];

  v16 = 0;
  v10 = [contextCopy executeFetchRequest:v8 error:&v16];
  v11 = v16;
  if (v10)
  {
    firstObject = [v10 firstObject];
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

    firstObject = 0;
  }

  return firstObject;
}

+ (void)ensureLabelsAreUpdatedInContext:(id)context
{
  v46[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = [(PLManagedObject *)PLGraphLabel entityInManagedObjectContext:contextCopy];
  managedObjectClassName = [v6 managedObjectClassName];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [managedObjectClassName isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    if (!contextCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphLabel.m" lineNumber:304 description:{@"Invalid parameter not satisfying: %@", @"context"}];
    }

    v11 = [[PLGlobalValues alloc] initWithManagedObjectContext:contextCopy];
    if ([self _needsLabelUpdateCheckFromGlobalValues:v11])
    {
      v12 = +[PLGraphLabel fetchRequest];
      [v12 setResultType:2];
      v46[0] = @"code";
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
      [v12 setPropertiesToFetch:v13];

      v14 = MEMORY[0x1E695DFD8];
      v42 = 0;
      v15 = [contextCopy executeFetchRequest:v12 error:&v42];
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
                integerValue = [v26 integerValue];
                *buf = 134217984;
                v44 = integerValue;
                _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "Adding missing GraphLabel with code %ld", buf, 0xCu);
              }

              v29 = [self _insertBuiltInLabelWithCode:objc_msgSend(v26 inManagedObjectContext:{"integerValue"), contextCopy}];
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
        uUIDString = [v30 UUIDString];
        v11 = v36;
        [(PLGlobalValues *)v36 setLastUpdatedGraphLabelsAgainstPLSImageUUID:uUIDString];

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

+ (id)_assignmentForLabel:(id)label onLabelableObject:(id)object createIfMissing:(BOOL)missing
{
  missingCopy = missing;
  labelCopy = label;
  objectCopy = object;
  if (!objectCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphLabel.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"object"}];

    if (labelCopy)
    {
      goto LABEL_3;
    }

LABEL_12:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLGraphLabel.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"label"}];

    goto LABEL_3;
  }

  if (!labelCopy)
  {
    goto LABEL_12;
  }

LABEL_3:
  additionalLabelAssignments = [objectCopy additionalLabelAssignments];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __70__PLGraphLabel__assignmentForLabel_onLabelableObject_createIfMissing___block_invoke;
  v22[3] = &unk_1E7575B08;
  v12 = labelCopy;
  v23 = v12;
  v13 = [additionalLabelAssignments _pl_firstObjectPassingTest:v22];

  if (!v13 && missingCopy)
  {
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = off_1E755FF28;
    if (v14 != v15)
    {
      v16 = off_1E755FF08;
    }

    entityName = [(__objc2_class *)*v16 entityName];
    managedObjectContext = [v12 managedObjectContext];
    v13 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, managedObjectContext, 0);

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

+ (id)_generateBitsetUsingFetchForLabel:(id)label forClass:(Class)class
{
  v28 = *MEMORY[0x1E69E9840];
  labelCopy = label;
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
  v12 = [self _fetchExternalIdentifiersHavingLabel:labelCopy forEntityClass:class];

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

+ (id)_fetchExternalIdentifiersHavingLabel:(id)label forEntityClass:(Class)class
{
  v36[1] = *MEMORY[0x1E69E9840];
  labelCopy = label;
  if (objc_opt_class() == class || objc_opt_class() == class)
  {
    v11 = @"primaryLabel";
    v10 = @"additionalLabelAssignments";
    v9 = @"label";
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphLabel.m" lineNumber:123 description:{@"unexpected class passed to _fetchExternalIdentifiersHavingLabel: %@", class}];

    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  v12 = objc_autoreleasePoolPush();
  fetchRequest = [(objc_class *)class fetchRequest];
  labelCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@ OR ANY %K.%K = %@", v11, labelCopy, v10, v9, labelCopy];
  [fetchRequest setPredicate:labelCopy];

  [fetchRequest setResultType:2];
  v36[0] = @"externalIdentifier";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  [fetchRequest setPropertiesToFetch:v15];

  managedObjectContext = [labelCopy managedObjectContext];
  v32 = 0;
  v17 = [managedObjectContext executeFetchRequest:fetchRequest error:&v32];
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

+ (id)_generateBitsetUsingObjectGraphFromPrimaryLabelsKey:(id)key additionalLabelsKey:(id)labelsKey forLabel:(id)label
{
  v27 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  labelsKeyCopy = labelsKey;
  labelCopy = label;
  v10 = objc_alloc_init(PLGraphBitset);
  v11 = objc_autoreleasePoolPush();
  v12 = MEMORY[0x1E695DFA8];
  v13 = [labelCopy valueForKey:keyCopy];
  v14 = [v12 setWithSet:v13];

  v15 = [labelCopy valueForKey:labelsKeyCopy];
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

+ (id)_insertLabelWithAlias:(id)alias inManagedObjectContext:(id)context
{
  aliasCopy = alias;
  contextCopy = context;
  if (contextCopy)
  {
    if (aliasCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphLabel.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    if (aliasCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLGraphLabel.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"alias"}];

LABEL_3:
  v9 = [self insertInManagedObjectContext:contextCopy];
  [v9 pl_setValue:aliasCopy forKey:@"alias" valueDidChangeHandler:0];

  return v9;
}

+ (id)_insertBuiltInLabelWithCode:(int)code inManagedObjectContext:(id)context
{
  v4 = *&code;
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphLabel.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v8 = [self insertInManagedObjectContext:contextCopy];
  [v8 setCode:v4];

  return v8;
}

+ (BOOL)_needsLabelUpdateCheckFromGlobalValues:(id)values
{
  valuesCopy = values;
  if (!valuesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphLabel.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"globalValues"}];
  }

  v6 = PLPhotoLibraryServicesBinaryImageUUID();
  uUIDString = [v6 UUIDString];

  if (!uUIDString)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLGraphLabel.m" lineNumber:65 description:@"can't read PLS image UUID"];
  }

  lastUpdatedGraphLabelsAgainstPLSImageUUID = [valuesCopy lastUpdatedGraphLabelsAgainstPLSImageUUID];
  IsEqual = PLObjectIsEqual();

  return IsEqual ^ 1;
}

@end