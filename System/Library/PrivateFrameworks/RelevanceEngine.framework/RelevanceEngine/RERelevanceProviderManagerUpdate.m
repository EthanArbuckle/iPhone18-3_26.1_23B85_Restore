@interface RERelevanceProviderManagerUpdate
+ (id)immediateUpdateForAllProviders;
+ (id)immediateUpdateForProvider:(id)a3;
+ (id)scheduledUpdateForAllProvidersAtDate:(id)a3;
+ (id)scheduledUpdateForProvider:(id)a3 atDate:(id)a4;
- (BOOL)isEqual:(id)a3;
- (RERelevanceProviderManagerUpdate)initWithProvider:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RERelevanceProviderManagerUpdate

+ (id)immediateUpdateForProvider:(id)a3
{
  v3 = a3;
  v4 = [(RERelevanceProviderManagerUpdate *)[RERelevanceProviderManagerImmediateUpdate alloc] initWithProvider:v3];

  return v4;
}

+ (id)immediateUpdateForAllProviders
{
  v2 = [(RERelevanceProviderManagerUpdate *)[RERelevanceProviderManagerImmediateUpdate alloc] initWithProvider:0];

  return v2;
}

+ (id)scheduledUpdateForProvider:(id)a3 atDate:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = a3;
    v7 = [[RERelevanceProviderManagerScheduledUpdate alloc] initWithProvider:v6 updateDate:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)scheduledUpdateForAllProvidersAtDate:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[RERelevanceProviderManagerScheduledUpdate alloc] initWithProvider:0 updateDate:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (RERelevanceProviderManagerUpdate)initWithProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RERelevanceProviderManagerUpdate;
  v6 = [(RERelevanceProviderManagerUpdate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_provider, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong(v4 + 1, self->_provider);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      provider = self->_provider;
      v6 = v4->_provider;
      v7 = provider;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(RERelevanceProvider *)v7 isEqual:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end