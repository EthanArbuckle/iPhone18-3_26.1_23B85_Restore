@interface PLManagedAsset(PXLocalization)
- (uint64_t)px_displayType;
@end

@implementation PLManagedAsset(PXLocalization)

- (uint64_t)px_displayType
{
  playbackStyle = [self playbackStyle];
  if (playbackStyle <= 2)
  {
    if (!playbackStyle)
    {
      return 1;
    }

    if (playbackStyle != 1)
    {
      if (playbackStyle == 2)
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

  if (playbackStyle != 5)
  {
    if (playbackStyle == 4)
    {
      return 2;
    }

    if (playbackStyle != 3)
    {
      return 0;
    }

LABEL_10:
    if ([self playbackVariation] == 3)
    {
      return 5;
    }

    else
    {
      return 1;
    }
  }

  playbackVariation = [self playbackVariation];
  v5 = 2;
  if (playbackVariation == 2)
  {
    v5 = 3;
  }

  if (playbackVariation == 1)
  {
    return 4;
  }

  else
  {
    return v5;
  }
}

@end