@interface NSHTTPURLResponse(RadioAdditions)
- (id)radio_decompressedDataWithBodyData:()RadioAdditions;
@end

@implementation NSHTTPURLResponse(RadioAdditions)

- (id)radio_decompressedDataWithBodyData:()RadioAdditions
{
  v4 = a3;
  itunes_allHeaderFields = [self itunes_allHeaderFields];
  v6 = ISDictionaryValueForCaseInsensitiveString();

  v7 = v4;
  if (v6)
  {
    v7 = v4;
    if (![v6 caseInsensitiveCompare:@"gzip"])
    {
      v8 = MSVGzipDecompressData();
      v9 = v8;
      v7 = v4;
      if (v8)
      {
        v7 = v8;
      }
    }
  }

  return v7;
}

@end