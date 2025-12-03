@interface SiriLinkFlowIntent
- (SiriLinkFlowIntent)init;
- (SiriLinkFlowIntent)initWithCoder:(id)coder;
@end

@implementation SiriLinkFlowIntent

- (SiriLinkFlowIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SiriLinkFlowIntent();
  return [(SiriLinkFlowIntent *)&v3 init];
}

- (SiriLinkFlowIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SiriLinkFlowIntent();
  coderCopy = coder;
  v5 = [(SiriLinkFlowIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end