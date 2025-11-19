@interface NSDictionary(UIWebBrowserViewPrivate)
- (uint64_t)_web_messageLineNumber;
- (uint64_t)_web_messageType;
@end

@implementation NSDictionary(UIWebBrowserViewPrivate)

- (uint64_t)_web_messageLineNumber
{
  v1 = [a1 objectForKey:@"lineNumber"];

  return [v1 intValue];
}

- (uint64_t)_web_messageType
{
  v2 = [a1 objectForKey:@"MessageLevel"];
  if ([v2 isEqualToString:@"TipMessageLevel"])
  {
    v3 = 2;
  }

  else if ([v2 isEqualToString:@"LogMessageLevel"])
  {
    v3 = 4;
  }

  else if ([v2 isEqualToString:@"WarningMessageLevel"])
  {
    v3 = 8;
  }

  else
  {
    v3 = 16;
  }

  v4 = [a1 objectForKey:@"MessageSource"];
  if ([v4 isEqualToString:@"HTMLMessageSource"])
  {
    v5 = 32;
  }

  else if ([v4 isEqualToString:@"XMLMessageSource"])
  {
    v5 = 64;
  }

  else if ([v4 isEqualToString:@"JSMessageSource"])
  {
    v5 = 128;
  }

  else if ([v4 isEqualToString:@"CSSMessageSource"])
  {
    v5 = 256;
  }

  else
  {
    v5 = 512;
  }

  return v5 | v3;
}

@end