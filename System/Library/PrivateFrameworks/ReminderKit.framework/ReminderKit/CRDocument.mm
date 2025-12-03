@interface CRDocument
+ (CRDocument)documentWithReplica:(id)replica;
+ (CRDocument)documentWithRootObject:(id)object replica:(id)replica;
- (CRDocument)init;
- (CRDocument)initWithReplica:(id)replica;
- (CRDocument)initWithVersion:(id)version startVersion:(id)startVersion rootObject:(id)object replica:(id)replica;
- (NSString)description;
- (id)archivedData;
- (id)clockElementListForReplicaUUID:(id)d;
- (id)copyForReplica:(id)replica;
- (id)deltaSince:(id)since;
- (id)localObject:(id)object;
- (unint64_t)mergeResultForMergingWithDocument:(id)document;
- (unint64_t)mergeWithData:(id)data;
- (unint64_t)mergeWithDocument:(id)document;
- (void)mergeTimestampWithDocument:(id)document;
- (void)realizeLocalChanges;
- (void)setDocumentFor:(id)for;
- (void)setRootObject:(id)object;
- (void)updateGraphDocumentPointers;
- (void)updateObjectsSet;
- (void)walkGraph:(id)graph root:(id)root;
@end

@implementation CRDocument

- (id)clockElementListForReplicaUUID:(id)d
{
  v12[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  [(CRDocument *)self realizeLocalChanges];
  version = [(CRDocument *)self version];
  v6 = [version clockElementForUUID:dCopy];

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

+ (CRDocument)documentWithReplica:(id)replica
{
  replicaCopy = replica;
  v4 = [CRDocument alloc];
  v5 = objc_alloc_init(CRVectorTimestamp);
  v6 = [(CRDocument *)v4 initWithVersion:v5 rootObject:0 replica:replicaCopy];

  return v6;
}

+ (CRDocument)documentWithRootObject:(id)object replica:(id)replica
{
  replicaCopy = replica;
  objectCopy = object;
  v7 = [CRDocument alloc];
  v8 = objc_alloc_init(CRVectorTimestamp);
  v9 = [(CRDocument *)v7 initWithVersion:v8 rootObject:objectCopy replica:replicaCopy];

  return v9;
}

- (CRDocument)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(CRDocument *)self initWithReplica:uUID];

  return v4;
}

- (CRDocument)initWithReplica:(id)replica
{
  replicaCopy = replica;
  v5 = objc_alloc_init(CRVectorTimestamp);
  v6 = [(CRDocument *)self initWithVersion:v5 startVersion:0 rootObject:0 replica:replicaCopy];

  return v6;
}

- (CRDocument)initWithVersion:(id)version startVersion:(id)startVersion rootObject:(id)object replica:(id)replica
{
  versionCopy = version;
  startVersionCopy = startVersion;
  objectCopy = object;
  replicaCopy = replica;
  v21.receiver = self;
  v21.super_class = CRDocument;
  v15 = [(CRDocument *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_version, version);
    v17 = [(CRVectorTimestamp *)v16->_version clockForUUID:replicaCopy];
    v16->_replicaClock = v17;
    v16->_unserializedReplicaClock = v17;
    objc_storeStrong(&v16->_startVersion, startVersion);
    if (objectCopy)
    {
      objc_storeStrong(&v16->_rootObject, object);
    }

    objc_storeStrong(&v16->_replica, replica);
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    objects = v16->_objects;
    v16->_objects = v18;
  }

  return v16;
}

- (void)setRootObject:(id)object
{
  objectCopy = object;
  p_rootObject = &self->_rootObject;
  if (self->_rootObject != objectCopy)
  {
    v7 = objectCopy;
    objc_storeStrong(p_rootObject, object);
    p_rootObject = [(CRDocument *)self setDocumentFor:v7];
  }

  MEMORY[0x1EEE66BE0](p_rootObject);
}

- (id)copyForReplica:(id)replica
{
  replicaCopy = replica;
  archivedData = [(CRDocument *)self archivedData];
  v6 = [CRDocument unarchiveFromData:archivedData replica:replicaCopy];

  return v6;
}

- (id)archivedData
{
  [(CRDocument *)self realizeLocalChanges];

  return [CRCoderArchiver encodedDataWithDocument:self];
}

- (id)localObject:(id)object
{
  objectCopy = object;
  if ([objectCopy conformsToProtocol:&unk_1F0DBB510])
  {
    objects = [(CRDocument *)self objects];
    identity = [objectCopy identity];
    v7 = [objects objectForKeyedSubscript:identity];

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = objectCopy;
    }

    v9 = v8;

    objectCopy = v9;
  }

  return objectCopy;
}

