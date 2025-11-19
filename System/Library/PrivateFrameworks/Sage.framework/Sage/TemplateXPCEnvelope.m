@interface TemplateXPCEnvelope
- (void)encodeWithCoder:(id)a3;
@end

@implementation TemplateXPCEnvelope

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  TemplateXPCEnvelope.encode(with:)(v4);
}

@end