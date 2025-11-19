@interface SVTimeBasedAction
- (double)time;
- (uint64_t)block;
- (void)initWithTime:(double)a3 block:;
@end

@implementation SVTimeBasedAction

- (void)initWithTime:(double)a3 block:
{
  v5 = a2;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = SVTimeBasedAction;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v6;
    if (v6)
    {
      *(v6 + 1) = a3;
      v7 = MEMORY[0x2667795A0](v5);
      v8 = a1[2];
      a1[2] = v7;
    }
  }

  return a1;
}

- (double)time
{
  if (a1)
  {
    return *(a1 + 8);
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