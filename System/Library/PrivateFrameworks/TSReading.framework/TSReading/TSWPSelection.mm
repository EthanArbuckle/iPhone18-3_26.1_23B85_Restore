@interface TSWPSelection
+ (TSWPSelection)selectionWithRange:(_NSRange)range;
+ (TSWPSelection)selectionWithRange:(_NSRange)range type:(int)type leadingEdge:(BOOL)edge storage:(id)storage;
- (BOOL)containsCharacterAtIndex:(unint64_t)index;
- (BOOL)containsCharacterAtIndex:(unint64_t)index allowRightEdge:(BOOL)edge;
- (BOOL)intersectsRange:(_NSRange)range;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentForInsertionStyle:(id)style;
- (TSWPSelection)initWithType:(int)type range:(_NSRange)range styleInsertionBehavior:(int)behavior caretAffinity:(int)affinity smartFieldRange:(_NSRange)fieldRange leadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index;
- (TSWPSelection)initWithType:(int)type range:(_NSRange)range styleInsertionBehavior:(int)behavior caretAffinity:(int)affinity smartFieldRange:(_NSRange)fieldRange leadingEdge:(BOOL)edge storage:(id)storage;
- (_NSRange)range;
- (_NSRange)rawRange;
- (_NSRange)smartFieldRange;
- (_NSRange)superRange;
- (const)visualRanges;
- (id).cxx_construct;
- (id)copyWithNewRange:(_NSRange)range;
- (id)copyWithNewType:(int)type;
- (id)copyWithNewType:(int)type range:(_NSRange)range;
- (id)copyWithNewType:(int)type smartFieldRange:(_NSRange)range;
- (id)copyWithNewVisualRanges:(const void *)ranges;
- (id)copyWithNewVisualTypeRange:(_NSRange)range head:(unint64_t)head tail:(unint64_t)tail;
- (id)copyWithVisualRanges:(const void *)ranges startChar:(unint64_t)char endChar:(unint64_t)endChar rightToLeft:(BOOL)left sameLine:(BOOL)line;
- (id)copyWithZone:(_NSZone *)zone;
- (id)visualRangesArray;
- (int64_t)compare:(id)compare;
- (void)dealloc;
- (void)i_setVisualRanges:(const void *)ranges;
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

