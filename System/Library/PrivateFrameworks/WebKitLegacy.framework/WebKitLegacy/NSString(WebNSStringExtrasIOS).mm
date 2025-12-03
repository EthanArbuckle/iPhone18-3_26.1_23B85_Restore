@interface NSString(WebNSStringExtrasIOS)
- (uint64_t)_web_bestURLForUserTypedString;
- (void)_web_possibleURLsForForUserTypedString:()WebNSStringExtrasIOS;
@end

@implementation NSString(WebNSStringExtrasIOS)

- (void)_web_possibleURLsForForUserTypedString:()WebNSStringExtrasIOS
{
  array = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E696AD60] stringWithString:self];
  CFStringTrimWhitespace(v6);
  v19.length = [(__CFString *)v6 length];
  v19.location = 0;
  CFStringFindAndReplace(v6, @"\n", &stru_1F472E7E8, v19, 0);
  v20.length = [(__CFString *)v6 length];
  v20.location = 0;
  CFStringFindAndReplace(v6, @"\r", &stru_1F472E7E8, v20, 0);
  if (![(__CFString *)v6 length])
  {
    return array;
  }

  if ([(__CFString *)v6 characterAtIndex:0]!= 47 && [(__CFString *)v6 characterAtIndex:0]!= 126)
  {
    v9 = [(__CFString *)v6 rangeOfString:@":"];
    v10 = [(__CFString *)v6 rangeOfString:@"/"];
    v11 = [(__CFString *)v6 rangeOfString:@"."];
    v12 = [(__CFString *)v6 rangeOfString:@"@"];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL && (v10 == 0x7FFFFFFFFFFFFFFFLL || v10 >= v9) && (([(__CFString *)v6 _web_hasCaseInsensitivePrefix:@"http:"]& 1) != 0 || ([(__CFString *)v6 _web_hasCaseInsensitivePrefix:@"https:"]& 1) != 0 || ([(__CFString *)v6 _web_hasCaseInsensitivePrefix:@"file:"]& 1) != 0 || ([(__CFString *)v6 _web_hasCaseInsensitivePrefix:@"ftp:"]& 1) != 0 || ([(__CFString *)v6 _web_hasCaseInsensitivePrefix:@"javascript:"]& 1) != 0 || ([(__CFString *)v6 _web_hasCaseInsensitivePrefix:@"about:"]& 1) != 0 || ([(__CFString *)v6 _web_hasCaseInsensitivePrefix:@"radar:"]& 1) != 0 || ([(__CFString *)v6 _web_hasCaseInsensitivePrefix:@"rdar:"]& 1) != 0 || [(__CFString *)v6 length]<= v9 + 1 || [(__CFString *)v6 characterAtIndex:?]- 58 <= 0xFFFFFFF5))
    {
      goto LABEL_15;
    }

    if (![-[__CFString lowercaseString](v6 "lowercaseString")])
    {
      if ([-[__CFString lowercaseString](v6 "lowercaseString")])
      {
        v13 = @"ftp://";
        goto LABEL_14;
      }

      if (v12 == 0x7FFFFFFFFFFFFFFFLL || v12 >= v10)
      {
        if (v11 != 0x7FFFFFFFFFFFFFFFLL && v11 < v10)
        {
          [(__CFString *)v6 insertString:@"http://" atIndex:0];
          v15 = [MEMORY[0x1E695DFF8] _webkit_URLWithUserTypedString:v6];
          if (v15)
          {
            [array addObject:v15];
          }

LABEL_35:
          [(__CFString *)v6 insertString:@"www." atIndex:7];
          v14 = MEMORY[0x1E695DFF8];
LABEL_16:
          v7 = [v14 _webkit_URLWithUserTypedString:v6];
          if (!v7)
          {
            return array;
          }

          goto LABEL_5;
        }

        if (([-[__CFString lowercaseString](v6 "lowercaseString")] & 1) == 0 && !objc_msgSend(-[__CFString lowercaseString](v6, "lowercaseString"), "hasPrefix:", @"localhost/"))
        {
          [(__CFString *)v6 insertString:@"http://" atIndex:0];
          v16 = [MEMORY[0x1E695DFF8] _webkit_URLWithUserTypedString:v6];
          if (v16)
          {
            [array addObject:v16];
          }

          v17 = [(__CFString *)v6 rangeOfString:@":" options:2 range:5, [(__CFString *)v6 length]- 5];
          if (v17 == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v10 == 0x7FFFFFFFFFFFFFFFLL)
            {
              LODWORD(v17) = [(__CFString *)v6 length];
            }

            else
            {
              LODWORD(v17) = v10 + 7;
            }
          }

          v18 = v17;
          if (!a3 || v17 != [(__CFString *)v6 length])
          {
            [(__CFString *)v6 insertString:@".com" atIndex:v18];
          }

          goto LABEL_35;
        }
      }
    }

    v13 = @"http://";
LABEL_14:
    [(__CFString *)v6 insertString:v13 atIndex:0];
LABEL_15:
    v14 = MEMORY[0x1E695DFF8];
    goto LABEL_16;
  }

  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:{-[__CFString _web_stringByExpandingTildeInPath](v6, "_web_stringByExpandingTildeInPath")}];
  if (v7)
  {
LABEL_5:
    [array addObject:v7];
  }

  return array;
}

- (uint64_t)_web_bestURLForUserTypedString
{
  _web_possibleURLsForUserTypedString = [self _web_possibleURLsForUserTypedString];
  result = [_web_possibleURLsForUserTypedString count];
  if (result)
  {
    v3 = [_web_possibleURLsForUserTypedString objectAtIndex:0];

    return [v3 _webkit_canonicalize];
  }

  return result;
}

@end