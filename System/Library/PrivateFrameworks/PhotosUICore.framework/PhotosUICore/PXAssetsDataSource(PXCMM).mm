@interface PXAssetsDataSource(PXCMM)
- (uint64_t)aggregateMediaType;
@end

@implementation PXAssetsDataSource(PXCMM)

- (uint64_t)aggregateMediaType
{
  numberOfSections = [self numberOfSections];
  if (numberOfSections < 1)
  {
    return 0;
  }

  v3 = numberOfSections;
  v4 = 0;
  v5 = 0;
  for (i = 0; i != v3; ++i)
  {
    v7 = [self numberOfItemsInSection:i];
    if (v7 < 1)
    {
LABEL_11:
      if ((v4 & 1) == 0)
      {
        continue;
      }
    }

    else
    {
      v8 = v7;
      v9 = 0;
      while (1)
      {
        v12[0] = [self identifier];
        v12[1] = i;
        v12[2] = v9;
        v12[3] = 0x7FFFFFFFFFFFFFFFLL;
        v10 = [self assetAtItemIndexPath:v12];
        if ([v10 mediaType] == 1)
        {
          v4 = 1;
        }

        else
        {
          v5 |= [v10 mediaType] == 2;
        }

        if (v4 & 1) != 0 && (v5)
        {
          break;
        }

        if (v8 == ++v9)
        {
          goto LABEL_11;
        }
      }

      v5 = 1;
      v4 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (v5)
  {
    result = 2;
  }

  else
  {
    result = 0;
  }

  if (v4)
  {
    return 1;
  }

  return result;
}

@end