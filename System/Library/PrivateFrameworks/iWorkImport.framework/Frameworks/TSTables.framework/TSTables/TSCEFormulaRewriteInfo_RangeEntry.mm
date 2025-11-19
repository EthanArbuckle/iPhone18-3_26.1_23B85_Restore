@interface TSCEFormulaRewriteInfo_RangeEntry
- (TSCEFormulaRewriteInfo_RangeEntry)initWithRange:(_NSRange)a3 orderedUuids:(const void *)a4 offset:(unsigned int)a5;
- (_NSRange)range;
- (id).cxx_construct;
- (id)initFromMessage:(const void *)a3;
- (void)saveToMessage:(void *)a3;
@end

@implementation TSCEFormulaRewriteInfo_RangeEntry

- (TSCEFormulaRewriteInfo_RangeEntry)initWithRange:(_NSRange)a3 orderedUuids:(const void *)a4 offset:(unsigned int)a5
{
  length = a3.length;
  location = a3.location;
  v13.receiver = self;
  v13.super_class = TSCEFormulaRewriteInfo_RangeEntry;
  v9 = [(TSCEFormulaRewriteInfo_RangeEntry *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_range.location = location;
    v9->_range.length = length;
    p_orderedUuids = &v9->_orderedUuids;
    if (&v10->_orderedUuids != a4)
    {
      sub_2210BD068(p_orderedUuids, *a4, *(a4 + 1), (*(a4 + 1) - *a4) >> 4);
    }

    v10->_offset = a5;
  }

  return v10;
}

- (id)initFromMessage:(const void *)a3
{
  v4 = *(a3 + 12);
  v5 = *(a3 + 13);
  v6 = *(a3 + 14);
  sub_22123EA84(__p, a3 + 24);
  v8 = objc_msgSend_initWithRange_orderedUuids_offset_(self, v7, v4, v5, __p, v6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v8;
}

- (void)saveToMessage:(void *)a3
{
  v3 = *(a3 + 4);
  *(a3 + 4) = v3 | 3;
  *(a3 + 6) = vmovn_s64(self->_range);
  offset = self->_offset;
  *(a3 + 4) = v3 | 7;
  *(a3 + 14) = offset;
  sub_22123ACF4(&self->_orderedUuids.__begin_, a3 + 3);
}

- (_NSRange)range
{
  objc_copyStruct(v4, &self->_range, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end