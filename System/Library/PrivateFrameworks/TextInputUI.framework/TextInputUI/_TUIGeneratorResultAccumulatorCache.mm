@interface _TUIGeneratorResultAccumulatorCache
- (_TUIGeneratorResultAccumulatorCache)initWithSize:(unint64_t)size;
- (id)accumulatorForToken:(id)token type:(int)type;
- (unint64_t)count;
- (void)addToCache:(id)cache type:(int)type;
- (void)emptyCache;
@end

@implementation _TUIGeneratorResultAccumulatorCache

- (void)emptyCache
{
  requestQueue = [(_TUIGeneratorResultAccumulatorCache *)self requestQueue];
  [requestQueue removeAllObjects];

  requestCache = [(_TUIGeneratorResultAccumulatorCache *)self requestCache];
  [requestCache removeAllObjects];
}

- (unint64_t)count
{
  requestQueue = [(_TUIGeneratorResultAccumulatorCache *)self requestQueue];
  v3 = [requestQueue count];

  return v3;
}

- (void)addToCache:(id)cache type:(int)type
{
  v4 = *&type;
  cacheCopy = cache;
  token = [cacheCopy token];
  shortIdentifier = [token shortIdentifier];
  v18 = [shortIdentifier stringByAppendingFormat:@":%d", v4];

  requestCache = [(_TUIGeneratorResultAccumulatorCache *)self requestCache];
  [requestCache setObject:cacheCopy forKeyedSubscript:v18];

  requestQueue = [(_TUIGeneratorResultAccumulatorCache *)self requestQueue];
  [requestQueue addObject:v18];

  requestQueue2 = [(_TUIGeneratorResultAccumulatorCache *)self requestQueue];
  if ([requestQueue2 count])
  {
    requestQueue3 = [(_TUIGeneratorResultAccumulatorCache *)self requestQueue];
    v13 = [requestQueue3 count];
    maxSize = [(_TUIGeneratorResultAccumulatorCache *)self maxSize];

    if (v13 <= maxSize)
    {
      goto LABEL_5;
    }

    requestQueue4 = [(_TUIGeneratorResultAccumulatorCache *)self requestQueue];
    requestQueue2 = [requestQueue4 firstObject];

    requestQueue5 = [(_TUIGeneratorResultAccumulatorCache *)self requestQueue];
    [requestQueue5 removeObjectAtIndex:0];

    requestCache2 = [(_TUIGeneratorResultAccumulatorCache *)self requestCache];
    [requestCache2 removeObjectForKey:requestQueue2];
  }

LABEL_5:
}

- (id)accumulatorForToken:(id)token type:(int)type
{
  v4 = *&type;
  tokenCopy = token;
  requestCache = [(_TUIGeneratorResultAccumulatorCache *)self requestCache];
  shortIdentifier = [tokenCopy shortIdentifier];

  v9 = [shortIdentifier stringByAppendingFormat:@":%d", v4];
  v10 = [requestCache objectForKey:v9];

  return v10;
}

- (_TUIGeneratorResultAccumulatorCache)initWithSize:(unint64_t)size
{
  v10.receiver = self;
  v10.super_class = _TUIGeneratorResultAccumulatorCache;
  v4 = [(_TUIGeneratorResultAccumulatorCache *)&v10 init];
  if (v4)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    requestCache = v4->_requestCache;
    v4->_requestCache = dictionary;

    array = [MEMORY[0x1E695DF70] array];
    requestQueue = v4->_requestQueue;
    v4->_requestQueue = array;

    v4->_maxSize = size;
  }

  return v4;
}

@end