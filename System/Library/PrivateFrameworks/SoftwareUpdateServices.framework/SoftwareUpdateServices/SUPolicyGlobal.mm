@interface SUPolicyGlobal
- (NSDictionary)updateMetricEventFields;
- (SUPolicyGlobal)initWithGlobalOptions:(id)options;
- (id)_stringForBool:(BOOL)bool;
- (id)description;
@end

@implementation SUPolicyGlobal

- (SUPolicyGlobal)initWithGlobalOptions:(id)options
{
  optionsCopy = options;
  v8.receiver = self;
  v8.super_class = SUPolicyGlobal;
  v5 = [(SUPolicyGlobal *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SUPolicyGlobal *)v5 setGlobalOptions:optionsCopy];
  }

  return v6;
}

- (NSDictionary)updateMetricEventFields
{
  globalOptions = [(SUPolicyGlobal *)self globalOptions];
  updateMetricEventFields = [globalOptions updateMetricEventFields];

  return updateMetricEventFields;
}

- (id)_stringForBool:(BOOL)bool
{
  if (bool)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUPolicyGlobal *)self _stringForBool:[(SUPolicyGlobal *)self cacheDeleteUrgency]!= 0];
  v5 = [(SUPolicyGlobal *)self _stringForBool:[(SUPolicyGlobal *)self checkAvailableSpace]];
  updateMetricContext = [(SUPolicyGlobal *)self updateMetricContext];
  updateMetricEventFields = [(SUPolicyGlobal *)self updateMetricEventFields];
  v8 = [v3 stringWithFormat:@"\n            cacheDeleteUrgency: %@\n            checkAvailableSpace: %@\n            updateMetricContext: %@\n            updateMetricEventFields: %@\n", v4, v5, updateMetricContext, updateMetricEventFields];

  return v8;
}

@end