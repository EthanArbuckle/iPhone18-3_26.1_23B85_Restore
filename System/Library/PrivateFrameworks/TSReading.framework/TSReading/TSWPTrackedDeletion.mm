@interface TSWPTrackedDeletion
- (TSWPTrackedDeletion)initWithRange:(_NSRange)range changeSession:(id)session;
- (_NSRange)insertedRange;
- (void)dealloc;
- (void)performWithStorage:(id)storage delta:(int64_t)delta undoTransaction:(void *)transaction replaceBlock:(id)block;
@end

@implementation TSWPTrackedDeletion

- (TSWPTrackedDeletion)initWithRange:(_NSRange)range changeSession:(id)session
{
  length = range.length;
  location = range.location;
  v11.receiver = self;
  v11.super_class = TSWPTrackedDeletion;
  v7 = [(TSWPTrackedDeletion *)&v11 init];
  if (v7)
  {
    if (!length)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTrackedDeletion initWithRange:changeSession:]"];
      [currentHandler handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTrackedDeletion.mm"), 30, @"Can't track a deletion over an empty range"}];
    }

    v7->_range.location = location;
    v7->_range.length = length;
    v7->_changeSession = session;
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPTrackedDeletion;
  [(TSWPTrackedDeletion *)&v3 dealloc];
}

- (void)performWithStorage:(id)storage delta:(int64_t)delta undoTransaction:(void *)transaction replaceBlock:(id)block
{
  location = self->_range.location;
  if (delta)
  {
    location += delta;
    self->_range.location = location;
  }

  length = self->_range.length;
  v36 = 0;
  v37 = &v36;
  v38 = 0x4812000000;
  v39 = __Block_byref_object_copy__22;
  v40 = __Block_byref_object_dispose__22;
  v41 = &unk_26CAC6BB9;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __77__TSWPTrackedDeletion_performWithStorage_delta_undoTransaction_replaceBlock___block_invoke;
  v35[3] = &unk_279D49C88;
  v35[4] = &v36;
  [storage enumerateSmartFieldsWithAttributeKind:7 inRange:location usingBlock:{length, v35}];
  v11 = v37;
  for (i = v37[6]; i != v11[7]; i += 3)
  {
    [storage removeSmartField:*i fromRange:i[1] undoTransaction:{i[2], transaction}];
    v11 = v37;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x4812000000;
  v29 = __Block_byref_object_copy__22;
  v30 = __Block_byref_object_dispose__22;
  v31 = &unk_26CAC6BB9;
  v33 = 0;
  v34 = 0;
  __p = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __77__TSWPTrackedDeletion_performWithStorage_delta_undoTransaction_replaceBlock___block_invoke_2;
  v25[3] = &unk_279D49C88;
  v25[4] = &v26;
  [storage enumerateWithAttributeKind:14 inRange:location usingBlock:{length, v25}];
  v13 = v27;
  for (j = v27[6]; j != v13[7]; j += 24)
  {
    [storage setDictationAndAutocorrection:0 forCharRange:*(j + 8) undoTransaction:{*(j + 16), transaction}];
    v13 = v27;
  }

  deletionChangesTable = [storage deletionChangesTable];
  if (deletionChangesTable)
  {
    [storage range];
    v24.location = NSExpandedRange();
    v24.length = v16;
    TSWPAttributeArray::begin(deletionChangesTable, &v24, &v22);
    TSWPAttributeArray::end(deletionChangesTable, &v24, v21);
    for (k = v23; k != v21[1]; k = ++v23)
    {
      if ([*(v22->var4 + 2 * k + 1) canMergeWithKind:2 session:self->_changeSession])
      {
        v18 = *(v22->var4 + 2 * v23 + 1);
        v45.location = TSWPAttributeArray::rangeForAttributeIndex(v22, v23);
        v46.location = location;
        v46.length = length;
        v19 = NSUnionRange(v45, v46);
        location = v19.location;
        length = v19.length;
        if (!v18)
        {
          break;
        }

        if (transaction)
        {
          Object = TSWPAttributeArray::findObject(deletionChangesTable, v18, 0);
          TSWPStorageTransaction::appendToTransaction(transaction, 10, 16, Object, [(objc_object *)v18 date]);
        }

        -[objc_object setDate:](v18, "setDate:", [MEMORY[0x277CBEAA8] date]);
        [(objc_object *)v18 trackedTextDidChange];
        goto LABEL_19;
      }
    }
  }

  v18 = -[TSWPChange initWithContext:kind:session:]([TSWPChange alloc], "initWithContext:kind:session:", [storage context], 2, self->_changeSession);
LABEL_19:
  [storage applyObject:v18 toCharRange:location forKind:length dolcContext:16 undoTransaction:{0, transaction}];

  _Block_object_dispose(&v26, 8);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v36, 8);
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }
}

void __77__TSWPTrackedDeletion_performWithStorage_delta_undoTransaction_replaceBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a1 + 32) + 8);
  *&v5 = a2;
  *(&v5 + 1) = a3;
  v6 = a4;
  std::vector<std::pair<objc_object *,_NSRange>>::push_back[abi:nn200100](v4 + 48, &v5);
}

void __77__TSWPTrackedDeletion_performWithStorage_delta_undoTransaction_replaceBlock___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = *(*(a1 + 32) + 8);
    *&v5 = a2;
    *(&v5 + 1) = a3;
    v6 = a4;
    std::vector<std::pair<objc_object *,_NSRange>>::push_back[abi:nn200100](v4 + 48, &v5);
  }
}

- (_NSRange)insertedRange
{
  v2 = self->_range.length + self->_range.location;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

@end