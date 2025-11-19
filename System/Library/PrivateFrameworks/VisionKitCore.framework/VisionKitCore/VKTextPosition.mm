@interface VKTextPosition
+ (id)positionWithOffset:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (VKTextPosition)initWithOffset:(int64_t)a3;
- (id)positionByAddingOffset:(int64_t)a3;
@end

@implementation VKTextPosition

- (VKTextPosition)initWithOffset:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = VKTextPosition;
  result = [(VKTextPosition *)&v5 init];
  if (result)
  {
    result->_offset = a3;
  }

  return result;
}

+ (id)positionWithOffset:(int64_t)a3
{
  v3 = [[VKTextPosition alloc] initWithOffset:a3];

  return v3;
}

- (id)positionByAddingOffset:(int64_t)a3
{
  v4 = [(VKTextPosition *)self offset];
  v5 = [[VKTextPosition alloc] initWithOffset:(v4 + a3) & ~((v4 + a3) >> 63)];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = VKDynamicCast(v5, v4);

  if (v6)
  {
    v7 = [v6 offset];
    v8 = v7 == [(VKTextPosition *)self offset];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end