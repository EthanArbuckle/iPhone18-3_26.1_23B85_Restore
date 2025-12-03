@interface RERelevanceProvider
+ (id)customRelevanceProviderForFeature:(id)feature withValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (RERelevanceProvider)init;
- (RERelevanceProvider)providerWithPriority:(unint64_t)priority;
- (id)copyWithZone:(_NSZone *)zone;
- (id)environment;
- (id)providerManager;
- (unint64_t)hash;
@end

@implementation RERelevanceProvider

+ (id)customRelevanceProviderForFeature:(id)feature withValue:(id)value
{
  featureCopy = feature;
  v6 = RECreateFeatureValueTaggedPointer(value);
  v7 = [[RECustomRelevanceProvider alloc] initWithFeature:featureCopy value:v6];

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

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (RERelevanceProvider)providerWithPriority:(unint64_t)priority
{
  v4 = [(RERelevanceProvider *)self copy];
  v4[1] = 0;
  v4[2] = priority;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy->_priority == self->_priority;
  }

  return v5;
}

- (unint64_t)hash
{
  result = self->_cachedHash;
  if (!result)
  {
    priority = self->_priority;
    _hash = [(RERelevanceProvider *)self _hash];
    if (priority << 32 == _hash)
    {
      result = -1;
    }

    else
    {
      result = _hash ^ (priority << 32);
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