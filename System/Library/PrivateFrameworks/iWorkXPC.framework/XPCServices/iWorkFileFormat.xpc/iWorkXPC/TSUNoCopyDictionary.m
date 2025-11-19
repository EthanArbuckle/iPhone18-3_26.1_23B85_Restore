@interface TSUNoCopyDictionary
- (TSUNoCopyDictionary)initWithCFDictionary:(__CFDictionary *)a3;
- (TSUNoCopyDictionary)initWithCapacity:(unint64_t)a3;
- (id)allKeys;
- (id)allValues;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectEnumerator;
- (id)objectForKey:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)dealloc;
- (void)getObjects:(id *)a3 andKeys:(id *)a4 count:(unint64_t)a5;
- (void)setObject:(id)a3 forUncopiedKey:(id)a4;
@end

@implementation TSUNoCopyDictionary

- (TSUNoCopyDictionary)initWithCFDictionary:(__CFDictionary *)a3
{
  v6.receiver = self;
  v6.super_class = TSUNoCopyDictionary;
  v4 = [(TSUNoCopyDictionary *)&v6 init];
  if (v4)
  {
    v4->mDictionary = CFDictionaryCreateMutableCopy(0, 0, a3);
  }

  return v4;
}

- (TSUNoCopyDictionary)initWithCapacity:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = TSUNoCopyDictionary;
  v4 = [(TSUNoCopyDictionary *)&v6 init];
  if (v4)
  {
    v4->mDictionary = CFDictionaryCreateMutable(0, a3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  return v4;
}

- (void)dealloc
{
  mDictionary = self->mDictionary;
  if (mDictionary)
  {
    CFRelease(mDictionary);
    self->mDictionary = 0;
  }

  v4.receiver = self;
  v4.super_class = TSUNoCopyDictionary;
  [(TSUNoCopyDictionary *)&v4 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  mDictionary = self->mDictionary;

  return [v4 initWithCFDictionary:mDictionary];
}

- (void)setObject:(id)a3 forUncopiedKey:(id)a4
{
  if (a3)
  {
    if (a4)
    {
LABEL_3:
      mDictionary = self->mDictionary;

      CFDictionarySetValue(mDictionary, a4, a3);
      return;
    }
  }

  else
  {
    [NSException raise:NSInvalidArgumentException format:@"Attempt to insert nil value into %@", objc_opt_class()];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    sub_10015DC40();
  }

  v9 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_10015DC54(a3, v8, v9);
  }

  [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[TSUNoCopyDictionary setObject:forUncopiedKey:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUNoCopyDictionary.m"] lineNumber:75 isFatal:0 description:"Attempt to insert into no-copy dictionary a value of type %{public}@ with a nil key", objc_opt_class()];
  +[TSUAssertionHandler logBacktraceThrottled];
}

- (void)getObjects:(id *)a3 andKeys:(id *)a4 count:(unint64_t)a5
{
  Count = CFDictionaryGetCount(self->mDictionary);
  if (Count >= a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = Count;
  }

  if (v10)
  {
    v11 = (a3 | a4) == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    mDictionary = self->mDictionary;

    CFDictionaryGetKeysAndValues(mDictionary, a4, a3);
  }
}

- (id)objectForKey:(id)a3
{
  if (a3)
  {
    return CFDictionaryGetValue(self->mDictionary, a3);
  }

  else
  {
    return 0;
  }
}

- (id)allValues
{
  Count = CFDictionaryGetCount(self->mDictionary);
  v4 = Count;
  v5 = values;
  if (Count >= 0x10)
  {
    v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  }

  CFDictionaryGetKeysAndValues(self->mDictionary, 0, v5);
  v6 = [NSArray arrayWithObjects:v5 count:v4];
  if (v5 != values)
  {
    free(v5);
  }

  return v6;
}

- (id)objectEnumerator
{
  v2 = [(TSUNoCopyDictionary *)self allValues];

  return [v2 objectEnumerator];
}

- (id)allKeys
{
  Count = CFDictionaryGetCount(self->mDictionary);
  v4 = Count;
  v5 = keys;
  if (Count >= 0x10)
  {
    v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  }

  CFDictionaryGetKeysAndValues(self->mDictionary, v5, 0);
  v6 = [NSArray arrayWithObjects:v5 count:v4];
  if (v5 != keys)
  {
    free(v5);
  }

  return v6;
}

- (id)keyEnumerator
{
  v2 = [(TSUNoCopyDictionary *)self allKeys];

  return [v2 objectEnumerator];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  Count = CFDictionaryGetCount(self->mDictionary);
  if (a3->var0 >= Count)
  {
    return 0;
  }

  v10 = Count;
  v11 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(self->mDictionary, v11, 0);
  if (v10 - a3->var0 < a5)
  {
    a5 = v10 - a3->var0;
  }

  memcpy(a4, &v11[a3->var0], 8 * a5);
  free(v11);
  a3->var0 += a5;
  a3->var1 = a4;
  a3->var2 = &a3->var2;
  return a5;
}

@end