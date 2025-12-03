@interface TSULRUCache
- (TSULRUCache)initWithMaxSize:(unint64_t)size;
- (id)objectForKey:(id)key;
- (void)dealloc;
- (void)p_removeOldestObject;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setEvictionCallbackTarget:(id)target selector:(SEL)selector;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation TSULRUCache

- (TSULRUCache)initWithMaxSize:(unint64_t)size
{
  v7.receiver = self;
  v7.super_class = TSULRUCache;
  v4 = [(TSULRUCache *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mMax = size;
    v4->mData = [[TSUNoCopyDictionary alloc] initWithCapacity:size];
    v5->mOrderedKeys = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:size];
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

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if ([(NSMutableArray *)self->mOrderedKeys count]>= self->mMax)
  {
    [(TSULRUCache *)self p_removeOldestObject];
  }

  v8 = [(NSMutableArray *)self->mOrderedKeys indexOfObject:key];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->mOrderedKeys removeObjectAtIndex:v8];
  }

  [(TSUNoCopyDictionary *)self->mData setObject:object forKey:key];
  [(NSMutableArray *)self->mOrderedKeys addObject:key];
}

- (void)removeObjectForKey:(id)key
{
  v5 = [(NSMutableArray *)self->mOrderedKeys indexOfObject:?];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    [(TSUNoCopyDictionary *)self->mData removeObjectForKey:key];
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

- (id)objectForKey:(id)key
{
  v5 = [(NSMutableArray *)self->mOrderedKeys indexOfObject:?];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = v5;
  v8 = [(TSUNoCopyDictionary *)self->mData objectForKey:key];
  keyCopy = key;
  [(NSMutableArray *)self->mOrderedKeys addObject:key];
  [(NSMutableArray *)self->mOrderedKeys removeObjectAtIndex:v7];

  return v8;
}

- (void)setEvictionCallbackTarget:(id)target selector:(SEL)selector
{
  self->mCallbackTarget = target;
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->mCallback = selectorCopy;
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