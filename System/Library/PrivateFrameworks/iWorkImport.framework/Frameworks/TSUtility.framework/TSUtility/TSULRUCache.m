@interface TSULRUCache
- (NSArray)allValues;
- (TSULRUCache)initWithMaxSize:(unint64_t)a3;
- (id)callbackTarget;
- (id)description;
- (id)objectForKey:(id)a3;
- (void)dealloc;
- (void)p_removeOldestObject;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation TSULRUCache

- (TSULRUCache)initWithMaxSize:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = TSULRUCache;
  v4 = [(TSULRUCache *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_maxSize = a3;
    v4->_lastUsedCounter.__a_.__a_value = 0;
    v6 = [[TSUNoCopyDictionary alloc] initWithCapacity:a3];
    data = v5->_data;
    v5->_data = v6;

    v8 = v5;
  }

  return v5;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_callbackTarget);
  if (WeakRetained)
  {

LABEL_4:
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSULRUCache dealloc]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSULRUCache.mm"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:75 isFatal:0 description:"cache callback target and selector must be clear before cache is deallocated"];

    +[TSUAssertionHandler logBacktraceThrottled];
    goto LABEL_5;
  }

  if (self->_callback)
  {
    goto LABEL_4;
  }

LABEL_5:
  v6.receiver = self;
  v6.super_class = TSULRUCache;
  [(TSULRUCache *)&v6 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = TSULRUCache;
  v4 = [(TSULRUCache *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ data: %@>", v4, self->_data];

  return v5;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [[TSULRUCacheElement alloc] initWithObject:v8 counter:atomic_fetch_add_explicit(&self->_lastUsedCounter, 1uLL, memory_order_relaxed)];
  if ([(TSUNoCopyDictionary *)self->_data count]>= self->_maxSize)
  {
    [(TSULRUCache *)self p_removeOldestObject];
  }

  [(TSUNoCopyDictionary *)self->_data setObject:v7 forKey:v6];
}

- (id)objectForKey:(id)a3
{
  v4 = [(TSUNoCopyDictionary *)self->_data objectForKey:a3];
  v5 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&self->_lastUsedCounter, 1uLL, memory_order_relaxed);
    [v4 p_updateCounter:?];
    v6 = [v5 object];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSArray)allValues
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(TSUNoCopyDictionary *)self->_data allValues];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_27706FE84;
  v7[3] = &unk_27A701E90;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  return v5;
}

- (void)p_removeOldestObject
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_277070198;
  v15 = sub_2770701A8;
  v16 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = -1;
  data = self->_data;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2770701B0;
  v9[3] = &unk_27A701EB8;
  v9[4] = v10;
  v9[5] = &v11;
  [(TSUNoCopyDictionary *)data enumerateKeysAndObjectsUsingBlock:v9];
  WeakRetained = objc_loadWeakRetained(&self->_callbackTarget);

  if (WeakRetained)
  {
    if (!self->_callback)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSULRUCache p_removeOldestObject]"];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSULRUCache.mm"];
      [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:161 isFatal:0 description:"invalid nil value for '%{public}s'", "_callback"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    v7 = [(TSUNoCopyDictionary *)self->_data objectForKey:v12[5]];
    v8 = objc_loadWeakRetained(&self->_callbackTarget);
    [v8 performSelector:self->_callback withObject:v7 withObject:v12[5]];
  }

  [(TSUNoCopyDictionary *)self->_data removeObjectForKey:v12[5]];
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v11, 8);
}

- (id)callbackTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_callbackTarget);

  return WeakRetained;
}

@end