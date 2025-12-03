@interface REMCRMergeableStringDocument
+ (id)documentFromSerializedData:(id)data replicaIDSource:(id)source forKey:(id)key ofObjectID:(id)d;
- (BOOL)isEqual:(id)equal;
- (NSAttributedString)attributedString;
- (NSString)string;
- (REMCRMergeableStringDocument)initWithCoder:(id)coder;
- (REMCRMergeableStringDocument)initWithReplicaIDSource:(id)source attributedString:(id)string;
- (REMCRMergeableStringDocument)initWithReplicaIDSource:(id)source document:(id)document;
- (REMCRMergeableStringDocument)initWithReplicaIDSource:(id)source serializedData:(id)data error:(id *)error;
- (REMCRMergeableStringDocument)initWithReplicaIDSource:(id)source string:(id)string;
- (TTMergeableAttributedString)mergeableString;
- (id)hashtagAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)mergedWithDocument:(id)document error:(id *)error;
- (id)mutableDocument;
- (id)serializedData;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateHashtagInRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block;
@end

@implementation REMCRMergeableStringDocument

- (id)hashtagAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  mergeableString = [(REMCRMergeableStringDocument *)self mergeableString];
  attributedString = [mergeableString attributedString];
  v8 = [attributedString rem_hashtagAtIndex:index effectiveRange:range];

  return v8;
}

- (void)enumerateHashtagInRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  mergeableString = [(REMCRMergeableStringDocument *)self mergeableString];
  attributedString = [mergeableString attributedString];
  [attributedString rem_enumerateHashtagInRange:location options:length usingBlock:{options, blockCopy}];
}

- (REMCRMergeableStringDocument)initWithReplicaIDSource:(id)source string:(id)string
{
  stringCopy = string;
  sourceCopy = source;
  v8 = +[REMReplicaIDHelper replicaUUIDForCreation];
  v9 = [(TTMergeableString *)[TTMergeableAttributedString alloc] initWithReplicaID:v8];
  [(TTMergeableAttributedString *)v9 insertString:stringCopy atIndex:0];

  v10 = [[TTMergeableStringVersionedDocument alloc] initWithMergeableString:v9];
  v11 = [(REMCRMergeableStringDocument *)self initWithReplicaIDSource:sourceCopy document:v10];

  return v11;
}

- (REMCRMergeableStringDocument)initWithReplicaIDSource:(id)source attributedString:(id)string
{
  stringCopy = string;
  sourceCopy = source;
  v8 = +[REMReplicaIDHelper replicaUUIDForCreation];
  v9 = [(TTMergeableString *)[TTMergeableAttributedString alloc] initWithReplicaID:v8];
  [(TTMergeableString *)v9 insertAttributedString:stringCopy atIndex:0];

  v10 = [[TTMergeableStringVersionedDocument alloc] initWithMergeableString:v9];
  v11 = [(REMCRMergeableStringDocument *)self initWithReplicaIDSource:sourceCopy document:v10];

  return v11;
}

- (REMCRMergeableStringDocument)initWithReplicaIDSource:(id)source serializedData:(id)data error:(id *)error
{
  dataCopy = data;
  sourceCopy = source;
  v9 = [TTMergeableStringVersionedDocument alloc];
  v10 = +[REMReplicaIDHelper nonEditingReplicaUUID];
  v11 = [(TTMergeableStringVersionedDocument *)v9 initWithData:dataCopy andReplicaID:v10];

  v12 = [(REMCRMergeableStringDocument *)self initWithReplicaIDSource:sourceCopy document:v11];
  return v12;
}

- (REMCRMergeableStringDocument)initWithReplicaIDSource:(id)source document:(id)document
{
  sourceCopy = source;
  documentCopy = document;
  v12.receiver = self;
  v12.super_class = REMCRMergeableStringDocument;
  v9 = [(REMCRMergeableStringDocument *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_replicaIDSource, source);
    objc_storeStrong(&v10->_document, document);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  document = [(REMCRMergeableStringDocument *)self document];
  serialize = [document serialize];

  [coderCopy encodeObject:serialize forKey:@"document"];
  replicaIDSource = [(REMCRMergeableStringDocument *)self replicaIDSource];
  [coderCopy encodeObject:replicaIDSource forKey:@"replicaIDSource"];
}

- (REMCRMergeableStringDocument)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = REMCRMergeableStringDocument;
  v5 = [(REMCRMergeableStringDocument *)&v14 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"replicaIDSource"];
  replicaIDSource = v5->_replicaIDSource;
  v5->_replicaIDSource = v6;

  if (!v5->_replicaIDSource)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"document"];
  if (v8)
  {
    v9 = [TTMergeableStringVersionedDocument alloc];
    v10 = +[REMReplicaIDHelper nonEditingReplicaUUID];
    v11 = [(TTMergeableStringVersionedDocument *)v9 initWithData:v8 andReplicaID:v10];
    document = v5->_document;
    v5->_document = v11;

LABEL_5:
    v8 = v5;
  }

