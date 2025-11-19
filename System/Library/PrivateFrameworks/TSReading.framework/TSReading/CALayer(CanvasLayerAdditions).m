@interface CALayer(CanvasLayerAdditions)
- (uint64_t)p_clearAllLayerDelegates;
@end

@implementation CALayer(CanvasLayerAdditions)

- (uint64_t)p_clearAllLayerDelegates
{
  v13 = *MEMORY[0x277D85DE8];
  [a1 delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    [a1 setDelegate:0];
  }

  v4 = [a1 sublayers];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7++) p_clearAllLayerDelegates];
      }

      while (v5 != v7);
      result = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

@end