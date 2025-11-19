@interface DocumentRegistrationXPCResponse
- (void)encodeWithCoder:(id)a3;
@end

@implementation DocumentRegistrationXPCResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  DocumentRegistrationXPCResponse.encode(with:)(v4);
}

@end