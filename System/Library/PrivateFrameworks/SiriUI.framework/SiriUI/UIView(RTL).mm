@interface UIView(RTL)
- (uint64_t)recursive_setSemanticContentAttribute:()RTL;
@end

@implementation UIView(RTL)

- (uint64_t)recursive_setSemanticContentAttribute:()RTL
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subviews = [self subviews];
  v6 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v10 recursive_setSemanticContentAttribute:a3];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && [self semanticContentAttribute] != a3)
  {
    [self setSemanticContentAttribute:a3];
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [self textAlignment];
      if (result == 4)
      {
        return [self setTextAlignment:{2 * (objc_msgSend(MEMORY[0x277D75D18], "userInterfaceLayoutDirectionForSemanticContentAttribute:", objc_msgSend(self, "semanticContentAttribute")) != 0)}];
      }
    }
  }

  return result;
}

@end