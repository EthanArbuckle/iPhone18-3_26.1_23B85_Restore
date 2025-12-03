@interface REMMutableCRMergeableOrderedSet
- (NSString)description;
- (REMMutableCRMergeableOrderedSet)initWithReplicaIDSource:(id)source immutableDocumentToEdit:(id)edit undos:(id)undos;
- (id)addObject:(id)object;
- (id)documentToEdit;
- (id)immutableOrderedSet;
- (id)insertObject:(id)object atIndex:(unint64_t)index;
- (id)moveObjectFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (id)removeObjectAtIndex:(unint64_t)index;
- (void)addUndoCommandsForObject:(id)object block:(id)block;
- (void)replicaIDHelperDidAcquireReplicaUUID:(id)d;
- (void)undo;
- (void)undo:(id)undo;
@end

@implementation REMMutableCRMergeableOrderedSet

- (REMMutableCRMergeableOrderedSet)initWithReplicaIDSource:(id)source immutableDocumentToEdit:(id)edit undos:(id)undos
{
  sourceCopy = source;
  editCopy = edit;
  undosCopy = undos;
  v20.receiver = self;
  v20.super_class = REMMutableCRMergeableOrderedSet;
  v12 = [(REMMutableCRMergeableOrderedSet *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_replicaIDSource, source);
    objc_storeStrong(&v13->_document, edit);
    rootObject = [(CRDocument *)v13->_document rootObject];
    [rootObject setDelegate:v13];

    v15 = [undosCopy mutableCopy];
    undos = v13->_undos;
    v13->_undos = v15;

    v17 = [[REMReplicaIDHelper alloc] initWithReplicaIDSource:sourceCopy owner:v13 replicaClockProvider:editCopy];
    replicaIDHelper = v13->_replicaIDHelper;
    v13->_replicaIDHelper = v17;
  }

  return v13;
}

- (id)immutableOrderedSet
{
  v3 = objc_autoreleasePoolPush();
  document = [(REMMutableCRMergeableOrderedSet *)self document];
  v5 = +[REMReplicaIDHelper nonEditingReplicaUUID];
  v6 = [document copyForReplica:v5];

  replicaIDHelper = [(REMMutableCRMergeableOrderedSet *)self replicaIDHelper];
  [replicaIDHelper didCopy];

  v8 = [REMCRMergeableOrderedSet alloc];
  replicaIDSource = [(REMMutableCRMergeableOrderedSet *)self replicaIDSource];
  undos = [(REMMutableCRMergeableOrderedSet *)self undos];
  v11 = [(REMCRMergeableOrderedSet *)v8 initWithReplicaIDSource:replicaIDSource document:v6 undos:undos];

  objc_autoreleasePoolPop(v3);

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  document = [(REMMutableCRMergeableOrderedSet *)self document];
  v6 = [v3 stringWithFormat:@"<%@: %p document: %@>", v4, self, document];

  return v6;
}

- (id)documentToEdit
{
  replicaIDHelper = [(REMMutableCRMergeableOrderedSet *)self replicaIDHelper];
  [replicaIDHelper willEdit];

  return [(REMMutableCRMergeableOrderedSet *)self document];
}

- (id)insertObject:(id)object atIndex:(unint64_t)index
{
  objectCopy = object;
  v7 = objc_opt_new();
  [(REMMutableCRMergeableOrderedSet *)self setCurrentUndo:v7];

  v8 = objc_autoreleasePoolPush();
  documentToEdit = [(REMMutableCRMergeableOrderedSet *)self documentToEdit];
  rootObject = [documentToEdit rootObject];
  [rootObject insertObject:objectCopy atIndex:index];

  objc_autoreleasePoolPop(v8);
  currentUndo = [(REMMutableCRMergeableOrderedSet *)self currentUndo];
  immutableCopy = [currentUndo immutableCopy];

  [(REMMutableCRMergeableOrderedSet *)self setCurrentUndo:0];
  undos = [(REMMutableCRMergeableOrderedSet *)self undos];
  [undos addObject:immutableCopy];

  return immutableCopy;
}

- (id)addObject:(id)object
{
  objectCopy = object;
  v5 = objc_opt_new();
  [(REMMutableCRMergeableOrderedSet *)self setCurrentUndo:v5];

  v6 = objc_autoreleasePoolPush();
  documentToEdit = [(REMMutableCRMergeableOrderedSet *)self documentToEdit];
  rootObject = [documentToEdit rootObject];
  [rootObject addObject:objectCopy];

  objc_autoreleasePoolPop(v6);
  currentUndo = [(REMMutableCRMergeableOrderedSet *)self currentUndo];
  immutableCopy = [currentUndo immutableCopy];

  [(REMMutableCRMergeableOrderedSet *)self setCurrentUndo:0];
  undos = [(REMMutableCRMergeableOrderedSet *)self undos];
  [undos addObject:immutableCopy];

  return immutableCopy;
}

