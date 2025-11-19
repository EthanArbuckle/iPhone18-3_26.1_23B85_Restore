@interface UIStatusBarRegion
@end

@implementation UIStatusBarRegion

void __38___UIStatusBarRegion_setDisplayItems___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = [v6 region];
    v4 = v3;
    if (v3 == *(a1 + 40))
    {
      v5 = [v6 floating];

      if ((v5 & 1) == 0)
      {
        [v6 setContainerView:0];
        [v6 setRegion:0];
      }
    }

    else
    {
    }
  }
}

void __38___UIStatusBarRegion_setDisplayItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setContainerView:v3];
  [v4 setRegion:*(a1 + 40)];
}

uint64_t __41___UIStatusBarRegion_enabledDisplayItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEnabled])
  {
    v3 = [v2 floating] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL __48___UIStatusBarRegion_currentEnabledDisplayItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEnabled] && (objc_msgSend(v3, "floating") & 1) == 0)
  {
    v5 = [v3 region];
    v4 = v5 == *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __47___UIStatusBarRegion_displayItemAbsoluteFrames__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 view];
  v4 = [v3 window];

  if (v4)
  {
    v5 = MEMORY[0x1E696B098];
    [v9 absoluteFrame];
    v6 = [v5 valueWithCGRect:?];
    v7 = *(a1 + 32);
    v8 = [v9 identifier];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }
}

@end