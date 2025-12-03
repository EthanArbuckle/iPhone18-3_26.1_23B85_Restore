@interface DocumentRegistrationXPCResponse
- (void)encodeWithCoder:(id)coder;
@end

@implementation DocumentRegistrationXPCResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  DocumentRegistrationXPCResponse.encode(with:)(coderCopy);
}

@end