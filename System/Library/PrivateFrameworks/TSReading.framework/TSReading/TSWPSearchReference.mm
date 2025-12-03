@interface TSWPSearchReference
+ (id)searchReferenceWithStorage:(id)storage range:(_NSRange)range;
+ (id)searchReferenceWithStorage:(id)storage selection:(id)selection;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInsertionPoint;
- (BOOL)isReplaceable;
- (BOOL)isSelectable;
- (CGPoint)searchReferencePoint;
- (NSString)description;
- (TSWPSearchReference)initWithStorage:(id)storage range:(_NSRange)range;
- (TSWPSearchReference)initWithStorage:(id)storage selection:(id)selection;
- (_NSRange)range;
- (_NSRange)smartFieldRange;
- (id)copyWithZone:(_NSZone *)zone;
- (id)searchReferenceEnd;
- (id)searchReferenceStart;
- (int64_t)compare:(id)compare;
- (void)dealloc;
- (void)pUpdateSelection;
- (void)setRange:(_NSRange)range;
- (void)setRefersToSmartField:(BOOL)field;
- (void)setSelection:(id)selection;
- (void)setSmartField:(id)field;
- (void)setSmartFieldRange:(_NSRange)range;
@end

@implementation TSWPSearchReference

+ (id)searchReferenceWithStorage:(id)storage range:(_NSRange)range
{
  v4 = [[TSWPSearchReference alloc] initWithStorage:storage range:range.location, range.length];

  return v4;
}

+ (id)searchReferenceWithStorage:(id)storage selection:(id)selection
{
  v4 = [[self alloc] initWithStorage:storage selection:selection];

  return v4;
}

- (TSWPSearchReference)initWithStorage:(id)storage range:(_NSRange)range
{
  v6 = [TSWPSelection selectionWithRange:range.location, range.length];

  return [(TSWPSearchReference *)self initWithStorage:storage selection:v6];
}

- (TSWPSearchReference)initWithStorage:(id)storage selection:(id)selection
{
  v8.receiver = self;
  v8.super_class = TSWPSearchReference;
  v6 = [(TSWPSearchReference *)&v8 init];
  if (v6)
  {
    *(v6 + 1) = storage;
    [v6 setSelection:selection];
    *(v6 + 24) = xmmword_26CA637B0;
    *(v6 + 6) = 0;
    [v6 setSearchReferencePoint:{1.79769313e308, 1.79769313e308}];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPSearchReference;
  [(TSWPSearchReference *)&v3 dealloc];
}

- (void)pUpdateSelection
{
  if ([(TSWPSearchReference *)self refersToSmartField])
  {
    type = 6;
  }

  else
  {
    type = [(TSWPSelection *)[(TSWPSearchReference *)self selection] type];
  }

  if (type != [(TSWPSelection *)[(TSWPSearchReference *)self selection] type]|| (v4 = [(TSWPSearchReference *)self smartFieldRange], v6 = v5, v4 != [(TSWPSelection *)self->_selection smartFieldRange]) || v6 != v7)
  {
    selection = self->_selection;
    smartFieldRange = [(TSWPSearchReference *)self smartFieldRange];
    v11 = [(TSWPSelection *)selection copyWithNewType:type smartFieldRange:smartFieldRange, v10];

    self->_selection = v11;
  }
}

- (void)setSmartFieldRange:(_NSRange)range
{
  if (self->_smartFieldRange.location != range.location || self->_smartFieldRange.length != range.length)
  {
    self->_smartFieldRange = range;
    [(TSWPSearchReference *)self pUpdateSelection];
  }
}

- (_NSRange)smartFieldRange
{
  length = self->_smartFieldRange.length;
  location = self->_smartFieldRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)setRefersToSmartField:(BOOL)field
{
  if (self->_refersToSmartField != field)
  {
    self->_refersToSmartField = field;
    [(TSWPSearchReference *)self setSmartFieldRange:0x7FFFFFFFFFFFFFFFLL, 0];
    [(TSWPSearchReference *)self setSmartField:0];

    [(TSWPSearchReference *)self pUpdateSelection];
  }
}

- (void)setSmartField:(id)field
{
  if (self->_smartField != field)
  {
    fieldCopy = field;

    self->_smartField = field;

    [(TSWPSearchReference *)self pUpdateSelection];
  }
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!v4)
  {
    goto LABEL_8;
  }

  storage = [(TSWPSearchReference *)self storage];
  if (storage != [v4 storage])
  {
    goto LABEL_8;
  }

  if (!-[TSWPSelection isEqual:](-[TSWPSearchReference selection](self, "selection"), "isEqual:", [v4 selection]))
  {
    goto LABEL_8;
  }

  refersToSmartField = [(TSWPSearchReference *)self refersToSmartField];
  if (refersToSmartField != [v4 refersToSmartField])
  {
    goto LABEL_8;
  }

  smartFieldRange = [(TSWPSearchReference *)self smartFieldRange];
  v9 = v8;
  v11 = 0;
  if (smartFieldRange != [v4 smartFieldRange] || v9 != v10)
  {
    goto LABEL_9;
  }

  smartField = [(TSWPSearchReference *)self smartField];
  if (smartField == [v4 smartField])
  {
    annotation = [(TSWPSearchReference *)self annotation];
    v11 = annotation == [v4 annotation];
  }

  else
  {
LABEL_8:
    v11 = 0;
  }

LABEL_9:
  [(TSWPSearchReference *)self searchReferencePoint];
  if (v14 != 1.79769313e308 || v13 != 1.79769313e308)
  {
    return v11;
  }

  [v4 searchReferencePoint];
  v18 = v17 != 1.79769313e308;
  if (v19 != 1.79769313e308)
  {
    v18 = 1;
  }

  result = v18 && v11;
  if (!v18 && v11)
  {
    [(TSWPSearchReference *)self searchReferencePoint];
    v21 = v20;
    v23 = v22;
    [v4 searchReferencePoint];
    return v23 == v25 && v21 == v24;
  }

  return result;
}

