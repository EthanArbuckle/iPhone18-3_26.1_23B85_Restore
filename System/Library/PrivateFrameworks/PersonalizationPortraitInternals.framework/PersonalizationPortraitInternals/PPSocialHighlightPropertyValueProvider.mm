@interface PPSocialHighlightPropertyValueProvider
- (id)valueForHighlight:(id)a3;
- (void)initWithProvidingBlock:(void *)a1;
@end

@implementation PPSocialHighlightPropertyValueProvider

- (id)valueForHighlight:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x277CCABB0];
  (*(self->_providingBlock + 2))();
  v7 = [v6 numberWithDouble:?];
  objc_autoreleasePoolPop(v5);

  return v7;
}

- (void)initWithProvidingBlock:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = PPSocialHighlightPropertyValueProvider;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

@end