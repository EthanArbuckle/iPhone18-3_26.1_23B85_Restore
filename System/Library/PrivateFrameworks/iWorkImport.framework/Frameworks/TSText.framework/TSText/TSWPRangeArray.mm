@interface TSWPRangeArray
+ (TSWPRangeArray)rangeArrayWithIndexSet:(id)set;
+ (TSWPRangeArray)rangeArrayWithRange:(_NSRange)range;
+ (id)rangeArray;
- (BOOL)containsAllRanges:(id)ranges;
- (BOOL)containsCharacterAtIndex:(unint64_t)index inclusive:(BOOL)inclusive;
- (BOOL)containsRange:(_NSRange)range;
- (BOOL)intersectsRange:(_NSRange)range;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRangeArray:(id)array;
- (NSIndexSet)indexes;
- (TSWPRangeArray)init;
- (TSWPRangeArray)initWithIndexSet:(id)set;
- (TSWPRangeArray)initWithRange:(_NSRange)range;
- (TSWPRangeArray)initWithRangeVector:(const void *)vector;
- (_NSRange)firstRange;
- (_NSRange)lastRange;
- (_NSRange)rangeAtIndex:(unint64_t)index;
- (_NSRange)rangeContainingPosition:(unint64_t)position;
- (_NSRange)superRange;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)intersection:(_NSRange)intersection;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)rangesByCollapsingEmptyRanges;
- (id)rangesByIntersectingWithRanges:(id)ranges;
- (id)rangesByRemovingRangesInIndexRange:(_NSRange)range;
- (id)rangesByXoringWithRanges:(id)ranges;
- (id)rangesIntersecting:(_NSRange)intersecting;
- (unint64_t)hash;
- (unint64_t)indexCount;
- (unint64_t)indexForRange:(_NSRange)range;
- (unint64_t)indexOfRangeContainingPosition:(unint64_t)position;
- (unint64_t)p_finish;
- (unint64_t)p_start;
- (vector<_NSRange,)rangeVector;
- (void)enumerateRanges:(id)ranges;
- (void)enumerateRangesInRange:(_NSRange)range usingBlock:(id)block;
- (void)reverseEnumerateRanges:(id)ranges;
@end

@implementation TSWPRangeArray

+ (id)rangeArray
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (TSWPRangeArray)rangeArrayWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initWithRange_(v5, v6, location, length);

  return v7;
}

+ (TSWPRangeArray)rangeArrayWithIndexSet:(id)set
{
  setCopy = set;
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithIndexSet_(v4, v5, setCopy);

  return v6;
}

- (TSWPRangeArray)init
{
  v3.receiver = self;
  v3.super_class = TSWPRangeArray;
  return [(TSWPRangeArray *)&v3 init];
}

- (TSWPRangeArray)initWithRange:(_NSRange)range
{
  v3 = objc_msgSend_init(self, a2, range.location, range.location, range.length);
  v4 = v3;
  if (v3)
  {
    sub_276D20ABC(v3 + 8, &v6);
  }

  return v4;
}

- (TSWPRangeArray)initWithRangeVector:(const void *)vector
{
  v4 = objc_msgSend_init(self, a2, vector);
  v5 = v4;
  if (v4)
  {
    v6 = (v4 + 8);
    if (&v5->_rangeVector != vector)
    {
      sub_276E17544(v6, *vector, *(vector + 1), (*(vector + 1) - *vector) >> 4);
    }
  }

  return v5;
}

- (TSWPRangeArray)initWithIndexSet:(id)set
{
  setCopy = set;
  v7 = objc_msgSend_init(self, v5, v6);
  v8 = v7;
  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_276E1513C;
    v11[3] = &unk_27A6F4FB0;
    v12 = v7;
    objc_msgSend_enumerateRangesUsingBlock_(setCopy, v9, v11);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [TSWPRangeArray alloc];

    return objc_msgSend_initWithRangeVector_(v3, self, &self->_rangeVector);
  }

  else
  {

    return self;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSWPMutableRangeArray alloc];

  return objc_msgSend_initWithRangeVector_(v4, v5, &self->_rangeVector);
}

