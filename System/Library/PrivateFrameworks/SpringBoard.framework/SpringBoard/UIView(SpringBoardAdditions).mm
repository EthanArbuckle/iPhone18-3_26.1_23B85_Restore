@interface UIView(SpringBoardAdditions)
+ (id)sb_firstDescendantOfViews:()SpringBoardAdditions passingTest:;
- (id)sb_firstDescendantOfClass:()SpringBoardAdditions;
- (id)sb_firstDescendantPassingTest:()SpringBoardAdditions;
- (id)sb_snapshotImage;
- (uint64_t)sb_firstDescendantOfClassNamed:()SpringBoardAdditions;
- (uint64_t)sb_hasActiveKeyboardOnScreen;
- (void)_printLayer:()SpringBoardAdditions level:;
- (void)sb_printLayerHierarchy;
- (void)sb_removeAllSubviews;
- (void)sb_removeAnimationsForKeys:()SpringBoardAdditions update:;
- (void)sb_removeAnimationsIncludingSubviews:()SpringBoardAdditions predicate:;
@end

@implementation UIView(SpringBoardAdditions)

- (uint64_t)sb_hasActiveKeyboardOnScreen
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v2 = [a1 superview];
    if (!v2)
    {
      return v2 & 1;
    }

    v3 = [a1 window];

    if (!v3)
    {
      LOBYTE(v2) = 0;
      return v2 & 1;
    }
  }

  v4 = [a1 firstResponder];
  if (v4 && UIKeyboardAutomaticIsOnScreen())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LOBYTE(v2) = 1;
    }

    else
    {
      objc_opt_class();
      LOBYTE(v2) = objc_opt_isKindOfClass();
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

- (void)_printLayer:()SpringBoardAdditions level:
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
    if (a4 >= 1)
    {
      v8 = a4;
      do
      {
        [v7 appendString:@"-----"];
        --v8;
      }

      while (v8);
    }

    [v7 appendString:@" "];
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 masksToBounds];
      [v6 bounds];
      v11 = NSStringFromCGRect(v31);
      *buf = 138544130;
      v23 = v7;
      v24 = 2114;
      v25 = v6;
      v26 = 1024;
      v27 = v10;
      v28 = 2114;
      v29 = v11;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@layer: %{public}@, clipsToBounds: %d, bounds: %{public}@", buf, 0x26u);
    }
  }

  v12 = [v6 sublayers];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [a1 _printLayer:*(*(&v17 + 1) + 8 * v16++) level:(a4 + 1)];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)sb_printLayerHierarchy
{
  v2 = [a1 layer];
  [a1 _printLayer:v2 level:0];
}

- (id)sb_snapshotImage
{
  v2 = [a1 window];
  v3 = [a1 superview];
  [a1 frame];
  [v3 convertRect:v2 toView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [v2 createIOSurfaceWithFrame:{v5, v7, v9, v11}];
  if (v12)
  {
    v13 = v12;
    v14 = objc_alloc(MEMORY[0x277D755B8]);
    v15 = [a1 _screen];
    [v15 scale];
    v16 = [v14 _initWithIOSurface:v13 scale:0 orientation:?];

    CFRelease(v13);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)sb_removeAllSubviews
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [a1 subviews];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) removeFromSuperview];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)sb_removeAnimationsForKeys:()SpringBoardAdditions update:
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [a1 layer];
  v9 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [v8 animationKeys];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ([v6 containsObject:v15])
        {
          [v8 removeAnimationForKey:v15];
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = [v9 count];
  if (v7 && v16)
  {
    v7[2](v7, v9);
  }
}

- (void)sb_removeAnimationsIncludingSubviews:()SpringBoardAdditions predicate:
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a1 layer];
  v7 = [v6 animationKeys];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v6 animationForKey:v12];
        if (v5[2](v5, v13))
        {
          [v6 removeAnimationForKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  if (a3)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = [a1 subviews];
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v20 + 1) + 8 * j) sb_removeAnimationsIncludingSubviews:1 predicate:v5];
        }

        v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v16);
    }
  }
}

+ (id)sb_firstDescendantOfViews:()SpringBoardAdditions passingTest:
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 bs_firstObjectPassingTest:v7];
  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v17 + 1) + 8 * i) subviews];
          [v9 addObjectsFromArray:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      v8 = [a1 sb_firstDescendantOfViews:v9 passingTest:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)sb_firstDescendantPassingTest:()SpringBoardAdditions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v9[0] = a1;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = [v5 sb_firstDescendantOfViews:v6 passingTest:v4];

  return v7;
}

- (id)sb_firstDescendantOfClass:()SpringBoardAdditions
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__UIView_SpringBoardAdditions__sb_firstDescendantOfClass___block_invoke;
  v5[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v5[4] = a3;
  v3 = [a1 sb_firstDescendantPassingTest:v5];

  return v3;
}

- (uint64_t)sb_firstDescendantOfClassNamed:()SpringBoardAdditions
{
  v4 = NSClassFromString(aClassName);

  return [a1 sb_firstDescendantOfClass:v4];
}

@end