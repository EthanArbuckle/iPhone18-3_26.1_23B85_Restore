@interface TSWPTrackedInsertion
- (TSWPTrackedInsertion)initWithSelection:(id)selection string:(id)string changeSession:(id)session;
- (_NSRange)insertedRange;
- (int64_t)delta;
- (void)dealloc;
- (void)performWithStorage:(id)storage delta:(int64_t)delta undoTransaction:(void *)transaction replaceBlock:(id)block;
@end

@implementation TSWPTrackedInsertion

- (TSWPTrackedInsertion)initWithSelection:(id)selection string:(id)string changeSession:(id)session
{
  v14.receiver = self;
  v14.super_class = TSWPTrackedInsertion;
  v8 = [(TSWPTrackedInsertion *)&v14 init];
  if (v8)
  {
    if ([string length])
    {
      if (selection)
      {
LABEL_4:
        v8->_selection = selection;
        v8->_string = string;
        v8->_changeSession = session;
        return v8;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTrackedInsertion initWithSelection:string:changeSession:]"];
      [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTrackedInsertion.mm"), 25, @"Can't track an insertion over an empty range"}];
      if (selection)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTrackedInsertion initWithSelection:string:changeSession:]"];
    [currentHandler2 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTrackedInsertion.mm"), 26, @"invalid nil value for '%s'", "selection"}];
    goto LABEL_4;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPTrackedInsertion;
  [(TSWPTrackedInsertion *)&v3 dealloc];
}

- (void)performWithStorage:(id)storage delta:(int64_t)delta undoTransaction:(void *)transaction replaceBlock:(id)block
{
  if (delta)
  {
    selection = self->_selection;
    range = [(TSWPSelection *)selection range];
    [(TSWPSelection *)self->_selection range];
    v14 = [(TSWPSelection *)selection copyWithNewRange:range + delta, v13];

    self->_selection = v14;
  }

  insertionChangesTable = [storage insertionChangesTable];
  range2 = [(TSWPSelection *)self->_selection range];
  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = insertionChangesTable == 0;
  }

  if (!v18)
  {
    [storage range];
    v43.location = NSExpandedRange();
    v43.length = v23;
    TSWPAttributeArray::begin(insertionChangesTable, &v43, &v41);
    TSWPAttributeArray::end(insertionChangesTable, &v43, &v39);
    for (i = v42; ; i = ++v42)
    {
      if (i == v40)
      {
        goto LABEL_8;
      }

      if ([*(v41->var4 + 2 * i + 1) canMergeWithKind:1 session:self->_changeSession])
      {
        v25 = TSWPAttributeArray::rangeForAttributeIndex(v41, v42);
        v27 = v25 + v26;
        if (range2 > v25 || range2 < v27)
        {
          break;
        }
      }
    }

    if (v27 == range2)
    {
      v35 = 1;
    }

    else
    {
      if (v25 != range2)
      {
LABEL_40:
        v19 = 1;
        goto LABEL_9;
      }

      v35 = 2;
    }

    TSWPChangeAttributeArray::setInsertionBehavior(insertionChangesTable, v35);
    goto LABEL_40;
  }

LABEL_8:
  v19 = 0;
LABEL_9:
  (*(block + 2))(block, self->_selection, self->_string);
  insertedRange = [(TSWPTrackedInsertion *)self insertedRange];
  [storage p_handleChangeSplittingForInsertedRange:insertedRange changeSession:v21 undoTransaction:{self->_changeSession, transaction}];
  if (v19)
  {
    TSWPChangeAttributeArray::setInsertionBehavior(insertionChangesTable, 0);
    v22 = *(insertionChangesTable->var4 + 2 * TSWPAttributeArray::effectiveAttributeIndexForCharIndex(insertionChangesTable, range2) + 1);
    if (!v22)
    {
      return;
    }

    goto LABEL_32;
  }

  insertedRange2 = [(TSWPTrackedInsertion *)self insertedRange];
  v31 = v30;
  if (insertionChangesTable)
  {
    [storage range];
    v43.location = NSExpandedRange();
    v43.length = v32;
    TSWPAttributeArray::begin(insertionChangesTable, &v43, &v41);
    TSWPAttributeArray::end(insertionChangesTable, &v43, &v39);
    for (j = v42; j != v40; j = ++v42)
    {
      v34 = *(v41->var4 + 2 * j + 1);
      if ([v34 canMergeWithKind:1 session:self->_changeSession])
      {
        v44.location = TSWPAttributeArray::rangeForAttributeIndex(v41, v42);
        if (NSIntersectionRange(v44, v43).length)
        {
          v36 = v34;
          if (!v36)
          {
            break;
          }

          v37 = v36;
          v22 = v36;
          goto LABEL_31;
        }
      }
    }
  }

  v37 = -[TSWPChange initWithContext:kind:session:]([TSWPChange alloc], "initWithContext:kind:session:", [storage context], 1, self->_changeSession);
  v22 = 0;
LABEL_31:
  [storage applyObject:v37 toCharRange:insertedRange2 forKind:v31 dolcContext:15 undoTransaction:{0, transaction}];

  if (v22)
  {
LABEL_32:
    if (transaction)
    {
      if (insertionChangesTable)
      {
        Object = TSWPAttributeArray::findObject(insertionChangesTable, v22, 0);
        TSWPStorageTransaction::appendToTransaction(transaction, 10, 15, Object, [(objc_object *)v22 date]);
      }
    }

    -[objc_object setDate:](v22, "setDate:", [MEMORY[0x277CBEAA8] date]);
    [(objc_object *)v22 trackedTextDidChange];
  }
}

- (int64_t)delta
{
  v3 = [(NSString *)self->_string length];
  [(TSWPSelection *)self->_selection range];
  return v3 - v4;
}

- (_NSRange)insertedRange
{
  range = [(TSWPSelection *)self->_selection range];
  v4 = [(NSString *)self->_string length];
  v5 = range;
  result.length = v4;
  result.location = v5;
  return result;
}

@end