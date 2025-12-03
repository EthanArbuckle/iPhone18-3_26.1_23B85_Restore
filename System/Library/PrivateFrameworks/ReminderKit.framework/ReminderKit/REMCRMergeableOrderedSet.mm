@interface REMCRMergeableOrderedSet
- (BOOL)isEqual:(id)equal;
- (NSOrderedSet)orderedSet;
- (REMCRMergeableOrderedSet)initWithCoder:(id)coder;
- (REMCRMergeableOrderedSet)initWithReplicaIDSource:(id)source document:(id)document undos:(id)undos;
- (REMCRMergeableOrderedSet)initWithReplicaIDSource:(id)source orderedSet:(id)set;
- (REMCRMergeableOrderedSet)initWithReplicaIDSource:(id)source serializedData:(id)data error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mergedOrderedSetWithOrderedSet:(id)set error:(id *)error;
- (id)mutableOrderedSet;
- (id)objectAtIndex:(unint64_t)index;
- (id)serializedData;
- (unint64_t)count;
- (unint64_t)indexOfEqualObject:(id)object;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateObjectsUsingBlock:(id)block;
@end

@implementation REMCRMergeableOrderedSet

- (REMCRMergeableOrderedSet)initWithReplicaIDSource:(id)source document:(id)document undos:(id)undos
{
  sourceCopy = source;
  documentCopy = document;
  undosCopy = undos;
  v17.receiver = self;
  v17.super_class = REMCRMergeableOrderedSet;
  v12 = [(REMCRMergeableOrderedSet *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_replicaIDSource, source);
    objc_storeStrong(&v13->_document, document);
    v14 = [undosCopy copy];
    undos = v13->_undos;
    v13->_undos = v14;
  }

  return v13;
}

- (REMCRMergeableOrderedSet)initWithReplicaIDSource:(id)source orderedSet:(id)set
{
  setCopy = set;
  sourceCopy = source;
  v8 = [CRTTCompatibleDocument alloc];
  v9 = +[REMReplicaIDHelper replicaUUIDForCreation];
  v10 = [(CRDocument *)v8 initWithReplica:v9];

  v11 = [[CRTombstoneOrderedSet alloc] initWithDocument:v10];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__REMCRMergeableOrderedSet_initWithReplicaIDSource_orderedSet___block_invoke;
  v15[3] = &unk_1E75083F8;
  v16 = v11;
  v12 = v11;
  [setCopy enumerateObjectsUsingBlock:v15];

  [(CRDocument *)v10 setRootObject:v12];
  [(CRTTCompatibleDocument *)v10 realizeLocalChanges];
  v13 = [(REMCRMergeableOrderedSet *)self initWithReplicaIDSource:sourceCopy document:v10];

  return v13;
}

- (REMCRMergeableOrderedSet)initWithReplicaIDSource:(id)source serializedData:(id)data error:(id *)error
{
  dataCopy = data;
  sourceCopy = source;
  v9 = +[REMReplicaIDHelper nonEditingReplicaUUID];
  v10 = [(CRDocument *)CRTTCompatibleDocument unarchiveFromData:dataCopy replica:v9];

  v11 = [(REMCRMergeableOrderedSet *)self initWithReplicaIDSource:sourceCopy document:v10];
  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  document = [(REMCRMergeableOrderedSet *)self document];
  v6 = [v3 stringWithFormat:@"<%@: %p document: %@>", v4, self, document];

  return v6;
}

