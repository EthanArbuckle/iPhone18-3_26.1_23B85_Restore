@interface TSUIndexSetObj
- (BOOL)containsIndexes:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TSUIndexSetObj)init;
- (TSUIndexSetObj)initWithIndexSet:(id)a3;
- (TSUIndexSetObj)initWithIndexSetCpp:(const TSUIndexSet *)a3;
- (TSUIndexSetObj)initWithNSIndexSet:(id)a3;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)firstIndex;
- (int64_t)lastIndex;
- (unint64_t)count;
- (void)addIndex:(int64_t)a3;
- (void)addIndexes:(id)a3;
- (void)enumerateRangesUsingBlock:(id)a3;
- (void)removeAllIndexes;
- (void)removeIndex:(int64_t)a3;
- (void)removeIndexes:(id)a3;
@end

@implementation TSUIndexSetObj

- (TSUIndexSetObj)init
{
  v3.receiver = self;
  v3.super_class = TSUIndexSetObj;
  return [(TSUIndexSetObj *)&v3 init];
}

- (TSUIndexSetObj)initWithIndexSetCpp:(const TSUIndexSet *)a3
{
  v4 = [(TSUIndexSetObj *)self init];
  v5 = v4;
  if (v4)
  {
    TSUIndexSet::operator=(&v4->_indexSet, a3);
  }

  return v5;
}

- (TSUIndexSetObj)initWithIndexSet:(id)a3
{
  v4 = a3;
  v5 = -[TSUIndexSetObj initWithIndexSetCpp:](self, "initWithIndexSetCpp:", [v4 indexSet]);

  return v5;
}

- (TSUIndexSetObj)initWithNSIndexSet:(id)a3
{
  v4 = a3;
  v5 = [(TSUIndexSetObj *)self init];
  if (v5)
  {
    TSUIndexSet::TSUIndexSet(&v7, v4);
    TSUIndexSet::operator=(&v5->_indexSet, &v7);
    free(v7._multipleRanges);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSUIndexSetObj alloc];

  return [(TSUIndexSetObj *)v4 initWithIndexSetCpp:&self->_indexSet];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = TSUIndexSet::operator==(&self->_indexSet, [v4 indexSet]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)count
{
  if (*&self->_indexSet)
  {
    return 0;
  }

  if ((*&self->_indexSet & 2) == 0)
  {
    return *(self->_indexSet._multipleRanges + 2);
  }

  begin = self->_indexSet._singleRange._begin;
  if (begin > 0x7FFFFFFF)
  {
    return 0;
  }

  end = self->_indexSet._singleRange._end;
  v5 = end - begin;
  if (end <= 0x7FFFFFFF)
  {
    return v5 + 1;
  }

  else
  {
    return 0;
  }
}

- (int64_t)firstIndex
{
  if (*&self->_indexSet)
  {
    return 0x80000000;
  }

  if ((*&self->_indexSet & 2) != 0)
  {
    p_singleRange = &self->_indexSet._singleRange;
  }

  else
  {
    multipleRanges = self->_indexSet._multipleRanges;
    if (!*(multipleRanges + 1))
    {
      return 0x80000000;
    }

    p_singleRange = (multipleRanges + 16 * *(multipleRanges + 3) + 64);
  }

  return p_singleRange->_begin;
}

- (int64_t)lastIndex
{
  if (*&self->_indexSet)
  {
    return 0x80000000;
  }

  if ((*&self->_indexSet & 2) != 0)
  {
    p_singleRange = &self->_indexSet._singleRange;
    v4 = 1;
  }

  else
  {
    multipleRanges = self->_indexSet._multipleRanges;
    v4 = *(multipleRanges + 1);
    if (!v4)
    {
      return 0x80000000;
    }

    p_singleRange = (multipleRanges + 16 * *(multipleRanges + 3) + 64);
  }

  return p_singleRange[v4 - 1]._end;
}

- (BOOL)containsIndexes:(id)a3
{
  v4 = a3;
  LOBYTE(self) = TSUIndexSet::containsIndexes(&self->_indexSet, [v4 indexSet]);

  return self;
}

- (void)enumerateRangesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_277054344;
  v6[3] = &unk_27A701D28;
  v7 = v4;
  v5 = v4;
  TSUIndexSet::enumerateRangesUsingBlock(&self->_indexSet, v6);
}

- (void)addIndexes:(id)a3
{
  v4 = a3;
  TSUIndexSet::addIndexes(&self->_indexSet, [v4 indexSet]);
}

- (void)removeIndexes:(id)a3
{
  v4 = a3;
  TSUIndexSet::removeIndexes(&self->_indexSet, [v4 indexSet]);
}

- (void)removeAllIndexes
{
  indexSet = self->_indexSet;
  if ((indexSet & 2) != 0)
  {
    free(self->_indexSet._multipleRanges);
    self->_indexSet._multipleRanges = 0;
    indexSet = self->_indexSet;
  }

  *&self->_indexSet = indexSet | 3;
}

- (void)addIndex:(int64_t)a3
{
  v3._begin = a3;
  v3._end = a3;
  TSUIndexSet::addIndexesInRange(&self->_indexSet, &v3);
}

- (void)removeIndex:(int64_t)a3
{
  v3._begin = a3;
  v3._end = a3;
  TSUIndexSet::removeIndexesInRange(&self->_indexSet, &v3);
}

- (id).cxx_construct
{
  *(self + 8) |= 3u;
  *&v2.f64[0] = 0x8000000080000000;
  *&v2.f64[1] = 0x8000000080000000;
  *(self + 1) = vnegq_f64(v2);
  *(self + 4) = 0;
  return self;
}

@end