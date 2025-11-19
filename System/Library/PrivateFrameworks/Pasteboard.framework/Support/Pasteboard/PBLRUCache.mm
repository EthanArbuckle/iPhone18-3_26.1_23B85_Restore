@interface PBLRUCache
- (PBLRUCache)initWithLimit:(unint64_t)a3;
- (id)evictedObjectForUsedObject:(id)a3;
@end

@implementation PBLRUCache

- (PBLRUCache)initWithLimit:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = PBLRUCache;
  v4 = [(PBLRUCache *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableOrderedSet);
    cache = v4->_cache;
    v4->_cache = v5;

    v4->_limit = a3;
  }

  return v4;
}

- (id)evictedObjectForUsedObject:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableOrderedSet *)self->_cache indexOfObject:v4];
  cache = self->_cache;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableOrderedSet *)cache addObject:v4];
    if ([(NSMutableOrderedSet *)self->_cache count]> self->_limit)
    {
      v7 = [(NSMutableOrderedSet *)self->_cache objectAtIndexedSubscript:0];
      [(NSMutableOrderedSet *)self->_cache removeObjectAtIndex:0];
      goto LABEL_6;
    }
  }

  else
  {
    [(NSMutableOrderedSet *)cache removeObjectAtIndex:?];
    [(NSMutableOrderedSet *)self->_cache addObject:v4];
  }

  v7 = 0;
LABEL_6:

  return v7;
}

@end