- (id)removeObjectAtIndex:(unint64_t)index
{
  v5 = objc_opt_new();
  [(REMMutableCRMergeableOrderedSet *)self setCurrentUndo:v5];

  v6 = objc_autoreleasePoolPush();
  documentToEdit = [(REMMutableCRMergeableOrderedSet *)self documentToEdit];
  rootObject = [documentToEdit rootObject];
  [rootObject removeObjectAtIndex:index];

  objc_autoreleasePoolPop(v6);
  currentUndo = [(REMMutableCRMergeableOrderedSet *)self currentUndo];
  immutableCopy = [currentUndo immutableCopy];

  [(REMMutableCRMergeableOrderedSet *)self setCurrentUndo:0];
  undos = [(REMMutableCRMergeableOrderedSet *)self undos];
  [undos addObject:immutableCopy];

  return immutableCopy;
}

- (id)moveObjectFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  v7 = objc_opt_new();
  [(REMMutableCRMergeableOrderedSet *)self setCurrentUndo:v7];

  v8 = objc_autoreleasePoolPush();
  documentToEdit = [(REMMutableCRMergeableOrderedSet *)self documentToEdit];
  rootObject = [documentToEdit rootObject];
  [rootObject moveObjectFromIndex:index toIndex:toIndex];

  objc_autoreleasePoolPop(v8);
  currentUndo = [(REMMutableCRMergeableOrderedSet *)self currentUndo];
  immutableCopy = [currentUndo immutableCopy];

  [(REMMutableCRMergeableOrderedSet *)self setCurrentUndo:0];
  undos = [(REMMutableCRMergeableOrderedSet *)self undos];
  [undos addObject:immutableCopy];

  return immutableCopy;
}

- (void)undo
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  undos = [(REMMutableCRMergeableOrderedSet *)self undos];
  lastObject = [undos lastObject];

  undos2 = [(REMMutableCRMergeableOrderedSet *)self undos];
  [undos2 removeLastObject];

  if (lastObject)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    undoBlocks = [lastObject undoBlocks];
    reverseObjectEnumerator = [undoBlocks reverseObjectEnumerator];

    v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          documentToEdit = [(REMMutableCRMergeableOrderedSet *)self documentToEdit];
          rootObject = [documentToEdit rootObject];
          (*(v13 + 16))(v13, rootObject);
        }

        v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    reverseObjectEnumerator = +[REMLog crdt];
    if (os_log_type_enabled(reverseObjectEnumerator, OS_LOG_TYPE_ERROR))
    {
      [(REMMutableCRMergeableOrderedSet *)reverseObjectEnumerator undo];
    }
  }

  objc_autoreleasePoolPop(v3);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)undo:(id)undo
{
  v23 = *MEMORY[0x1E69E9840];
  undoCopy = undo;
  undos = [(REMMutableCRMergeableOrderedSet *)self undos];
  v6 = [undos containsObject:undoCopy];

  if ((v6 & 1) == 0)
  {
    [REMMutableCRMergeableOrderedSet undo:?];
  }

  v7 = objc_autoreleasePoolPush();
  if (undoCopy)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    undoBlocks = [undoCopy undoBlocks];
    reverseObjectEnumerator = [undoBlocks reverseObjectEnumerator];

    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          documentToEdit = [(REMMutableCRMergeableOrderedSet *)self documentToEdit];
          rootObject = [documentToEdit rootObject];
          (*(v14 + 16))(v14, rootObject);
        }

        v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  else
  {
    reverseObjectEnumerator = +[REMLog crdt];
    if (os_log_type_enabled(reverseObjectEnumerator, OS_LOG_TYPE_ERROR))
    {
      [(REMMutableCRMergeableOrderedSet *)reverseObjectEnumerator undo];
    }
  }

  objc_autoreleasePoolPop(v7);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)addUndoCommandsForObject:(id)object block:(id)block
{
  blockCopy = block;
  currentUndo = [(REMMutableCRMergeableOrderedSet *)self currentUndo];
  [currentUndo addUndoBlock:blockCopy];
}

- (void)replicaIDHelperDidAcquireReplicaUUID:(id)d
{
  dCopy = d;
  v4 = objc_autoreleasePoolPush();
  replicaUUID = [dCopy replicaUUID];
  document = [(REMMutableCRMergeableOrderedSet *)self document];
  v7 = [document copyForReplica:replicaUUID];
  [(REMMutableCRMergeableOrderedSet *)self setDocument:v7];

  document2 = [(REMMutableCRMergeableOrderedSet *)self document];
  replicaIDHelper = [(REMMutableCRMergeableOrderedSet *)self replicaIDHelper];
  [replicaIDHelper setReplicaClockProvider:document2];

  document3 = [(REMMutableCRMergeableOrderedSet *)self document];
  rootObject = [document3 rootObject];
  [rootObject setDelegate:self];

  objc_autoreleasePoolPop(v4);
}

- (void)undo:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = +[REMLog crdt];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v4 = [a1 undos];
    v5 = 138412290;
    v6 = v4;
    _os_log_fault_impl(&dword_19A0DB000, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (![self.undos containsObject:undo]) -- Supplied undo is not found in undo stack. Normally, if the undo is obtained from this particular REMCRMergeableOrderedSet, the undo will also be present in self.undos, whose value is now: %@", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end