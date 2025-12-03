@interface StringResponseSanitizerXPCEnvelope
- (void)encodeWithCoder:(id)coder;
@end

@implementation StringResponseSanitizerXPCEnvelope

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  StringResponseSanitizerXPCEnvelope.encode(with:)(coderCopy);
}

@end