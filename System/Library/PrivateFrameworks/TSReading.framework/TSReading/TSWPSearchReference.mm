@interface TSWPSearchReference
+ (id)searchReferenceWithStorage:(id)a3 range:(_NSRange)a4;
+ (id)searchReferenceWithStorage:(id)a3 selection:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInsertionPoint;
- (BOOL)isReplaceable;
- (BOOL)isSelectable;
- (CGPoint)searchReferencePoint;
- (NSString)description;
- (TSWPSearchReference)initWithStorage:(id)a3 range:(_NSRange)a4;
- (TSWPSearchReference)initWithStorage:(id)a3 selection:(id)a4;
- (_NSRange)range;
- (_NSRange)smartFieldRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)searchReferenceEnd;
- (id)searchReferenceStart;
- (int64_t)compare:(id)a3;
- (void)dealloc;
- (void)pUpdateSelection;
- (void)setRange:(_NSRange)a3;
- (void)setRefersToSmartField:(BOOL)a3;
- (void)setSelection:(id)a3;
- (void)setSmartField:(id)a3;
- (void)setSmartFieldRange:(_NSRange)a3;
@end

@implementation TSWPSearchReference

+ (id)searchReferenceWithStorage:(id)a3 range:(_NSRange)a4
{
  v4 = [[TSWPSearchReference alloc] initWithStorage:a3 range:a4.location, a4.length];

  return v4;
}

+ (id)searchReferenceWithStorage:(id)a3 selection:(id)a4
{
  v4 = [[a1 alloc] initWithStorage:a3 selection:a4];

  return v4;
}

- (TSWPSearchReference)initWithStorage:(id)a3 range:(_NSRange)a4
{
  v6 = [TSWPSelection selectionWithRange:a4.location, a4.length];

  return [(TSWPSearchReference *)self initWithStorage:a3 selection:v6];
}

- (TSWPSearchReference)initWithStorage:(id)a3 selection:(id)a4
{
  v8.receiver = self;
  v8.super_class = TSWPSearchReference;
  v6 = [(TSWPSearchReference *)&v8 init];
  if (v6)
  {
    *(v6 + 1) = a3;
    [v6 setSelection:a4];
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
    v3 = 6;
  }

  else
  {
    v3 = [(TSWPSelection *)[(TSWPSearchReference *)self selection] type];
  }

  if (v3 != [(TSWPSelection *)[(TSWPSearchReference *)self selection] type]|| (v4 = [(TSWPSearchReference *)self smartFieldRange], v6 = v5, v4 != [(TSWPSelection *)self->_selection smartFieldRange]) || v6 != v7)
  {
    selection = self->_selection;
    v9 = [(TSWPSearchReference *)self smartFieldRange];
    v11 = [(TSWPSelection *)selection copyWithNewType:v3 smartFieldRange:v9, v10];

    self->_selection = v11;
  }
}

