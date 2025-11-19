@interface REMCRMergeableOrderedSet
- (BOOL)isEqual:(id)a3;
- (NSOrderedSet)orderedSet;
- (REMCRMergeableOrderedSet)initWithCoder:(id)a3;
- (REMCRMergeableOrderedSet)initWithReplicaIDSource:(id)a3 document:(id)a4 undos:(id)a5;
- (REMCRMergeableOrderedSet)initWithReplicaIDSource:(id)a3 orderedSet:(id)a4;
- (REMCRMergeableOrderedSet)initWithReplicaIDSource:(id)a3 serializedData:(id)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mergedOrderedSetWithOrderedSet:(id)a3 error:(id *)a4;
- (id)mutableOrderedSet;
- (id)objectAtIndex:(unint64_t)a3;
- (id)serializedData;
- (unint64_t)count;
- (unint64_t)indexOfEqualObject:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateObjectsUsingBlock:(id)a3;
@end

@implementation REMCRMergeableOrderedSet

- (REMCRMergeableOrderedSet)initWithReplicaIDSource:(id)a3 document:(id)a4 undos:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = REMCRMergeableOrderedSet;
  v12 = [(REMCRMergeableOrderedSet *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_replicaIDSource, a3);
    objc_storeStrong(&v13->_document, a4);
    v14 = [v11 copy];
    undos = v13->_undos;
    v13->_undos = v14;
  }

  return v13;
}

- (REMCRMergeableOrderedSet)initWithReplicaIDSource:(id)a3 orderedSet:(id)a4
{
  v6 = a4;
  v7 = a3;
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
  [v6 enumerateObjectsUsingBlock:v15];

  [(CRDocument *)v10 setRootObject:v12];
  [(CRTTCompatibleDocument *)v10 realizeLocalChanges];
  v13 = [(REMCRMergeableOrderedSet *)self initWithReplicaIDSource:v7 document:v10];

  return v13;
}

- (REMCRMergeableOrderedSet)initWithReplicaIDSource:(id)a3 serializedData:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = +[REMReplicaIDHelper nonEditingReplicaUUID];
  v10 = [(CRDocument *)CRTTCompatibleDocument unarchiveFromData:v7 replica:v9];

  v11 = [(REMCRMergeableOrderedSet *)self initWithReplicaIDSource:v8 document:v10];
  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMCRMergeableOrderedSet *)self document];
  v6 = [v3 stringWithFormat:@"<%@: %p document: %@>", v4, self, v5];

  return v6;
}

- (NSOrderedSet)orderedSet
{
  v3 = [MEMORY[0x1E695DFA0] orderedSet];
  v4 = [(REMCRMergeableOrderedSet *)self document];
  v5 = [v4 rootObject];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__REMCRMergeableOrderedSet_orderedSet__block_invoke;
  v9[3] = &unk_1E75083F8;
  v10 = v3;
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = [MEMORY[0x1E695DFB8] orderedSetWithOrderedSet:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(REMCRMergeableOrderedSet *)self orderedSet];
      v6 = [(REMCRMergeableOrderedSet *)v4 orderedSet];
      v7 = [v5 isEqualToOrderedSet:v6];
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
  v2 = [(REMCRMergeableOrderedSet *)self document];
  v3 = [v2 rootObject];
  v4 = [v3 count];

  return v4;
}

- (id)objectAtIndex:(unint64_t)a3
{
  v4 = [(REMCRMergeableOrderedSet *)self document];
  v5 = [v4 rootObject];
  v6 = [v5 objectAtIndex:a3];

  return v6;
}

- (unint64_t)indexOfEqualObject:(id)a3
{
  v4 = a3;
  v5 = [(REMCRMergeableOrderedSet *)self document];
  v6 = [v5 rootObject];
  v7 = [v6 indexOfEqualObject:v4];

  return v7;
}

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v6 = [(REMCRMergeableOrderedSet *)self document];
  v5 = [v6 rootObject];
  [v5 enumerateObjectsUsingBlock:v4];
}

- (id)mutableOrderedSet
{
  v3 = [REMMutableCRMergeableOrderedSet alloc];
  v4 = [(REMCRMergeableOrderedSet *)self replicaIDSource];
  v5 = [(REMCRMergeableOrderedSet *)self document];
  v6 = [(REMCRMergeableOrderedSet *)self undos];
  v7 = [(REMMutableCRMergeableOrderedSet *)v3 initWithReplicaIDSource:v4 immutableDocumentToEdit:v5 undos:v6];

  return v7;
}

- (id)serializedData
{
  v2 = [(REMCRMergeableOrderedSet *)self document];
  v3 = [v2 archivedData];

  return v3;
}

- (id)mergedOrderedSetWithOrderedSet:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(REMCRMergeableOrderedSet *)self document];
  v8 = +[REMReplicaIDHelper nonEditingReplicaUUID];
  v9 = [v7 copyForReplica:v8];

  v10 = [v6 document];

  v11 = [v9 mergeWithDocument:v10];
  if (v11 == 1)
  {
    a4 = self;
  }

  else if (v11)
  {
    v14 = [REMCRMergeableOrderedSet alloc];
    v15 = [(REMCRMergeableOrderedSet *)self replicaIDSource];
    v16 = [(REMCRMergeableOrderedSet *)self undos];
    a4 = [(REMCRMergeableOrderedSet *)v14 initWithReplicaIDSource:v15 document:v9 undos:v16];
  }

  else if (a4)
  {
    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = *MEMORY[0x1E696A588];
    v20[0] = @"Failed to merge CR documents.";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *a4 = [v12 initWithDomain:@"REMCRMergeableOrderedSet" code:-1 userInfo:v13];

    a4 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return a4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_autoreleasePoolPush();
  v5 = [(REMCRMergeableOrderedSet *)self document];
  v6 = [(REMCRMergeableOrderedSet *)self document];
  v7 = [v6 replica];
  v8 = [v5 copyForReplica:v7];

  v9 = [REMCRMergeableOrderedSet alloc];
  v10 = [(REMCRMergeableOrderedSet *)self replicaIDSource];
  v11 = [v10 copy];
  v12 = [(REMCRMergeableOrderedSet *)self undos];
  v13 = [(REMCRMergeableOrderedSet *)v9 initWithReplicaIDSource:v11 document:v8 undos:v12];

  objc_autoreleasePoolPop(v4);
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMCRMergeableOrderedSet *)self replicaIDSource];
  [v4 encodeObject:v5 forKey:@"replicaIDSource"];

  v6 = [(REMCRMergeableOrderedSet *)self document];
  v7 = [v6 archivedData];

  [v4 encodeObject:v7 forKey:@"document"];
}

- (REMCRMergeableOrderedSet)initWithCoder:(id)a3
{
  v4 = a3;
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

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"replicaIDSource"];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"document"];
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