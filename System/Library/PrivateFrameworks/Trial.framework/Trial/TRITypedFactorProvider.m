@interface TRITypedFactorProvider
+ (id)providerWithType:(unint64_t)a3 provider:(id)a4 logDesc:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToProvider:(id)a3;
- (TRITypedFactorProvider)initWithType:(unint64_t)a3 provider:(id)a4 logDesc:(id)a5;
- (id)copyWithReplacementLogDesc:(id)a3;
- (id)copyWithReplacementProvider:(id)a3;
- (id)copyWithReplacementType:(unint64_t)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRITypedFactorProvider

- (TRITypedFactorProvider)initWithType:(unint64_t)a3 provider:(id)a4 logDesc:(id)a5
{
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1539 description:{@"Invalid parameter not satisfying: %@", @"provider != nil"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x277CCA890] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1540 description:{@"Invalid parameter not satisfying: %@", @"logDesc != nil"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = TRITypedFactorProvider;
  v13 = [(TRITypedFactorProvider *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = a3;
    objc_storeStrong(&v13->_provider, a4);
    objc_storeStrong(&v14->_logDesc, a5);
  }

  return v14;
}

+ (id)providerWithType:(unint64_t)a3 provider:(id)a4 logDesc:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] initWithType:a3 provider:v9 logDesc:v8];

  return v10;
}

- (id)copyWithReplacementType:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  provider = self->_provider;
  logDesc = self->_logDesc;

  return [v5 initWithType:a3 provider:provider logDesc:logDesc];
}

- (id)copyWithReplacementProvider:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type provider:v4 logDesc:self->_logDesc];

  return v5;
}

- (id)copyWithReplacementLogDesc:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithType:self->_type provider:self->_provider logDesc:v4];

  return v5;
}

- (BOOL)isEqualToProvider:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  type = self->_type;
  if (type != [v4 type])
  {
    goto LABEL_9;
  }

  v7 = self->_provider == 0;
  v8 = [v5 provider];
  v9 = v8 != 0;

  if (v7 == v9)
  {
    goto LABEL_9;
  }

  provider = self->_provider;
  if (provider)
  {
    v11 = [v5 provider];
    v12 = [(TRINamespaceFactorProviding *)provider isEqual:v11];

    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v13 = self->_logDesc == 0;
  v14 = [v5 logDesc];
  v15 = v14 != 0;

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
      v17 = [v5 logDesc];
      v18 = [(NSString *)logDesc isEqual:v17];
    }

    else
    {
      v18 = 1;
    }
  }

  return v18 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITypedFactorProvider *)self isEqualToProvider:v5];
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