- (BOOL)isEqualToRangeArray:(id)array
{
  arrayCopy = array;
  if (arrayCopy && (begin = self->_rangeVector.__begin_, end = self->_rangeVector.__end_, v7 = arrayCopy[1], end - begin == arrayCopy[2] - v7))
  {
    if (end == begin)
    {
      v14 = 1;
    }

    else
    {
      v8 = end - begin;
      if (v8 <= 1)
      {
        v8 = 1;
      }

      v9 = v8 - 1;
      do
      {
        v10 = *begin++;
        v11 = v10;
        v12 = *v7++;
        v13 = vmovn_s64(vceqq_s64(v11, v12));
        v14 = v13.i8[0] & v13.i8[4];
        v16 = v9-- != 0;
      }

      while ((v13.i8[0] & v13.i8[4] & 1) != 0 && v16);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToRangeArray = 1;
  }

  else
  {
    objc_opt_class();
    v6 = TSUDynamicCast();
    if (v6)
    {
      isEqualToRangeArray = objc_msgSend_isEqualToRangeArray_(self, v5, v6);
    }

    else
    {
      isEqualToRangeArray = 0;
    }
  }

  return isEqualToRangeArray;
}

- (unint64_t)hash
{
  v3 = TSUHash();
  if (self->_rangeVector.__end_ != self->_rangeVector.__begin_)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v3 = TSUHashWithSeed();
      ++v5;
      v4 += 16;
    }

    while (v5 < self->_rangeVector.__end_ - self->_rangeVector.__begin_);
  }

  return v3;
}

- (_NSRange)superRange
{
  v4 = objc_msgSend_p_start(self, a2, v2);
  v7 = objc_msgSend_p_finish(self, v5, v6);
  if (v4 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (v4 < v7)
  {
    v7 = v4;
  }

  v9 = v8 - v7;
  result.length = v9;
  result.location = v7;
  return result;
}

- (_NSRange)rangeAtIndex:(unint64_t)index
{
  begin = self->_rangeVector.__begin_;
  if (index >= self->_rangeVector.__end_ - begin)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPRangeArray rangeAtIndex:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRangeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 149, 0, "Illegal index %lu", index);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    p_location = MEMORY[0x277D81490];
  }

  else
  {
    p_location = &begin[index].location;
  }

  v13 = *p_location;
  v14 = p_location[1];
  result.length = v14;
  result.location = v13;
  return result;
}

- (_NSRange)lastRange
{
  location = *MEMORY[0x277D81490];
  length = *(MEMORY[0x277D81490] + 8);
  v6 = objc_msgSend_rangeCount(self, a2, v2);
  if (v6)
  {
    v7 = &self->_rangeVector.__begin_[v6];
    location = v7[-1].location;
    length = v7[-1].length;
  }

  v8 = location;
  v9 = length;
  result.length = v9;
  result.location = v8;
  return result;
}

- (_NSRange)firstRange
{
  location = *MEMORY[0x277D81490];
  length = *(MEMORY[0x277D81490] + 8);
  if (objc_msgSend_rangeCount(self, a2, v2))
  {
    begin = self->_rangeVector.__begin_;
    location = begin->location;
    length = begin->length;
  }

  v7 = location;
  v8 = length;
  result.length = v8;
  result.location = v7;
  return result;
}

- (void)enumerateRanges:(id)ranges
{
  rangesCopy = ranges;
  v11 = 0;
  v7 = objc_msgSend_rangeCount(self, v5, v6);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      rangesCopy[2](rangesCopy, self->_rangeVector.__begin_[v8].location, self->_rangeVector.__begin_[v8].length, v9 - 1, &v11);
      if (v11)
      {
        break;
      }

      ++v8;
    }

    while (v9++ < v7);
  }
}

- (void)reverseEnumerateRanges:(id)ranges
{
  rangesCopy = ranges;
  v7 = objc_msgSend_rangeCount(self, v5, v6);
  v8 = v7;
  for (i = v7 - 1; (i & 0x8000000000000000) == 0; i = v11)
  {
    v10 = &self->_rangeVector.__begin_[v8--];
    v11 = i - 1;
    rangesCopy[2](rangesCopy, v10[-1].location, v10[-1].length);
  }
}

- (void)enumerateRangesInRange:(_NSRange)range usingBlock:(id)block
{
  length = range.length;
  location = range.location;
  blockCopy = block;
  v18 = 0;
  v10 = objc_msgSend_rangeCount(self, v8, v9);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = &self->_rangeVector.__begin_[v11];
      v15 = v14->location;
      v19.location = location;
      v19.length = length;
      v16 = NSIntersectionRange(v19, *v14);
      if (v16.length)
      {
        blockCopy[2](blockCopy, v16.location, v16.length, &v18);
        v12 = 1;
      }

      else
      {
        v18 = v12;
      }

      if (v15 >= location + length)
      {
        break;
      }

      if (v18)
      {
        break;
      }

      ++v11;
    }

    while (v13++ < v10);
  }
}

- (unint64_t)indexCount
{
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (begin == end)
  {
    return 0;
  }

  result = 0;
  do
  {
    result += begin->length;
    ++begin;
  }

  while (begin != end);
  return result;
}

- (NSIndexSet)indexes
{
  v5 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], a2, v2);
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  while (begin != end)
  {
    objc_msgSend_addIndexesInRange_(v5, v4, begin->location, begin->length);
    ++begin;
  }

  return v5;
}

