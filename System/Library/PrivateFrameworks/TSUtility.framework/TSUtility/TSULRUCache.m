@interface TSULRUCache
- (TSULRUCache)initWithMaxSize:(unint64_t)a3;
- (id)objectForKey:(id)a3;
- (void)dealloc;
- (void)p_removeOldestObject;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setEvictionCallbackTarget:(id)a3 selector:(SEL)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation TSULRUCache

- (TSULRUCache)initWithMaxSize:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = TSULRUCache;
  v4 = [(TSULRUCache *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mMax = a3;
    v4->mData = [[TSUNoCopyDictionary alloc] initWithCapacity:a3];
    v5->mOrderedKeys = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3];
  }

  return v5;
}

- (void)dealloc
{
  if (self->mCallbackTarget || self->mCallback)
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSULRUCache dealloc]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSULRUCache.m"), 41, @"cache callback target and selector must be clear before cache is deallocated"}];
  }

  v5.receiver = self;
  v5.super_class = TSULRUCache;
  [(TSULRUCache *)&v5 dealloc];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSMutableArray *)self->mOrderedKeys count]>= self->mMax)
  {
    [(TSULRUCache *)self p_removeOldestObject];
  }

  v8 = [(NSMutableArray *)self->mOrderedKeys indexOfObject:a4];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->mOrderedKeys removeObjectAtIndex:v8];
  }

  [(TSUNoCopyDictionary *)self->mData setObject:a3 forKey:a4];
  [(NSMutableArray *)self->mOrderedKeys addObject:a4];
}

- (void)removeObjectForKey:(id)a3
{
  v5 = [(NSMutableArray *)self->mOrderedKeys indexOfObject:?];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    [(TSUNoCopyDictionary *)self->mData removeObjectForKey:a3];
    mOrderedKeys = self->mOrderedKeys;

    [(NSMutableArray *)mOrderedKeys removeObjectAtIndex:v6];
  }
}

- (void)removeAllObjects
{
  [(NSMutableArray *)self->mOrderedKeys removeAllObjects];
  mData = self->mData;

  [(TSUNoCopyDictionary *)mData removeAllObjects];
}

- (id)objectForKey:(id)a3
{
  v5 = [(NSMutableArray *)self->mOrderedKeys indexOfObject:?];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = v5;
  v8 = [(TSUNoCopyDictionary *)self->mData objectForKey:a3];
  v9 = a3;
  [(NSMutableArray *)self->mOrderedKeys addObject:a3];
  [(NSMutableArray *)self->mOrderedKeys removeObjectAtIndex:v7];

  return v8;
}

- (void)setEvictionCallbackTarget:(id)a3 selector:(SEL)a4
{
  self->mCallbackTarget = a3;
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = 0;
  }

  self->mCallback = v4;
}

- (void)p_removeOldestObject
{
  v3 = [(NSMutableArray *)self->mOrderedKeys objectAtIndex:0];
  if (self->mCallbackTarget)
  {
    if (!self->mCallback)
    {
      v4 = +[TSUAssertionHandler currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSULRUCache p_removeOldestObject]"];
      [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSULRUCache.m"), 141, @"invalid nil value for '%s'", "mCallback"}];
    }

    v6 = [(TSUNoCopyDictionary *)self->mData objectForKey:v3];
    if (self->mCallback)
    {
      mCallback = self->mCallback;
    }

    else
    {
      mCallback = 0;
    }

    [self->mCallbackTarget performSelector:mCallback withObject:v6 withObject:v3];
  }

  [(TSUNoCopyDictionary *)self->mData removeObjectForKey:v3];
  mOrderedKeys = self->mOrderedKeys;

  [(NSMutableArray *)mOrderedKeys removeObjectAtIndex:0];
}

@end