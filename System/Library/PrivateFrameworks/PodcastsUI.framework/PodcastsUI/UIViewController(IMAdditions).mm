@interface UIViewController(IMAdditions)
- (BOOL)isHorizontallyCompact;
- (BOOL)isHorizontallyRegular;
- (BOOL)isHorizontallySpecified;
- (BOOL)isVerticallyCompact;
- (BOOL)isVerticallyRegular;
- (BOOL)isVerticallySpecified;
- (id)recursiveDescription;
- (uint64_t)IMDeviceOrientation;
- (uint64_t)preferredInterfaceOrientationGivenOrientation:()IMAdditions;
@end

@implementation UIViewController(IMAdditions)

- (uint64_t)IMDeviceOrientation
{
  v1 = [a1 interfaceOrientation];
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 orientation];

  if ((v3 - 1) >= 4)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

- (uint64_t)preferredInterfaceOrientationGivenOrientation:()IMAdditions
{
  if (([a1 isSupportedInterfaceOrientation:?] & 1) == 0)
  {
    a3 = [a1 IMDeviceOrientation];
    if (([a1 isSupportedInterfaceOrientation:a3] & 1) == 0)
    {
      a3 = 1;
      if (([a1 isSupportedInterfaceOrientation:1] & 1) == 0)
      {
        a3 = 3;
        if (([a1 isSupportedInterfaceOrientation:3] & 1) == 0)
        {
          a3 = 4;
          if (([a1 isSupportedInterfaceOrientation:4] & 1) == 0)
          {
            if ([a1 isSupportedInterfaceOrientation:2])
            {
              return 2;
            }

            else
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return a3;
}

- (id)recursiveDescription
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCAB68];
  v3 = [a1 description];
  v31 = [v2 stringWithString:v3];

  v4 = [MEMORY[0x277CCAB68] string];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = [a1 childViewControllers];
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        v11 = [v10 recursiveDescription];
        [v4 appendString:v11];

        v12 = [a1 childViewControllers];
        v13 = [v12 lastObject];

        if (v10 != v13)
        {
          [v4 appendString:@"\n"];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v7);
  }

  v14 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v15 = [v4 componentsSeparatedByCharactersInSet:v14];

  v16 = [MEMORY[0x277CCAB68] string];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v32 + 1) + 8 * j);
        v23 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v24 = [v22 stringByTrimmingCharactersInSet:v23];
        v25 = [v24 length];

        if (v25)
        {
          [v16 appendFormat:@"\t%@", v22];
          v26 = [v17 lastObject];

          if (v22 != v26)
          {
            [v16 appendString:@"\n"];
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v19);
  }

  v27 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v28 = [v16 stringByTrimmingCharactersInSet:v27];
  v29 = [v28 length];

  if (v29)
  {
    [v31 appendFormat:@"\n%@", v16];
  }

  return v31;
}

- (BOOL)isHorizontallySpecified
{
  v1 = [a1 traitCollection];
  v2 = [v1 horizontalSizeClass] != 0;

  return v2;
}

- (BOOL)isHorizontallyCompact
{
  v1 = [a1 traitCollection];
  v2 = [v1 horizontalSizeClass] == 1;

  return v2;
}

- (BOOL)isHorizontallyRegular
{
  v1 = [a1 traitCollection];
  v2 = [v1 horizontalSizeClass] == 2;

  return v2;
}

- (BOOL)isVerticallySpecified
{
  v1 = [a1 traitCollection];
  v2 = [v1 verticalSizeClass] != 0;

  return v2;
}

- (BOOL)isVerticallyCompact
{
  v1 = [a1 traitCollection];
  v2 = [v1 verticalSizeClass] == 1;

  return v2;
}

- (BOOL)isVerticallyRegular
{
  v1 = [a1 traitCollection];
  v2 = [v1 verticalSizeClass] == 2;

  return v2;
}

@end