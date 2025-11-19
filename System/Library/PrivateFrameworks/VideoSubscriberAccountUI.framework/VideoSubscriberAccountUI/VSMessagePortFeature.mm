@interface VSMessagePortFeature
+ (id)makeFeatureJSObjectForFeature:(id)a3;
- (IKAppContext)appContext;
- (VSMessagePortFeature)initWithDOMNode:(id)a3 featureName:(id)a4;
- (VSMessagePortFeatureDelegate)delegate;
- (void)messagePort:(id)a3 didReceiveMessage:(id)a4;
@end

@implementation VSMessagePortFeature

+ (id)makeFeatureJSObjectForFeature:(id)a3
{
  v3 = a3;
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

    v8 = v3;
    v9 = [VSJSMessagePort alloc];
    v10 = [v8 appContext];
    v11 = [(IKJSObject *)v9 initWithAppContext:v10];

    [(VSJSMessagePort *)v11 setDelegate:v8];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (VSMessagePortFeature)initWithDOMNode:(id)a3 featureName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = VSMessagePortFeature;
  v8 = [(VSMessagePortFeature *)&v13 init];
  if (v8)
  {
    v9 = [v7 copy];
    featureName = v8->_featureName;
    v8->_featureName = v9;

    v11 = [v6 appContext];
    objc_storeWeak(&v8->_appContext, v11);
  }

  return v8;
}

- (void)messagePort:(id)a3 didReceiveMessage:(id)a4
{
  v5 = a4;
  v6 = [(VSMessagePortFeature *)self delegate];
  [v6 messagePort:self didReceiveMessage:v5];
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