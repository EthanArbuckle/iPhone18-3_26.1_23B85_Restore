@interface IPAAdjustment
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAdjustment:(id)a3;
- (IPAAdjustment)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)setIdentifier:(id)a3;
- (void)setSettings:(id)a3;
@end

@implementation IPAAdjustment

- (id)debugDescription
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [(IPAAdjustment *)self identifier];
  v5 = [(IPAAdjustment *)self version];
  v6 = [v3 stringWithFormat:@"<%@:%p:v%@ ", v4, self, v5];

  v7 = [(IPAAdjustment *)self settings];
  if (v7)
  {
    [v6 appendFormat:@"settings=<%@:%p count:%lu>", objc_opt_class(), v7, objc_msgSend(v7, "count")];
  }

  else
  {
    [v6 appendString:@"settings=nil"];
  }

  v8 = [(IPAAdjustment *)self _debugDescriptionSuffix];
  if (v8)
  {
    [v6 appendString:@" "];
    [v6 appendString:v8];
  }

  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqualToAdjustment:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v6 = [v4 identifier];
  LODWORD(identifier) = [(NSString *)identifier isEqualToString:v6];

  if (identifier && (version = self->_version, [v4 version], v8 = objc_claimAutoreleasedReturnValue(), LODWORD(version) = -[IPAAdjustmentVersion isEqualToAdjustmentVersion:](version, "isEqualToAdjustmentVersion:", v8), v8, version))
  {
    v9 = self->_settings;
    v10 = [v4 settings];
    v11 = [(NSDictionary *)v9 count];
    v12 = v11 == [v10 count] && -[NSDictionary isEqualToDictionary:](v9, "isEqualToDictionary:", v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IPAAdjustment *)self isEqualToAdjustment:v4];

  return v5;
}

- (void)setSettings:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = [v4 copy];
    settings = self->_settings;
    self->_settings = v5;
  }

  else
  {
    v7 = _PFAssertFailHandler();
    [(IPAAdjustment *)v7 setVersion:v8, v9];
  }
}

- (void)setIdentifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    _PFAssertFailHandler();
    goto LABEL_7;
  }

  v10 = v4;
  if (![v4 length])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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