@interface NSString(BRCShareURL)
- (id)brc_mangledNameFromURLFragment:()BRCShareURL;
@end

@implementation NSString(BRCShareURL)

- (id)brc_mangledNameFromURLFragment:()BRCShareURL
{
  v4 = [a1 mutableCopy];
  v5 = v4;
  if (a3)
  {
    [v4 replaceOccurrencesOfString:@"_" withString:@" " options:0 range:{0, objc_msgSend(v4, "length")}];
    v6 = [v5 stringByRemovingPercentEncoding];
    v7 = [v6 mutableCopy];

    v5 = v7;
  }

  [v5 replaceOccurrencesOfString:@"/" withString:@":" options:0 range:{0, objc_msgSend(v5, "length")}];

  return v5;
}

@end