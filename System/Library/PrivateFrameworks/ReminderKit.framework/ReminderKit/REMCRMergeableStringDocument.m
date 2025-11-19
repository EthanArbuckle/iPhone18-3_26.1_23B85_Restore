@interface REMCRMergeableStringDocument
+ (id)documentFromSerializedData:(id)a3 replicaIDSource:(id)a4 forKey:(id)a5 ofObjectID:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSAttributedString)attributedString;
- (NSString)string;
- (REMCRMergeableStringDocument)initWithCoder:(id)a3;
- (REMCRMergeableStringDocument)initWithReplicaIDSource:(id)a3 attributedString:(id)a4;
- (REMCRMergeableStringDocument)initWithReplicaIDSource:(id)a3 document:(id)a4;
- (REMCRMergeableStringDocument)initWithReplicaIDSource:(id)a3 serializedData:(id)a4 error:(id *)a5;
- (REMCRMergeableStringDocument)initWithReplicaIDSource:(id)a3 string:(id)a4;
- (TTMergeableAttributedString)mergeableString;
- (id)hashtagAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)mergedWithDocument:(id)a3 error:(id *)a4;
- (id)mutableDocument;
- (id)serializedData;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateHashtagInRange:(_NSRange)a3 options:(unint64_t)a4 usingBlock:(id)a5;
@end

@implementation REMCRMergeableStringDocument

- (id)hashtagAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = [(REMCRMergeableStringDocument *)self mergeableString];
  v7 = [v6 attributedString];
  v8 = [v7 rem_hashtagAtIndex:a3 effectiveRange:a4];

  return v8;
}

- (void)enumerateHashtagInRange:(_NSRange)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a5;
  v11 = [(REMCRMergeableStringDocument *)self mergeableString];
  v10 = [v11 attributedString];
  [v10 rem_enumerateHashtagInRange:location options:length usingBlock:{a4, v9}];
}

- (REMCRMergeableStringDocument)initWithReplicaIDSource:(id)a3 string:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[REMReplicaIDHelper replicaUUIDForCreation];
  v9 = [(TTMergeableString *)[TTMergeableAttributedString alloc] initWithReplicaID:v8];
  [(TTMergeableAttributedString *)v9 insertString:v6 atIndex:0];

  v10 = [[TTMergeableStringVersionedDocument alloc] initWithMergeableString:v9];
  v11 = [(REMCRMergeableStringDocument *)self initWithReplicaIDSource:v7 document:v10];

  return v11;
}

- (REMCRMergeableStringDocument)initWithReplicaIDSource:(id)a3 attributedString:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[REMReplicaIDHelper replicaUUIDForCreation];
  v9 = [(TTMergeableString *)[TTMergeableAttributedString alloc] initWithReplicaID:v8];
  [(TTMergeableString *)v9 insertAttributedString:v6 atIndex:0];

  v10 = [[TTMergeableStringVersionedDocument alloc] initWithMergeableString:v9];
  v11 = [(REMCRMergeableStringDocument *)self initWithReplicaIDSource:v7 document:v10];

  return v11;
}

- (REMCRMergeableStringDocument)initWithReplicaIDSource:(id)a3 serializedData:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [TTMergeableStringVersionedDocument alloc];
  v10 = +[REMReplicaIDHelper nonEditingReplicaUUID];
  v11 = [(TTMergeableStringVersionedDocument *)v9 initWithData:v7 andReplicaID:v10];

  v12 = [(REMCRMergeableStringDocument *)self initWithReplicaIDSource:v8 document:v11];
  return v12;
}

- (REMCRMergeableStringDocument)initWithReplicaIDSource:(id)a3 document:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMCRMergeableStringDocument;
  v9 = [(REMCRMergeableStringDocument *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_replicaIDSource, a3);
    objc_storeStrong(&v10->_document, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMCRMergeableStringDocument *)self document];
  v7 = [v5 serialize];

  [v4 encodeObject:v7 forKey:@"document"];
  v6 = [(REMCRMergeableStringDocument *)self replicaIDSource];
  [v4 encodeObject:v6 forKey:@"replicaIDSource"];
}

