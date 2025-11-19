@interface UIToolbarVisualProviderLegacyIOS
@end

@implementation UIToolbarVisualProviderLegacyIOS

void __125___UIToolbarVisualProviderLegacyIOS__positionToolbarButtons_ignoringItem_resetFontScaleAdjustment_actuallyRepositionButtons___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) == 1 && *(a1 + 41) == 1)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v1 = *(a1 + 32);
    v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v9;
      do
      {
        v5 = 0;
        do
        {
          if (*v9 != v4)
          {
            objc_enumerationMutation(v1);
          }

          v6 = [*(*(&v8 + 1) + 8 * v5) view];
          if (([v6 _isBorderedOtherThanAccessibility] & 1) == 0)
          {
            v7 = [v6 _info];
            if ([v7 _isFontScaleInvalid])
            {
              [v7 _updateStyle];
              [v7 layoutIfNeeded];
            }
          }

          ++v5;
        }

        while (v3 != v5);
        v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v3);
    }
  }
}

void __125___UIToolbarVisualProviderLegacyIOS__positionToolbarButtons_ignoringItem_resetFontScaleAdjustment_actuallyRepositionButtons___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) objectAtIndexedSubscript:*(a1 + 48)];
  [v2 CGRectValue];
  [v1 setFrame:?];
}

void __74___UIToolbarVisualProviderLegacyIOS_updateWithItems_fromOldItems_animate___block_invoke(id *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v18 + 1) + 8 * v6) view];
        [v7 setAlpha:0.0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  [a1[5] positionToolbarButtonsAndResetFontScaleAdjustment:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = a1[6];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) view];
        [v13 setAlpha:1.0];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }
}

void __74___UIToolbarVisualProviderLegacyIOS_updateWithItems_fromOldItems_animate___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (([*(a1 + 40) containsObject:{v7, v9}] & 1) == 0)
        {
          v8 = [v7 view];
          [v8 removeFromSuperview];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

@end