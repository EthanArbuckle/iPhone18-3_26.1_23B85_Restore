@interface TSWPSelection
+ (TSWPSelection)selectionWithRange:(_NSRange)a3;
+ (TSWPSelection)selectionWithRange:(_NSRange)a3 type:(int)a4 leadingEdge:(BOOL)a5 storage:(id)a6;
- (BOOL)containsCharacterAtIndex:(unint64_t)a3;
- (BOOL)containsCharacterAtIndex:(unint64_t)a3 allowRightEdge:(BOOL)a4;
- (BOOL)intersectsRange:(_NSRange)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentForInsertionStyle:(id)a3;
- (TSWPSelection)initWithType:(int)a3 range:(_NSRange)a4 styleInsertionBehavior:(int)a5 caretAffinity:(int)a6 smartFieldRange:(_NSRange)a7 leadingEdge:(BOOL)a8 leadingCharIndex:(unint64_t)a9;
- (TSWPSelection)initWithType:(int)a3 range:(_NSRange)a4 styleInsertionBehavior:(int)a5 caretAffinity:(int)a6 smartFieldRange:(_NSRange)a7 leadingEdge:(BOOL)a8 storage:(id)a9;
- (_NSRange)range;
- (_NSRange)rawRange;
- (_NSRange)smartFieldRange;
- (_NSRange)superRange;
- (const)visualRanges;
- (id).cxx_construct;
- (id)copyWithNewRange:(_NSRange)a3;
- (id)copyWithNewType:(int)a3;
- (id)copyWithNewType:(int)a3 range:(_NSRange)a4;
- (id)copyWithNewType:(int)a3 smartFieldRange:(_NSRange)a4;
- (id)copyWithNewVisualRanges:(const void *)a3;
- (id)copyWithNewVisualTypeRange:(_NSRange)a3 head:(unint64_t)a4 tail:(unint64_t)a5;
- (id)copyWithVisualRanges:(const void *)a3 startChar:(unint64_t)a4 endChar:(unint64_t)a5 rightToLeft:(BOOL)a6 sameLine:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)visualRangesArray;
- (int64_t)compare:(id)a3;
- (void)dealloc;
- (void)i_setVisualRanges:(const void *)a3;
@end

@implementation TSWPSelection

- (_NSRange)range
{
  if ([(TSWPSelection *)self isVisual]&& [(TSWPSelection *)self isInsertionPoint]&& !self->_leadingEdge)
  {
    length = 0;
    p_leadingCharIndex = &self->_leadingCharIndex;
  }

  else
  {
    p_leadingCharIndex = &self->_range;
    length = self->_range.length;
  }

  location = p_leadingCharIndex->location;
  result.length = length;
  result.location = location;
  return result;
}

