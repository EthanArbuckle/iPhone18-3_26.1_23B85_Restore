@interface TSWPDirtyRangeArray
- (BOOL)isEqualToDirtyRangeArray:(id)array;
- (TSWPDirtyRangeArray)init;
- (TSWPDirtyRangeArray)initWithDirtyRange:(id *)range;
- (TSWPDirtyRangeArray)initWithRangeVector:(const void *)vector;
- (_NSRange)superRange;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dirtyRangesIntersecting:(_NSRange)intersecting;
- (id)inclusiveDirtyRangesIntersecting:(_NSRange)intersecting;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)delta;
- (unint64_t)indexForRange:(_NSRange)range;
- (void)enumerateWithBlock:(id)block;
@end

@implementation TSWPDirtyRangeArray

- (TSWPDirtyRangeArray)init
{
  v3.receiver = self;
  v3.super_class = TSWPDirtyRangeArray;
  return [(TSWPDirtyRangeArray *)&v3 init];
}

- (TSWPDirtyRangeArray)initWithDirtyRange:(id *)range
{
  v4 = objc_msgSend_init(self, a2, range);
  v5 = v4;
  if (v4)
  {
    sub_276E30510(v4 + 8, range);
  }

  return v5;
}

- (TSWPDirtyRangeArray)initWithRangeVector:(const void *)vector
{
  v4 = objc_msgSend_init(self, a2, vector);
  v5 = v4;
  if (v4)
  {
    v6 = (v4 + 8);
    if (&v5->_rangeVector != vector)
    {
      sub_276E3174C(v6, *vector, *(vector + 1), 0xAAAAAAAAAAAAAAABLL * ((*(vector + 1) - *vector) >> 3));
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSWPDirtyRangeArray alloc];

  return objc_msgSend_initWithRangeVector_(v4, v5, &self->_rangeVector);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSWPMutableDirtyRangeArray alloc];

  return objc_msgSend_initWithRangeVector_(v4, v5, &self->_rangeVector);
}

- (void)enumerateWithBlock:(id)block
{
  blockCopy = block;
  v13 = 0;
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (begin != end)
  {
    v7 = (begin + 24);
    do
    {
      v11 = *(v7 - 24);
      v12 = *(v7 - 1);
      v10 = v12;
      v9 = v11;
      blockCopy[2](blockCopy, &v9, &v13);
      if (v13)
      {
        break;
      }

      v8 = v7 == end;
      v7 = (v7 + 24);
    }

    while (!v8);
  }
}

- (BOOL)isEqualToDirtyRangeArray:(id)array
{
  arrayCopy = array;
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  v7 = arrayCopy[1];
  if (end - begin == arrayCopy[2] - v7)
  {
    if (begin == end)
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      do
      {
        v10 = *begin == *v7 && *(begin + 1) == v7[1] && *(begin + 2) == v7[2];
        begin = (begin + 24);
        v7 += 3;
      }

      while (v10 && begin != end);
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (_NSRange)superRange
{
  if (objc_msgSend_isEmpty(self, a2, v2))
  {
    v4 = *MEMORY[0x277D81490];
    v5 = *(MEMORY[0x277D81490] + 8);
  }

  else
  {
    v6 = *self->_rangeVector.__begin_;
    v7 = *(self->_rangeVector.__end_ - 2) + *(self->_rangeVector.__end_ - 3);
    if (v6 <= v7)
    {
      v8 = *(self->_rangeVector.__end_ - 2) + *(self->_rangeVector.__end_ - 3);
    }

    else
    {
      v8 = *self->_rangeVector.__begin_;
    }

    if (v6 >= v7)
    {
      v4 = *(self->_rangeVector.__end_ - 2) + *(self->_rangeVector.__end_ - 3);
    }

    else
    {
      v4 = *self->_rangeVector.__begin_;
    }

    v5 = v8 - v4;
  }

  result.length = v5;
  result.location = v4;
  return result;
}

- (int64_t)delta
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
    result += *(begin + 2);
    begin = (begin + 24);
  }

  while (begin != end);
  return result;
}

- (unint64_t)indexForRange:(_NSRange)range
{
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (end != begin)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    v6 = self->_rangeVector.__begin_;
    do
    {
      v7 = v5 >> 1;
      v8 = (v6 + 24 * (v5 >> 1));
      v10 = *v8;
      v9 = (v8 + 3);
      v5 += ~(v5 >> 1);
      if (v10 < range.location)
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
      if (*v6 == range.location)
      {
        v11 = 24;
        if (range.length >= *(v6 + 1))
        {
          v11 = 0;
        }

        end = (v6 + v11);
      }

      else
      {
        end = v6;
      }
    }
  }

  return 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
}

- (id)dirtyRangesIntersecting:(_NSRange)intersecting
{
  length = intersecting.length;
  location = intersecting.location;
  v8 = objc_opt_new();
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (begin != end)
  {
    v11 = (begin + 24);
    do
    {
      v23.location = location;
      v23.length = length;
      v12 = NSIntersectionRange(v23, *(v11 - 24));
      v6 = v12.length;
      if (!v12.length)
      {
        v14 = *(v11 - 3);
        v15 = *(v11 - 2);
        if (v15)
        {
          goto LABEL_12;
        }

        if (v14 < location || v14 - location >= length)
        {
          v15 = 0;
          goto LABEL_12;
        }
      }

      v13 = *(v11 - 24);
      v21 = *(v11 - 1);
      v20 = v13;
      objc_msgSend_addRange_allowEmpty_(v8, v12.length, &v20, 1);
      v14 = *(v11 - 3);
      v15 = *(v11 - 2);
LABEL_12:
      v17 = location + length < v15 + v14 || v11 == end;
      v11 = (v11 + 24);
    }

    while (!v17);
  }

  v18 = objc_msgSend_copy(v8, v6, v7);

  return v18;
}

- (id)inclusiveDirtyRangesIntersecting:(_NSRange)intersecting
{
  length = intersecting.length;
  location = intersecting.location;
  v8 = objc_opt_new();
  begin = self->_rangeVector.__begin_;
  end = self->_rangeVector.__end_;
  if (begin != end)
  {
    v11 = (begin + 24);
    do
    {
      v23.location = location;
      v23.length = length;
      v12 = NSIntersectionRange(v23, *(v11 - 24));
      v6 = v12.length;
      if (!v12.length)
      {
        v14 = *(v11 - 3);
        v15 = *(v11 - 2);
        if (v15)
        {
          goto LABEL_12;
        }

        if (v14 < location || v14 - location > length)
        {
          v15 = 0;
          goto LABEL_12;
        }
      }

      v13 = *(v11 - 24);
      v21 = *(v11 - 1);
      v20 = v13;
      objc_msgSend_addRange_allowEmpty_(v8, v12.length, &v20, 1);
      v14 = *(v11 - 3);
      v15 = *(v11 - 2);
LABEL_12:
      v17 = location + length < v15 + v14 || v11 == end;
      v11 = (v11 + 24);
    }

    while (!v17);
  }

  v18 = objc_msgSend_copy(v8, v6, v7);

  return v18;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end