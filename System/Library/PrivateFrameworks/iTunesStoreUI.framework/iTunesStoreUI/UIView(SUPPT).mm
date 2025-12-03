@interface UIView(SUPPT)
- (uint64_t)firstScrollViewDescendant;
- (void)_firstDescendantOfKind:()SUPPT;
@end

@implementation UIView(SUPPT)

- (void)_firstDescendantOfKind:()SUPPT
{
  v17 = *MEMORY[0x1E69E9840];
  subviews = [self subviews];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(subviews);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if (objc_opt_isKindOfClass())
    {
      return v9;
    }

    v10 = [v9 _firstDescendantOfKind:a3];
    if (v10)
    {
      return v10;
    }

    if (v6 == ++v8)
    {
      v6 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
      v9 = 0;
      if (v6)
      {
        goto LABEL_3;
      }

      return v9;
    }
  }
}

- (uint64_t)firstScrollViewDescendant
{
  v2 = objc_opt_class();

  return [self _firstDescendantOfKind:v2];
}

@end