- (BOOL)containsCharacterAtIndex:(unint64_t)index inclusive:(BOOL)inclusive
{
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (end != begin)
  {
    v6 = end - begin;
    end = self->_rangeVector.__begin_;
    do
    {
      v7 = v6 >> 1;
      v8 = &end[v6 >> 1];
      location = v8->location;
      v9 = v8 + 1;
      v6 += ~(v6 >> 1);
      if (location > index)
      {
        v6 = v7;
      }

      else
      {
        end = v9;
      }
    }

    while (v6);
  }

  if (end == begin)
  {
    return 0;
  }

  v11 = end[-1].location;
  length = end[-1].length;
  if (index >= v11 && index - v11 < length)
  {
    return 1;
  }

  result = 0;
  if (inclusive && length + v11 == index)
  {
    return 1;
  }

  return result;
}

- (BOOL)containsRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = objc_msgSend_rangeContainingPosition_(self, a2, range.location);
  v7 = v5 + v6 >= location + length;
  if (v5 > location)
  {
    v7 = 0;
  }

  return v5 != 0x7FFFFFFFFFFFFFFFLL && v7;
}

- (BOOL)containsAllRanges:(id)ranges
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_276E15A6C;
  v5[3] = &unk_27A6F3B60;
  v5[4] = self;
  v5[5] = &v6;
  objc_msgSend_enumerateRanges_(ranges, a2, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (_NSRange)rangeContainingPosition:(unint64_t)position
{
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (end != begin)
  {
    v5 = end - begin;
    end = self->_rangeVector.__begin_;
    do
    {
      v6 = v5 >> 1;
      v7 = &end[v5 >> 1];
      location = v7->location;
      v8 = v7 + 1;
      v5 += ~(v5 >> 1);
      if (location > position)
      {
        v5 = v6;
      }

      else
      {
        end = v8;
      }
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D81490];
  length = *(MEMORY[0x277D81490] + 8);
  if (begin != end && position >= end[-1].location && position - end[-1].location < end[-1].length)
  {
    v10 = end[-1].location;
    length = end[-1].length;
  }

  result.length = length;
  result.location = v10;
  return result;
}

- (unint64_t)indexOfRangeContainingPosition:(unint64_t)position
{
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (end != begin)
  {
    v5 = end - begin;
    end = self->_rangeVector.__begin_;
    do
    {
      v6 = v5 >> 1;
      v7 = &end[v5 >> 1];
      location = v7->location;
      v8 = v7 + 1;
      v5 += ~(v5 >> 1);
      if (location > position)
      {
        v5 = v6;
      }

      else
      {
        end = v8;
      }
    }

    while (v5);
  }

  if (begin == end)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = end[-1].location;
  v12 = position >= v10;
  v11 = position - v10;
  v12 = !v12 || v11 >= end[-1].length;
  if (v12)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return end - begin;
  }
}

- (BOOL)intersectsRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (end == begin)
  {
    v8 = self->_rangeVector.__end_;
  }

  else
  {
    v7 = end - begin;
    v8 = self->_rangeVector.__begin_;
    do
    {
      v9 = v7 >> 1;
      p_location = &v8[v7 >> 1].location;
      v12 = *p_location;
      v11 = (p_location + 2);
      v7 += ~(v7 >> 1);
      if (range.location < v12)
      {
        v7 = v9;
      }

      else
      {
        v8 = v11;
      }
    }

    while (v7);
    if (v8 != end && NSIntersectionRange(range, *v8).length)
    {
      return 1;
    }
  }

  if (v8 == begin)
  {
    return 0;
  }

  v14.location = location;
  v14.length = length;
  return NSIntersectionRange(v14, *(v8 - 16)).length != 0;
}

- (unint64_t)indexForRange:(_NSRange)range
{
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (end != begin)
  {
    v5 = end - begin;
    v6 = self->_rangeVector.__begin_;
    do
    {
      v7 = v5 >> 1;
      v8 = &v6[v5 >> 1];
      location = v8->location;
      v9 = v8 + 1;
      v5 += ~(v5 >> 1);
      if (location < range.location)
      {
        v6 = v9;
      }

      else
      {
        v5 = v7;
      }
    }

    while (v5);
    if (v6 != end)
    {
      if (v6->location == range.location)
      {
        end = &v6[range.length < v6->length];
      }

      else
      {
        end = v6;
      }
    }
  }

  return end - begin;
}

- (id)intersection:(_NSRange)intersection
{
  length = intersection.length;
  location = intersection.location;
  v6 = objc_opt_new();
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (begin != end)
  {
    do
    {
      v9 = begin->location;
      v10 = begin->length;
      v15.location = location;
      v15.length = length;
      v16.location = begin->location;
      v16.length = v10;
      v11 = NSIntersectionRange(v15, v16);
      if (v11.length)
      {
        objc_msgSend_addRange_(v6, v11.length, v11.location, v11.length);
      }

      ++begin;
    }

    while (location + length >= v10 + v9 && begin != end);
  }

  return v6;
}

