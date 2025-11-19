@interface REMMutableCRMergeableOrderedSet
- (NSString)description;
- (REMMutableCRMergeableOrderedSet)initWithReplicaIDSource:(id)a3 immutableDocumentToEdit:(id)a4 undos:(id)a5;
- (id)addObject:(id)a3;
- (id)documentToEdit;
- (id)immutableOrderedSet;
- (id)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (id)moveObjectFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (id)removeObjectAtIndex:(unint64_t)a3;
- (void)addUndoCommandsForObject:(id)a3 block:(id)a4;
- (void)replicaIDHelperDidAcquireReplicaUUID:(id)a3;
- (void)undo;
- (void)undo:(id)a3;
@end

@implementation REMMutableCRMergeableOrderedSet

- (REMMutableCRMergeableOrderedSet)initWithReplicaIDSource:(id)a3 immutableDocumentToEdit:(id)a4 undos:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = REMMutableCRMergeableOrderedSet;
  v12 = [(REMMutableCRMergeableOrderedSet *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_replicaIDSource, a3);
    objc_storeStrong(&v13->_document, a4);
    v14 = [(CRDocument *)v13->_document rootObject];
    [v14 setDelegate:v13];

    v15 = [v11 mutableCopy];
    undos = v13->_undos;
    v13->_undos = v15;

    v17 = [[REMReplicaIDHelper alloc] initWithReplicaIDSource:v9 owner:v13 replicaClockProvider:v10];
    replicaIDHelper = v13->_replicaIDHelper;
    v13->_replicaIDHelper = v17;
  }

  return v13;
}

- (id)immutableOrderedSet
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(REMMutableCRMergeableOrderedSet *)self document];
  v5 = +[REMReplicaIDHelper nonEditingReplicaUUID];
  v6 = [v4 copyForReplica:v5];

  v7 = [(REMMutableCRMergeableOrderedSet *)self replicaIDHelper];
  [v7 didCopy];

  v8 = [REMCRMergeableOrderedSet alloc];
  v9 = [(REMMutableCRMergeableOrderedSet *)self replicaIDSource];
  v10 = [(REMMutableCRMergeableOrderedSet *)self undos];
  v11 = [(REMCRMergeableOrderedSet *)v8 initWithReplicaIDSource:v9 document:v6 undos:v10];

  objc_autoreleasePoolPop(v3);

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMMutableCRMergeableOrderedSet *)self document];
  v6 = [v3 stringWithFormat:@"<%@: %p document: %@>", v4, self, v5];

  return v6;
}

- (id)documentToEdit
{
  v3 = [(REMMutableCRMergeableOrderedSet *)self replicaIDHelper];
  [v3 willEdit];

  return [(REMMutableCRMergeableOrderedSet *)self document];
}

- (id)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  [(REMMutableCRMergeableOrderedSet *)self setCurrentUndo:v7];

  v8 = objc_autoreleasePoolPush();
  v9 = [(REMMutableCRMergeableOrderedSet *)self documentToEdit];
  v10 = [v9 rootObject];
  [v10 insertObject:v6 atIndex:a4];

  objc_autoreleasePoolPop(v8);
  v11 = [(REMMutableCRMergeableOrderedSet *)self currentUndo];
  v12 = [v11 immutableCopy];

  [(REMMutableCRMergeableOrderedSet *)self setCurrentUndo:0];
  v13 = [(REMMutableCRMergeableOrderedSet *)self undos];
  [v13 addObject:v12];

  return v12;
}

- (id)addObject:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [(REMMutableCRMergeableOrderedSet *)self setCurrentUndo:v5];

  v6 = objc_autoreleasePoolPush();
  v7 = [(REMMutableCRMergeableOrderedSet *)self documentToEdit];
  v8 = [v7 rootObject];
  [v8 addObject:v4];

  objc_autoreleasePoolPop(v6);
  v9 = [(REMMutableCRMergeableOrderedSet *)self currentUndo];
  v10 = [v9 immutableCopy];

  [(REMMutableCRMergeableOrderedSet *)self setCurrentUndo:0];
  v11 = [(REMMutableCRMergeableOrderedSet *)self undos];
  [v11 addObject:v10];

  return v10;
}

