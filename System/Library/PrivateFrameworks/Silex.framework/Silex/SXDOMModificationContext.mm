@interface SXDOMModificationContext
- (SXDOMModificationContext)initWithLayoutOptions:(id)options specVersion:(id)version experiment:(id)experiment;
@end

@implementation SXDOMModificationContext

- (SXDOMModificationContext)initWithLayoutOptions:(id)options specVersion:(id)version experiment:(id)experiment
{
  optionsCopy = options;
  versionCopy = version;
  experimentCopy = experiment;
  v15.receiver = self;
  v15.super_class = SXDOMModificationContext;
  v12 = [(SXDOMModificationContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_layoutOptions, options);
    objc_storeStrong(&v13->_specVersion, version);
    objc_storeStrong(&v13->_experiment, experiment);
  }

  return v13;
}

@end