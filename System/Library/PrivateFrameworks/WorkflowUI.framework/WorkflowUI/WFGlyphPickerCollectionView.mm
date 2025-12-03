@interface WFGlyphPickerCollectionView
- (id)_accessibilityViewChildrenWithOptions:(id)options;
@end

@implementation WFGlyphPickerCollectionView

- (id)_accessibilityViewChildrenWithOptions:(id)options
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = WFGlyphPickerCollectionView;
  v4 = [(WFGlyphPickerCollectionView *)&v18 _accessibilityViewChildrenWithOptions:options];
  v5 = [v4 mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        visibleCells = [(WFGlyphPickerCollectionView *)self visibleCells];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([visibleCells containsObject:v11] & 1) == 0)
        {
          [v5 removeObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

@end