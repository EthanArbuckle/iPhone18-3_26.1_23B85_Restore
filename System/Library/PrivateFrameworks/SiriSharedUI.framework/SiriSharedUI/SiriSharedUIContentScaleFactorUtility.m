@interface SiriSharedUIContentScaleFactorUtility
+ (void)siriSharedUIApplyContentScale:(double)a3 toLabel:(id)a4;
+ (void)siriSharedUIApplyContentScale:(double)a3 toView:(id)a4;
@end

@implementation SiriSharedUIContentScaleFactorUtility

+ (void)siriSharedUIApplyContentScale:(double)a3 toView:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    [objc_opt_class() siriSharedUIApplyContentScale:v6 toLabel:a3];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v5 subviews];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [objc_opt_class() siriSharedUIApplyContentScale:*(*(&v12 + 1) + 8 * v11++) toView:a3];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

+ (void)siriSharedUIApplyContentScale:(double)a3 toLabel:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  [v5 setContentScaleFactor:a3];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 subviews];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        [objc_opt_class() siriSharedUIApplyContentScale:v11 toLabel:a3];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

@end