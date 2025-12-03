@interface RERelevanceProviderManagerUpdate
+ (id)immediateUpdateForAllProviders;
+ (id)immediateUpdateForProvider:(id)provider;
+ (id)scheduledUpdateForAllProvidersAtDate:(id)date;
+ (id)scheduledUpdateForProvider:(id)provider atDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (RERelevanceProviderManagerUpdate)initWithProvider:(id)provider;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RERelevanceProviderManagerUpdate

+ (id)immediateUpdateForProvider:(id)provider
{
  providerCopy = provider;
  v4 = [(RERelevanceProviderManagerUpdate *)[RERelevanceProviderManagerImmediateUpdate alloc] initWithProvider:providerCopy];

  return v4;
}

+ (id)immediateUpdateForAllProviders
{
  v2 = [(RERelevanceProviderManagerUpdate *)[RERelevanceProviderManagerImmediateUpdate alloc] initWithProvider:0];

  return v2;
}

+ (id)scheduledUpdateForProvider:(id)provider atDate:(id)date
{
  if (date)
  {
    dateCopy = date;
    providerCopy = provider;
    v7 = [[RERelevanceProviderManagerScheduledUpdate alloc] initWithProvider:providerCopy updateDate:dateCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)scheduledUpdateForAllProvidersAtDate:(id)date
{
  if (date)
  {
    dateCopy = date;
    v4 = [[RERelevanceProviderManagerScheduledUpdate alloc] initWithProvider:0 updateDate:dateCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (RERelevanceProviderManagerUpdate)initWithProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = RERelevanceProviderManagerUpdate;
  v6 = [(RERelevanceProviderManagerUpdate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_provider, provider);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong(v4 + 1, self->_provider);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      provider = self->_provider;
      v6 = equalCopy->_provider;
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