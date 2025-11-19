@interface REMMutableCRMergeableStringDocument
- (REMMutableCRMergeableStringDocument)initWithReplicaIDSource:(id)a3;
- (REMMutableCRMergeableStringDocument)initWithReplicaIDSource:(id)a3 immutableDocumentToEdit:(id)a4;
- (TTMergeableAttributedString)mergeableString;
- (id)hashtagAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)immutableDocument;
- (id)wipeAndReplaceWithString:(id)a3;
- (void)_test_insertString:(id)a3 atIndex:(unint64_t)a4;
- (void)addHashtag:(id)a3 range:(_NSRange)a4;
- (void)enumerateHashtagInRange:(_NSRange)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)removeHashtagInRange:(_NSRange)a3;
- (void)replicaIDHelperDidAcquireReplicaUUID:(id)a3;
@end

@implementation REMMutableCRMergeableStringDocument

- (id)hashtagAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = [(REMMutableCRMergeableStringDocument *)self mergeableString];
  v7 = [v6 attributedString];
  v8 = [v7 rem_hashtagAtIndex:a3 effectiveRange:a4];

  return v8;
}

- (void)enumerateHashtagInRange:(_NSRange)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a5;
  v11 = [(REMMutableCRMergeableStringDocument *)self mergeableString];
  v10 = [v11 attributedString];
  [v10 rem_enumerateHashtagInRange:location options:length usingBlock:{a4, v9}];
}

- (void)addHashtag:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (!v7)
  {
    v10 = +[REMLog crdt];
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      [(REMMutableCRMergeableStringDocument(Hashtags) *)self addHashtag:length range:?];
    }

    goto LABEL_12;
  }

  v8 = [(REMMutableCRMergeableStringDocument *)self mergeableString];
  v9 = [v8 length];

  if (location >= v9)
  {
    location = v9;
  }

  if (location + length > v9)
  {
    length = v9 - location;
  }

  if (length)
  {
    v10 = objc_alloc_init(TTREMHashtag);
    v11 = [v7 objectIdentifier];
    [(TTREMHashtag *)v10 setObjectIdentifier:v11];

    v12 = [(REMMutableCRMergeableStringDocument *)self mergeableString];
    v26 = @"_TTREMHashtag";
    v27[0] = v10;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [v12 setAttributes:v13 range:{location, length}];

    v14 = +[REMLog crdt];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [(REMMutableCRMergeableStringDocument *)self replicaIDSource];
      v28.location = location;
      v28.length = length;
      v16 = NSStringFromRange(v28);
      v18 = 134218754;
      v19 = self;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_INFO, "Added TTREMHashtag to this REMMutableCRMergeableStringDocument {self: %p, replicaID: %@, value: %@, range: %@}", &v18, 0x2Au);
    }

LABEL_12:
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)removeHashtagInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(REMMutableCRMergeableStringDocument *)self mergeableString];
  v7 = [v6 length];
  if (location >= v7)
  {
    location = v7;
  }

  if (location + length > v7)
  {
    length = v7 - location;
  }

  if (length)
  {
    v8 = [v6 attributedString];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__REMMutableCRMergeableStringDocument_Hashtags__removeHashtagInRange___block_invoke;
    v9[3] = &unk_1E75085B8;
    v10 = v6;
    v11 = self;
    [v8 enumerateAttributesInRange:location options:length usingBlock:{0, v9}];
  }
}