- (TSWPSelection)initWithType:(int)a3 range:(_NSRange)a4 styleInsertionBehavior:(int)a5 caretAffinity:(int)a6 smartFieldRange:(_NSRange)a7 leadingEdge:(BOOL)a8 leadingCharIndex:(unint64_t)a9
{
  length = a4.length;
  location = a4.location;
  v21 = a7;
  v20.receiver = self;
  v20.super_class = TSWPSelection;
  v14 = [(TSWPSelection *)&v20 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = a3;
    v14->_range.location = location;
    v14->_range.length = length;
    v14->_leadingEdge = a8;
    v14->_leadingCharIndex = a9;
    v14->_styleInsertionBehavior = a5;
    v14->_caretAffinity = a6;
    if (a3 == 6)
    {
      v16 = &v21;
    }

    else
    {
      v16 = MEMORY[0x277D6C268];
      if (a7.location != *MEMORY[0x277D6C268] || a7.length != *(MEMORY[0x277D6C268] + 8))
      {
        v17 = [MEMORY[0x277D6C290] currentHandler];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPSelection initWithType:range:styleInsertionBehavior:caretAffinity:smartFieldRange:leadingEdge:leadingCharIndex:]"];
        [v17 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPSelection.mm"), 105, @"Non smartfield selection has smartField range"}];
        v16 = MEMORY[0x277D6C268];
      }
    }

    v15->_smartFieldRange = *v16;
    v15->_validVisualRanges = 0;
    v15->_headChar = 0x7FFFFFFFFFFFFFFFLL;
    v15->_tailChar = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v15;
}

- (TSWPSelection)initWithType:(int)a3 range:(_NSRange)a4 styleInsertionBehavior:(int)a5 caretAffinity:(int)a6 smartFieldRange:(_NSRange)a7 leadingEdge:(BOOL)a8 storage:(id)a9
{
  v9 = *&a6;
  v10 = *&a5;
  length = a4.length;
  location = a4.location;
  v13 = *&a3;
  if (a3 != 7 || a9 || a8)
  {
    if (a3 == 7 && a9 && !a8)
    {
      [a9 nextCharacterIndex:a4.location];
    }
  }

  else
  {
    v15 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPSelection initWithType:range:styleInsertionBehavior:caretAffinity:smartFieldRange:leadingEdge:storage:]"];
    [v15 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPSelection.mm"), 122, @"Selection has a leading edge but no storage to get the leading char"}];
  }

  return [TSWPSelection initWithType:"initWithType:range:styleInsertionBehavior:caretAffinity:smartFieldRange:leadingEdge:leadingCharIndex:" range:v13 styleInsertionBehavior:location caretAffinity:length smartFieldRange:v10 leadingEdge:v9 leadingCharIndex:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  LOBYTE(v6) = self->_leadingEdge;
  return [v4 initWithType:self->_type range:self->_range.location styleInsertionBehavior:self->_range.length caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:self->_smartFieldRange.location leadingCharIndex:{self->_smartFieldRange.length, v6, self->_leadingCharIndex}];
}

+ (TSWPSelection)selectionWithRange:(_NSRange)a3
{
  v3 = [[a1 alloc] initWithRange:{a3.location, a3.length}];

  return v3;
}

+ (TSWPSelection)selectionWithRange:(_NSRange)a3 type:(int)a4 leadingEdge:(BOOL)a5 storage:(id)a6
{
  v8 = *&a4;
  length = a3.length;
  location = a3.location;
  v11 = [a1 alloc];
  LOBYTE(v14) = a5;
  v12 = [v11 initWithType:v8 range:location styleInsertionBehavior:length caretAffinity:0 smartFieldRange:0 leadingEdge:*MEMORY[0x277D6C268] storage:{*(MEMORY[0x277D6C268] + 8), v14, a6}];

  return v12;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSWPSelection;
  [(TSWPSelection *)&v2 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  result = (objc_opt_isKindOfClass() & 1) != 0 && (self->_range.location == *(a3 + 2) ? (v5 = self->_range.length == *(a3 + 3)) : (v5 = 0), v5 && self->_type == *(a3 + 2) && self->_styleInsertionBehavior == *(a3 + 17) && self->_caretAffinity == *(a3 + 18) && (self->_smartFieldRange.location == *(a3 + 10) ? (v6 = self->_smartFieldRange.length == *(a3 + 11)) : (v6 = 0), v6)) && self->_leadingEdge == *(a3 + 48);
  return result;
}

- (int64_t)compare:(id)a3
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {
    v5 = result;
    if (-[TSWPSelection isValid](self, "isValid") && [v5 isValid])
    {
      v6 = [(TSWPSelection *)self range];
      if (v6 < [v5 range])
      {
        return -1;
      }

      v7 = [(TSWPSelection *)self range];
      if (v7 <= [v5 range])
      {
        [(TSWPSelection *)self range];
        v9 = v8;
        [v5 range];
        if (v9 < v10)
        {
          return -1;
        }

        [(TSWPSelection *)self range];
        v12 = v11;
        [v5 range];
        return v12 > v13;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)isEquivalentForInsertionStyle:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(TSWPSelection *)self range];
  v7 = v6;
  v9 = [a3 range];
  result = 0;
  if (v5 == v9 && v7 == v8)
  {
    return self->_type == *(a3 + 2);
  }

  return result;
}

- (id)copyWithNewType:(int)a3 smartFieldRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = *&a3;
  v8 = objc_alloc(objc_opt_class());
  LOBYTE(v10) = self->_leadingEdge;
  return [v8 initWithType:v6 range:self->_range.location styleInsertionBehavior:self->_range.length caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:location leadingCharIndex:{length, v10, self->_leadingCharIndex}];
}

- (id)copyWithNewType:(int)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = *&a3;
  if (a3 == 6)
  {
    p_smartFieldRange = &self->_smartFieldRange;
  }

  else
  {
    p_smartFieldRange = MEMORY[0x277D6C268];
  }

  v9 = p_smartFieldRange->location;
  v10 = p_smartFieldRange->length;
  v11 = objc_alloc(objc_opt_class());
  LOBYTE(v13) = self->_leadingEdge;
  return [v11 initWithType:v6 range:location styleInsertionBehavior:length caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:v9 leadingCharIndex:{v10, v13, self->_leadingCharIndex}];
}

- (id)copyWithNewVisualTypeRange:(_NSRange)a3 head:(unint64_t)a4 tail:(unint64_t)a5
{
  length = a3.length;
  location = a3.location;
  v10 = objc_alloc(objc_opt_class());
  LOBYTE(v13) = self->_leadingEdge;
  v11 = [v10 initWithType:7 range:location styleInsertionBehavior:length caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:self->_smartFieldRange.location leadingCharIndex:{self->_smartFieldRange.length, v13, self->_leadingCharIndex}];
  [v11 setHeadChar:a4 tailChar:a5];
  return v11;
}

- (id)copyWithNewType:(int)a3
{
  v3 = *&a3;
  if (a3 == 6)
  {
    p_smartFieldRange = &self->_smartFieldRange;
  }

  else
  {
    p_smartFieldRange = MEMORY[0x277D6C268];
  }

  location = p_smartFieldRange->location;
  length = p_smartFieldRange->length;
  v8 = objc_alloc(objc_opt_class());
  LOBYTE(v10) = self->_leadingEdge;
  return [v8 initWithType:v3 range:self->_range.location styleInsertionBehavior:self->_range.length caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:location leadingCharIndex:{length, v10, self->_leadingCharIndex}];
}

- (id)copyWithNewRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  LOBYTE(v10) = 1;
  v6 = [objc_alloc(objc_opt_class()) initWithType:self->_type range:location styleInsertionBehavior:a3.length caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:self->_smartFieldRange.location leadingCharIndex:{self->_smartFieldRange.length, v10, location}];
  v7 = v6;
  if (self->_type == 7 && self->_validVisualRanges && location == self->_range.location && length == self->_range.length)
  {
    [v6 i_setVisualRanges:&self->_visualRanges];
  }

  return v7;
}

