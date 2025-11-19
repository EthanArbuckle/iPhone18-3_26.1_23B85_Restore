@interface NSURL(SCRCURL)
- (id)absoluteStringWithoutQueryParameters;
- (id)baseDomainURL;
@end

@implementation NSURL(SCRCURL)

- (id)absoluteStringWithoutQueryParameters
{
  v2 = [a1 absoluteString];
  v3 = [a1 query];
  if ([v3 length])
  {
    v4 = [@"?" stringByAppendingString:v3];
    v5 = [v2 stringByReplacingOccurrencesOfString:v4 withString:&stru_287632E30];
    v6 = [a1 host];
    if (([v5 hasSuffix:@"/"] & 1) == 0 && v6 && objc_msgSend(v5, "hasSuffix:", v6))
    {
      v7 = [v5 stringByAppendingString:@"/"];

      v5 = v7;
    }
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

- (id)baseDomainURL
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [a1 scheme];
  v4 = [a1 host];
  v5 = [v2 initWithFormat:@"%@://%@/", v3, v4];

  v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];

  return v6;
}

@end