- (TSWPSelection)initWithType:(int)type range:(_NSRange)range styleInsertionBehavior:(int)behavior caretAffinity:(int)affinity smartFieldRange:(_NSRange)fieldRange leadingEdge:(BOOL)edge leadingCharIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  fieldRangeCopy = fieldRange;
  v20.receiver = self;
  v20.super_class = TSWPSelection;
  v14 = [(TSWPSelection *)&v20 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    v14->_range.location = location;
    v14->_range.length = length;
    v14->_leadingEdge = edge;
    v14->_leadingCharIndex = index;
    v14->_styleInsertionBehavior = behavior;
    v14->_caretAffinity = affinity;
    if (type == 6)
    {
      v16 = &fieldRangeCopy;
    }

    else
    {
      v16 = MEMORY[0x277D6C268];
      if (fieldRange.location != *MEMORY[0x277D6C268] || fieldRange.length != *(MEMORY[0x277D6C268] + 8))
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPSelection initWithType:range:styleInsertionBehavior:caretAffinity:smartFieldRange:leadingEdge:leadingCharIndex:]"];
        [currentHandler handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPSelection.mm"), 105, @"Non smartfield selection has smartField range"}];
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

- (TSWPSelection)initWithType:(int)type range:(_NSRange)range styleInsertionBehavior:(int)behavior caretAffinity:(int)affinity smartFieldRange:(_NSRange)fieldRange leadingEdge:(BOOL)edge storage:(id)storage
{
  v9 = *&affinity;
  v10 = *&behavior;
  length = range.length;
  location = range.location;
  v13 = *&type;
  if (type != 7 || storage || edge)
  {
    if (type == 7 && storage && !edge)
    {
      [storage nextCharacterIndex:range.location];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPSelection initWithType:range:styleInsertionBehavior:caretAffinity:smartFieldRange:leadingEdge:storage:]"];
    [currentHandler handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPSelection.mm"), 122, @"Selection has a leading edge but no storage to get the leading char"}];
  }

  return [TSWPSelection initWithType:"initWithType:range:styleInsertionBehavior:caretAffinity:smartFieldRange:leadingEdge:leadingCharIndex:" range:v13 styleInsertionBehavior:location caretAffinity:length smartFieldRange:v10 leadingEdge:v9 leadingCharIndex:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  LOBYTE(v6) = self->_leadingEdge;
  return [v4 initWithType:self->_type range:self->_range.location styleInsertionBehavior:self->_range.length caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:self->_smartFieldRange.location leadingCharIndex:{self->_smartFieldRange.length, v6, self->_leadingCharIndex}];
}

+ (TSWPSelection)selectionWithRange:(_NSRange)range
{
  v3 = [[self alloc] initWithRange:{range.location, range.length}];

  return v3;
}

+ (TSWPSelection)selectionWithRange:(_NSRange)range type:(int)type leadingEdge:(BOOL)edge storage:(id)storage
{
  v8 = *&type;
  length = range.length;
  location = range.location;
  v11 = [self alloc];
  LOBYTE(v14) = edge;
  v12 = [v11 initWithType:v8 range:location styleInsertionBehavior:length caretAffinity:0 smartFieldRange:0 leadingEdge:*MEMORY[0x277D6C268] storage:{*(MEMORY[0x277D6C268] + 8), v14, storage}];

  return v12;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSWPSelection;
  [(TSWPSelection *)&v2 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  result = (objc_opt_isKindOfClass() & 1) != 0 && (self->_range.location == *(equal + 2) ? (v5 = self->_range.length == *(equal + 3)) : (v5 = 0), v5 && self->_type == *(equal + 2) && self->_styleInsertionBehavior == *(equal + 17) && self->_caretAffinity == *(equal + 18) && (self->_smartFieldRange.location == *(equal + 10) ? (v6 = self->_smartFieldRange.length == *(equal + 11)) : (v6 = 0), v6)) && self->_leadingEdge == *(equal + 48);
  return result;
}

- (int64_t)compare:(id)compare
{
  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {
    v5 = result;
    if (-[TSWPSelection isValid](self, "isValid") && [v5 isValid])
    {
      range = [(TSWPSelection *)self range];
      if (range < [v5 range])
      {
        return -1;
      }

      range2 = [(TSWPSelection *)self range];
      if (range2 <= [v5 range])
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

- (BOOL)isEquivalentForInsertionStyle:(id)style
{
  if (style == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  range = [(TSWPSelection *)self range];
  v7 = v6;
  range2 = [style range];
  result = 0;
  if (range == range2 && v7 == v8)
  {
    return self->_type == *(style + 2);
  }

  return result;
}

- (id)copyWithNewType:(int)type smartFieldRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = *&type;
  v8 = objc_alloc(objc_opt_class());
  LOBYTE(v10) = self->_leadingEdge;
  return [v8 initWithType:v6 range:self->_range.location styleInsertionBehavior:self->_range.length caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:location leadingCharIndex:{length, v10, self->_leadingCharIndex}];
}

- (id)copyWithNewType:(int)type range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = *&type;
  if (type == 6)
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

- (id)copyWithNewVisualTypeRange:(_NSRange)range head:(unint64_t)head tail:(unint64_t)tail
{
  length = range.length;
  location = range.location;
  v10 = objc_alloc(objc_opt_class());
  LOBYTE(v13) = self->_leadingEdge;
  v11 = [v10 initWithType:7 range:location styleInsertionBehavior:length caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:self->_smartFieldRange.location leadingCharIndex:{self->_smartFieldRange.length, v13, self->_leadingCharIndex}];
  [v11 setHeadChar:head tailChar:tail];
  return v11;
}

- (id)copyWithNewType:(int)type
{
  v3 = *&type;
  if (type == 6)
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

- (id)copyWithNewRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  LOBYTE(v10) = 1;
  v6 = [objc_alloc(objc_opt_class()) initWithType:self->_type range:location styleInsertionBehavior:range.length caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:self->_smartFieldRange.location leadingCharIndex:{self->_smartFieldRange.length, v10, location}];
  v7 = v6;
  if (self->_type == 7 && self->_validVisualRanges && location == self->_range.location && length == self->_range.length)
  {
    [v6 i_setVisualRanges:&self->_visualRanges];
  }

  return v7;
}

- (id)copyWithNewVisualRanges:(const void *)ranges
{
  v5 = objc_alloc(objc_opt_class());
  v6 = *(ranges + 1);
  if (*ranges == v6)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = **ranges;
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
  [v11 i_setVisualRanges:ranges];
  return v11;
}

- (id)copyWithVisualRanges:(const void *)ranges startChar:(unint64_t)char endChar:(unint64_t)endChar rightToLeft:(BOOL)left sameLine:(BOOL)line
{
  lineCopy = line;
  leftCopy = left;
  if (self->_type != 7)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPSelection copyWithVisualRanges:startChar:endChar:rightToLeft:sameLine:]"];
    [currentHandler handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPSelection.mm"), 339, @"Selection type must be visual"}];
  }

  v15 = objc_alloc(objc_opt_class());
  LOBYTE(v21) = self->_leadingEdge;
  v16 = [v15 initWithType:self->_type range:self->_range.location styleInsertionBehavior:self->_range.length caretAffinity:self->_styleInsertionBehavior smartFieldRange:self->_caretAffinity leadingEdge:self->_smartFieldRange.location leadingCharIndex:{self->_smartFieldRange.length, v21, self->_leadingCharIndex}];
  [v16 i_setVisualRanges:ranges];
  if (lineCopy && leftCopy)
  {
    v17 = v16;
    charCopy2 = endChar;
    endCharCopy2 = char;
  }

  else
  {
    v17 = v16;
    charCopy2 = char;
    endCharCopy2 = endChar;
  }

  [v17 setHeadChar:charCopy2 tailChar:endCharCopy2];
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
      range = v6;
    }

    else
    {
      range = location;
    }

    v9 = v7 - range;
  }

  else
  {

    range = [(TSWPSelection *)self range];
  }

  result.length = v9;
  result.location = range;
  return result;
}

- (void)i_setVisualRanges:(const void *)ranges
{
  p_visualRanges = &self->_visualRanges;
  if (p_visualRanges != ranges)
  {
    std::vector<_NSRange>::__assign_with_size[abi:nn200100]<_NSRange*,_NSRange*>(p_visualRanges, *ranges, *(ranges + 1), (*(ranges + 1) - *ranges) >> 4);
  }

  self->_validVisualRanges = 1;
}

- (const)visualRanges
{
  if (!self->_validVisualRanges)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPSelection visualRanges]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPSelection.mm"), 394, @"Visual ranges have not been calculated"}];
  }

  return &self->_visualRanges;
}

- (id)visualRangesArray
{
  if (self->_type == 7 && !self->_validVisualRanges && [(TSWPSelection *)self isRange])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPSelection visualRangesArray]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPSelection.mm"), 406, @"Visual ranges have not been calculated"}];
  }

  p_visualRanges = &self->_visualRanges;
  v6 = self->_visualRanges.__end_ - self->_visualRanges.__begin_;
  v7 = MEMORY[0x277CBEB18];
  if (v6 < 2)
  {
    v11 = MEMORY[0x277CCAE60];
    superRange = [(TSWPSelection *)self superRange];
    v14 = [v11 valueWithRange:{superRange, v13}];

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

- (BOOL)containsCharacterAtIndex:(unint64_t)index
{
  location = self->_range.location;
  v5 = index >= location;
  v4 = index - location;
  v5 = !v5 || v4 >= self->_range.length;
  return !v5;
}

- (BOOL)containsCharacterAtIndex:(unint64_t)index allowRightEdge:(BOOL)edge
{
  location = self->_range.location;
  if (edge)
  {
    return index - location <= self->_range.length;
  }

  v7 = index >= location;
  v6 = index - location;
  v7 = !v7 || v6 >= self->_range.length;
  return !v7;
}

- (BOOL)intersectsRange:(_NSRange)range
{
  p_range = &self->_range;
  v4.length = self->_range.length;
  if (v4.length)
  {
    v4.location = p_range->location;
    return NSIntersectionRange(v4, range).length != 0;
  }

  else
  {
    location = p_range->location;
    v8 = location >= range.location && location - range.location < range.length;
    v9 = location == range.location;
    if (range.length)
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