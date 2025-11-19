@interface TSWPTrackedInsertion
- (TSWPTrackedInsertion)initWithSelection:(id)a3 string:(id)a4 changeSession:(id)a5;
- (_NSRange)insertedRange;
- (int64_t)delta;
- (void)dealloc;
- (void)performWithStorage:(id)a3 delta:(int64_t)a4 undoTransaction:(void *)a5 replaceBlock:(id)a6;
@end

@implementation TSWPTrackedInsertion

- (TSWPTrackedInsertion)initWithSelection:(id)a3 string:(id)a4 changeSession:(id)a5
{
  v14.receiver = self;
  v14.super_class = TSWPTrackedInsertion;
  v8 = [(TSWPTrackedInsertion *)&v14 init];
  if (v8)
  {
    if ([a4 length])
    {
      if (a3)
      {
LABEL_4:
        v8->_selection = a3;
        v8->_string = a4;
        v8->_changeSession = a5;
        return v8;
      }
    }

    else
    {
      v10 = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTrackedInsertion initWithSelection:string:changeSession:]"];
      [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTrackedInsertion.mm"), 25, @"Can't track an insertion over an empty range"}];
      if (a3)
      {
        goto LABEL_4;
      }
    }

    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTrackedInsertion initWithSelection:string:changeSession:]"];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTrackedInsertion.mm"), 26, @"invalid nil value for '%s'", "selection"}];
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

- (void)performWithStorage:(id)a3 delta:(int64_t)a4 undoTransaction:(void *)a5 replaceBlock:(id)a6
{
  if (a4)
  {
    selection = self->_selection;
    v12 = [(TSWPSelection *)selection range];
    [(TSWPSelection *)self->_selection range];
    v14 = [(TSWPSelection *)selection copyWithNewRange:v12 + a4, v13];

    self->_selection = v14;
  }

  v15 = [a3 insertionChangesTable];
  v16 = [(TSWPSelection *)self->_selection range];
  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = v15 == 0;
  }

  if (!v18)
  {
    [a3 range];
    v43.location = NSExpandedRange();
    v43.length = v23;
    TSWPAttributeArray::begin(v15, &v43, &v41);
    TSWPAttributeArray::end(v15, &v43, &v39);
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
        if (v16 > v25 || v16 < v27)
        {
          break;
        }
      }
    }

    if (v27 == v16)
    {
      v35 = 1;
    }

    else
    {
      if (v25 != v16)
      {
LABEL_40:
        v19 = 1;
        goto LABEL_9;
      }

      v35 = 2;
    }

    TSWPChangeAttributeArray::setInsertionBehavior(v15, v35);
    goto LABEL_40;
  }

LABEL_8:
  v19 = 0;
LABEL_9:
  (*(a6 + 2))(a6, self->_selection, self->_string);
  v20 = [(TSWPTrackedInsertion *)self insertedRange];
  [a3 p_handleChangeSplittingForInsertedRange:v20 changeSession:v21 undoTransaction:{self->_changeSession, a5}];
  if (v19)
  {
    TSWPChangeAttributeArray::setInsertionBehavior(v15, 0);
    v22 = *(v15->var4 + 2 * TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v15, v16) + 1);
    if (!v22)
    {
      return;
    }

    goto LABEL_32;
  }

  v29 = [(TSWPTrackedInsertion *)self insertedRange];
  v31 = v30;
  if (v15)
  {
    [a3 range];
    v43.location = NSExpandedRange();
    v43.length = v32;
    TSWPAttributeArray::begin(v15, &v43, &v41);
    TSWPAttributeArray::end(v15, &v43, &v39);
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

  v37 = -[TSWPChange initWithContext:kind:session:]([TSWPChange alloc], "initWithContext:kind:session:", [a3 context], 1, self->_changeSession);
  v22 = 0;
LABEL_31:
  [a3 applyObject:v37 toCharRange:v29 forKind:v31 dolcContext:15 undoTransaction:{0, a5}];

  if (v22)
  {
LABEL_32:
    if (a5)
    {
      if (v15)
      {
        Object = TSWPAttributeArray::findObject(v15, v22, 0);
        TSWPStorageTransaction::appendToTransaction(a5, 10, 15, Object, [(objc_object *)v22 date]);
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
  v3 = [(TSWPSelection *)self->_selection range];
  v4 = [(NSString *)self->_string length];
  v5 = v3;
  result.length = v4;
  result.location = v5;
  return result;
}

@end