- (REMCRMergeableStringDocument)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = REMCRMergeableStringDocument;
  v5 = [(REMCRMergeableStringDocument *)&v14 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"replicaIDSource"];
  replicaIDSource = v5->_replicaIDSource;
  v5->_replicaIDSource = v6;

  if (!v5->_replicaIDSource)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"document"];
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
  v2 = [(REMCRMergeableStringDocument *)self document];
  v3 = [v2 mergeableString];

  return v3;
}

- (NSAttributedString)attributedString
{
  v2 = [(REMCRMergeableStringDocument *)self document];
  v3 = [v2 mergeableString];
  v4 = [v3 attributedString];

  return v4;
}

- (NSString)string
{
  v2 = [(REMCRMergeableStringDocument *)self attributedString];
  v3 = [v2 string];

  return v3;
}

- (id)mutableDocument
{
  v3 = [REMMutableCRMergeableStringDocument alloc];
  v4 = [(REMCRMergeableStringDocument *)self replicaIDSource];
  v5 = [(REMCRMergeableStringDocument *)self document];
  v6 = [(REMMutableCRMergeableStringDocument *)v3 initWithReplicaIDSource:v4 immutableDocumentToEdit:v5];

  return v6;
}

- (id)serializedData
{
  v2 = [(REMCRMergeableStringDocument *)self document];
  v3 = [v2 serialize];

  return v3;
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
      v5 = [(REMCRMergeableStringDocument *)self document];
      v6 = [(REMCRMergeableStringDocument *)v4 document];
      v7 = [v5 rem_isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)mergedWithDocument:(id)a3 error:(id *)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(REMCRMergeableStringDocument *)self replicaIDSource];
  v8 = [v7 crdtID];
  v9 = [v6 replicaIDSource];
  v10 = [v9 crdtID];
  v11 = [v8 isEqualToString:v10];

  if ((v11 & 1) == 0)
  {
    [REMCRMergeableStringDocument mergedWithDocument:error:];
  }

  v12 = [(REMCRMergeableStringDocument *)self document];
  v13 = +[REMReplicaIDHelper nonEditingReplicaUUID];
  v14 = [v12 rem_copyWithReplicaIDForNewEdits:v13];

  v15 = [v6 document];
  v16 = [v14 mergeWithStringVersionedDocument:v15];

  if (v16 == 1)
  {
    a4 = self;
  }

  else if (v16)
  {
    v19 = [REMCRMergeableStringDocument alloc];
    v20 = [(REMCRMergeableStringDocument *)self replicaIDSource];
    a4 = [(REMCRMergeableStringDocument *)v19 initWithReplicaIDSource:v20 document:v14];
  }

  else if (a4)
  {
    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    v23 = *MEMORY[0x1E696A588];
    v24[0] = @"Failed to merge documents.";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *a4 = [v17 initWithDomain:@"REMCRMergeableStringDocument" code:-1 userInfo:v18];

    a4 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return a4;
}

+ (id)documentFromSerializedData:(id)a3 replicaIDSource:(id)a4 forKey:(id)a5 ofObjectID:(id)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  if (a3)
  {
    v11 = a4;
    v12 = a3;
    v18 = 0;
    a3 = [[REMCRMergeableStringDocument alloc] initWithReplicaIDSource:v11 serializedData:v12 error:&v18];

    v13 = v18;
    if (!a3)
    {
      v14 = +[REMLog crdt];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = [v13 localizedDescription];
        *buf = 138412802;
        v20 = v10;
        v21 = 2112;
        v22 = v9;
        v23 = 2112;
        v24 = v17;
        _os_log_error_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_ERROR, "Failed to deserialize mergeable string document {objectID: %@, key: %@}: %@", buf, 0x20u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return a3;
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