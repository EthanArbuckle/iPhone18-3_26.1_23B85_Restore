@interface RERelevanceProvider
+ (id)customRelevanceProviderForFeature:(id)a3 withValue:(id)a4;
- (BOOL)isEqual:(id)a3;
- (RERelevanceProvider)init;
- (RERelevanceProvider)providerWithPriority:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)environment;
- (id)providerManager;
- (unint64_t)hash;
@end

@implementation RERelevanceProvider

+ (id)customRelevanceProviderForFeature:(id)a3 withValue:(id)a4
{
  v5 = a3;
  v6 = RECreateFeatureValueTaggedPointer(a4);
  v7 = [[RECustomRelevanceProvider alloc] initWithFeature:v5 value:v6];

  REReleaseFeatureValueTaggedPointer(v6);

  return v7;
}

- (RERelevanceProvider)init
{
  v3.receiver = self;
  v3.super_class = RERelevanceProvider;
  result = [(RERelevanceProvider *)&v3 init];
  if (result)
  {
    *&result->_cachedHash = xmmword_2286B34E0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 1) = self->_cachedHash;
  *(result + 2) = self->_priority;
  return result;
}

- (id)providerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v4 = [WeakRetained providerManagerForProvider:self];

  return v4;
}

- (RERelevanceProvider)providerWithPriority:(unint64_t)a3
{
  v4 = [(RERelevanceProvider *)self copy];
  v4[1] = 0;
  v4[2] = a3;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4->_priority == self->_priority;
  }

  return v5;
}

- (unint64_t)hash
{
  result = self->_cachedHash;
  if (!result)
  {
    priority = self->_priority;
    v5 = [(RERelevanceProvider *)self _hash];
    if (priority << 32 == v5)
    {
      result = -1;
    }

    else
    {
      result = v5 ^ (priority << 32);
    }

    self->_cachedHash = result;
  }

  return result;
}

- (id)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end