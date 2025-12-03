@interface WFSiriOpenInteractionRequest
- (WFSiriOpenInteractionRequest)initWithCoder:(id)coder;
- (WFSiriOpenInteractionRequest)initWithInteraction:(id)interaction;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSiriOpenInteractionRequest

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFSiriOpenInteractionRequest;
  coderCopy = coder;
  [(WFSiriActionRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFSiriOpenInteractionRequest *)self interaction:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"interaction"];
}

- (WFSiriOpenInteractionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFSiriOpenInteractionRequest;
  v5 = [(WFSiriActionRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interaction"];
    interaction = v5->_interaction;
    v5->_interaction = v6;

    v8 = v5;
  }

  return v5;
}

- (WFSiriOpenInteractionRequest)initWithInteraction:(id)interaction
{
  interactionCopy = interaction;
  v10.receiver = self;
  v10.super_class = WFSiriOpenInteractionRequest;
  v6 = [(WFSiriActionRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_interaction, interaction);
    v8 = v7;
  }

  return v7;
}

@end