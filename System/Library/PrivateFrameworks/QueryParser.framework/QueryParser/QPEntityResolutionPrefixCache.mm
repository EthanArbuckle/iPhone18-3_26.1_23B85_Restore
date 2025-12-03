@interface QPEntityResolutionPrefixCache
+ (id)sharedCache;
- (BOOL)hasPreviouslyGroundedPrefixOfToken:(id)token;
- (QPEntityResolutionPrefixCache)initWithMaxCount:(int64_t)count minPrefixLength:(int64_t)length;
- (void)cacheGroundedToken:(id)token;
@end

@implementation QPEntityResolutionPrefixCache

+ (id)sharedCache
{
  if (sharedCache_onceToken != -1)
  {
    +[QPEntityResolutionPrefixCache sharedCache];
  }

  v3 = sharedCache_cache;

  return v3;
}

void __44__QPEntityResolutionPrefixCache_sharedCache__block_invoke()
{
  v0 = [[QPEntityResolutionPrefixCache alloc] initWithMaxCount:50 minPrefixLength:2];
  v1 = sharedCache_cache;
  sharedCache_cache = v0;
}

- (QPEntityResolutionPrefixCache)initWithMaxCount:(int64_t)count minPrefixLength:(int64_t)length
{
  v12.receiver = self;
  v12.super_class = QPEntityResolutionPrefixCache;
  v6 = [(QPEntityResolutionPrefixCache *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    countCopy = 2;
    if (count > 2)
    {
      countCopy = count;
    }

    v6->_maxCount = countCopy;
    v6->_minPrefixLength = length;
    v9 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:count];
    cache = v7->_cache;
    v7->_cache = v9;
  }

  return v7;
}

- (BOOL)hasPreviouslyGroundedPrefixOfToken:(id)token
{
  tokenCopy = token;
  os_unfair_lock_lock(&self->_lock);
  if (self->_minPrefixLength >= [tokenCopy length])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v5 = 0;
    v6 = -1;
    do
    {
      v7 = [tokenCopy substringToIndex:{objc_msgSend(tokenCopy, "length") + v6}];
      v8 = [(NSMutableOrderedSet *)self->_cache containsObject:v7];

      if (v8)
      {
        break;
      }

      v9 = [tokenCopy length] - self->_minPrefixLength;
      if (v9 >= 2)
      {
        v9 = 2;
      }

      ++v5;
      --v6;
    }

    while (v9 > v5);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (void)cacheGroundedToken:(id)token
{
  tokenCopy = token;
  if ([tokenCopy length] >= self->_minPrefixLength)
  {
    os_unfair_lock_lock(&self->_lock);
    p_cache = &self->_cache;
    if (([(NSMutableOrderedSet *)self->_cache containsObject:tokenCopy]& 1) == 0)
    {
      if ([(NSMutableOrderedSet *)self->_cache count]>= self->_maxCount)
      {
        [(NSMutableOrderedSet *)*p_cache removeObjectsInRange:0, self->_maxCount / 2];
        if (entityResolutionPrefixCacheLogger_token != -1)
        {
          [QPEntityResolutionPrefixCache cacheGroundedToken:];
        }

        v6 = entityResolutionPrefixCacheLogger_log;
        if (os_log_type_enabled(entityResolutionPrefixCacheLogger_log, OS_LOG_TYPE_DEBUG))
        {
          [(QPEntityResolutionPrefixCache *)&self->_cache cacheGroundedToken:v6];
        }
      }

      [(NSMutableOrderedSet *)*p_cache addObject:tokenCopy];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)cacheGroundedToken:(void *)a1 .cold.2(void **a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a2;
  v5 = 134217984;
  v6 = [v2 count];
  _os_log_debug_impl(&dword_1C6584000, v3, OS_LOG_TYPE_DEBUG, "Pruned old items in cache. Remaining: %lu", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end