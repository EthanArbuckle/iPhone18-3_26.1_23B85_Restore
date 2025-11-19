@interface UIView(SiriUICore)
- (uint64_t)suic_recursiveSetSemanticContentAttribute:()SiriUICore;
- (uint64_t)suic_updateViewHierarchyToUseSiriLanguageSemanticContentAttribute;
@end

@implementation UIView(SiriUICore)

- (uint64_t)suic_updateViewHierarchyToUseSiriLanguageSemanticContentAttribute
{
  result = [a1 conformsToProtocol:&unk_1F43ECB00];
  if (result)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || (result = [a1 disallowSemanticContentModification], (result & 1) == 0))
    {
      if (SUICSiriLanguageIsRTL())
      {
        v3 = 4;
      }

      else
      {
        v3 = 3;
      }

      return [a1 suic_recursiveSetSemanticContentAttribute:v3];
    }
  }

  return result;
}

- (uint64_t)suic_recursiveSetSemanticContentAttribute:()SiriUICore
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a1 subviews];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) suic_recursiveSetSemanticContentAttribute:a3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if ([a1 semanticContentAttribute] != a3)
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
        return [a1 setTextAlignment:{2 * (objc_msgSend(MEMORY[0x1E69DD250], "userInterfaceLayoutDirectionForSemanticContentAttribute:", objc_msgSend(a1, "semanticContentAttribute")) != 0)}];
      }
    }
  }

  return result;
}

@end