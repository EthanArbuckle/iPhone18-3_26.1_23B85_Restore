@interface SiriSharedUIContentScaleFactorUtility
+ (void)siriSharedUIApplyContentScale:(double)scale toLabel:(id)label;
+ (void)siriSharedUIApplyContentScale:(double)scale toView:(id)view;
@end

@implementation SiriSharedUIContentScaleFactorUtility

+ (void)siriSharedUIApplyContentScale:(double)scale toView:(id)view
{
  v17 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = viewCopy;
    [objc_opt_class() siriSharedUIApplyContentScale:v6 toLabel:scale];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  subviews = [viewCopy subviews];
  v8 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(subviews);
        }

        [objc_opt_class() siriSharedUIApplyContentScale:*(*(&v12 + 1) + 8 * v11++) toView:scale];
      }

      while (v9 != v11);
      v9 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

+ (void)siriSharedUIApplyContentScale:(double)scale toLabel:(id)label
{
  v17 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  [labelCopy setContentScaleFactor:scale];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  subviews = [labelCopy subviews];
  v7 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(subviews);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        [objc_opt_class() siriSharedUIApplyContentScale:v11 toLabel:scale];

        ++v10;
      }

      while (v8 != v10);
      v8 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

@end