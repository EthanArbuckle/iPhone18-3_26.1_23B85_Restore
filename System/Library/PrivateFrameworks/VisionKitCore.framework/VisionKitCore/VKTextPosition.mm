@interface VKTextPosition
+ (id)positionWithOffset:(int64_t)offset;
- (BOOL)isEqual:(id)equal;
- (VKTextPosition)initWithOffset:(int64_t)offset;
- (id)positionByAddingOffset:(int64_t)offset;
@end

@implementation VKTextPosition

- (VKTextPosition)initWithOffset:(int64_t)offset
{
  v5.receiver = self;
  v5.super_class = VKTextPosition;
  result = [(VKTextPosition *)&v5 init];
  if (result)
  {
    result->_offset = offset;
  }

  return result;
}

+ (id)positionWithOffset:(int64_t)offset
{
  v3 = [[VKTextPosition alloc] initWithOffset:offset];

  return v3;
}

- (id)positionByAddingOffset:(int64_t)offset
{
  offset = [(VKTextPosition *)self offset];
  v5 = [[VKTextPosition alloc] initWithOffset:(offset + offset) & ~((offset + offset) >> 63)];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = VKDynamicCast(v5, equalCopy);

  if (v6)
  {
    offset = [v6 offset];
    v8 = offset == [(VKTextPosition *)self offset];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end