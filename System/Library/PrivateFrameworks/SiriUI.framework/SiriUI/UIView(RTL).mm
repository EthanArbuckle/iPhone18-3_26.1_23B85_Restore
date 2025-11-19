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
  v5 = [a1 subviews];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
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
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && [a1 semanticContentAttribute] != a3)
  {
    [a1 setSemanticContentAttribute:a3];
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [a1 textAlignment];
      if (result == 4)
      {
        return [a1 setTextAlignment:{2 * (objc_msgSend(MEMORY[0x277D75D18], "userInterfaceLayoutDirectionForSemanticContentAttribute:", objc_msgSend(a1, "semanticContentAttribute")) != 0)}];
      }
    }
  }

  return result;
}

@end