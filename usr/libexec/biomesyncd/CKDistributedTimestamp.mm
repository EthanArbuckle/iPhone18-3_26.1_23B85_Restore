@interface CKDistributedTimestamp
- (id)bm_description;
@end

@implementation CKDistributedTimestamp

- (id)bm_description
{
  v3 = [(CKDistributedTimestamp *)self siteIdentifierObject];
  v4 = [v3 identifier];

  v5 = [v4 bytes];
  v6 = [NSString alloc];
  if (v5)
  {
    v7 = [v6 initWithFormat:@"%.8s:%lu", objc_msgSend(v4, "bytes"), -[CKDistributedTimestamp clockValue](self, "clockValue")];
  }

  else
  {
    v7 = [v6 initWithFormat:@"(null):%lu", -[CKDistributedTimestamp clockValue](self, "clockValue"), v10];
  }

  v8 = v7;

  return v8;
}

@end