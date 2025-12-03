@interface RBSXPCServiceDefinition
+ (id)definitionWithIdentifier:(id)identifier variant:(int64_t)variant scope:(int64_t)scope;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RBSXPCServiceDefinition)initWithRBSXPCCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)coder;
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

+ (id)definitionWithIdentifier:(id)identifier variant:(int64_t)variant scope:(int64_t)scope
{
  identifierCopy = identifier;
  v9 = objc_alloc_init(self);
  v10 = [identifierCopy copy];

  v11 = v9[1];
  v9[1] = v10;

  v9[2] = variant;
  v9[3] = scope;

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  identifier = self->_identifier;
  identifier = [equalCopy identifier];
  v7 = identifier;
  if ((identifier == identifier || (identifier ? (v8 = identifier == 0) : (v8 = 1), !v8 && -[NSString isEqual:](identifier, "isEqual:", identifier))) && (variant = self->_variant, variant == [equalCopy variant]))
  {
    scope = self->_scope;
    v11 = scope == [equalCopy scope];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"_identifier"];
  [coderCopy encodeInt64:self->_variant forKey:@"_variant"];
  [coderCopy encodeInt64:self->_scope forKey:@"_scope"];
}

- (RBSXPCServiceDefinition)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(RBSXPCServiceDefinition *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_variant = [coderCopy decodeInt64ForKey:@"_variant"];
    v5->_scope = [coderCopy decodeInt64ForKey:@"_scope"];
  }

  return v5;
}

@end