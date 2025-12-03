@interface WFSiriKitIntentRequest
- (WFSiriKitIntentRequest)initWithCoder:(id)coder;
- (WFSiriKitIntentRequest)initWithIntent:(id)intent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSiriKitIntentRequest

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFSiriKitIntentRequest;
  coderCopy = coder;
  [(WFSiriActionRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFSiriKitIntentRequest *)self intent:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"intent"];
}

- (WFSiriKitIntentRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFSiriKitIntentRequest;
  v5 = [(WFSiriActionRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
    intent = v5->_intent;
    v5->_intent = v6;

    v8 = v5;
  }

  return v5;
}

- (WFSiriKitIntentRequest)initWithIntent:(id)intent
{
  intentCopy = intent;
  v10.receiver = self;
  v10.super_class = WFSiriKitIntentRequest;
  v6 = [(WFSiriActionRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_intent, intent);
    v8 = v7;
  }

  return v7;
}

@end