LABEL_7:

  return v8;
}

- (TTMergeableAttributedString)mergeableString
{
  document = [(REMCRMergeableStringDocument *)self document];
  mergeableString = [document mergeableString];

  return mergeableString;
}

- (NSAttributedString)attributedString
{
  document = [(REMCRMergeableStringDocument *)self document];
  mergeableString = [document mergeableString];
  attributedString = [mergeableString attributedString];

  return attributedString;
}

- (NSString)string
{
  attributedString = [(REMCRMergeableStringDocument *)self attributedString];
  string = [attributedString string];

  return string;
}

- (id)mutableDocument
{
  v3 = [REMMutableCRMergeableStringDocument alloc];
  replicaIDSource = [(REMCRMergeableStringDocument *)self replicaIDSource];
  document = [(REMCRMergeableStringDocument *)self document];
  v6 = [(REMMutableCRMergeableStringDocument *)v3 initWithReplicaIDSource:replicaIDSource immutableDocumentToEdit:document];

  return v6;
}

- (id)serializedData
{
  document = [(REMCRMergeableStringDocument *)self document];
  serialize = [document serialize];

  return serialize;
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
      document = [(REMCRMergeableStringDocument *)self document];
      document2 = [(REMCRMergeableStringDocument *)equalCopy document];
      v7 = [document rem_isEqual:document2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)mergedWithDocument:(id)document error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  documentCopy = document;
  replicaIDSource = [(REMCRMergeableStringDocument *)self replicaIDSource];
  crdtID = [replicaIDSource crdtID];
  replicaIDSource2 = [documentCopy replicaIDSource];
  crdtID2 = [replicaIDSource2 crdtID];
  v11 = [crdtID isEqualToString:crdtID2];

  if ((v11 & 1) == 0)
  {
    [REMCRMergeableStringDocument mergedWithDocument:error:];
  }

  document = [(REMCRMergeableStringDocument *)self document];
  v13 = +[REMReplicaIDHelper nonEditingReplicaUUID];
  v14 = [document rem_copyWithReplicaIDForNewEdits:v13];

  document2 = [documentCopy document];
  v16 = [v14 mergeWithStringVersionedDocument:document2];

  if (v16 == 1)
  {
    error = self;
  }

  else if (v16)
  {
    v19 = [REMCRMergeableStringDocument alloc];
    replicaIDSource3 = [(REMCRMergeableStringDocument *)self replicaIDSource];
    error = [(REMCRMergeableStringDocument *)v19 initWithReplicaIDSource:replicaIDSource3 document:v14];
  }

  else if (error)
  {
    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    v23 = *MEMORY[0x1E696A588];
    v24[0] = @"Failed to merge documents.";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *error = [v17 initWithDomain:@"REMCRMergeableStringDocument" code:-1 userInfo:v18];

    error = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return error;
}

+ (id)documentFromSerializedData:(id)data replicaIDSource:(id)source forKey:(id)key ofObjectID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dCopy = d;
  if (data)
  {
    sourceCopy = source;
    dataCopy = data;
    v18 = 0;
    data = [[REMCRMergeableStringDocument alloc] initWithReplicaIDSource:sourceCopy serializedData:dataCopy error:&v18];

    v13 = v18;
    if (!data)
    {
      v14 = +[REMLog crdt];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v13 localizedDescription];
        *buf = 138412802;
        v20 = dCopy;
        v21 = 2112;
        v22 = keyCopy;
        v23 = 2112;
        v24 = localizedDescription;
        _os_log_error_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_ERROR, "Failed to deserialize mergeable string document {objectID: %@, key: %@}: %@", buf, 0x20u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return data;
}

- (void)mergedWithDocument:error:.cold.1()
{
  v0 = +[REMLog crdt];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_FAULT, "rem_log_fault_if (![self.replicaIDSource.crdtID isEqualToString:anotherDocument.replicaIDSource.crdtID]) -- Documents with different CRDT IDs cannot be merged.", v1, 2u);
  }
}

@end