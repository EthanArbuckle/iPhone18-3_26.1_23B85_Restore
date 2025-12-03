@interface PPSocialHighlightPropertyValueProvider
- (id)valueForHighlight:(id)highlight;
- (void)initWithProvidingBlock:(void *)block;
@end

@implementation PPSocialHighlightPropertyValueProvider

- (id)valueForHighlight:(id)highlight
{
  highlightCopy = highlight;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x277CCABB0];
  (*(self->_providingBlock + 2))();
  v7 = [v6 numberWithDouble:?];
  objc_autoreleasePoolPop(v5);

  return v7;
}

- (void)initWithProvidingBlock:(void *)block
{
  v3 = a2;
  if (block)
  {
    v7.receiver = block;
    v7.super_class = PPSocialHighlightPropertyValueProvider;
    block = objc_msgSendSuper2(&v7, sel_init);
    if (block)
    {
      v4 = [v3 copy];
      v5 = block[1];
      block[1] = v4;
    }
  }

  return block;
}

@end