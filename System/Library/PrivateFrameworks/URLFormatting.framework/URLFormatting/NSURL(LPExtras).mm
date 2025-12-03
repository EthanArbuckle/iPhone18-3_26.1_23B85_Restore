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
  _lp_URLByDeletingCommonIndexPageNames = [self _lp_URLByDeletingCommonIndexPageNames];
  _lp_URLBySortingQueryItems = [_lp_URLByDeletingCommonIndexPageNames _lp_URLBySortingQueryItems];
  absoluteString = [_lp_URLBySortingQueryItems absoluteString];
  _lp_stringByTrimmingWhitespace = [absoluteString _lp_stringByTrimmingWhitespace];
  _lp_stringByDeletingUsernameAndPassword = [_lp_stringByTrimmingWhitespace _lp_stringByDeletingUsernameAndPassword];
  _lp_stringByDeletingTrailingSlash = [_lp_stringByDeletingUsernameAndPassword _lp_stringByDeletingTrailingSlash];

  v7 = [_lp_stringByDeletingTrailingSlash _lp_simplifiedUserVisibleURLStringWithSimplifications:2031 forDisplayOnly:0];

  return v7;
}

- (BOOL)_lp_isHTTPFamilyURL
{
  scheme = [self scheme];
  if ([scheme compare:@"http" options:3])
  {
    v2 = [scheme compare:@"https" options:3] == 0;
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
  v1 = userVisibleStringForURL(self, &v3);
  return v3;
}

- (id)_lp_highLevelDomain
{
  host = [self host];
  v2 = encodeHostName(host);

  _lp_highLevelDomainFromHost = [v2 _lp_highLevelDomainFromHost];
  v4 = _lp_highLevelDomainFromHost;
  if (_lp_highLevelDomainFromHost)
  {
    v5 = decodeHostName(_lp_highLevelDomainFromHost);
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
    bytes = [v10 bytes];
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
          v20 = *bytes++;
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