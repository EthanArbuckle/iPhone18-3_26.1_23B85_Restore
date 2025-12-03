@interface TTMergeableStringVersionedDocument
- (BOOL)rem_isEqual:(id)equal;
- (TTMergeableStringVersionedDocument)initWithArchive:(const void *)archive andReplicaID:(id)d;
- (TTMergeableStringVersionedDocument)initWithData:(id)data andReplicaID:(id)d;
- (TTMergeableStringVersionedDocument)initWithMergeableString:(id)string;
- (id)clockElementListForReplicaUUID:(id)d;
- (id)rem_copyWithReplicaIDForNewEdits:(id)edits;
- (id)serializeCurrentVersion:(unsigned int *)version;
- (unint64_t)mergeWithStringVersionedDocument:(id)document;
- (void)mergeVersion:(unsigned int)version fromData:(id)data;
@end

@implementation TTMergeableStringVersionedDocument

- (id)clockElementListForReplicaUUID:(id)d
{
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  mergeableString = [(TTMergeableStringVersionedDocument *)self mergeableString];
  [mergeableString generateIdsForLocalChanges];

  mergeableString2 = [(TTMergeableStringVersionedDocument *)self mergeableString];
  timestamp = [mergeableString2 timestamp];

  v8 = MEMORY[0x1E695DF70];
  timestamps = [timestamp timestamps];
  v10 = [v8 arrayWithCapacity:{objc_msgSend(timestamps, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  timestamps2 = [timestamp timestamps];
  v12 = [timestamps2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v22 = timestamp;
    v14 = 0;
    v15 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(timestamps2);
        }

        v17 = [*(*(&v23 + 1) + 8 * i) clockElementForUUID:dCopy];
        v18 = v17 != 0;
        if (!v17)
        {
          v17 = objc_alloc_init(TTVectorTimestampElement);
        }

        v14 |= v18;
        [v10 addObject:v17];
      }

      v13 = [timestamps2 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

    timestamp = v22;
  }

  else
  {

    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)rem_copyWithReplicaIDForNewEdits:(id)edits
{
  editsCopy = edits;
  serialize = [(TTVersionedDocument *)self serialize];
  v6 = [[TTMergeableStringVersionedDocument alloc] initWithData:serialize andReplicaID:editsCopy];

  return v6;
}

- (BOOL)rem_isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mergeableString = [(TTMergeableStringVersionedDocument *)self mergeableString];
      mergeableString2 = [(TTMergeableStringVersionedDocument *)v6 mergeableString];
      if (mergeableString == mergeableString2)
      {
        v11 = 1;
      }

      else
      {
        mergeableString3 = [(TTMergeableStringVersionedDocument *)self mergeableString];
        mergeableString4 = [(TTMergeableStringVersionedDocument *)v6 mergeableString];
        v11 = [mergeableString3 isEqual:mergeableString4];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

- (TTMergeableStringVersionedDocument)initWithData:(id)data andReplicaID:(id)d
{
  dataCopy = data;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = TTMergeableStringVersionedDocument;
  v8 = [(TTMergeableStringVersionedDocument *)&v12 init];
  if (v8)
  {
    v9 = [(TTMergeableString *)[TTMergeableAttributedString alloc] initWithReplicaID:dCopy];
    mergeableString = v8->_mergeableString;
    v8->_mergeableString = v9;

    [(TTVersionedDocument *)v8 loadData:dataCopy];
  }

  return v8;
}

- (TTMergeableStringVersionedDocument)initWithMergeableString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = TTMergeableStringVersionedDocument;
  v6 = [(TTMergeableStringVersionedDocument *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mergeableString, string);
    [(TTVersionedDocument *)v7 loadData:0];
  }

  return v7;
}

- (TTMergeableStringVersionedDocument)initWithArchive:(const void *)archive andReplicaID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = TTMergeableStringVersionedDocument;
  v7 = [(TTMergeableStringVersionedDocument *)&v11 init];
  if (v7)
  {
    v8 = [(TTMergeableString *)[TTMergeableAttributedString alloc] initWithReplicaID:dCopy];
    mergeableString = v7->_mergeableString;
    v7->_mergeableString = v8;

    [(TTVersionedDocument *)v7 loadArchive:archive];
  }

  return v7;
}

- (unint64_t)mergeWithStringVersionedDocument:(id)document
{
  documentCopy = document;
  mergeableString = [(TTMergeableStringVersionedDocument *)self mergeableString];
  mergeableString2 = [documentCopy mergeableString];
  v7 = [mergeableString mergeWithString:mergeableString2];

  if (v7)
  {
    v9.receiver = self;
    v9.super_class = TTMergeableStringVersionedDocument;
    [(TTVersionedDocument *)&v9 mergeWithVersionedDocument:documentCopy];
  }

  return v7;
}

- (void)mergeVersion:(unsigned int)version fromData:(id)data
{
  dataCopy = data;
  v5 = [(TTMergeableString *)[TTMergeableAttributedString alloc] initWithData:dataCopy andReplicaID:0];
  if (v5)
  {
    mergeableString = [(TTMergeableStringVersionedDocument *)self mergeableString];
    [mergeableString mergeWithString:v5];
  }
}

- (id)serializeCurrentVersion:(unsigned int *)version
{
  *version = +[TTMergeableStringVersionedDocument serializationVersion];
  mergeableString = [(TTMergeableStringVersionedDocument *)self mergeableString];
  serialize = [mergeableString serialize];

  return serialize;
}

@end