- (id)copyWithNewVisualRanges:(const void *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *(a3 + 1);
  if (*a3 == v6)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = **a3;
    v8 = *(v6 - 8) + *(v6 - 16);
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v7 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  LOBYTE(v13) = self->_leadingEdge;
  v11 = [v5 initWithType:7 range:v10 styleInsertionBehavior:v9 - v10 caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:self->_smartFieldRange.location leadingCharIndex:{self->_smartFieldRange.length, v13, self->_leadingCharIndex}];
  [v11 i_setVisualRanges:a3];
  return v11;
}

- (id)copyWithVisualRanges:(const void *)a3 startChar:(unint64_t)a4 endChar:(unint64_t)a5 rightToLeft:(BOOL)a6 sameLine:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  if (self->_type != 7)
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPSelection copyWithVisualRanges:startChar:endChar:rightToLeft:sameLine:]"];
    [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPSelection.mm"), 339, @"Selection type must be visual"}];
  }

  v15 = objc_alloc(objc_opt_class());
  LOBYTE(v21) = self->_leadingEdge;
  v16 = [v15 initWithType:self->_type range:self->_range.location styleInsertionBehavior:self->_range.length caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:self->_smartFieldRange.location leadingCharIndex:{self->_smartFieldRange.length, v21, self->_leadingCharIndex}];
  [v16 i_setVisualRanges:a3];
  if (v7 && v8)
  {
    v17 = v16;
    v18 = a5;
    v19 = a4;
  }

  else
  {
    v17 = v16;
    v18 = a4;
    v19 = a5;
  }

  [v17 setHeadChar:v18 tailChar:v19];
  return v16;
}

