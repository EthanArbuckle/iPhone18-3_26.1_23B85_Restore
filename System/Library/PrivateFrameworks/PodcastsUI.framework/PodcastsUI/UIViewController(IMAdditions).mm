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
  interfaceOrientation = [self interfaceOrientation];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  orientation = [currentDevice orientation];

  if ((orientation - 1) >= 4)
  {
    return interfaceOrientation;
  }

  else
  {
    return orientation;
  }
}

- (uint64_t)preferredInterfaceOrientationGivenOrientation:()IMAdditions
{
  if (([self isSupportedInterfaceOrientation:?] & 1) == 0)
  {
    a3 = [self IMDeviceOrientation];
    if (([self isSupportedInterfaceOrientation:a3] & 1) == 0)
    {
      a3 = 1;
      if (([self isSupportedInterfaceOrientation:1] & 1) == 0)
      {
        a3 = 3;
        if (([self isSupportedInterfaceOrientation:3] & 1) == 0)
        {
          a3 = 4;
          if (([self isSupportedInterfaceOrientation:4] & 1) == 0)
          {
            if ([self isSupportedInterfaceOrientation:2])
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
  v3 = [self description];
  v31 = [v2 stringWithString:v3];

  string = [MEMORY[0x277CCAB68] string];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  childViewControllers = [self childViewControllers];
  v6 = [childViewControllers countByEnumeratingWithState:&v36 objects:v41 count:16];
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
          objc_enumerationMutation(childViewControllers);
        }

        v10 = *(*(&v36 + 1) + 8 * i);
        recursiveDescription = [v10 recursiveDescription];
        [string appendString:recursiveDescription];

        childViewControllers2 = [self childViewControllers];
        lastObject = [childViewControllers2 lastObject];

        if (v10 != lastObject)
        {
          [string appendString:@"\n"];
        }
      }

      v7 = [childViewControllers countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v7);
  }

  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v15 = [string componentsSeparatedByCharactersInSet:newlineCharacterSet];

  string2 = [MEMORY[0x277CCAB68] string];
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
        whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v24 = [v22 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
        v25 = [v24 length];

        if (v25)
        {
          [string2 appendFormat:@"\t%@", v22];
          lastObject2 = [v17 lastObject];

          if (v22 != lastObject2)
          {
            [string2 appendString:@"\n"];
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v19);
  }

  whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v28 = [string2 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];
  v29 = [v28 length];

  if (v29)
  {
    [v31 appendFormat:@"\n%@", string2];
  }

  return v31;
}

- (BOOL)isHorizontallySpecified
{
  traitCollection = [self traitCollection];
  v2 = [traitCollection horizontalSizeClass] != 0;

  return v2;
}

- (BOOL)isHorizontallyCompact
{
  traitCollection = [self traitCollection];
  v2 = [traitCollection horizontalSizeClass] == 1;

  return v2;
}

- (BOOL)isHorizontallyRegular
{
  traitCollection = [self traitCollection];
  v2 = [traitCollection horizontalSizeClass] == 2;

  return v2;
}

- (BOOL)isVerticallySpecified
{
  traitCollection = [self traitCollection];
  v2 = [traitCollection verticalSizeClass] != 0;

  return v2;
}

- (BOOL)isVerticallyCompact
{
  traitCollection = [self traitCollection];
  v2 = [traitCollection verticalSizeClass] == 1;

  return v2;
}

- (BOOL)isVerticallyRegular
{
  traitCollection = [self traitCollection];
  v2 = [traitCollection verticalSizeClass] == 2;

  return v2;
}

@end