@interface PLManagedAsset(PXLocalization)
- (uint64_t)px_displayType;
@end

@implementation PLManagedAsset(PXLocalization)

- (uint64_t)px_displayType
{
  v2 = [a1 playbackStyle];
  if (v2 <= 2)
  {
    if (!v2)
    {
      return 1;
    }

    if (v2 != 1)
    {
      if (v2 == 2)
      {
        return 6;
      }

      else
      {
        return 0;
      }
    }

    goto LABEL_10;
  }

  if (v2 != 5)
  {
    if (v2 == 4)
    {
      return 2;
    }

    if (v2 != 3)
    {
      return 0;
    }

LABEL_10:
    if ([a1 playbackVariation] == 3)
    {
      return 5;
    }

    else
    {
      return 1;
    }
  }

  v4 = [a1 playbackVariation];
  v5 = 2;
  if (v4 == 2)
  {
    v5 = 3;
  }

  if (v4 == 1)
  {
    return 4;
  }

  else
  {
    return v5;
  }
}

@end