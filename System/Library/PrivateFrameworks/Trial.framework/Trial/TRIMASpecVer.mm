@interface TRIMASpecVer
+ (id)specVerWithSpecifier:(id)specifier version:(id)version;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSpecVer:(id)ver;
- (TRIMASpecVer)initWithSpecifier:(id)specifier version:(id)version;
- (id)copyWithReplacementSpecifier:(id)specifier;
- (id)copyWithReplacementVersion:(id)version;
- (id)description;
@end

@implementation TRIMASpecVer

- (TRIMASpecVer)initWithSpecifier:(id)specifier version:(id)version
{
  specifierCopy = specifier;
  versionCopy = version;
  v10 = versionCopy;
  if (specifierCopy)
  {
    if (versionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:2519 description:{@"Invalid parameter not satisfying: %@", @"specifier != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:2520 description:{@"Invalid parameter not satisfying: %@", @"version != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRIMASpecVer;
  v11 = [(TRIMASpecVer *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_specifier, specifier);
    objc_storeStrong(&v12->_version, version);
  }

  return v12;
}

+ (id)specVerWithSpecifier:(id)specifier version:(id)version
{
  versionCopy = version;
  specifierCopy = specifier;
  v8 = [[self alloc] initWithSpecifier:specifierCopy version:versionCopy];

  return v8;
}

- (id)copyWithReplacementSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [objc_alloc(objc_opt_class()) initWithSpecifier:specifierCopy version:self->_version];

  return v5;
}

- (id)copyWithReplacementVersion:(id)version
{
  versionCopy = version;
  v5 = [objc_alloc(objc_opt_class()) initWithSpecifier:self->_specifier version:versionCopy];

  return v5;
}

- (BOOL)isEqualToSpecVer:(id)ver
{
  verCopy = ver;
  v5 = verCopy;
  if (!verCopy)
  {
    goto LABEL_8;
  }

  v6 = self->_specifier == 0;
  specifier = [verCopy specifier];
  v8 = specifier != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  specifier = self->_specifier;
  if (specifier)
  {
    specifier2 = [v5 specifier];
    v11 = [(NSString *)specifier isEqual:specifier2];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_version == 0;
  version = [v5 version];
  v14 = version != 0;

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
      version2 = [v5 version];
      v17 = [(NSString *)version isEqual:version2];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIMASpecVer *)self isEqualToSpecVer:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIMASpecVer | specifier:%@ version:%@>", self->_specifier, self->_version];

  return v2;
}

@end