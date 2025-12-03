@interface VSMessagePortFeature
+ (id)makeFeatureJSObjectForFeature:(id)feature;
- (IKAppContext)appContext;
- (VSMessagePortFeature)initWithDOMNode:(id)node featureName:(id)name;
- (VSMessagePortFeatureDelegate)delegate;
- (void)messagePort:(id)port didReceiveMessage:(id)message;
@end

@implementation VSMessagePortFeature

+ (id)makeFeatureJSObjectForFeature:(id)feature
{
  featureCopy = feature;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = MEMORY[0x277CBEAD8];
      v5 = *MEMORY[0x277CBE660];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      [v4 raise:v5 format:{@"Unexpectedly, feature was %@, instead of VSMessagePortFeature.", v7}];
    }

    v8 = featureCopy;
    v9 = [VSJSMessagePort alloc];
    appContext = [v8 appContext];
    v11 = [(IKJSObject *)v9 initWithAppContext:appContext];

    [(VSJSMessagePort *)v11 setDelegate:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (VSMessagePortFeature)initWithDOMNode:(id)node featureName:(id)name
{
  nodeCopy = node;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = VSMessagePortFeature;
  v8 = [(VSMessagePortFeature *)&v13 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    featureName = v8->_featureName;
    v8->_featureName = v9;

    appContext = [nodeCopy appContext];
    objc_storeWeak(&v8->_appContext, appContext);
  }

  return v8;
}

- (void)messagePort:(id)port didReceiveMessage:(id)message
{
  messageCopy = message;
  delegate = [(VSMessagePortFeature *)self delegate];
  [delegate messagePort:self didReceiveMessage:messageCopy];
}

- (IKAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

- (VSMessagePortFeatureDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end