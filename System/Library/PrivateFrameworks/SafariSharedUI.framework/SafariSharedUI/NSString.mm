@interface NSString
@end

@implementation NSString

uint64_t __88__NSString_WBSFaviconProviderNSStringExtras__safari_urlStringVariantsForFaviconDatabase__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 length];
  if (v6 == [v4 length])
  {
    v7 = [v5 caseInsensitiveCompare:v4];
  }

  else
  {
    v8 = [v5 length];

    if (v8 > [v4 length])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

uint64_t __95__NSString_WBSFaviconProviderNSStringExtras__safari_urlStringVariantsForIconControllerDatabase__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 length];
  if (v6 == [v4 length])
  {
    v7 = [v5 caseInsensitiveCompare:v4];
  }

  else
  {
    v8 = [v5 length];

    if (v8 > [v4 length])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

@end