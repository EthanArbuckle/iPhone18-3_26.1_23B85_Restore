@interface UnifiedAccessReaderEngagement
- (id)cipherSuites;
- (void)setCipherSuites:(id)a3;
@end

@implementation UnifiedAccessReaderEngagement

- (void)setCipherSuites:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableArray alloc] initWithArray:v4];

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