@interface GenerativeErrorXPCEnvelope
- (void)encodeWithCoder:(id)a3;
@end

@implementation GenerativeErrorXPCEnvelope

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  GenerativeErrorXPCEnvelope.encode(with:)(v4);
}

@end