@interface PLGraphNodeContainer
+ (NSSet)sortableKeys;
+ (id)changeFlagKeysForNodeContainerKey:(id)key;
+ (id)defaultValueForRequiredNodeValueCode:(int)code forNode:(id)node;
+ (id)newNodeContainerWithManagedObjectContext:(id)context;
+ (id)newNodeContainerWithNode:(id)node;
+ (id)newNodeContainerWithNode:(id)node containerClass:(Class)class;
+ (id)nodeContainerKeysByChangeFlagKey;
+ (void)validateAllKnownSubclassesWithManagedObjectContext:(id)context;
+ (void)willSaveWithNode:(id)node;
- (NSString)uuid;
- (PLGraphNodeContainer)initWithNode:(id)node;
- (int64_t)externalIdentifier;
- (signed)cloudDeleteState;
- (signed)cloudLocalState;
- (void)setCloudDeleteState:(signed __int16)state;
- (void)setCloudLocalState:(signed __int16)state;
- (void)setUuid:(id)uuid;
- (void)updateChangeFlagsForNodeContainerKey:(id)key;
@end

@implementation PLGraphNodeContainer

- (void)updateChangeFlagsForNodeContainerKey:(id)key
{
  keyCopy = key;
  changeFlagsKeysByNodeContainerKey = [objc_opt_class() changeFlagsKeysByNodeContainerKey];
  v6 = [changeFlagsKeysByNodeContainerKey objectForKeyedSubscript:keyCopy];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PLGraphNodeContainer_updateChangeFlagsForNodeContainerKey___block_invoke;
  v7[3] = &unk_1E7566118;
  v7[4] = self;
  [v6 enumerateObjectsUsingBlock:v7];
}

void __61__PLGraphNodeContainer_updateChangeFlagsForNodeContainerKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 sourceNode];
  v6 = [v5 valueForKey:v4];
  v7 = [v6 integerValue];

  v9 = [*(a1 + 32) sourceNode];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:(v7 + 1)];
  [v9 setValue:v8 forKey:v4];
}

- (void)setCloudDeleteState:(signed __int16)state
{
  stateCopy = state;
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  [sourceNode setCloudDeleteState:stateCopy];
}

- (signed)cloudDeleteState
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  cloudDeleteState = [sourceNode cloudDeleteState];

  return cloudDeleteState;
}

- (void)setCloudLocalState:(signed __int16)state
{
  stateCopy = state;
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  [sourceNode setCloudLocalState:stateCopy];
}

- (signed)cloudLocalState
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  cloudLocalState = [sourceNode cloudLocalState];

  return cloudLocalState;
}

- (void)setUuid:(id)uuid
{
  uuidCopy = uuid;
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  [sourceNode setUuid:uuidCopy];
}

- (NSString)uuid
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  uuid = [sourceNode uuid];

  return uuid;
}

- (int64_t)externalIdentifier
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  externalIdentifier = [sourceNode externalIdentifier];

  return externalIdentifier;
}

- (PLGraphNodeContainer)initWithNode:(id)node
{
  nodeCopy = node;
  v10.receiver = self;
  v10.super_class = PLGraphNodeContainer;
  v7 = [(PLGraphNodeContainer *)&v10 init];
  if (v7)
  {
    if (!nodeCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"PLGraphNodeContainer.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"node"}];
    }

    objc_storeStrong(&v7->_sourceNode, node);
  }

  return v7;
}

+ (id)newNodeContainerWithManagedObjectContext:(id)context
{
  contextCopy = context;
  IsAbstract = _PFThrowMethodIsAbstract();
  [(PLGraphNodeContainer *)IsAbstract validateAllKnownSubclassesWithManagedObjectContext:v5, v6];
  return result;
}

+ (void)validateAllKnownSubclassesWithManagedObjectContext:(id)context
{
  contextCopy = context;
  objc_opt_class();
  v5 = contextCopy;
  v4 = contextCopy;
  PFObjc_enumerateSubclassesForHeader();
}

void __75__PLGraphNodeContainer_validateAllKnownSubclassesWithManagedObjectContext___block_invoke(uint64_t a1, Class aClass)
{
  v4 = NSStringFromClass(aClass);
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__PLGraphNodeContainer_validateAllKnownSubclassesWithManagedObjectContext___block_invoke_2;
  v7[3] = &unk_1E756CBB0;
  v10 = aClass;
  v8 = v5;
  v9 = v4;
  v6 = v4;
  [v8 performBlockAndWait:v7];
}

