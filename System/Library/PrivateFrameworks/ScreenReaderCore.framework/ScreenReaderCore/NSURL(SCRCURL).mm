@interface NSURL(SCRCURL)
- (id)absoluteStringWithoutQueryParameters;
- (id)baseDomainURL;
@end

@implementation NSURL(SCRCURL)

- (id)absoluteStringWithoutQueryParameters
{
  absoluteString = [self absoluteString];
  query = [self query];
  if ([query length])
  {
    v4 = [@"?" stringByAppendingString:query];
    v5 = [absoluteString stringByReplacingOccurrencesOfString:v4 withString:&stru_287632E30];
    host = [self host];
    if (([v5 hasSuffix:@"/"] & 1) == 0 && host && objc_msgSend(v5, "hasSuffix:", host))
    {
      v7 = [v5 stringByAppendingString:@"/"];

      v5 = v7;
    }
  }

  else
  {
    v5 = absoluteString;
  }

  return v5;
}

- (id)baseDomainURL
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  scheme = [self scheme];
  host = [self host];
  v5 = [v2 initWithFormat:@"%@://%@/", scheme, host];

  v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];

  return v6;
}

@end