@interface WBSReaderNavigationPolicyDecider
+ (BOOL)readerPageWithURL:(id)l canLoadFrameWithURL:(id)rL;
@end

@implementation WBSReaderNavigationPolicyDecider

+ (BOOL)readerPageWithURL:(id)l canLoadFrameWithURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  if ([rLCopy safari_isHTTPFamilyURL])
  {
    host = [rLCopy host];
    if ([host length])
    {
      host2 = [lCopy host];
      v9 = [host2 isEqualToString:host];

      if (v9)
      {
        v10 = 1;
      }

      else
      {
        v11 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^(.+\\.)?(youtube(-nocookie)?\\.com|vimeo\\.com|dailymotion\\.com|soundcloud\\.com|mixcloud\\.com|embedly\\.com|embed\\.ly)\\.?$" options:0 error:0];
        v12 = [v11 firstMatchInString:host options:0 range:{0, objc_msgSend(host, "length")}];

        if (v12)
        {
          v10 = 1;
        }

        else
        {
          v13 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^(.+\\.)?(twitter\\.com)\\.?$" options:0 error:0];
          v14 = [v13 firstMatchInString:host options:0 range:{0, objc_msgSend(host, "length")}];

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