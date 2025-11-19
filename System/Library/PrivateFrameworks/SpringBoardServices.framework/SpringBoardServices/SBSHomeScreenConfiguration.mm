@interface SBSHomeScreenConfiguration
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SBSHomeScreenConfiguration)initWithBSXPCCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SBSHomeScreenConfiguration

- (void)encodeWithBSXPCCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_layout forKey:@"layout"];
}

- (SBSHomeScreenConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBSHomeScreenConfiguration;
  v5 = [(SBSHomeScreenConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeStringForKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layout"];
    layout = v5->_layout;
    v5->_layout = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSString *)self->_name copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(SBSHomeScreenConfigurationLayout *)self->_layout copy];
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_name];
  v5 = [v3 appendObject:self->_layout];
  v6 = [v3 hash];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  name = self->_name;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __38__SBSHomeScreenConfiguration_isEqual___block_invoke;
  v18[3] = &unk_1E7360810;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendString:name counterpart:v18];
  layout = self->_layout;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __38__SBSHomeScreenConfiguration_isEqual___block_invoke_2;
  v16 = &unk_1E735F618;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendObject:layout counterpart:&v13];
  LOBYTE(layout) = [v5 isEqual];

  return layout;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_name withName:@"name"];
  v4 = [v3 appendObject:self->_layout withName:@"layout"];
  v5 = [v3 build];

  return v5;
}

@end