- (NSOrderedSet)orderedSet
{
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  document = [(REMCRMergeableOrderedSet *)self document];
  rootObject = [document rootObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__REMCRMergeableOrderedSet_orderedSet__block_invoke;
  v9[3] = &unk_1E75083F8;
  v10 = orderedSet;
  v6 = orderedSet;
  [rootObject enumerateObjectsUsingBlock:v9];

  v7 = [MEMORY[0x1E695DFB8] orderedSetWithOrderedSet:v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      orderedSet = [(REMCRMergeableOrderedSet *)self orderedSet];
      orderedSet2 = [(REMCRMergeableOrderedSet *)equalCopy orderedSet];
      v7 = [orderedSet isEqualToOrderedSet:orderedSet2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)count
{
  document = [(REMCRMergeableOrderedSet *)self document];
  rootObject = [document rootObject];
  v4 = [rootObject count];

  return v4;
}

- (id)objectAtIndex:(unint64_t)index
{
  document = [(REMCRMergeableOrderedSet *)self document];
  rootObject = [document rootObject];
  v6 = [rootObject objectAtIndex:index];

  return v6;
}

- (unint64_t)indexOfEqualObject:(id)object
{
  objectCopy = object;
  document = [(REMCRMergeableOrderedSet *)self document];
  rootObject = [document rootObject];
  v7 = [rootObject indexOfEqualObject:objectCopy];

  return v7;
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  document = [(REMCRMergeableOrderedSet *)self document];
  rootObject = [document rootObject];
  [rootObject enumerateObjectsUsingBlock:blockCopy];
}

- (id)mutableOrderedSet
{
  v3 = [REMMutableCRMergeableOrderedSet alloc];
  replicaIDSource = [(REMCRMergeableOrderedSet *)self replicaIDSource];
  document = [(REMCRMergeableOrderedSet *)self document];
  undos = [(REMCRMergeableOrderedSet *)self undos];
  v7 = [(REMMutableCRMergeableOrderedSet *)v3 initWithReplicaIDSource:replicaIDSource immutableDocumentToEdit:document undos:undos];

  return v7;
}

- (id)serializedData
{
  document = [(REMCRMergeableOrderedSet *)self document];
  archivedData = [document archivedData];

  return archivedData;
}

- (id)mergedOrderedSetWithOrderedSet:(id)set error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  setCopy = set;
  document = [(REMCRMergeableOrderedSet *)self document];
  v8 = +[REMReplicaIDHelper nonEditingReplicaUUID];
  v9 = [document copyForReplica:v8];

  document2 = [setCopy document];

  v11 = [v9 mergeWithDocument:document2];
  if (v11 == 1)
  {
    error = self;
  }

  else if (v11)
  {
    v14 = [REMCRMergeableOrderedSet alloc];
    replicaIDSource = [(REMCRMergeableOrderedSet *)self replicaIDSource];
    undos = [(REMCRMergeableOrderedSet *)self undos];
    error = [(REMCRMergeableOrderedSet *)v14 initWithReplicaIDSource:replicaIDSource document:v9 undos:undos];
  }

  else if (error)
  {
    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = *MEMORY[0x1E696A588];
    v20[0] = @"Failed to merge CR documents.";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *error = [v12 initWithDomain:@"REMCRMergeableOrderedSet" code:-1 userInfo:v13];

    error = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return error;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_autoreleasePoolPush();
  document = [(REMCRMergeableOrderedSet *)self document];
  document2 = [(REMCRMergeableOrderedSet *)self document];
  replica = [document2 replica];
  v8 = [document copyForReplica:replica];

  v9 = [REMCRMergeableOrderedSet alloc];
  replicaIDSource = [(REMCRMergeableOrderedSet *)self replicaIDSource];
  v11 = [replicaIDSource copy];
  undos = [(REMCRMergeableOrderedSet *)self undos];
  v13 = [(REMCRMergeableOrderedSet *)v9 initWithReplicaIDSource:v11 document:v8 undos:undos];

  objc_autoreleasePoolPop(v4);
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  replicaIDSource = [(REMCRMergeableOrderedSet *)self replicaIDSource];
  [coderCopy encodeObject:replicaIDSource forKey:@"replicaIDSource"];

  document = [(REMCRMergeableOrderedSet *)self document];
  archivedData = [document archivedData];

  [coderCopy encodeObject:archivedData forKey:@"document"];
}

- (REMCRMergeableOrderedSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = REMCRMergeableOrderedSet;
  v5 = [(REMCRMergeableOrderedSet *)&v10 init];
  if (!v5)
  {
LABEL_5:
    v5 = v5;
    v6 = v5;
    goto LABEL_6;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replicaIDSource"];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"document"];
    if (!v7)
    {

      v6 = 0;
      goto LABEL_6;
    }

    v8 = v7;
    v5 = [(REMCRMergeableOrderedSet *)v5 initWithReplicaIDSource:v6 serializedData:v7 error:0];

    goto LABEL_5;
  }

LABEL_6:

  return v6;
}

@end