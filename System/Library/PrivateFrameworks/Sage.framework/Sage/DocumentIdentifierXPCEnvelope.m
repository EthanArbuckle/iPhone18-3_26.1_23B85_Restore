@interface DocumentIdentifierXPCEnvelope
- (void)encodeWithCoder:(id)a3;
@end

@implementation DocumentIdentifierXPCEnvelope

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  DocumentIdentifierXPCEnvelope.encode(with:)(v4);
}

@end