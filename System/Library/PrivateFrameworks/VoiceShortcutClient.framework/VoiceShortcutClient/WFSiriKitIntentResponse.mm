@interface WFSiriKitIntentResponse
- (WFSiriKitIntentResponse)initWithCoder:(id)coder;
- (WFSiriKitIntentResponse)initWithInteraction:(id)interaction andError:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSiriKitIntentResponse

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFSiriKitIntentResponse;
  coderCopy = coder;
  [(WFSiriActionResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFSiriKitIntentResponse *)self interaction:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"interaction"];
}

- (WFSiriKitIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFSiriKitIntentResponse;
  v5 = [(WFSiriActionResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interaction"];
    interaction = v5->_interaction;
    v5->_interaction = v6;

    v8 = v5;
  }

  return v5;
}

- (WFSiriKitIntentResponse)initWithInteraction:(id)interaction andError:(id)error
{
  interactionCopy = interaction;
  v12.receiver = self;
  v12.super_class = WFSiriKitIntentResponse;
  v8 = [(WFSiriActionResponse *)&v12 initWithError:error];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_interaction, interaction);
    v10 = v9;
  }

  return v9;
}

@end