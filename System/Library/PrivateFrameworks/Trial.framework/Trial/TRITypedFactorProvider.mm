@interface TRITypedFactorProvider
+ (id)providerWithType:(unint64_t)type provider:(id)provider logDesc:(id)desc;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToProvider:(id)provider;
- (TRITypedFactorProvider)initWithType:(unint64_t)type provider:(id)provider logDesc:(id)desc;
- (id)copyWithReplacementLogDesc:(id)desc;
- (id)copyWithReplacementProvider:(id)provider;
- (id)copyWithReplacementType:(unint64_t)type;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRITypedFactorProvider

- (TRITypedFactorProvider)initWithType:(unint64_t)type provider:(id)provider logDesc:(id)desc
{
  providerCopy = provider;
  descCopy = desc;
  v12 = descCopy;
  if (providerCopy)
  {
    if (descCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1539 description:{@"Invalid parameter not satisfying: %@", @"provider != nil"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1540 description:{@"Invalid parameter not satisfying: %@", @"logDesc != nil"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = TRITypedFactorProvider;
  v13 = [(TRITypedFactorProvider *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = type;
    objc_storeStrong(&v13->_provider, provider);
    objc_storeStrong(&v14->_logDesc, desc);
  }

  return v14;
}

+ (id)providerWithType:(unint64_t)type provider:(id)provider logDesc:(id)desc
{
  descCopy = desc;
  providerCopy = provider;
  v10 = [[self alloc] initWithType:type provider:providerCopy logDesc:descCopy];

  return v10;
}

- (id)copyWithReplacementType:(unint64_t)type
{
  v5 = objc_alloc(objc_opt_class());
  provider = self->_provider;
  logDesc = self->_logDesc;

  return [v5 initWithType:type provider:provider logDesc:logDesc];
}

- (id)copyWithReplacementProvider:(id)provider
{
  providerCopy = provider;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type provider:providerCopy logDesc:self->_logDesc];

  return v5;
}

- (id)copyWithReplacementLogDesc:(id)desc
{
  descCopy = desc;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type provider:self->_provider logDesc:descCopy];

  return v5;
}

- (BOOL)isEqualToProvider:(id)provider
{
  providerCopy = provider;
  v5 = providerCopy;
  if (!providerCopy)
  {
    goto LABEL_9;
  }

  type = self->_type;
  if (type != [providerCopy type])
  {
    goto LABEL_9;
  }

  v7 = self->_provider == 0;
  provider = [v5 provider];
  v9 = provider != 0;

  if (v7 == v9)
  {
    goto LABEL_9;
  }

  provider = self->_provider;
  if (provider)
  {
    provider2 = [v5 provider];
    v12 = [(TRINamespaceFactorProviding *)provider isEqual:provider2];

    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v13 = self->_logDesc == 0;
  logDesc = [v5 logDesc];
  v15 = logDesc != 0;

  if (v13 == v15)
  {
LABEL_9:
    v18 = 0;
  }

  else
  {
    logDesc = self->_logDesc;
    if (logDesc)
    {
      logDesc2 = [v5 logDesc];
      v18 = [(NSString *)logDesc isEqual:logDesc2];
    }

    else
    {
      v18 = 1;
    }
  }

  return v18 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITypedFactorProvider *)self isEqualToProvider:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  type = self->_type;
  v4 = [(TRINamespaceFactorProviding *)self->_provider hash]- type + 32 * type;
  return [(NSString *)self->_logDesc hash]- v4 + 32 * v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_type];
  v5 = [v3 initWithFormat:@"<TRITypedFactorProvider | type:%@ provider:%@ logDesc:%@>", v4, self->_provider, self->_logDesc];

  return v5;
}

@end