void __75__PLGraphNodeContainer_validateAllKnownSubclassesWithManagedObjectContext___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v23 = [*(a1 + 48) newNodeContainerWithManagedObjectContext:*(a1 + 32)];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [*(a1 + 48) requiredNodeValueCodes];
  v2 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v2)
  {
    v3 = v2;
    v22 = *v26;
    v20 = *MEMORY[0x1E695D930];
    do
    {
      v4 = 0;
      do
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v25 + 1) + 8 * v4);
        v6 = MEMORY[0x1E695D5E0];
        v7 = +[PLGraphNodeValue entityName];
        v8 = [v6 fetchRequestWithEntityName:v7];

        v9 = MEMORY[0x1E696AB28];
        v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"nameCode", objc_msgSend(v5, "intValue")];
        v29[0] = v10;
        v11 = MEMORY[0x1E696AE18];
        v12 = [v23 sourceNode];
        v13 = [v11 predicateWithFormat:@"%K = %@", @"node", v12];
        v29[1] = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
        v15 = [v9 andPredicateWithSubpredicates:v14];
        [v8 setPredicate:v15];

        v16 = *(a1 + 32);
        v24 = 0;
        v17 = [v16 executeFetchRequest:v8 error:&v24];
        v18 = v24;
        v19 = [v17 count];

        if (!v19)
        {
          [MEMORY[0x1E695DF30] raise:v20 format:{@"failed validation for class %@ error: %@", *(a1 + 40), v18}];
        }

        ++v4;
      }

      while (v3 != v4);
      v3 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v3);
  }
}

+ (id)defaultValueForRequiredNodeValueCode:(int)code forNode:(id)node
{
  v4 = *&code;
  nodeCopy = node;
  managedObjectContext = [nodeCopy managedObjectContext];
  v7 = [(PLManagedObject *)PLGraphNodeValue insertInManagedObjectContext:managedObjectContext];

  [v7 setNode:nodeCopy];
  [v7 setNameCode:v4];

  return v7;
}

+ (id)nodeContainerKeysByChangeFlagKey
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  changeFlagsKeysByNodeContainerKey = [self changeFlagsKeysByNodeContainerKey];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PLGraphNodeContainer_nodeContainerKeysByChangeFlagKey__block_invoke;
  v7[3] = &unk_1E75784C8;
  v5 = v3;
  v8 = v5;
  [changeFlagsKeysByNodeContainerKey enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __56__PLGraphNodeContainer_nodeContainerKeysByChangeFlagKey__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PLGraphNodeContainer_nodeContainerKeysByChangeFlagKey__block_invoke_2;
  v7[3] = &unk_1E756C9F8;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a3 enumerateObjectsUsingBlock:v7];
}

void __56__PLGraphNodeContainer_nodeContainerKeysByChangeFlagKey__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }

  [v3 addObject:*(a1 + 40)];
}

+ (id)changeFlagKeysForNodeContainerKey:(id)key
{
  keyCopy = key;
  changeFlagsKeysByNodeContainerKey = [self changeFlagsKeysByNodeContainerKey];
  v6 = [changeFlagsKeysByNodeContainerKey objectForKeyedSubscript:keyCopy];

  return v6;
}

+ (NSSet)sortableKeys
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"uuid";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (void)willSaveWithNode:(id)node
{
  nodeCopy = node;
  if ([self needsConstraintConflictResolutionForNode:?])
  {
    [self resolveConstraintConflictsForNode:nodeCopy];
  }
}

+ (id)newNodeContainerWithNode:(id)node
{
  nodeCopy = node;
  v5 = [self newNodeContainerWithNode:nodeCopy containerClass:{objc_msgSend(nodeCopy, "nodeContainerClass")}];

  return v5;
}

+ (id)newNodeContainerWithNode:(id)node containerClass:(Class)class
{
  nodeCopy = node;
  if (!class)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLGraphNodeContainer.m" lineNumber:35 description:{@"Couldn't find container class for node: %@", nodeCopy}];
  }

  v8 = [[(objc_class *)class alloc] initWithNode:nodeCopy];

  return v8;
}

@end