- (id)rangesIntersecting:(_NSRange)intersecting
{
  length = intersecting.length;
  location = intersecting.location;
  v6 = objc_opt_new();
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (begin != end)
  {
    do
    {
      v9 = begin->location;
      v10 = begin->length;
      v15.location = location;
      v15.length = length;
      v16.location = begin->location;
      v16.length = v10;
      v11 = NSIntersectionRange(v15, v16);
      if (v11.length)
      {
        objc_msgSend_addRange_(v6, v11.length, v9, v10);
      }

      ++begin;
    }

    while (location + length >= v10 + v9 && begin != end);
  }

  return v6;
}

- (id)rangesByIntersectingWithRanges:(id)ranges
{
  rangesCopy = ranges;
  v7 = objc_msgSend_mutableCopy(self, v5, v6);
  objc_msgSend_intersectWithRanges_(v7, v8, rangesCopy);
  v11 = objc_msgSend_copy(v7, v9, v10);

  return v11;
}

- (id)rangesByXoringWithRanges:(id)ranges
{
  rangesCopy = ranges;
  v7 = objc_msgSend_mutableCopy(self, v5, v6);
  objc_msgSend_xor_(v7, v8, rangesCopy);
  v11 = objc_msgSend_copy(v7, v9, v10);

  return v11;
}

- (id)rangesByCollapsingEmptyRanges
{
  if (objc_msgSend_rangeCount(self, a2, v2) > 1)
  {
    __p = 0;
    v16 = 0;
    v17 = 0;
    begin = self->_rangeVector.__begin_;
    end = self->_rangeVector.__end_;
    if (begin == end)
    {
      goto LABEL_8;
    }

    do
    {
      v13 = *begin;
      v14 = v13;
      if (v13.length)
      {
        sub_276D20ABC(&__p, &v13);
      }

      ++begin;
    }

    while (begin != end);
    v4 = self->_rangeVector.__begin_;
    if (v16 - __p == self->_rangeVector.__end_ - v4)
    {
LABEL_8:
      v9 = objc_msgSend_copy(self, v4, v5, v13, v14);
    }

    else
    {
      if (v16 == __p)
      {
        sub_276D20ABC(&__p, v4);
      }

      v10 = [TSWPRangeArray alloc];
      v9 = objc_msgSend_initWithRangeVector_(v10, v11, &__p, v13, v14);
    }

    v6 = v9;
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v6 = objc_msgSend_copy(self, v4, v5);
  }

  return v6;
}

- (id)rangesByRemovingRangesInIndexRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  __p = 0;
  v26 = 0;
  v27 = 0;
  sub_276E174C8(&__p, self->_rangeVector.__begin_, self->_rangeVector.__end_, self->_rangeVector.__end_ - self->_rangeVector.__begin_);
  if (!length || location > 0x7FFFFFFFFFFFFFFELL)
  {
    if (!length && location < 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

LABEL_9:
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSWPRangeArray rangesByRemovingRangesInIndexRange:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPRangeArray.mm");
    v29.location = location;
    v29.length = length;
    v14 = NSStringFromRange(v29);
    v17 = objc_msgSend_rangeCount(self, v15, v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v18, v11, v13, 417, 0, "bad index range to remove: %{public}@ (count:%lu)", v14, v17);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    goto LABEL_10;
  }

  if (location + length > (v26 - __p) >> 4)
  {
    goto LABEL_9;
  }

  v7 = __p + 16 * location;
  v8 = &v7[16 * length];
  v9 = v26 - v8;
  if (v26 != v8)
  {
    memmove(__p + 16 * location, v8, v26 - v8);
  }

  v26 = &v7[v9];
LABEL_10:
  v21 = objc_alloc(objc_opt_class());
  v23 = objc_msgSend_initWithRangeVector_(v21, v22, &__p);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  return v23;
}

- (unint64_t)p_start
{
  result = objc_msgSend_rangeCount(self, a2, v2);
  if (result)
  {
    return self->_rangeVector.__begin_->location;
  }

  return result;
}

- (unint64_t)p_finish
{
  result = objc_msgSend_rangeCount(self, a2, v2);
  if (result)
  {
    return self->_rangeVector.__end_[-1].length + self->_rangeVector.__end_[-1].location;
  }

  return result;
}

- (vector<_NSRange,)rangeVector
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return sub_276E174C8(retstr, self->_rangeVector.__begin_, self->_rangeVector.__end_, self->_rangeVector.__end_ - self->_rangeVector.__begin_);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end