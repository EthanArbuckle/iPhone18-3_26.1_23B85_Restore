@interface UINavigationBar(AMP_UITraitCollectionOverrides)
- (id)setLayoutDirection:()AMP_UITraitCollectionOverrides;
@end

@implementation UINavigationBar(AMP_UITraitCollectionOverrides)

- (id)setLayoutDirection:()AMP_UITraitCollectionOverrides
{
  v19 = *MEMORY[0x277D85DE8];
  if ([self layoutDirection] != a3)
  {
    subviews = [self subviews];
    v6 = [subviews copy];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v14 + 1) + 8 * v11++) removeFromSuperview];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  v13.receiver = self;
  v13.super_class = &off_282D093C8;
  return objc_msgSendSuper2(&v13, sel_setLayoutDirection_, a3);
}

@end