@interface NSMutableURLRequest(WebNSURLRequestExtras)
- (uint64_t)_web_setHTTPReferrer:()WebNSURLRequestExtras;
@end

@implementation NSMutableURLRequest(WebNSURLRequestExtras)

- (uint64_t)_web_setHTTPReferrer:()WebNSURLRequestExtras
{
  result = [a3 _webkit_isFileURL];
  if ((result & 1) == 0)
  {
    result = [a3 length];
    if (result)
    {

      return [self setValue:a3 forHTTPHeaderField:@"Referer"];
    }
  }

  return result;
}

@end