@interface PMObjectCacheEntry
- (PMObjectCacheEntry)initWithKey:(id)key cacheItem:(id)item size:(unint64_t)size cost:(double)cost forCache:(id)cache;
- (float)getValue:(unint64_t)value decayRate:(float)rate;
- (void)dealloc;
- (void)resetValue:(unint64_t)value responseRate:(float)rate penalty:(float)penalty;
- (void)setValue:(unint64_t)value cost:(double)cost maxCacheSize:(unint64_t)size;
@end

@implementation PMObjectCacheEntry

- (PMObjectCacheEntry)initWithKey:(id)key cacheItem:(id)item size:(unint64_t)size cost:(double)cost forCache:(id)cache
{
  v14.receiver = self;
  v14.super_class = PMObjectCacheEntry;
  v11 = [(PMObjectCacheEntry *)&v14 init:key];
  v12 = v11;
  if (v11)
  {
    v11->_cost = cost;
    v11->_item = item;
    v12->_size = size;
    v12->_cacheKey = key;
    if (key)
    {
      v12->_hashValue = key;
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

- (float)getValue:(unint64_t)value decayRate:(float)rate
{
  v4 = (value - self->_lastAccess);
  freq = self->_freq;
  v6 = freq + ((v4 - freq) * rate);
  if (freq > v4)
  {
    v6 = self->_freq;
  }

  return self->_value / v6;
}

- (void)setValue:(unint64_t)value cost:(double)cost maxCacheSize:(unint64_t)size
{
  self->_lastAccess = value;
  self->_freq = size / [(PMObjectCacheEntry *)self getSize];
  *&cost = cost;
  self->_value = (*&cost / [(PMObjectCacheEntry *)self getSize]) * *&cost;
}

- (void)resetValue:(unint64_t)value responseRate:(float)rate penalty:(float)penalty
{
  lastAccess = self->_lastAccess;
  if (lastAccess + 1 < value)
  {
    self->_freq = self->_freq + (((value - lastAccess) - self->_freq) * rate);
  }
}

@end