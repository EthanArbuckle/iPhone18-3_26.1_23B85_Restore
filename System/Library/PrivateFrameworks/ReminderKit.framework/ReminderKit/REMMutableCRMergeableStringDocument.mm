@interface REMMutableCRMergeableStringDocument
- (REMMutableCRMergeableStringDocument)initWithReplicaIDSource:(id)source;
- (REMMutableCRMergeableStringDocument)initWithReplicaIDSource:(id)source immutableDocumentToEdit:(id)edit;
- (TTMergeableAttributedString)mergeableString;
- (id)hashtagAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)immutableDocument;
- (id)wipeAndReplaceWithString:(id)string;
- (void)_test_insertString:(id)string atIndex:(unint64_t)index;
- (void)addHashtag:(id)hashtag range:(_NSRange)range;
- (void)enumerateHashtagInRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block;
- (void)removeHashtagInRange:(_NSRange)range;
- (void)replicaIDHelperDidAcquireReplicaUUID:(id)d;
@end

@implementation REMMutableCRMergeableStringDocument

- (id)hashtagAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  mergeableString = [(REMMutableCRMergeableStringDocument *)self mergeableString];
  attributedString = [mergeableString attributedString];
  v8 = [attributedString rem_hashtagAtIndex:index effectiveRange:range];

  return v8;
}

- (void)enumerateHashtagInRange:(_NSRange)range options:(unint64_t)options usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  mergeableString = [(REMMutableCRMergeableStringDocument *)self mergeableString];
  attributedString = [mergeableString attributedString];
  [attributedString rem_enumerateHashtagInRange:location options:length usingBlock:{options, blockCopy}];
}

- (void)addHashtag:(id)hashtag range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v27[1] = *MEMORY[0x1E69E9840];
  hashtagCopy = hashtag;
  if (!hashtagCopy)
  {
    v10 = +[REMLog crdt];
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      [(REMMutableCRMergeableStringDocument(Hashtags) *)self addHashtag:length range:?];
    }

    goto LABEL_12;
  }

  mergeableString = [(REMMutableCRMergeableStringDocument *)self mergeableString];
  v9 = [mergeableString length];

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
    objectIdentifier = [hashtagCopy objectIdentifier];
    [(TTREMHashtag *)v10 setObjectIdentifier:objectIdentifier];

    mergeableString2 = [(REMMutableCRMergeableStringDocument *)self mergeableString];
    v26 = @"_TTREMHashtag";
    v27[0] = v10;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [mergeableString2 setAttributes:v13 range:{location, length}];

    v14 = +[REMLog crdt];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      replicaIDSource = [(REMMutableCRMergeableStringDocument *)self replicaIDSource];
      v28.location = location;
      v28.length = length;
      v16 = NSStringFromRange(v28);
      v18 = 134218754;
      selfCopy = self;
      v20 = 2112;
      v21 = replicaIDSource;
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

- (void)removeHashtagInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  mergeableString = [(REMMutableCRMergeableStringDocument *)self mergeableString];
  v7 = [mergeableString length];
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
    attributedString = [mergeableString attributedString];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__REMMutableCRMergeableStringDocument_Hashtags__removeHashtagInRange___block_invoke;
    v9[3] = &unk_1E75085B8;
    v10 = mergeableString;
    selfCopy = self;
    [attributedString enumerateAttributesInRange:location options:length usingBlock:{0, v9}];
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

- (REMMutableCRMergeableStringDocument)initWithReplicaIDSource:(id)source
{
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = REMMutableCRMergeableStringDocument;
  v6 = [(REMMutableCRMergeableStringDocument *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_replicaIDSource, source);
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

- (REMMutableCRMergeableStringDocument)initWithReplicaIDSource:(id)source immutableDocumentToEdit:(id)edit
{
  sourceCopy = source;
  editCopy = edit;
  v14.receiver = self;
  v14.super_class = REMMutableCRMergeableStringDocument;
  v9 = [(REMMutableCRMergeableStringDocument *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_replicaIDSource, source);
    objc_storeStrong(&v10->_document, edit);
    v11 = [[REMReplicaIDHelper alloc] initWithReplicaIDSource:sourceCopy owner:v10 replicaClockProvider:editCopy];
    replicaIDHelper = v10->_replicaIDHelper;
    v10->_replicaIDHelper = v11;
  }

  return v10;
}

- (TTMergeableAttributedString)mergeableString
{
  replicaIDHelper = [(REMMutableCRMergeableStringDocument *)self replicaIDHelper];
  [replicaIDHelper willEdit];

  document = [(REMMutableCRMergeableStringDocument *)self document];
  mergeableString = [document mergeableString];

  return mergeableString;
}

- (id)immutableDocument
{
  document = [(REMMutableCRMergeableStringDocument *)self document];
  v4 = +[REMReplicaIDHelper nonEditingReplicaUUID];
  v5 = [document rem_copyWithReplicaIDForNewEdits:v4];

  replicaIDHelper = [(REMMutableCRMergeableStringDocument *)self replicaIDHelper];
  [replicaIDHelper didCopy];

  v7 = [REMCRMergeableStringDocument alloc];
  replicaIDSource = [(REMMutableCRMergeableStringDocument *)self replicaIDSource];
  v9 = [(REMCRMergeableStringDocument *)v7 initWithReplicaIDSource:replicaIDSource document:v5];

  return v9;
}

- (id)wipeAndReplaceWithString:(id)string
{
  stringCopy = string;
  mergeableString = [(REMMutableCRMergeableStringDocument *)self mergeableString];
  [mergeableString deleteCharactersInRange:{0, objc_msgSend(mergeableString, "length")}];
  [mergeableString insertAttributedString:stringCopy atIndex:0];

  attributedString = [mergeableString attributedString];
  string = [attributedString string];
  v8 = [string length];

  attributedString2 = [mergeableString attributedString];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__REMMutableCRMergeableStringDocument_wipeAndReplaceWithString___block_invoke;
  v13[3] = &unk_1E75096E8;
  v14 = mergeableString;
  v10 = mergeableString;
  [attributedString2 enumerateAttributesInRange:0 options:v8 usingBlock:{0, v13}];

  immutableDocument = [(REMMutableCRMergeableStringDocument *)self immutableDocument];

  return immutableDocument;
}

- (void)_test_insertString:(id)string atIndex:(unint64_t)index
{
  stringCopy = string;
  mergeableString = [(REMMutableCRMergeableStringDocument *)self mergeableString];
  [mergeableString insertString:stringCopy atIndex:index];
}

- (void)replicaIDHelperDidAcquireReplicaUUID:(id)d
{
  replicaUUID = [d replicaUUID];
  document = [(REMMutableCRMergeableStringDocument *)self document];
  v5 = [document rem_copyWithReplicaIDForNewEdits:replicaUUID];
  [(REMMutableCRMergeableStringDocument *)self setDocument:v5];

  document2 = [(REMMutableCRMergeableStringDocument *)self document];
  replicaIDHelper = [(REMMutableCRMergeableStringDocument *)self replicaIDHelper];
  [replicaIDHelper setReplicaClockProvider:document2];
}

@end