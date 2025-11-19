@interface UIView(CALayer_PhotosUI)
- (id)_pu_referenceBasicAnimationForCurrentAnimation;
@end

@implementation UIView(CALayer_PhotosUI)

- (id)_pu_referenceBasicAnimationForCurrentAnimation
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = [a1 layer];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [v1 animationKeys];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [v1 animationForKey:*(*(&v10 + 1) + 8 * v6)];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 beginTime];
        if (v8 == 0.0)
        {
          break;
        }
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v7 = 0;
  }

  return v7;
}

@end