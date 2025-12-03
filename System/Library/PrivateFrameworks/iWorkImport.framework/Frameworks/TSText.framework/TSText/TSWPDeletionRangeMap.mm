@interface TSWPDeletionRangeMap
- (BOOL)containsCharIndex:(unint64_t)index;
- (TSWPDeletionRangeMap)initWithSubRange:(_NSRange)range removeRanges:(id)ranges;
- (_NSRange)mappedCharRange:(_NSRange)range;
- (_NSRange)subRange;
- (_NSRange)unmappedCharRange:(_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deletedRanges;
- (id)inverseRangesInStorageRange:(_NSRange)range;
- (unint64_t)mappedCharIndex:(unint64_t)index;
- (unint64_t)unmappedCharIndex:(unint64_t)index;
- (void)adjustByDelta:(int64_t)delta startingAt:(unint64_t)at;
@end

@implementation TSWPDeletionRangeMap

- (TSWPDeletionRangeMap)initWithSubRange:(_NSRange)range removeRanges:(id)ranges
{
  length = range.length;
  location = range.location;
  rangesCopy = ranges;
  v15.receiver = self;
  v15.super_class = TSWPDeletionRangeMap;
  v8 = [(TSWPDeletionRangeMap *)&v15 init];
  v11 = v8;
  if (v8)
  {
    v8->_subRange.location = location;
    v8->_subRange.length = length;
    v12 = objc_msgSend_mutableCopy(rangesCopy, v9, v10);
    removedRanges = v11->_removedRanges;
    v11->_removedRanges = v12;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSWPDeletionRangeMap alloc];
  length = self->_subRange.length;
  removedRanges = self->_removedRanges;
  location = self->_subRange.location;

  return objc_msgSend_initWithSubRange_removeRanges_(v4, v5, location, length, removedRanges);
}

- (unint64_t)mappedCharIndex:(unint64_t)index
{
  if (self->_subRange.location > index)
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  removedRanges = self->_removedRanges;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_276E1C720;
  v8[3] = &unk_27A6F5050;
  v8[4] = &v9;
  v8[5] = index;
  objc_msgSend_enumerateRanges_(removedRanges, a2, v8);
  v3 = index - self->_subRange.location - *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v3;
}

- (unint64_t)unmappedCharIndex:(unint64_t)index
{
  v4 = self->_subRange.location + index;
  v5 = objc_msgSend_preferDeletedRangeStartsForUnmapping(self, a2, index);
  v8 = objc_msgSend_rangeCount(self->_removedRanges, v6, v7);
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    for (i = 0; i != v10; ++i)
    {
      v13 = objc_msgSend_rangeAtIndex_(self->_removedRanges, v9, i) - v11;
      v14 = v13 > v4;
      if (v13 == v4)
      {
        v15 = v5;
      }

      else
      {
        v15 = 0;
      }

      if (v14)
      {
        break;
      }

      if (v15)
      {
        break;
      }

      v11 += v9;
    }

    v16 = v11;
  }

  else
  {
    v16 = 0;
  }

  return v4 + v16;
}

- (_NSRange)mappedCharRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_msgSend_mappedCharIndex_(self, a2, range.location);
  v8 = objc_msgSend_mappedCharIndex_(self, v7, location + length);
  if (v6 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v6 < v8)
  {
    v8 = v6;
  }

  v10 = v9 - v8;
  result.length = v10;
  result.location = v8;
  return result;
}

- (_NSRange)unmappedCharRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_msgSend_unmappedCharIndex_(self, a2, range.location);
  v8 = v6;
  if (length)
  {
    v9 = objc_msgSend_unmappedCharIndex_(self, v7, length + location - 1) + 1;
  }

  else
  {
    v9 = v6;
  }

  if (v8 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (v8 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = v10 - v11;
  result.length = v12;
  result.location = v11;
  return result;
}

- (void)adjustByDelta:(int64_t)delta startingAt:(unint64_t)at
{
  location = self->_subRange.location;
  if (location >= at)
  {
    self->_subRange.location = location + delta;
  }

  v8 = objc_msgSend_rangeCount(self->_removedRanges, a2, delta);
  if (v8)
  {
    v10 = v8;
    for (i = 0; i != v10; ++i)
    {
      v12 = objc_msgSend_rangeAtIndex_(self->_removedRanges, v9, i);
      if (v12 >= at)
      {
        objc_msgSend_replaceRangeAtIndex_withRange_(self->_removedRanges, v9, i, v12 + delta, v9);
      }
    }
  }
}

- (id)inverseRangesInStorageRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [TSWPMutableRangeArray alloc];
  v8 = objc_msgSend_initWithRange_(v6, v7, location, length);
  removedRanges = self->_removedRanges;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_276E1CA40;
  v16[3] = &unk_27A6F5078;
  v17 = v8;
  v10 = v8;
  objc_msgSend_enumerateRanges_(removedRanges, v11, v16);
  v14 = objc_msgSend_copy(v10, v12, v13);

  return v14;
}

- (id)deletedRanges
{
  v3 = objc_msgSend_copy(self->_removedRanges, a2, v2);

  return v3;
}

- (BOOL)containsCharIndex:(unint64_t)index
{
  if (self->_subRange.location <= index && (v5 = objc_msgSend_rangeCount(self->_removedRanges, a2, index)) != 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = v5 - 1;
    do
    {
      v10 = objc_msgSend_rangeAtIndex_(self->_removedRanges, v6, v8);
      v11 = index - v10 < v6 && index >= v10;
      v7 |= v11;
    }

    while (index > v10 && index - v10 >= v6 && v9 != v8++);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (_NSRange)subRange
{
  length = self->_subRange.length;
  location = self->_subRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end