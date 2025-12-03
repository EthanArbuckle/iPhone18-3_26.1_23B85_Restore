@interface PGTrialConfigurationSource
- (PGTrialConfigurationSource)initWithTrialSession:(id)session namespaceType:(unsigned __int16)type;
- (id)objectForKey:(id)key;
@end

@implementation PGTrialConfigurationSource

- (id)objectForKey:(id)key
{
  v3 = [(PGTrialSession *)self->_trialSession levelForFactorName:key withNamespaceType:self->_namespaceType];
  object = [v3 object];

  return object;
}

- (PGTrialConfigurationSource)initWithTrialSession:(id)session namespaceType:(unsigned __int16)type
{
  sessionCopy = session;
  v11.receiver = self;
  v11.super_class = PGTrialConfigurationSource;
  v8 = [(PGTrialConfigurationSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_trialSession, session);
    v9->_namespaceType = type;
  }

  return v9;
}

@end