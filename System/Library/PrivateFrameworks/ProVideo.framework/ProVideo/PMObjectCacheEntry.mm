@interface PMObjectCacheEntry
- (PMObjectCacheEntry)initWithKey:(id)a3 cacheItem:(id)a4 size:(unint64_t)a5 cost:(double)a6 forCache:(id)a7;
- (float)getValue:(unint64_t)a3 decayRate:(float)a4;
- (void)dealloc;
- (void)resetValue:(unint64_t)a3 responseRate:(float)a4 penalty:(float)a5;
- (void)setValue:(unint64_t)a3 cost:(double)a4 maxCacheSize:(unint64_t)a5;
@end

@implementation PMObjectCacheEntry

- (PMObjectCacheEntry)initWithKey:(id)a3 cacheItem:(id)a4 size:(unint64_t)a5 cost:(double)a6 forCache:(id)a7
{
  v14.receiver = self;
  v14.super_class = PMObjectCacheEntry;
  v11 = [(PMObjectCacheEntry *)&v14 init:a3];
  v12 = v11;
  if (v11)
  {
    v11->_cost = a6;
    v11->_item = a4;
    v12->_size = a5;
    v12->_cacheKey = a3;
    if (a3)
    {
      v12->_hashValue = a3;
    }
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PMObjectCacheEntry;
  [(PMObjectCacheEntry *)&v3 dealloc];
}

- (float)getValue:(unint64_t)a3 decayRate:(float)a4
{
  v4 = (a3 - self->_lastAccess);
  freq = self->_freq;
  v6 = freq + ((v4 - freq) * a4);
  if (freq > v4)
  {
    v6 = self->_freq;
  }

  return self->_value / v6;
}

- (void)setValue:(unint64_t)a3 cost:(double)a4 maxCacheSize:(unint64_t)a5
{
  self->_lastAccess = a3;
  self->_freq = a5 / [(PMObjectCacheEntry *)self getSize];
  *&a4 = a4;
  self->_value = (*&a4 / [(PMObjectCacheEntry *)self getSize]) * *&a4;
}

- (void)resetValue:(unint64_t)a3 responseRate:(float)a4 penalty:(float)a5
{
  lastAccess = self->_lastAccess;
  if (lastAccess + 1 < a3)
  {
    self->_freq = self->_freq + (((a3 - lastAccess) - self->_freq) * a4);
  }
}

@end