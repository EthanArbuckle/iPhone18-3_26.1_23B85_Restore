@interface _TUIGeneratorResultAccumulatorCache
- (_TUIGeneratorResultAccumulatorCache)initWithSize:(unint64_t)a3;
- (id)accumulatorForToken:(id)a3 type:(int)a4;
- (unint64_t)count;
- (void)addToCache:(id)a3 type:(int)a4;
- (void)emptyCache;
@end

@implementation _TUIGeneratorResultAccumulatorCache

- (void)emptyCache
{
  v3 = [(_TUIGeneratorResultAccumulatorCache *)self requestQueue];
  [v3 removeAllObjects];

  v4 = [(_TUIGeneratorResultAccumulatorCache *)self requestCache];
  [v4 removeAllObjects];
}

- (unint64_t)count
{
  v2 = [(_TUIGeneratorResultAccumulatorCache *)self requestQueue];
  v3 = [v2 count];

  return v3;
}

- (void)addToCache:(id)a3 type:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [v6 token];
  v8 = [v7 shortIdentifier];
  v18 = [v8 stringByAppendingFormat:@":%d", v4];

  v9 = [(_TUIGeneratorResultAccumulatorCache *)self requestCache];
  [v9 setObject:v6 forKeyedSubscript:v18];

  v10 = [(_TUIGeneratorResultAccumulatorCache *)self requestQueue];
  [v10 addObject:v18];

  v11 = [(_TUIGeneratorResultAccumulatorCache *)self requestQueue];
  if ([v11 count])
  {
    v12 = [(_TUIGeneratorResultAccumulatorCache *)self requestQueue];
    v13 = [v12 count];
    v14 = [(_TUIGeneratorResultAccumulatorCache *)self maxSize];

    if (v13 <= v14)
    {
      goto LABEL_5;
    }

    v15 = [(_TUIGeneratorResultAccumulatorCache *)self requestQueue];
    v11 = [v15 firstObject];

    v16 = [(_TUIGeneratorResultAccumulatorCache *)self requestQueue];
    [v16 removeObjectAtIndex:0];

    v17 = [(_TUIGeneratorResultAccumulatorCache *)self requestCache];
    [v17 removeObjectForKey:v11];
  }

LABEL_5:
}

- (id)accumulatorForToken:(id)a3 type:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(_TUIGeneratorResultAccumulatorCache *)self requestCache];
  v8 = [v6 shortIdentifier];

  v9 = [v8 stringByAppendingFormat:@":%d", v4];
  v10 = [v7 objectForKey:v9];

  return v10;
}

- (_TUIGeneratorResultAccumulatorCache)initWithSize:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = _TUIGeneratorResultAccumulatorCache;
  v4 = [(_TUIGeneratorResultAccumulatorCache *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    requestCache = v4->_requestCache;
    v4->_requestCache = v5;

    v7 = [MEMORY[0x1E695DF70] array];
    requestQueue = v4->_requestQueue;
    v4->_requestQueue = v7;

    v4->_maxSize = a3;
  }

  return v4;
}

@end