- (unint64_t)mergeResultForMergingWithDocument:(id)document
{
  documentCopy = document;
  startVersion = [documentCopy startVersion];
  if (!startVersion)
  {
    goto LABEL_3;
  }

  v6 = startVersion;
  startVersion2 = [documentCopy startVersion];
  version = [(CRDocument *)self version];
  v9 = [startVersion2 compare:version];

  if ((v9 & 4) != 0)
  {
    v13 = 0;
  }

  else
  {
LABEL_3:
    version2 = [(CRDocument *)self version];
    version3 = [documentCopy version];
    v12 = [version2 compare:version3];

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

- (void)mergeTimestampWithDocument:(id)document
{
  documentCopy = document;
  version = [(CRDocument *)self version];
  version2 = [documentCopy version];

  [version mergeWith:version2];
}

- (unint64_t)mergeWithData:(id)data
{
  v34 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  replica = [(CRDocument *)self replica];
  v6 = [CRDocument unarchiveFromData:dataCopy replica:replica];

  [(CRDocument *)self realizeLocalChanges];
  v7 = [(CRDocument *)self mergeResultForMergingWithDocument:v6];
  if (v7 == 2)
  {
    v28 = dataCopy;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    objects = [(CRDocument *)self objects];
    v9 = [objects copy];
    objectEnumerator = [v9 objectEnumerator];

    v11 = [objectEnumerator countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(objectEnumerator);
          }

          v15 = *(*(&v29 + 1) + 8 * v14);
          objects2 = [v6 objects];
          identity = [v15 identity];
          v18 = [objects2 objectForKeyedSubscript:identity];
          [v15 mergeWith:v18];

          ++v14;
        }

        while (v12 != v14);
        v12 = [objectEnumerator countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v12);
    }

    rootObject = [(CRDocument *)self rootObject];
    rootObject2 = [v6 rootObject];
    [rootObject mergeWith:rootObject2];

    [(CRDocument *)self mergeTimestampWithDocument:v6];
    version = [(CRDocument *)self version];
    replica2 = [(CRDocument *)self replica];
    v23 = [version clockForUUID:replica2];
    replicaClock = [(CRDocument *)self replicaClock];

    dataCopy = v28;
    if (v23 != replicaClock)
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

- (void)walkGraph:(id)graph root:(id)root
{
  graphCopy = graph;
  rootCopy = root;
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
  v9 = graphCopy;
  v13 = v9;
  v14 = &v15;
  v10 = MEMORY[0x19A8FD720](v11);
  objc_storeWeak(v16 + 5, v10);
  (*(v9 + 2))(v9, rootCopy);
  [rootCopy walkGraph:v10];

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
  [self replicaClock];
  version = [self version];
  replica = [self replica];
  [version clockForUUID:replica];
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
  rootObject = [(CRDocument *)self rootObject];
  [(CRDocument *)self walkGraph:v4 root:rootObject];
}

- (void)updateObjectsSet
{
  objects = [(CRDocument *)self objects];
  [objects removeAllObjects];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__CRDocument_updateObjectsSet__block_invoke;
  v5[3] = &unk_1E7509F20;
  v5[4] = self;
  rootObject = [(CRDocument *)self rootObject];
  [(CRDocument *)self walkGraph:v5 root:rootObject];
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

- (void)setDocumentFor:(id)for
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __29__CRDocument_setDocumentFor___block_invoke;
  v3[3] = &unk_1E7509F20;
  v3[4] = self;
  [(CRDocument *)self walkGraph:v3 root:for];
}

- (unint64_t)mergeWithDocument:(id)document
{
  archivedData = [document archivedData];
  v5 = [(CRDocument *)self mergeWithData:archivedData];

  return v5;
}

- (id)deltaSince:(id)since
{
  sinceCopy = since;
  [(CRDocument *)self realizeLocalChanges];
  version = [(CRDocument *)self version];
  v6 = [sinceCopy compare:version];

  if (v6)
  {
    rootObject = [(CRDocument *)self rootObject];
    v9 = [rootObject deltaSince:sinceCopy in:self];

    v10 = [CRDocument alloc];
    version2 = [(CRDocument *)self version];
    replica = [(CRDocument *)self replica];
    v13 = [(CRDocument *)v10 initWithVersion:version2 startVersion:sinceCopy rootObject:v9 replica:replica];

    archivedData = [(CRDocument *)v13 archivedData];
  }

  else
  {
    archivedData = 0;
  }

  return archivedData;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  version = [(CRDocument *)self version];
  shortDescription = [version shortDescription];
  rootObject = [(CRDocument *)self rootObject];
  v9 = [v3 stringWithFormat:@"<%@ %p version=%@ root=%@>", v5, self, shortDescription, rootObject];

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