@interface VKCTimeRange
- (BOOL)contains:(_BOOL8)result;
- (double)duration;
- (double)end;
- (double)initWithStart:(double)start duration:;
- (double)start;
- (uint64_t)setDuration:(uint64_t)result;
- (uint64_t)setStart:(uint64_t)result;
@end

@implementation VKCTimeRange

- (double)initWithStart:(double)start duration:
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = VKCTimeRange;
    result = objc_msgSendSuper2(&v5, sel_init);
    if (result)
    {
      result[1] = a2;
      result[2] = start;
    }
  }

  return result;
}

- (double)end
{
  if (self)
  {
    return *(self + 8) + *(self + 16);
  }

  else
  {
    return OUTLINED_FUNCTION_0_8();
  }
}

- (double)start
{
  if (self)
  {
    return *(self + 8);
  }

  else
  {
    return OUTLINED_FUNCTION_0_8();
  }
}

- (double)duration
{
  if (self)
  {
    return *(self + 16);
  }

  else
  {
    return OUTLINED_FUNCTION_0_8();
  }
}

- (BOOL)contains:(_BOOL8)result
{
  if (result)
  {
    v2 = *(result + 8);
    return v2 <= a2 && v2 + *(result + 16) > a2;
  }

  return result;
}

- (uint64_t)setStart:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setDuration:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

@end