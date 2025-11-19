@interface SiriLinkFlowIntent
- (SiriLinkFlowIntent)init;
- (SiriLinkFlowIntent)initWithCoder:(id)a3;
@end

@implementation SiriLinkFlowIntent

- (SiriLinkFlowIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SiriLinkFlowIntent();
  return [(SiriLinkFlowIntent *)&v3 init];
}

- (SiriLinkFlowIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SiriLinkFlowIntent();
  v4 = a3;
  v5 = [(SiriLinkFlowIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end