- (_NSRange)superRange
{
  if (self->_type == 7 && [(TSWPSelection *)self isRange]&& (begin = self->_visualRanges.__begin_, end = self->_visualRanges.__end_, end != begin))
  {
    location = begin->location;
    v6 = end[-1].length + end[-1].location;
    if (location <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = location;
    }

    if (location >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = location;
    }

    v9 = v7 - v8;
  }

  else
  {

    v8 = [(TSWPSelection *)self range];
  }

  result.length = v9;
  result.location = v8;
  return result;
}

- (void)i_setVisualRanges:(const void *)a3
{
  p_visualRanges = &self->_visualRanges;
  if (p_visualRanges != a3)
  {
    std::vector<_NSRange>::__assign_with_size[abi:nn200100]<_NSRange*,_NSRange*>(p_visualRanges, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 4);
  }

  self->_validVisualRanges = 1;
}

- (const)visualRanges
{
  if (!self->_validVisualRanges)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPSelection visualRanges]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPSelection.mm"), 394, @"Visual ranges have not been calculated"}];
  }

  return &self->_visualRanges;
}

- (id)visualRangesArray
{
  if (self->_type == 7 && !self->_validVisualRanges && [(TSWPSelection *)self isRange])
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPSelection visualRangesArray]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPSelection.mm"), 406, @"Visual ranges have not been calculated"}];
  }

  p_visualRanges = &self->_visualRanges;
  v6 = self->_visualRanges.__end_ - self->_visualRanges.__begin_;
  v7 = MEMORY[0x277CBEB18];
  if (v6 < 2)
  {
    v11 = MEMORY[0x277CCAE60];
    v12 = [(TSWPSelection *)self superRange];
    v14 = [v11 valueWithRange:{v12, v13}];

    return [v7 arrayWithObject:v14];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->_visualRanges.__end_ - self->_visualRanges.__begin_];
    v9 = 0;
    do
    {
      [v8 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRange:", p_visualRanges->__begin_[v9].location, p_visualRanges->__begin_[v9].length)}];
      ++v9;
      --v6;
    }

    while (v6);
    return v8;
  }
}

- (BOOL)containsCharacterAtIndex:(unint64_t)a3
{
  location = self->_range.location;
  v5 = a3 >= location;
  v4 = a3 - location;
  v5 = !v5 || v4 >= self->_range.length;
  return !v5;
}

- (BOOL)containsCharacterAtIndex:(unint64_t)a3 allowRightEdge:(BOOL)a4
{
  location = self->_range.location;
  if (a4)
  {
    return a3 - location <= self->_range.length;
  }

  v7 = a3 >= location;
  v6 = a3 - location;
  v7 = !v7 || v6 >= self->_range.length;
  return !v7;
}

- (BOOL)intersectsRange:(_NSRange)a3
{
  p_range = &self->_range;
  v4.length = self->_range.length;
  if (v4.length)
  {
    v4.location = p_range->location;
    return NSIntersectionRange(v4, a3).length != 0;
  }

  else
  {
    location = p_range->location;
    v8 = location >= a3.location && location - a3.location < a3.length;
    v9 = location == a3.location;
    if (a3.length)
    {
      return v8;
    }

    else
    {
      return v9;
    }
  }
}

- (_NSRange)rawRange
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)smartFieldRange
{
  p_smartFieldRange = &self->_smartFieldRange;
  location = self->_smartFieldRange.location;
  length = p_smartFieldRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 12) = 0;
  return self;
}

@end