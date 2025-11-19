@interface TRIMASpecVer
+ (id)specVerWithSpecifier:(id)a3 version:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSpecVer:(id)a3;
- (TRIMASpecVer)initWithSpecifier:(id)a3 version:(id)a4;
- (id)copyWithReplacementSpecifier:(id)a3;
- (id)copyWithReplacementVersion:(id)a3;
- (id)description;
@end

@implementation TRIMASpecVer

- (TRIMASpecVer)initWithSpecifier:(id)a3 version:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:2519 description:{@"Invalid parameter not satisfying: %@", @"specifier != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:2520 description:{@"Invalid parameter not satisfying: %@", @"version != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRIMASpecVer;
  v11 = [(TRIMASpecVer *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_specifier, a3);
    objc_storeStrong(&v12->_version, a4);
  }

  return v12;
}

+ (id)specVerWithSpecifier:(id)a3 version:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithSpecifier:v7 version:v6];

  return v8;
}

- (id)copyWithReplacementSpecifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithSpecifier:v4 version:self->_version];

  return v5;
}

- (id)copyWithReplacementVersion:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithSpecifier:self->_specifier version:v4];

  return v5;
}

- (BOOL)isEqualToSpecVer:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = self->_specifier == 0;
  v7 = [v4 specifier];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  specifier = self->_specifier;
  if (specifier)
  {
    v10 = [v5 specifier];
    v11 = [(NSString *)specifier isEqual:v10];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_version == 0;
  v13 = [v5 version];
  v14 = v13 != 0;

  if (v12 == v14)
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    version = self->_version;
    if (version)
    {
      v16 = [v5 version];
      v17 = [(NSString *)version isEqual:v16];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIMASpecVer *)self isEqualToSpecVer:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIMASpecVer | specifier:%@ version:%@>", self->_specifier, self->_version];

  return v2;
}

@end