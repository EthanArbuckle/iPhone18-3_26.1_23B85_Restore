@interface PKApplicationMessageViewContext
- (void)initForNode:(void *)node;
- (void)setNode:(uint64_t)node;
@end

@implementation PKApplicationMessageViewContext

- (void)initForNode:(void *)node
{
  v3 = a2;
  v4 = v3;
  if (node && v3)
  {
    v8.receiver = node;
    v8.super_class = PKApplicationMessageViewContext;
    v5 = objc_msgSendSuper2(&v8, sel_init);
    if (v5)
    {
      v5[2] = v4;
    }

    node = v5;
    nodeCopy = node;
  }

  else
  {
    nodeCopy = 0;
  }

  return nodeCopy;
}

- (void)setNode:(uint64_t)node
{
  v3 = a2;
  if (node)
  {
    if (*(node + 16) != v3)
    {
      *(node + 16) = v3;
      v4 = *(node + 32);
      v6 = v3;
      v5 = [v3 numberOfChildren] + v4;
      v3 = v6;
      if (v5 <= 1)
      {
        *(node + 8) = 0;
      }
    }
  }
}

@end