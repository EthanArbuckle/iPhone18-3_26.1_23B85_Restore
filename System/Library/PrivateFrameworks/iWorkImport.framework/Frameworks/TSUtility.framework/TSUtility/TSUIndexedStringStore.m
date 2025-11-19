@interface TSUIndexedStringStore
- (TSUIndexedStringStore)init;
- (id).cxx_construct;
- (id)stringForIndex:(unint64_t)a3;
- (unint64_t)count;
- (unint64_t)indexForString:(id)a3;
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

- (unint64_t)indexForString:(id)a3
{
  v4 = a3;
  v8 = v4;
  if ([v4 length])
  {
    if (v4)
    {
      os_unfair_lock_lock(&self->_lock);
      v5 = [(NSMutableDictionary *)self->_indexByString objectForKeyedSubscript:v4];
      v4 = [v5 unsignedLongValue];

      if (!v4)
      {
        sub_277028728(&self->_stringByIndex.__begin_, &v8);
        v4 = (self->_stringByIndex.var0 - self->_stringByIndex.__begin_);
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v4];
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

  return v4;
}

- (id)stringForIndex:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    os_unfair_lock_lock(&self->_lock);
    begin = self->_stringByIndex.__begin_;
    if (v3 <= self->_stringByIndex.var0 - begin)
    {
      v3 = begin[v3 - 1];
    }

    else
    {
      v3 = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  return v3;
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