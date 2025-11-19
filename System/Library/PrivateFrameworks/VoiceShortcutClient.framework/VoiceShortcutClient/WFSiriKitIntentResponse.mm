@interface WFSiriKitIntentResponse
- (WFSiriKitIntentResponse)initWithCoder:(id)a3;
- (WFSiriKitIntentResponse)initWithInteraction:(id)a3 andError:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSiriKitIntentResponse

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFSiriKitIntentResponse;
  v4 = a3;
  [(WFSiriActionResponse *)&v6 encodeWithCoder:v4];
  v5 = [(WFSiriKitIntentResponse *)self interaction:v6.receiver];
  [v4 encodeObject:v5 forKey:@"interaction"];
}

- (WFSiriKitIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFSiriKitIntentResponse;
  v5 = [(WFSiriActionResponse *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interaction"];
    interaction = v5->_interaction;
    v5->_interaction = v6;

    v8 = v5;
  }

  return v5;
}

- (WFSiriKitIntentResponse)initWithInteraction:(id)a3 andError:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = WFSiriKitIntentResponse;
  v8 = [(WFSiriActionResponse *)&v12 initWithError:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_interaction, a3);
    v10 = v9;
  }

  return v9;
}

@end