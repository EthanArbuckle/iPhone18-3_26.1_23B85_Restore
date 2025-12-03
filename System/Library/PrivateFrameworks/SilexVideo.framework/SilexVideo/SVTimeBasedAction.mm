@interface SVTimeBasedAction
- (double)time;
- (uint64_t)block;
- (void)initWithTime:(double)time block:;
@end

@implementation SVTimeBasedAction

- (void)initWithTime:(double)time block:
{
  v5 = a2;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = SVTimeBasedAction;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    self = v6;
    if (v6)
    {
      *(v6 + 1) = time;
      v7 = MEMORY[0x2667795A0](v5);
      v8 = self[2];
      self[2] = v7;
    }
  }

  return self;
}

- (double)time
{
  if (self)
  {
    return *(self + 8);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)block
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

@end