@interface UISLRUCache
- (UISLRUCache)initWithLimit:(unint64_t)limit;
- (id)evictedObjectForUsedObject:(id)object;
@end

@implementation UISLRUCache

- (UISLRUCache)initWithLimit:(unint64_t)limit
{
  v8.receiver = self;
  v8.super_class = UISLRUCache;
  v4 = [(UISLRUCache *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    cache = v4->_cache;
    v4->_cache = v5;

    v4->_limit = limit;
  }

  return v4;
}

- (id)evictedObjectForUsedObject:(id)object
{
  objectCopy = object;
  v5 = [(NSMutableOrderedSet *)self->_cache indexOfObject:objectCopy];
  cache = self->_cache;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableOrderedSet *)cache addObject:objectCopy];
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
    [(NSMutableOrderedSet *)self->_cache addObject:objectCopy];
  }

  v7 = 0;
LABEL_6:

  return v7;
}

@end