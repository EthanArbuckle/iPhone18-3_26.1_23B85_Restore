@interface UIView(CALayer_PhotosUI)
- (id)_pu_referenceBasicAnimationForCurrentAnimation;
@end

@implementation UIView(CALayer_PhotosUI)

- (id)_pu_referenceBasicAnimationForCurrentAnimation
{
  v15 = *MEMORY[0x1E69E9840];
  layer = [self layer];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  animationKeys = [layer animationKeys];
  v3 = [animationKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
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
        objc_enumerationMutation(animationKeys);
      }

      v7 = [layer animationForKey:*(*(&v10 + 1) + 8 * v6)];
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
        v4 = [animationKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
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