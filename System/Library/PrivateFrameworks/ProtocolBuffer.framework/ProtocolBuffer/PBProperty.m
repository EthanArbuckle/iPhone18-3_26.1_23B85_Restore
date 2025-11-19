@interface PBProperty
@end

@implementation PBProperty

uint64_t __51___PBProperty_getValidPropertiesForType_withCache___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 hasPrefix:@"has"];
  if (a3)
  {
    v7 = *(a3 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v6 != [v7 hasPrefix:@"has"])
  {
    if (v6)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  if (!a2)
  {
    v9 = 0;
    if (a3)
    {
      goto LABEL_11;
    }

LABEL_18:
    v10 = 0;
    goto LABEL_12;
  }

  v9 = *(a2 + 8);
  if (!a3)
  {
    goto LABEL_18;
  }

LABEL_11:
  v10 = *(a3 + 8);
LABEL_12:

  return [v9 compare:v10];
}

@end