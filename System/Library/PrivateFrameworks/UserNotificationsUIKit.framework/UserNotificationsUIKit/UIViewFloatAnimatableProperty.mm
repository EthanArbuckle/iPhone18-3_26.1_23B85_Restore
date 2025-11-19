@interface UIViewFloatAnimatableProperty
@end

@implementation UIViewFloatAnimatableProperty

void __109__UIViewFloatAnimatableProperty_UserNotificationsUIKit__unui_animatablePropertyWithProgressMilestones_block___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained isInvalidated] & 1) == 0)
  {
    [v3 presentationValue];
    v5 = v4;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          [v12 floatValue];
          v14 = v13;
          if (BSFloatLessThanOrEqualToFloat())
          {
            (*(*(a1 + 40) + 16))(v14, v5);
            if (!v9)
            {
              v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
            }

            [v9 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(a1 + 32) removeObject:{*(*(&v20 + 1) + 8 * j), v20}];
        }

        v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v17);
    }

    if (![*(a1 + 32) count])
    {
      [v3 invalidate];
    }
  }
}

@end