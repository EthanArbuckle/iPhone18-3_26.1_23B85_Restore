@interface NSURL(LPPrivate)
+ (CFURLRef)_lp_URLWithData:()LPPrivate baseURL:;
- (id)_lp_URLByDeletingCommonIndexPageNames;
- (id)_lp_URLBySortingQueryItems;
- (id)_lp_originalData;
- (id)_lp_simplifiedStringForDisplayOnly:()LPPrivate;
@end

@implementation NSURL(LPPrivate)

- (id)_lp_URLByDeletingCommonIndexPageNames
{
  if ([NSURL(LPPrivate) _lp_URLByDeletingCommonIndexPageNames]::onceToken != -1)
  {
    [NSURL(LPPrivate) _lp_URLByDeletingCommonIndexPageNames];
  }

  v2 = [NSURL(LPPrivate) _lp_URLByDeletingCommonIndexPageNames]::commonIndexPageNames;
  v3 = [a1 lastPathComponent];
  v4 = [v3 lowercaseString];
  LODWORD(v2) = [v2 containsObject:v4];

  if (v2)
  {
    v5 = [a1 URLByDeletingLastPathComponent];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

- (id)_lp_URLBySortingQueryItems
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:a1 resolvingAgainstBaseURL:0];
  v2 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"name" ascending:1 selector:sel_compare_];
  v3 = [v1 percentEncodedQueryItems];
  v9[0] = v2;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v5 = [v3 sortedArrayUsingDescriptors:v4];
  [v1 setPercentEncodedQueryItems:v5];

  v6 = [v1 URL];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_lp_originalData
{
  v2 = malloc_type_malloc(0x800uLL, 0x100004077774924uLL);
  v3 = CFURLGetBytes(a1, v2, 2048);
  if (v3 != -1)
  {
LABEL_4:
    v6 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v2 length:v3 freeWhenDone:1];
    v7 = CFURLGetBaseURL(a1);
    if (v7)
    {
      v8 = [MEMORY[0x277CBEBC0] _lp_URLWithData:v6 baseURL:v7];
      v9 = [v8 _lp_originalData];
    }

    else
    {
      v9 = v6;
    }

    goto LABEL_8;
  }

  v4 = CFURLGetBytes(a1, 0, 0);
  if (v4 != -1)
  {
    v5 = v4;
    v2 = malloc_type_realloc(v2, v4, 0x100004077774924uLL);
    v3 = CFURLGetBytes(a1, v2, v5);
    goto LABEL_4;
  }

  free(v2);
  v9 = [MEMORY[0x277CBEA90] data];
LABEL_8:

  return v9;
}

+ (CFURLRef)_lp_URLWithData:()LPPrivate baseURL:
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    goto LABEL_22;
  }

  v7 = [v5 length];
  if (!v7)
  {
    v12 = [MEMORY[0x277CBEBC0] URLWithString:&stru_28803EAC8];
LABEL_25:
    v20 = v12;
    goto LABEL_26;
  }

  v8 = v6;
  v9 = v8;
  if (!v8)
  {
    v6 = 0;
    goto LABEL_20;
  }

  location = CFURLGetByteRangeForComponent(v8, kCFURLComponentResourceSpecifier, 0).location;
  if (location == -1)
  {
    goto LABEL_19;
  }

  if (CFURLGetBytes(v9, buffer, 2048) == -1)
  {
    v13 = CFURLGetBytes(v9, 0, 0);
    v14 = v13;
    if (v13 != -1)
    {
      v11 = malloc_type_malloc(v13, 0x100004077774924uLL);
      CFURLGetBytes(v9, v11, v14);
      goto LABEL_11;
    }

LABEL_19:
    v6 = v9;
    goto LABEL_20;
  }

  v11 = buffer;
LABEL_11:
  v15 = location - 1;
  v16 = CFURLCreateWithBytes(0, v11, v15, 0x8000100u, 0);
  if (!v16)
  {
    v16 = CFURLCreateWithBytes(0, v11, v15, 0x201u, 0);
  }

  if (v11 != buffer)
  {
    free(v11);
  }

  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v9;
  }

  v6 = v17;

LABEL_20:
  v18 = v5;
  v19 = [v5 bytes];
  if (*v19 == 47 && !v6)
  {
LABEL_22:
    v20 = 0;
    goto LABEL_26;
  }

  v20 = CFURLCreateAbsoluteURLWithBytes(0, v19, v7, 0x8000100u, v6, 1u);
  if (!v20)
  {
    v12 = CFURLCreateAbsoluteURLWithBytes(0, v19, v7, 0x201u, v6, 1u);
    goto LABEL_25;
  }

LABEL_26:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_lp_simplifiedStringForDisplayOnly:()LPPrivate
{
  v4 = [a1 _lp_userVisibleString];
  v5 = [v4 _lp_simplifiedUserVisibleURLStringWithSimplifications:1023 forDisplayOnly:a3];

  return v5;
}

@end