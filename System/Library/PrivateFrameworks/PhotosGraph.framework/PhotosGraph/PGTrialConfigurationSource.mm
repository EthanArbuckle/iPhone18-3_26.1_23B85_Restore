@interface PGTrialConfigurationSource
- (PGTrialConfigurationSource)initWithTrialSession:(id)a3 namespaceType:(unsigned __int16)a4;
- (id)objectForKey:(id)a3;
@end

@implementation PGTrialConfigurationSource

- (id)objectForKey:(id)a3
{
  v3 = [(PGTrialSession *)self->_trialSession levelForFactorName:a3 withNamespaceType:self->_namespaceType];
  v4 = [v3 object];

  return v4;
}

- (PGTrialConfigurationSource)initWithTrialSession:(id)a3 namespaceType:(unsigned __int16)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PGTrialConfigurationSource;
  v8 = [(PGTrialConfigurationSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_trialSession, a3);
    v9->_namespaceType = a4;
  }

  return v9;
}

@end