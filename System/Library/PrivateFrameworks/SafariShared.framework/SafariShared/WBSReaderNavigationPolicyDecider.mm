@interface WBSReaderNavigationPolicyDecider
+ (BOOL)readerPageWithURL:(id)a3 canLoadFrameWithURL:(id)a4;
@end

@implementation WBSReaderNavigationPolicyDecider

+ (BOOL)readerPageWithURL:(id)a3 canLoadFrameWithURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 safari_isHTTPFamilyURL])
  {
    v7 = [v6 host];
    if ([v7 length])
    {
      v8 = [v5 host];
      v9 = [v8 isEqualToString:v7];

      if (v9)
      {
        v10 = 1;
      }

      else
      {
        v11 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^(.+\\.)?(youtube(-nocookie)?\\.com|vimeo\\.com|dailymotion\\.com|soundcloud\\.com|mixcloud\\.com|embedly\\.com|embed\\.ly)\\.?$" options:0 error:0];
        v12 = [v11 firstMatchInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];

        if (v12)
        {
          v10 = 1;
        }

        else
        {
          v13 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^(.+\\.)?(twitter\\.com)\\.?$" options:0 error:0];
          v14 = [v13 firstMatchInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];

          v10 = v14 != 0;
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end