- (int64_t)compare:(id)compare
{
  storage = [(TSWPSearchReference *)self storage];
  storage2 = [compare storage];
  if (storage == storage2)
  {
    range = [(TSWPSelection *)[(TSWPSearchReference *)self selection] range];
    v12 = v11;
    v13 = [objc_msgSend(compare "selection")];
    v15 = 1;
    v16 = -1;
    if (v12 >= v14)
    {
      v16 = v14 < v12;
    }

    if (v13 >= range)
    {
      v15 = v16;
    }

    if (range >= v13)
    {
      return v15;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    v7 = storage2;
    wpKind = [storage wpKind];
    if (wpKind < [v7 wpKind])
    {
      return -1;
    }

    wpKind2 = [v7 wpKind];
    if (wpKind2 >= [storage wpKind])
    {
      v18 = [storage length];
      if (v18 < [v7 length])
      {
        return -1;
      }

      v19 = [v7 length];
      return v19 < [storage length];
    }

    else
    {
      return 1;
    }
  }
}

- (void)setRange:(_NSRange)range
{
  v4 = [[TSWPSelection alloc] initWithRange:range.location, range.length];
  [(TSWPSearchReference *)self setSelection:v4];
}

- (void)setSelection:(id)selection
{
  selection = self->_selection;
  if (selection != selection)
  {
    v15 = v5;
    v16 = v4;
    v17 = v3;

    if ([(TSWPSearchReference *)self refersToSmartField])
    {
      type = 6;
    }

    else
    {
      type = [selection type];
    }

    v13 = [(TSWPSearchReference *)self refersToSmartField:v6];
    p_smartFieldRange = &self->_smartFieldRange;
    if (!v13)
    {
      p_smartFieldRange = MEMORY[0x277D6C268];
    }

    self->_selection = [selection copyWithNewType:type smartFieldRange:{p_smartFieldRange->location, p_smartFieldRange->length}];
  }
}

- (_NSRange)range
{
  selection = [(TSWPSearchReference *)self selection];

  range = [(TSWPSelection *)selection range];
  result.length = v4;
  result.location = range;
  return result;
}

- (BOOL)isInsertionPoint
{
  selection = [(TSWPSearchReference *)self selection];

  return [(TSWPSelection *)selection isInsertionPoint];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  storage = [(TSWPSearchReference *)self storage];
  [(TSWPSearchReference *)self searchReferencePoint];
  v6 = v5;
  [(TSWPSearchReference *)self searchReferencePoint];
  v8 = v7;
  selection = [(TSWPSearchReference *)self selection];
  if ([(TSWPSearchReference *)self refersToSmartField])
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Smart Field: %@", NSStringFromRange(self->_smartFieldRange)];
  }

  else
  {
    v10 = &stru_287D36338;
  }

  return [v3 stringWithFormat:@"[TSWPSearchReference %p] storage=%p, loc: %f, %f selection: %@, %@", self, storage, v6, v8, selection, v10];
}

