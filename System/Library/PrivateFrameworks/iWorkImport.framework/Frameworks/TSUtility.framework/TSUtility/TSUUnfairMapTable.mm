@interface TSUUnfairMapTable
+ (id)mapTableWithKeyOptions:(unint64_t)options valueOptions:(unint64_t)valueOptions;
- (TSUUnfairMapTable)initWithKeyOptions:(unint64_t)options valueOptions:(unint64_t)valueOptions capacity:(unint64_t)capacity;
- (id)objectForKey:(id)key;
- (unint64_t)count;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation TSUUnfairMapTable

- (TSUUnfairMapTable)initWithKeyOptions:(unint64_t)options valueOptions:(unint64_t)valueOptions capacity:(unint64_t)capacity
{
  v13.receiver = self;
  v13.super_class = TSUUnfairMapTable;
  v8 = [(TSUUnfairMapTable *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_unfairLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    v10 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:options valueOptions:valueOptions capacity:capacity];
    mapTable = v9->_mapTable;
    v9->_mapTable = v10;
  }

  return v9;
}

+ (id)mapTableWithKeyOptions:(unint64_t)options valueOptions:(unint64_t)valueOptions
{
  v4 = [[TSUUnfairMapTable alloc] initWithKeyOptions:options valueOptions:valueOptions capacity:4];

  return v4;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_unfairLock);
  v5 = [(NSMapTable *)self->_mapTable objectForKey:keyCopy];

  os_unfair_lock_unlock(&self->_unfairLock);

  return v5;
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_unfairLock);
  [(NSMapTable *)self->_mapTable removeObjectForKey:keyCopy];

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  os_unfair_lock_lock(&self->_unfairLock);
  [(NSMapTable *)self->_mapTable setObject:objectCopy forKey:keyCopy];

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_unfairLock);
  v3 = [(NSMapTable *)self->_mapTable count];
  os_unfair_lock_unlock(&self->_unfairLock);
  return v3;
}

- (void)removeAllObjects
{
  os_unfair_lock_lock(&self->_unfairLock);
  [(NSMapTable *)self->_mapTable removeAllObjects];

  os_unfair_lock_unlock(&self->_unfairLock);
}

@end