@interface RBSXPCServiceDefinition
+ (id)definitionWithIdentifier:(id)a3 variant:(int64_t)a4 scope:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RBSXPCServiceDefinition)initWithRBSXPCCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSXPCServiceDefinition

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = 0xBF58476D1CE4E5B9 * (self->_variant ^ (self->_variant >> 30));
  v5 = 0xBF58476D1CE4E5B9 * (self->_scope ^ (self->_scope >> 30));
  v6 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27)));
  return v6 ^ v3 ^ (v6 >> 31);
}

+ (id)definitionWithIdentifier:(id)a3 variant:(int64_t)a4 scope:(int64_t)a5
{
  v8 = a3;
  v9 = objc_alloc_init(a1);
  v10 = [v8 copy];

  v11 = v9[1];
  v9[1] = v10;

  v9[2] = a4;
  v9[3] = a5;

  return v9;
}

- (NSString)description
{
  variant = self->_variant;
  if (variant > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_1E7275EC0[variant];
  }

  scope = self->_scope;
  if (scope > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E7275EE0[scope];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%@][%@]", self->_identifier, v3, v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v6 = [v4 identifier];
  v7 = v6;
  if ((identifier == v6 || (identifier ? (v8 = v6 == 0) : (v8 = 1), !v8 && -[NSString isEqual:](identifier, "isEqual:", v6))) && (variant = self->_variant, variant == [v4 variant]))
  {
    scope = self->_scope;
    v11 = scope == [v4 scope];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"_identifier"];
  [v5 encodeInt64:self->_variant forKey:@"_variant"];
  [v5 encodeInt64:self->_scope forKey:@"_scope"];
}

- (RBSXPCServiceDefinition)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(RBSXPCServiceDefinition *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_variant = [v4 decodeInt64ForKey:@"_variant"];
    v5->_scope = [v4 decodeInt64ForKey:@"_scope"];
  }

  return v5;
}

@end