- (id)searchReferenceStart
{
  storage = self->_storage;
  range = [(TSWPSearchReference *)self range];

  return [TSWPSearchReference searchReferenceWithStorage:storage range:range, 0];
}

- (id)searchReferenceEnd
{
  storage = self->_storage;
  range = [(TSWPSearchReference *)self range];

  return [TSWPSearchReference searchReferenceWithStorage:storage range:range + v4, 0];
}

- (BOOL)isReplaceable
{
  selection = [(TSWPSearchReference *)self selection];
  v4 = [-[TSWPSearchReference storage](self "storage")];
  if (v4)
  {
    parentInfo = v4;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([parentInfo isLocked])
      {
        goto LABEL_12;
      }

      parentInfo = [parentInfo parentInfo];
    }

    while (parentInfo);
  }

  if (selection && (v6 = -[TSWPSelection range](selection, "range"), v8 = v7, [-[TSWPSearchReference storage](self "storage")]))
  {
    v9 = [-[TSWPSearchReference storage](self "storage")];
    if (v9)
    {
      if (v11[0] >= v6)
      {
LABEL_12:
        LOBYTE(v9) = 0;
        return v9;
      }

      LOBYTE(v9) = v11[1] + v11[0] >= v6 + v8;
    }
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)isSelectable
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  selection = [(TSWPSearchReference *)self selection];
  v4 = selection;
  LODWORD(range) = *(v15 + 24);
  if (range == 1 && selection != 0)
  {
    range = [(TSWPSelection *)selection range];
    v8 = v7;
    storage = [(TSWPSearchReference *)self storage];
    range2 = [(TSWPSelection *)v4 range];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __35__TSWPSearchReference_isSelectable__block_invoke;
    v13[3] = &unk_279D4A010;
    v13[5] = range;
    v13[6] = v8;
    v13[4] = &v14;
    [storage enumerateSmartFieldsWithAttributeKind:6 inRange:range2 usingBlock:{v11, v13}];
    LOBYTE(range) = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);
  return range & 1;
}

void *__35__TSWPSearchReference_isSelectable__block_invoke(void *result, uint64_t a2, unint64_t a3, uint64_t a4, _BYTE *a5)
{
  v5 = result[5];
  if (v5 > a3 || result[6] + v5 < a3 + a4)
  {
    *(*(result[4] + 8) + 24) = 0;
    *a5 = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TSWPSearchReference alloc] initWithStorage:self->_storage selection:[(TSWPSearchReference *)self selection]];
  [(TSWPSearchReference *)self searchReferencePoint];
  [(TSWPSearchReference *)v4 setSearchReferencePoint:?];
  [(TSWPSearchReference *)v4 setRefersToSmartField:[(TSWPSearchReference *)self refersToSmartField]];
  smartFieldRange = [(TSWPSearchReference *)self smartFieldRange];
  [(TSWPSearchReference *)v4 setSmartFieldRange:smartFieldRange, v6];
  [(TSWPSearchReference *)v4 setSmartField:[(TSWPSearchReference *)self smartField]];
  return v4;
}

- (CGPoint)searchReferencePoint
{
  x = self->searchReferencePoint.x;
  y = self->searchReferencePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end