@interface UIView
@end

@implementation UIView

void __71__UIView_PLScrollViewDelegateAdditions__pl_isScrollViewDelegateMethod___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  outCount = 0;
  v1 = protocol_copyMethodDescriptionList(&unk_2833ADC28, 1, 1, &outCount);
  v8 = 0;
  v2 = protocol_copyMethodDescriptionList(&unk_2833ADC28, 0, 1, &v8);
  v3 = outCount;
  if (v8 + outCount)
  {
    v4 = 0;
    do
    {
      if (v4 >= v3)
      {
        v5 = v2;
      }

      else
      {
        v3 = 0;
        v5 = v1;
      }

      v6 = NSStringFromSelector(v5[v4 - v3].name);
      [v0 addObject:v6];

      ++v4;
      v3 = outCount;
    }

    while (v4 < v8 + outCount);
  }

  free(v1);
  free(v2);
  v7 = pl_isScrollViewDelegateMethod____scrollViewDelegateSelectors;
  pl_isScrollViewDelegateMethod____scrollViewDelegateSelectors = v0;
}

@end