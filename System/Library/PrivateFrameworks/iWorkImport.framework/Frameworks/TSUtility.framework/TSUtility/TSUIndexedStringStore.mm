@interface TSUIndexedStringStore
- (TSUIndexedStringStore)init;
- (id).cxx_construct;
- (id)stringForIndex:(unint64_t)index;
- (unint64_t)count;
- (unint64_t)indexForString:(id)string;
@end

@implementation TSUIndexedStringStore

- (TSUIndexedStringStore)init
{
  v7.receiver = self;
  v7.super_class = TSUIndexedStringStore;
  v2 = [(TSUIndexedStringStore *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    v4 = objc_opt_new();
    indexByString = v3->_indexByString;
    v3->_indexByString = v4;
  }

  return v3;
}

- (unint64_t)indexForString:(id)string
{
  stringCopy = string;
  v8 = stringCopy;
  if ([stringCopy length])
  {
    if (stringCopy)
    {
      os_unfair_lock_lock(&self->_lock);
      v5 = [(NSMutableDictionary *)self->_indexByString objectForKeyedSubscript:stringCopy];
      stringCopy = [v5 unsignedLongValue];

      if (!stringCopy)
      {
        sub_277028728(&self->_stringByIndex.__begin_, &v8);
        stringCopy = (self->_stringByIndex.var0 - self->_stringByIndex.__begin_);
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:stringCopy];
        [(NSMutableDictionary *)self->_indexByString setObject:v6 forKeyedSubscript:v8];
      }

      os_unfair_lock_unlock(&self->_lock);
    }
  }

  else
  {
    v8 = 0;

    return 0;
  }

  return stringCopy;
}

- (id)stringForIndex:(unint64_t)index
{
  indexCopy = index;
  if (index)
  {
    os_unfair_lock_lock(&self->_lock);
    begin = self->_stringByIndex.__begin_;
    if (indexCopy <= self->_stringByIndex.var0 - begin)
    {
      indexCopy = begin[indexCopy - 1];
    }

    else
    {
      indexCopy = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  return indexCopy;
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_stringByIndex.var0 - self->_stringByIndex.__begin_;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end