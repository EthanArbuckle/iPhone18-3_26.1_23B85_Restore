@interface GenerativeErrorXPCEnvelope
- (void)encodeWithCoder:(id)coder;
@end

@implementation GenerativeErrorXPCEnvelope

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  GenerativeErrorXPCEnvelope.encode(with:)(coderCopy);
}

@end