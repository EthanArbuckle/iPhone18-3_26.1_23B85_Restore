@interface DocumentIdentifierXPCEnvelope
- (void)encodeWithCoder:(id)coder;
@end

@implementation DocumentIdentifierXPCEnvelope

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  DocumentIdentifierXPCEnvelope.encode(with:)(coderCopy);
}

@end