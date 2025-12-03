@interface UnifiedAccessReaderEngagement
- (id)cipherSuites;
- (void)setCipherSuites:(id)suites;
@end

@implementation UnifiedAccessReaderEngagement

- (void)setCipherSuites:(id)suites
{
  suitesCopy = suites;
  v5 = [[NSMutableArray alloc] initWithArray:suitesCopy];

  sub_10001B088(self, v5);

  [(ISOReaderEngagement *)self setCborObj:0];
}

- (id)cipherSuites
{
  if (self)
  {
    self = self->_cipherList;
  }

  return self;
}

@end