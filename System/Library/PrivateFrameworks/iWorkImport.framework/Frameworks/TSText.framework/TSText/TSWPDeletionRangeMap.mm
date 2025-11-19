@interface TSWPDeletionRangeMap
- (BOOL)containsCharIndex:(unint64_t)a3;
- (TSWPDeletionRangeMap)initWithSubRange:(_NSRange)a3 removeRanges:(id)a4;
- (_NSRange)mappedCharRange:(_NSRange)a3;
- (_NSRange)subRange;
- (_NSRange)unmappedCharRange:(_NSRange)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deletedRanges;
- (id)inverseRangesInStorageRange:(_NSRange)a3;
- (unint64_t)mappedCharIndex:(unint64_t)a3;
- (unint64_t)unmappedCharIndex:(unint64_t)a3;
- (void)adjustByDelta:(int64_t)a3 startingAt:(unint64_t)a4;
@end

@implementation TSWPDeletionRangeMap

- (TSWPDeletionRangeMap)initWithSubRange:(_NSRange)a3 removeRanges:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = TSWPDeletionRangeMap;
  v8 = [(TSWPDeletionRangeMap *)&v15 init];
  v11 = v8;
  if (v8)
  {
    v8->_subRange.location = location;
    v8->_subRange.length = length;
    v12 = objc_msgSend_mutableCopy(v7, v9, v10);
    removedRanges = v11->_removedRanges;
    v11->_removedRanges = v12;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSWPDeletionRangeMap alloc];
  length = self->_subRange.length;
  removedRanges = self->_removedRanges;
  location = self->_subRange.location;

  return objc_msgSend_initWithSubRange_removeRanges_(v4, v5, location, length, removedRanges);
}

- (unint64_t)mappedCharIndex:(unint64_t)a3
{
  if (self->_subRange.location > a3)
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
  v8[5] = a3;
  objc_msgSend_enumerateRanges_(removedRanges, a2, v8);
  v3 = a3 - self->_subRange.location - *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v3;
}

- (unint64_t)unmappedCharIndex:(unint64_t)a3
{
  v4 = self->_subRange.location + a3;
  v5 = objc_msgSend_preferDeletedRangeStartsForUnmapping(self, a2, a3);
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

- (_NSRange)mappedCharRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = objc_msgSend_mappedCharIndex_(self, a2, a3.location);
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

- (_NSRange)unmappedCharRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = objc_msgSend_unmappedCharIndex_(self, a2, a3.location);
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

- (void)adjustByDelta:(int64_t)a3 startingAt:(unint64_t)a4
{
  location = self->_subRange.location;
  if (location >= a4)
  {
    self->_subRange.location = location + a3;
  }

  v8 = objc_msgSend_rangeCount(self->_removedRanges, a2, a3);
  if (v8)
  {
    v10 = v8;
    for (i = 0; i != v10; ++i)
    {
      v12 = objc_msgSend_rangeAtIndex_(self->_removedRanges, v9, i);
      if (v12 >= a4)
      {
        objc_msgSend_replaceRangeAtIndex_withRange_(self->_removedRanges, v9, i, v12 + a3, v9);
      }
    }
  }
}

- (id)inverseRangesInStorageRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
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

- (BOOL)containsCharIndex:(unint64_t)a3
{
  if (self->_subRange.location <= a3 && (v5 = objc_msgSend_rangeCount(self->_removedRanges, a2, a3)) != 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = v5 - 1;
    do
    {
      v10 = objc_msgSend_rangeAtIndex_(self->_removedRanges, v6, v8);
      v11 = a3 - v10 < v6 && a3 >= v10;
      v7 |= v11;
    }

    while (a3 > v10 && a3 - v10 >= v6 && v9 != v8++);
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