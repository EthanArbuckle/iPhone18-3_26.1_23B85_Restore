@interface CKDistributedTimestamp
- (id)bm_description;
@end

@implementation CKDistributedTimestamp

- (id)bm_description
{
  siteIdentifierObject = [(CKDistributedTimestamp *)self siteIdentifierObject];
  identifier = [siteIdentifierObject identifier];

  bytes = [identifier bytes];
  v6 = [NSString alloc];
  if (bytes)
  {
    v7 = [v6 initWithFormat:@"%.8s:%lu", objc_msgSend(identifier, "bytes"), -[CKDistributedTimestamp clockValue](self, "clockValue")];
  }

  else
  {
    v7 = [v6 initWithFormat:@"(null):%lu", -[CKDistributedTimestamp clockValue](self, "clockValue"), v10];
  }

  v8 = v7;

  return v8;
}

@end