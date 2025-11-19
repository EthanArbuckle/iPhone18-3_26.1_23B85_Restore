@interface TSUUnfairMapTable
+ (id)mapTableWithKeyOptions:(unint64_t)a3 valueOptions:(unint64_t)a4;
- (TSUUnfairMapTable)initWithKeyOptions:(unint64_t)a3 valueOptions:(unint64_t)a4 capacity:(unint64_t)a5;
- (id)objectForKey:(id)a3;
- (unint64_t)count;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation TSUUnfairMapTable

- (TSUUnfairMapTable)initWithKeyOptions:(unint64_t)a3 valueOptions:(unint64_t)a4 capacity:(unint64_t)a5
{
  v13.receiver = self;
  v13.super_class = TSUUnfairMapTable;
  v8 = [(TSUUnfairMapTable *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_unfairLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    v10 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:a3 valueOptions:a4 capacity:a5];
    mapTable = v9->_mapTable;
    v9->_mapTable = v10;
  }

  return v9;
}

+ (id)mapTableWithKeyOptions:(unint64_t)a3 valueOptions:(unint64_t)a4
{
  v4 = [[TSUUnfairMapTable alloc] initWithKeyOptions:a3 valueOptions:a4 capacity:4];

  return v4;
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_unfairLock);
  v5 = [(NSMapTable *)self->_mapTable objectForKey:v4];

  os_unfair_lock_unlock(&self->_unfairLock);

  return v5;
}

- (void)removeObjectForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_unfairLock);
  [(NSMapTable *)self->_mapTable removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_unfairLock);
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_unfairLock);
  [(NSMapTable *)self->_mapTable setObject:v7 forKey:v6];

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