@interface TNHintCacheEntry
- (CGPoint)origin;
- (TNHintCacheEntry)initWithHint:(id)a3 origin:(CGPoint)a4;
- (void)dealloc;
@end

@implementation TNHintCacheEntry

- (TNHintCacheEntry)initWithHint:(id)a3 origin:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v13.receiver = self;
  v13.super_class = TNHintCacheEntry;
  v7 = [(TNHintCacheEntry *)&v13 init];
  v9 = v7;
  if (v7)
  {
    objc_msgSend_setHint_(v7, v8, a3);
    objc_msgSend_setOrigin_(v9, v10, v11, x, y);
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TNHintCacheEntry;
  [(TNHintCacheEntry *)&v3 dealloc];
}

- (CGPoint)origin
{
  objc_copyStruct(v4, &self->mOrigin, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end