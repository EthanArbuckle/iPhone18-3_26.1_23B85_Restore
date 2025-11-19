@interface SXDOMModificationContext
- (SXDOMModificationContext)initWithLayoutOptions:(id)a3 specVersion:(id)a4 experiment:(id)a5;
@end

@implementation SXDOMModificationContext

- (SXDOMModificationContext)initWithLayoutOptions:(id)a3 specVersion:(id)a4 experiment:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXDOMModificationContext;
  v12 = [(SXDOMModificationContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_layoutOptions, a3);
    objc_storeStrong(&v13->_specVersion, a4);
    objc_storeStrong(&v13->_experiment, a5);
  }

  return v13;
}

@end