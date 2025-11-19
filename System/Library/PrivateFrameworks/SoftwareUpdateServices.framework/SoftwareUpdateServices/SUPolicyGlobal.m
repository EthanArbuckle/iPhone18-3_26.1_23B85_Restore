@interface SUPolicyGlobal
- (NSDictionary)updateMetricEventFields;
- (SUPolicyGlobal)initWithGlobalOptions:(id)a3;
- (id)_stringForBool:(BOOL)a3;
- (id)description;
@end

@implementation SUPolicyGlobal

- (SUPolicyGlobal)initWithGlobalOptions:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUPolicyGlobal;
  v5 = [(SUPolicyGlobal *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SUPolicyGlobal *)v5 setGlobalOptions:v4];
  }

  return v6;
}

- (NSDictionary)updateMetricEventFields
{
  v2 = [(SUPolicyGlobal *)self globalOptions];
  v3 = [v2 updateMetricEventFields];

  return v3;
}

- (id)_stringForBool:(BOOL)a3
{
  if (a3)
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
  v6 = [(SUPolicyGlobal *)self updateMetricContext];
  v7 = [(SUPolicyGlobal *)self updateMetricEventFields];
  v8 = [v3 stringWithFormat:@"\n            cacheDeleteUrgency: %@\n            checkAvailableSpace: %@\n            updateMetricContext: %@\n            updateMetricEventFields: %@\n", v4, v5, v6, v7];

  return v8;
}

@end