void __70__REMMutableCRMergeableStringDocument_Hashtags__removeHashtagInRange___block_invoke(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 objectForKeyedSubscript:@"_TTREMHashtag"];

  if (v8)
  {
    v9 = [v7 objectForKeyedSubscript:@"_TTREMHashtag"];
    v10 = [v7 mutableCopy];
    [v10 removeObjectForKey:@"_TTREMHashtag"];
    v11 = *(a1 + 32);
    v12 = [v10 copy];
    [v11 setAttributes:v12 range:{a3, a4}];

    v13 = +[REMLog crdt];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 40);
      v15 = [v14 replicaIDSource];
      v27.location = a3;
      v27.length = a4;
      v16 = NSStringFromRange(v27);
      v18 = 134218754;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_19A0DB000, v13, OS_LOG_TYPE_INFO, "Removed TTREMHashtag from this REMMutableCRMergeableStringDocument {self: %p, replicaID: %@, value: %@, range: %@}", &v18, 0x2Au);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (REMMutableCRMergeableStringDocument)initWithReplicaIDSource:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = REMMutableCRMergeableStringDocument;
  v6 = [(REMMutableCRMergeableStringDocument *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_replicaIDSource, a3);
    v8 = +[REMReplicaIDHelper replicaUUIDForCreation];
    v9 = [(TTMergeableString *)[TTMergeableAttributedString alloc] initWithReplicaID:v8];
    v10 = [[TTMergeableStringVersionedDocument alloc] initWithMergeableString:v9];
    document = v7->_document;
    v7->_document = v10;
    v12 = v10;

    replicaIDHelper = v7->_replicaIDHelper;
    v7->_replicaIDHelper = 0;
  }

  return v7;
}

- (REMMutableCRMergeableStringDocument)initWithReplicaIDSource:(id)a3 immutableDocumentToEdit:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = REMMutableCRMergeableStringDocument;
  v9 = [(REMMutableCRMergeableStringDocument *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_replicaIDSource, a3);
    objc_storeStrong(&v10->_document, a4);
    v11 = [[REMReplicaIDHelper alloc] initWithReplicaIDSource:v7 owner:v10 replicaClockProvider:v8];
    replicaIDHelper = v10->_replicaIDHelper;
    v10->_replicaIDHelper = v11;
  }

  return v10;
}

- (TTMergeableAttributedString)mergeableString
{
  v3 = [(REMMutableCRMergeableStringDocument *)self replicaIDHelper];
  [v3 willEdit];

  v4 = [(REMMutableCRMergeableStringDocument *)self document];
  v5 = [v4 mergeableString];

  return v5;
}

- (id)immutableDocument
{
  v3 = [(REMMutableCRMergeableStringDocument *)self document];
  v4 = +[REMReplicaIDHelper nonEditingReplicaUUID];
  v5 = [v3 rem_copyWithReplicaIDForNewEdits:v4];

  v6 = [(REMMutableCRMergeableStringDocument *)self replicaIDHelper];
  [v6 didCopy];

  v7 = [REMCRMergeableStringDocument alloc];
  v8 = [(REMMutableCRMergeableStringDocument *)self replicaIDSource];
  v9 = [(REMCRMergeableStringDocument *)v7 initWithReplicaIDSource:v8 document:v5];

  return v9;
}

- (id)wipeAndReplaceWithString:(id)a3
{
  v4 = a3;
  v5 = [(REMMutableCRMergeableStringDocument *)self mergeableString];
  [v5 deleteCharactersInRange:{0, objc_msgSend(v5, "length")}];
  [v5 insertAttributedString:v4 atIndex:0];

  v6 = [v5 attributedString];
  v7 = [v6 string];
  v8 = [v7 length];

  v9 = [v5 attributedString];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__REMMutableCRMergeableStringDocument_wipeAndReplaceWithString___block_invoke;
  v13[3] = &unk_1E75096E8;
  v14 = v5;
  v10 = v5;
  [v9 enumerateAttributesInRange:0 options:v8 usingBlock:{0, v13}];

  v11 = [(REMMutableCRMergeableStringDocument *)self immutableDocument];

  return v11;
}

- (void)_test_insertString:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(REMMutableCRMergeableStringDocument *)self mergeableString];
  [v7 insertString:v6 atIndex:a4];
}

- (void)replicaIDHelperDidAcquireReplicaUUID:(id)a3
{
  v8 = [a3 replicaUUID];
  v4 = [(REMMutableCRMergeableStringDocument *)self document];
  v5 = [v4 rem_copyWithReplicaIDForNewEdits:v8];
  [(REMMutableCRMergeableStringDocument *)self setDocument:v5];

  v6 = [(REMMutableCRMergeableStringDocument *)self document];
  v7 = [(REMMutableCRMergeableStringDocument *)self replicaIDHelper];
  [v7 setReplicaClockProvider:v6];
}

@end