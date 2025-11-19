@interface ToolTypeXPCEnvelope
- (void)encodeWithCoder:(id)a3;
@end

@implementation ToolTypeXPCEnvelope

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ToolTypeXPCEnvelope.encode(with:)(v4);
}

@end