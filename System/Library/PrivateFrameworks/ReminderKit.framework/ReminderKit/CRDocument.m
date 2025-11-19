@interface CRDocument
+ (CRDocument)documentWithReplica:(id)a3;
+ (CRDocument)documentWithRootObject:(id)a3 replica:(id)a4;
- (CRDocument)init;
- (CRDocument)initWithReplica:(id)a3;
- (CRDocument)initWithVersion:(id)a3 startVersion:(id)a4 rootObject:(id)a5 replica:(id)a6;
- (NSString)description;
- (id)archivedData;
- (id)clockElementListForReplicaUUID:(id)a3;
- (id)copyForReplica:(id)a3;
- (id)deltaSince:(id)a3;
- (id)localObject:(id)a3;
- (unint64_t)mergeResultForMergingWithDocument:(id)a3;
- (unint64_t)mergeWithData:(id)a3;
- (unint64_t)mergeWithDocument:(id)a3;
- (void)mergeTimestampWithDocument:(id)a3;
- (void)realizeLocalChanges;
- (void)setDocumentFor:(id)a3;
- (void)setRootObject:(id)a3;
- (void)updateGraphDocumentPointers;
- (void)updateObjectsSet;
- (void)walkGraph:(id)a3 root:(id)a4;
@end

@implementation CRDocument

- (id)clockElementListForReplicaUUID:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CRDocument *)self realizeLocalChanges];
  v5 = [(CRDocument *)self version];
  v6 = [v5 clockElementForUUID:v4];

  if (v6)
  {
    v7 = [REMClockElementList alloc];
    v12[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v9 = [(REMClockElementList *)v7 initWithCRVectorTimestampElements:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (CRDocument)documentWithReplica:(id)a3
{
  v3 = a3;
  v4 = [CRDocument alloc];
  v5 = objc_alloc_init(CRVectorTimestamp);
  v6 = [(CRDocument *)v4 initWithVersion:v5 rootObject:0 replica:v3];

  return v6;
}

+ (CRDocument)documentWithRootObject:(id)a3 replica:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [CRDocument alloc];
  v8 = objc_alloc_init(CRVectorTimestamp);
  v9 = [(CRDocument *)v7 initWithVersion:v8 rootObject:v6 replica:v5];

  return v9;
}

- (CRDocument)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(CRDocument *)self initWithReplica:v3];

  return v4;
}

- (CRDocument)initWithReplica:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CRVectorTimestamp);
  v6 = [(CRDocument *)self initWithVersion:v5 startVersion:0 rootObject:0 replica:v4];

  return v6;
}

- (CRDocument)initWithVersion:(id)a3 startVersion:(id)a4 rootObject:(id)a5 replica:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = CRDocument;
  v15 = [(CRDocument *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_version, a3);
    v17 = [(CRVectorTimestamp *)v16->_version clockForUUID:v14];
    v16->_replicaClock = v17;
    v16->_unserializedReplicaClock = v17;
    objc_storeStrong(&v16->_startVersion, a4);
    if (v13)
    {
      objc_storeStrong(&v16->_rootObject, a5);
    }

    objc_storeStrong(&v16->_replica, a6);
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    objects = v16->_objects;
    v16->_objects = v18;
  }

  return v16;
}

- (void)setRootObject:(id)a3
{
  v5 = a3;
  p_rootObject = &self->_rootObject;
  if (self->_rootObject != v5)
  {
    v7 = v5;
    objc_storeStrong(p_rootObject, a3);
    p_rootObject = [(CRDocument *)self setDocumentFor:v7];
  }

  MEMORY[0x1EEE66BE0](p_rootObject);
}

- (id)copyForReplica:(id)a3
{
  v4 = a3;
  v5 = [(CRDocument *)self archivedData];
  v6 = [CRDocument unarchiveFromData:v5 replica:v4];

  return v6;
}

- (id)archivedData
{
  [(CRDocument *)self realizeLocalChanges];

  return [CRCoderArchiver encodedDataWithDocument:self];
}

- (id)localObject:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F0DBB510])
  {
    v5 = [(CRDocument *)self objects];
    v6 = [v4 identity];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;

    v4 = v9;
  }

  return v4;
}

