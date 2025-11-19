@interface NSURL(LPExtras)
+ (id)_lp_URLWithUserTypedString:()LPExtras relativeToURL:;
- (BOOL)_lp_isHTTPFamilyURL;
- (BOOL)_lp_userVisibleStringUsesEncodedHost;
- (id)_lp_highLevelDomain;
- (id)_lp_simplifiedURLStringForFuzzyMatching;
@end

@implementation NSURL(LPExtras)

- (id)_lp_simplifiedURLStringForFuzzyMatching
{
  v1 = [a1 _lp_URLByDeletingCommonIndexPageNames];
  v2 = [v1 _lp_URLBySortingQueryItems];
  v3 = [v2 absoluteString];
  v4 = [v3 _lp_stringByTrimmingWhitespace];
  v5 = [v4 _lp_stringByDeletingUsernameAndPassword];
  v6 = [v5 _lp_stringByDeletingTrailingSlash];

  v7 = [v6 _lp_simplifiedUserVisibleURLStringWithSimplifications:2031 forDisplayOnly:0];

  return v7;
}

- (BOOL)_lp_isHTTPFamilyURL
{
  v1 = [a1 scheme];
  if ([v1 compare:@"http" options:3])
  {
    v2 = [v1 compare:@"https" options:3] == 0;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

- (BOOL)_lp_userVisibleStringUsesEncodedHost
{
  v3 = 0;
  v1 = userVisibleStringForURL(a1, &v3);
  return v3;
}

- (id)_lp_highLevelDomain
{
  v1 = [a1 host];
  v2 = encodeHostName(v1);

  v3 = [v2 _lp_highLevelDomainFromHost];
  v4 = v3;
  if (v3)
  {
    v5 = decodeHostName(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_lp_URLWithUserTypedString:()LPExtras relativeToURL:
{
  v5 = a3;
  v6 = a4;
  if (v5 && ([v5 _lp_stringByTrimmingWhitespace], v7 = objc_claimAutoreleasedReturnValue(), mapHostNames(v7, 1, 0), v8 = objc_claimAutoreleasedReturnValue(), v5, v7, v8))
  {
    v9 = v8;
    v10 = [v9 dataUsingEncoding:4];
    v11 = [v10 bytes];
    v12 = [v10 length];
    v13 = v12;
    v14 = 0;
    if (v12 && v12 <= 715827882)
    {
      v15 = malloc_type_malloc(3 * v12, 0x100004077774924uLL);
      if (v13 < 1)
      {
        v16 = 0;
      }

      else
      {
        LODWORD(v16) = 0;
        v17 = v13 & 0x7FFFFFFF;
        v18 = v15;
        do
        {
          v20 = *v11++;
          v19 = v20;
          if (v20 - 127 > 0xFFFFFFA1)
          {
            v24 = v18 + 1;
            v25 = 1;
          }

          else
          {
            if (v19 >= 0xA0)
            {
              v21 = 55;
            }

            else
            {
              v21 = 48;
            }

            v18[1] = v21 + (v19 >> 4);
            v19 &= 0xFu;
            if (v19 >= 0xA)
            {
              v22 = 55;
            }

            else
            {
              v22 = 48;
            }

            v23 = v22 + v19;
            v24 = v18 + 3;
            v18[2] = v23;
            LOBYTE(v19) = 37;
            v25 = 3;
          }

          v16 = (v25 + v16);
          *v18 = v19;
          v18 = v24;
          --v17;
        }

        while (v17);
      }

      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v15 length:v16];
    }

    if (v14)
    {
      [MEMORY[0x277CBEBC0] _lp_URLWithData:v14 baseURL:v6];
    }

    else
    {
      [MEMORY[0x277CBEBC0] URLWithString:&stru_28803EAC8];
    }
    v26 = ;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end