@interface ToolChoiceXPCEnvelope
- (void)encodeWithCoder:(id)a3;
@end

@implementation ToolChoiceXPCEnvelope

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ToolChoiceXPCEnvelope.encode(with:)(v4);
}

@end