- (unint64_t)mergeResultForMergingWithDocument:(id)a3
{
  v4 = a3;
  v5 = [v4 startVersion];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = v5;
  v7 = [v4 startVersion];
  v8 = [(CRDocument *)self version];
  v9 = [v7 compare:v8];

  if ((v9 & 4) != 0)
  {
    v13 = 0;
  }

  else
  {
LABEL_3:
    v10 = [(CRDocument *)self version];
    v11 = [v4 version];
    v12 = [v10 compare:v11];

    if (v12)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

- (void)mergeTimestampWithDocument:(id)a3
{
  v4 = a3;
  v6 = [(CRDocument *)self version];
  v5 = [v4 version];

  [v6 mergeWith:v5];
}

- (unint64_t)mergeWithData:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CRDocument *)self replica];
  v6 = [CRDocument unarchiveFromData:v4 replica:v5];

  [(CRDocument *)self realizeLocalChanges];
  v7 = [(CRDocument *)self mergeResultForMergingWithDocument:v6];
  if (v7 == 2)
  {
    v28 = v4;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = [(CRDocument *)self objects];
    v9 = [v8 copy];
    v10 = [v9 objectEnumerator];

    v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        v14 = 0;
        do
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v29 + 1) + 8 * v14);
          v16 = [v6 objects];
          v17 = [v15 identity];
          v18 = [v16 objectForKeyedSubscript:v17];
          [v15 mergeWith:v18];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v12);
    }

    v19 = [(CRDocument *)self rootObject];
    v20 = [v6 rootObject];
    [v19 mergeWith:v20];

    [(CRDocument *)self mergeTimestampWithDocument:v6];
    v21 = [(CRDocument *)self version];
    v22 = [(CRDocument *)self replica];
    v23 = [v21 clockForUUID:v22];
    v24 = [(CRDocument *)self replicaClock];

    v4 = v28;
    if (v23 != v24)
    {
      v25 = +[REMLog crdt];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [CRDocument mergeWithData:?];
      }
    }

    [(CRDocument *)self updateGraphDocumentPointers];
    [(CRDocument *)self updateObjectsSet];
    v7 = 2;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)walkGraph:(id)a3 root:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AC70] hashTableWithOptions:514];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3042000000;
  v18 = __Block_byref_object_copy__18;
  v19 = __Block_byref_object_dispose__18;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __29__CRDocument_walkGraph_root___block_invoke;
  v11[3] = &unk_1E7509EF8;
  v8 = v7;
  v12 = v8;
  v9 = v5;
  v13 = v9;
  v14 = &v15;
  v10 = MEMORY[0x19A8FD720](v11);
  objc_storeWeak(v16 + 5, v10);
  (*(v9 + 2))(v9, v6);
  [v6 walkGraph:v10];

  _Block_object_dispose(&v15, 8);
  objc_destroyWeak(&v20);
}

uint64_t __29__CRDocument_walkGraph_root___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    if (([*(a1 + 32) containsObject:v3] & 1) == 0)
    {
      [*(a1 + 32) addObject:v6];
      (*(*(a1 + 40) + 16))();
      WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
      [v6 walkGraph:WeakRetained];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)realizeLocalChanges
{
  v11 = *MEMORY[0x1E69E9840];
  [a1 replicaClock];
  v2 = [a1 version];
  v3 = [a1 replica];
  [v2 clockForUUID:v3];
  OUTLINED_FUNCTION_1_3(&dword_19A0DB000, v4, v5, "Version clock should equal cached replica clock: %ld => %ld", v6, v7, v8, v9, 0);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)updateGraphDocumentPointers
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__CRDocument_updateGraphDocumentPointers__block_invoke;
  v4[3] = &unk_1E7509F20;
  v4[4] = self;
  v3 = [(CRDocument *)self rootObject];
  [(CRDocument *)self walkGraph:v4 root:v3];
}

- (void)updateObjectsSet
{
  v3 = [(CRDocument *)self objects];
  [v3 removeAllObjects];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__CRDocument_updateObjectsSet__block_invoke;
  v5[3] = &unk_1E7509F20;
  v5[4] = self;
  v4 = [(CRDocument *)self rootObject];
  [(CRDocument *)self walkGraph:v5 root:v4];
}

void __30__CRDocument_updateObjectsSet__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 conformsToProtocol:&unk_1F0DBB510])
  {
    v3 = *(a1 + 32);
    v4 = v7;
    v5 = [v3 objects];
    v6 = [v4 identity];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }
}

- (void)setDocumentFor:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __29__CRDocument_setDocumentFor___block_invoke;
  v3[3] = &unk_1E7509F20;
  v3[4] = self;
  [(CRDocument *)self walkGraph:v3 root:a3];
}

- (unint64_t)mergeWithDocument:(id)a3
{
  v4 = [a3 archivedData];
  v5 = [(CRDocument *)self mergeWithData:v4];

  return v5;
}

- (id)deltaSince:(id)a3
{
  v4 = a3;
  [(CRDocument *)self realizeLocalChanges];
  v5 = [(CRDocument *)self version];
  v6 = [v4 compare:v5];

  if (v6)
  {
    v8 = [(CRDocument *)self rootObject];
    v9 = [v8 deltaSince:v4 in:self];

    v10 = [CRDocument alloc];
    v11 = [(CRDocument *)self version];
    v12 = [(CRDocument *)self replica];
    v13 = [(CRDocument *)v10 initWithVersion:v11 startVersion:v4 rootObject:v9 replica:v12];

    v7 = [(CRDocument *)v13 archivedData];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CRDocument *)self version];
  v7 = [v6 shortDescription];
  v8 = [(CRDocument *)self rootObject];
  v9 = [v3 stringWithFormat:@"<%@ %p version=%@ root=%@>", v5, self, v7, v8];

  return v9;
}

- (void)mergeWithData:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a1 version];
  v3 = [a1 replica];
  [v2 clockForUUID:v3];
  [a1 replicaClock];
  OUTLINED_FUNCTION_1_3(&dword_19A0DB000, v4, v5, "Merging should not modify local replica clock: %ld => %ld", v6, v7, v8, v9, 0);

  v10 = *MEMORY[0x1E69E9840];
}

@end