- (void)setSmartFieldRange:(_NSRange)a3
{
  if (self->_smartFieldRange.location != a3.location || self->_smartFieldRange.length != a3.length)
  {
    self->_smartFieldRange = a3;
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

- (void)setRefersToSmartField:(BOOL)a3
{
  if (self->_refersToSmartField != a3)
  {
    self->_refersToSmartField = a3;
    [(TSWPSearchReference *)self setSmartFieldRange:0x7FFFFFFFFFFFFFFFLL, 0];
    [(TSWPSearchReference *)self setSmartField:0];

    [(TSWPSearchReference *)self pUpdateSelection];
  }
}

- (void)setSmartField:(id)a3
{
  if (self->_smartField != a3)
  {
    v6 = a3;

    self->_smartField = a3;

    [(TSWPSearchReference *)self pUpdateSelection];
  }
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = [(TSWPSearchReference *)self storage];
  if (v5 != [v4 storage])
  {
    goto LABEL_8;
  }

  if (!-[TSWPSelection isEqual:](-[TSWPSearchReference selection](self, "selection"), "isEqual:", [v4 selection]))
  {
    goto LABEL_8;
  }

  v6 = [(TSWPSearchReference *)self refersToSmartField];
  if (v6 != [v4 refersToSmartField])
  {
    goto LABEL_8;
  }

  v7 = [(TSWPSearchReference *)self smartFieldRange];
  v9 = v8;
  v11 = 0;
  if (v7 != [v4 smartFieldRange] || v9 != v10)
  {
    goto LABEL_9;
  }

  v12 = [(TSWPSearchReference *)self smartField];
  if (v12 == [v4 smartField])
  {
    v26 = [(TSWPSearchReference *)self annotation];
    v11 = v26 == [v4 annotation];
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

- (int64_t)compare:(id)a3
{
  v5 = [(TSWPSearchReference *)self storage];
  v6 = [a3 storage];
  if (v5 == v6)
  {
    v10 = [(TSWPSelection *)[(TSWPSearchReference *)self selection] range];
    v12 = v11;
    v13 = [objc_msgSend(a3 "selection")];
    v15 = 1;
    v16 = -1;
    if (v12 >= v14)
    {
      v16 = v14 < v12;
    }

    if (v13 >= v10)
    {
      v15 = v16;
    }

    if (v10 >= v13)
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
    v7 = v6;
    v8 = [v5 wpKind];
    if (v8 < [v7 wpKind])
    {
      return -1;
    }

    v17 = [v7 wpKind];
    if (v17 >= [v5 wpKind])
    {
      v18 = [v5 length];
      if (v18 < [v7 length])
      {
        return -1;
      }

      v19 = [v7 length];
      return v19 < [v5 length];
    }

    else
    {
      return 1;
    }
  }
}

- (void)setRange:(_NSRange)a3
{
  v4 = [[TSWPSelection alloc] initWithRange:a3.location, a3.length];
  [(TSWPSearchReference *)self setSelection:v4];
}

- (void)setSelection:(id)a3
{
  selection = self->_selection;
  if (selection != a3)
  {
    v15 = v5;
    v16 = v4;
    v17 = v3;

    if ([(TSWPSearchReference *)self refersToSmartField])
    {
      v12 = 6;
    }

    else
    {
      v12 = [a3 type];
    }

    v13 = [(TSWPSearchReference *)self refersToSmartField:v6];
    p_smartFieldRange = &self->_smartFieldRange;
    if (!v13)
    {
      p_smartFieldRange = MEMORY[0x277D6C268];
    }

    self->_selection = [a3 copyWithNewType:v12 smartFieldRange:{p_smartFieldRange->location, p_smartFieldRange->length}];
  }
}

- (_NSRange)range
{
  v2 = [(TSWPSearchReference *)self selection];

  v3 = [(TSWPSelection *)v2 range];
  result.length = v4;
  result.location = v3;
  return result;
}

- (BOOL)isInsertionPoint
{
  v2 = [(TSWPSearchReference *)self selection];

  return [(TSWPSelection *)v2 isInsertionPoint];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TSWPSearchReference *)self storage];
  [(TSWPSearchReference *)self searchReferencePoint];
  v6 = v5;
  [(TSWPSearchReference *)self searchReferencePoint];
  v8 = v7;
  v9 = [(TSWPSearchReference *)self selection];
  if ([(TSWPSearchReference *)self refersToSmartField])
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Smart Field: %@", NSStringFromRange(self->_smartFieldRange)];
  }

  else
  {
    v10 = &stru_287D36338;
  }

  return [v3 stringWithFormat:@"[TSWPSearchReference %p] storage=%p, loc: %f, %f selection: %@, %@", self, v4, v6, v8, v9, v10];
}

- (id)searchReferenceStart
{
  storage = self->_storage;
  v3 = [(TSWPSearchReference *)self range];

  return [TSWPSearchReference searchReferenceWithStorage:storage range:v3, 0];
}

- (id)searchReferenceEnd
{
  storage = self->_storage;
  v3 = [(TSWPSearchReference *)self range];

  return [TSWPSearchReference searchReferenceWithStorage:storage range:v3 + v4, 0];
}

- (BOOL)isReplaceable
{
  v3 = [(TSWPSearchReference *)self selection];
  v4 = [-[TSWPSearchReference storage](self "storage")];
  if (v4)
  {
    v5 = v4;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v5 isLocked])
      {
        goto LABEL_12;
      }

      v5 = [v5 parentInfo];
    }

    while (v5);
  }

  if (v3 && (v6 = -[TSWPSelection range](v3, "range"), v8 = v7, [-[TSWPSearchReference storage](self "storage")]))
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
  v3 = [(TSWPSearchReference *)self selection];
  v4 = v3;
  LODWORD(v5) = *(v15 + 24);
  if (v5 == 1 && v3 != 0)
  {
    v5 = [(TSWPSelection *)v3 range];
    v8 = v7;
    v9 = [(TSWPSearchReference *)self storage];
    v10 = [(TSWPSelection *)v4 range];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __35__TSWPSearchReference_isSelectable__block_invoke;
    v13[3] = &unk_279D4A010;
    v13[5] = v5;
    v13[6] = v8;
    v13[4] = &v14;
    [v9 enumerateSmartFieldsWithAttributeKind:6 inRange:v10 usingBlock:{v11, v13}];
    LOBYTE(v5) = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);
  return v5 & 1;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[TSWPSearchReference alloc] initWithStorage:self->_storage selection:[(TSWPSearchReference *)self selection]];
  [(TSWPSearchReference *)self searchReferencePoint];
  [(TSWPSearchReference *)v4 setSearchReferencePoint:?];
  [(TSWPSearchReference *)v4 setRefersToSmartField:[(TSWPSearchReference *)self refersToSmartField]];
  v5 = [(TSWPSearchReference *)self smartFieldRange];
  [(TSWPSearchReference *)v4 setSmartFieldRange:v5, v6];
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