- (id)removeObjectAtIndex:(unint64_t)a3
{
  v5 = objc_opt_new();
  [(REMMutableCRMergeableOrderedSet *)self setCurrentUndo:v5];

  v6 = objc_autoreleasePoolPush();
  v7 = [(REMMutableCRMergeableOrderedSet *)self documentToEdit];
  v8 = [v7 rootObject];
  [v8 removeObjectAtIndex:a3];

  objc_autoreleasePoolPop(v6);
  v9 = [(REMMutableCRMergeableOrderedSet *)self currentUndo];
  v10 = [v9 immutableCopy];

  [(REMMutableCRMergeableOrderedSet *)self setCurrentUndo:0];
  v11 = [(REMMutableCRMergeableOrderedSet *)self undos];
  [v11 addObject:v10];

  return v10;
}

- (id)moveObjectFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  v7 = objc_opt_new();
  [(REMMutableCRMergeableOrderedSet *)self setCurrentUndo:v7];

  v8 = objc_autoreleasePoolPush();
  v9 = [(REMMutableCRMergeableOrderedSet *)self documentToEdit];
  v10 = [v9 rootObject];
  [v10 moveObjectFromIndex:a3 toIndex:a4];

  objc_autoreleasePoolPop(v8);
  v11 = [(REMMutableCRMergeableOrderedSet *)self currentUndo];
  v12 = [v11 immutableCopy];

  [(REMMutableCRMergeableOrderedSet *)self setCurrentUndo:0];
  v13 = [(REMMutableCRMergeableOrderedSet *)self undos];
  [v13 addObject:v12];

  return v12;
}

- (void)undo
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [(REMMutableCRMergeableOrderedSet *)self undos];
  v5 = [v4 lastObject];

  v6 = [(REMMutableCRMergeableOrderedSet *)self undos];
  [v6 removeLastObject];

  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v5 undoBlocks];
    v8 = [v7 reverseObjectEnumerator];

    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [(REMMutableCRMergeableOrderedSet *)self documentToEdit];
          v15 = [v14 rootObject];
          (*(v13 + 16))(v13, v15);
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v8 = +[REMLog crdt];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(REMMutableCRMergeableOrderedSet *)v8 undo];
    }
  }

  objc_autoreleasePoolPop(v3);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)undo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(REMMutableCRMergeableOrderedSet *)self undos];
  v6 = [v5 containsObject:v4];

  if ((v6 & 1) == 0)
  {
    [REMMutableCRMergeableOrderedSet undo:?];
  }

  v7 = objc_autoreleasePoolPush();
  if (v4)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v4 undoBlocks];
    v9 = [v8 reverseObjectEnumerator];

    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = [(REMMutableCRMergeableOrderedSet *)self documentToEdit];
          v16 = [v15 rootObject];
          (*(v14 + 16))(v14, v16);
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v9 = +[REMLog crdt];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(REMMutableCRMergeableOrderedSet *)v9 undo];
    }
  }

  objc_autoreleasePoolPop(v7);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)addUndoCommandsForObject:(id)a3 block:(id)a4
{
  v5 = a4;
  v6 = [(REMMutableCRMergeableOrderedSet *)self currentUndo];
  [v6 addUndoBlock:v5];
}

- (void)replicaIDHelperDidAcquireReplicaUUID:(id)a3
{
  v12 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [v12 replicaUUID];
  v6 = [(REMMutableCRMergeableOrderedSet *)self document];
  v7 = [v6 copyForReplica:v5];
  [(REMMutableCRMergeableOrderedSet *)self setDocument:v7];

  v8 = [(REMMutableCRMergeableOrderedSet *)self document];
  v9 = [(REMMutableCRMergeableOrderedSet *)self replicaIDHelper];
  [v9 setReplicaClockProvider:v8];

  v10 = [(REMMutableCRMergeableOrderedSet *)self document];
  v11 = [v10 rootObject];
  [v11 setDelegate:self];

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