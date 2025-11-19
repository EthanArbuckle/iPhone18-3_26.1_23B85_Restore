@interface TTMergeableStringVersionedDocument
- (BOOL)rem_isEqual:(id)a3;
- (TTMergeableStringVersionedDocument)initWithArchive:(const void *)a3 andReplicaID:(id)a4;
- (TTMergeableStringVersionedDocument)initWithData:(id)a3 andReplicaID:(id)a4;
- (TTMergeableStringVersionedDocument)initWithMergeableString:(id)a3;
- (id)clockElementListForReplicaUUID:(id)a3;
- (id)rem_copyWithReplicaIDForNewEdits:(id)a3;
- (id)serializeCurrentVersion:(unsigned int *)a3;
- (unint64_t)mergeWithStringVersionedDocument:(id)a3;
- (void)mergeVersion:(unsigned int)a3 fromData:(id)a4;
@end

@implementation TTMergeableStringVersionedDocument

- (id)clockElementListForReplicaUUID:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TTMergeableStringVersionedDocument *)self mergeableString];
  [v5 generateIdsForLocalChanges];

  v6 = [(TTMergeableStringVersionedDocument *)self mergeableString];
  v7 = [v6 timestamp];

  v8 = MEMORY[0x1E695DF70];
  v9 = [v7 timestamps];
  v10 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v7 timestamps];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v22 = v7;
    v14 = 0;
    v15 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [*(*(&v23 + 1) + 8 * i) clockElementForUUID:v4];
        v18 = v17 != 0;
        if (!v17)
        {
          v17 = objc_alloc_init(TTVectorTimestampElement);
        }

        v14 |= v18;
        [v10 addObject:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);

    if (v14)
    {
      v19 = [[REMClockElementList alloc] initWithTTVectorTimestampElements:v10];
    }

    else
    {
      v19 = 0;
    }

    v7 = v22;
  }

  else
  {

    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)rem_copyWithReplicaIDForNewEdits:(id)a3
{
  v4 = a3;
  v5 = [(TTVersionedDocument *)self serialize];
  v6 = [[TTMergeableStringVersionedDocument alloc] initWithData:v5 andReplicaID:v4];

  return v6;
}

- (BOOL)rem_isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(TTMergeableStringVersionedDocument *)self mergeableString];
      v8 = [(TTMergeableStringVersionedDocument *)v6 mergeableString];
      if (v7 == v8)
      {
        v11 = 1;
      }

      else
      {
        v9 = [(TTMergeableStringVersionedDocument *)self mergeableString];
        v10 = [(TTMergeableStringVersionedDocument *)v6 mergeableString];
        v11 = [v9 isEqual:v10];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

- (TTMergeableStringVersionedDocument)initWithData:(id)a3 andReplicaID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = TTMergeableStringVersionedDocument;
  v8 = [(TTMergeableStringVersionedDocument *)&v12 init];
  if (v8)
  {
    v9 = [(TTMergeableString *)[TTMergeableAttributedString alloc] initWithReplicaID:v7];
    mergeableString = v8->_mergeableString;
    v8->_mergeableString = v9;

    [(TTVersionedDocument *)v8 loadData:v6];
  }

  return v8;
}

- (TTMergeableStringVersionedDocument)initWithMergeableString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TTMergeableStringVersionedDocument;
  v6 = [(TTMergeableStringVersionedDocument *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mergeableString, a3);
    [(TTVersionedDocument *)v7 loadData:0];
  }

  return v7;
}

- (TTMergeableStringVersionedDocument)initWithArchive:(const void *)a3 andReplicaID:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = TTMergeableStringVersionedDocument;
  v7 = [(TTMergeableStringVersionedDocument *)&v11 init];
  if (v7)
  {
    v8 = [(TTMergeableString *)[TTMergeableAttributedString alloc] initWithReplicaID:v6];
    mergeableString = v7->_mergeableString;
    v7->_mergeableString = v8;

    [(TTVersionedDocument *)v7 loadArchive:a3];
  }

  return v7;
}

- (unint64_t)mergeWithStringVersionedDocument:(id)a3
{
  v4 = a3;
  v5 = [(TTMergeableStringVersionedDocument *)self mergeableString];
  v6 = [v4 mergeableString];
  v7 = [v5 mergeWithString:v6];

  if (v7)
  {
    v9.receiver = self;
    v9.super_class = TTMergeableStringVersionedDocument;
    [(TTVersionedDocument *)&v9 mergeWithVersionedDocument:v4];
  }

  return v7;
}

- (void)mergeVersion:(unsigned int)a3 fromData:(id)a4
{
  v7 = a4;
  v5 = [(TTMergeableString *)[TTMergeableAttributedString alloc] initWithData:v7 andReplicaID:0];
  if (v5)
  {
    v6 = [(TTMergeableStringVersionedDocument *)self mergeableString];
    [v6 mergeWithString:v5];
  }
}

- (id)serializeCurrentVersion:(unsigned int *)a3
{
  *a3 = +[TTMergeableStringVersionedDocument serializationVersion];
  v4 = [(TTMergeableStringVersionedDocument *)self mergeableString];
  v5 = [v4 serialize];

  return v5;
}

@end