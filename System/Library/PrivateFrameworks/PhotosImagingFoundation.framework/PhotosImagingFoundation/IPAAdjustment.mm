@interface IPAAdjustment
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAdjustment:(id)adjustment;
- (IPAAdjustment)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)setIdentifier:(id)identifier;
- (void)setSettings:(id)settings;
@end

@implementation IPAAdjustment

- (id)debugDescription
{
  v3 = MEMORY[0x277CCAB68];
  identifier = [(IPAAdjustment *)self identifier];
  version = [(IPAAdjustment *)self version];
  v6 = [v3 stringWithFormat:@"<%@:%p:v%@ ", identifier, self, version];

  settings = [(IPAAdjustment *)self settings];
  if (settings)
  {
    [v6 appendFormat:@"settings=<%@:%p count:%lu>", objc_opt_class(), settings, objc_msgSend(settings, "count")];
  }

  else
  {
    [v6 appendString:@"settings=nil"];
  }

  _debugDescriptionSuffix = [(IPAAdjustment *)self _debugDescriptionSuffix];
  if (_debugDescriptionSuffix)
  {
    [v6 appendString:@" "];
    [v6 appendString:_debugDescriptionSuffix];
  }

  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqualToAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  identifier = self->_identifier;
  identifier = [adjustmentCopy identifier];
  LODWORD(identifier) = [(NSString *)identifier isEqualToString:identifier];

  if (identifier && (version = self->_version, [adjustmentCopy version], v8 = objc_claimAutoreleasedReturnValue(), LODWORD(version) = -[IPAAdjustmentVersion isEqualToAdjustmentVersion:](version, "isEqualToAdjustmentVersion:", v8), v8, version))
  {
    v9 = self->_settings;
    settings = [adjustmentCopy settings];
    v11 = [(NSDictionary *)v9 count];
    v12 = v11 == [settings count] && -[NSDictionary isEqualToDictionary:](v9, "isEqualToDictionary:", settings);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IPAAdjustment *)self isEqualToAdjustment:equalCopy];

  return v5;
}

- (void)setSettings:(id)settings
{
  settingsCopy = settings;
  if (settingsCopy)
  {
    v10 = settingsCopy;
    v5 = [settingsCopy copy];
    settings = self->_settings;
    self->_settings = v5;
  }

  else
  {
    v7 = _PFAssertFailHandler();
    [(IPAAdjustment *)v7 setVersion:v8, v9];
  }
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    _PFAssertFailHandler();
    goto LABEL_7;
  }

  v10 = identifierCopy;
  if (![identifierCopy length])
  {
LABEL_7:
    v7 = _PFAssertFailHandler();
    [(IPAAdjustment *)v7 copyWithZone:v8, v9];
    return;
  }

  v5 = [v10 copy];
  identifier = self->_identifier;
  self->_identifier = v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong(v4 + 1, self->_identifier);
  objc_storeStrong(v4 + 2, self->_version);
  objc_storeStrong(v4 + 3, self->_settings);
  return v4;
}

- (IPAAdjustment)init
{
  v6.receiver = self;
  v6.super_class = IPAAdjustment;
  v2 = [(IPAAdjustment *)&v6 init];
  v3 = v2;
  if (v2)
  {
    settings = v2->_settings;
    v2->_settings = MEMORY[0x277CBEC10];
  }

  return v3;
}

@end