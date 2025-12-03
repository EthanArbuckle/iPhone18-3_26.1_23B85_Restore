@interface RBSProcessAssertionInfo
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RBSProcessAssertionInfo)initWithRBSXPCCoder:(id)coder;
- (RBSProcessAssertionInfo)initWithType:(unsigned __int8)type;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSProcessAssertionInfo

- (unint64_t)hash
{
  v2 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * self->_type) ^ ((0xBF58476D1CE4E5B9 * self->_type) >> 27));
  v3 = self->_reason ^ (self->_reason >> 30);
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v3) ^ ((0xBF58476D1CE4E5B9 * v3) >> 27));
  return v2 ^ ((v4 ^ v2) >> 31) ^ v4;
}

- (RBSProcessAssertionInfo)initWithType:(unsigned __int8)type
{
  result = [(RBSProcessAssertionInfo *)self init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    goto LABEL_19;
  }

  if (!equalCopy)
  {
    goto LABEL_18;
  }

  v6 = objc_opt_class();
  if (v6 != objc_opt_class() || self->_type != v5->_type || self->_reason != v5->_reason)
  {
    goto LABEL_18;
  }

  explanation = self->_explanation;
  v8 = v5->_explanation;
  if (explanation != v8)
  {
    v9 = 0;
    if (!explanation || !v8)
    {
      goto LABEL_20;
    }

    if (![(NSString *)explanation isEqualToString:?])
    {
      goto LABEL_18;
    }
  }

  domain = self->_domain;
  v11 = v5->_domain;
  if (domain != v11)
  {
    v9 = 0;
    if (!domain || !v11)
    {
      goto LABEL_20;
    }

    if (![(NSString *)domain isEqualToString:?])
    {
LABEL_18:
      v9 = 0;
      goto LABEL_20;
    }
  }

  name = self->_name;
  v13 = v5->_name;
  if (name == v13)
  {
LABEL_19:
    v9 = 1;
    goto LABEL_20;
  }

  v9 = 0;
  if (name && v13)
  {
    v9 = [(NSString *)name isEqualToString:?];
  }

LABEL_20:

  return v9;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  domain = self->_domain;
  v6 = [v3 initWithFormat:@"<%@| type:%hhu reason:%llu name:%@ domain:%@ expl:%@>", v4, self->_type, self->_reason, self->_name, domain, self->_explanation];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[RBSProcessAssertionInfo allocWithZone:?], "initWithType:", self->_type];
  [(RBSProcessAssertionInfo *)v4 setReason:self->_reason];
  [(RBSProcessAssertionInfo *)v4 setExplanation:self->_explanation];
  [(RBSProcessAssertionInfo *)v4 setDomain:self->_domain];
  [(RBSProcessAssertionInfo *)v4 setName:self->_name];
  return v4;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeUInt64:type forKey:@"t"];
  [coderCopy encodeUInt64:self->_reason forKey:@"r"];
  [coderCopy encodeObject:self->_explanation forKey:@"e"];
  [coderCopy encodeObject:self->_domain forKey:@"d"];
  [coderCopy encodeObject:self->_name forKey:@"n"];
}

- (RBSProcessAssertionInfo)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[RBSProcessAssertionInfo initWithType:](self, "initWithType:", [coderCopy decodeUInt64ForKey:@"t"]);
  if (v5)
  {
    v5->_reason = [coderCopy decodeUInt64ForKey:@"r"];
    v6 = [coderCopy decodeStringForKey:@"e"];
    explanation = v5->_explanation;
    v5->_explanation = v6;

    v8 = [coderCopy decodeStringForKey:@"d"];
    domain = v5->_domain;
    v5->_domain = v8;

    v10 = [coderCopy decodeStringForKey:@"n"];
    name = v5->_name;
    v5->_name = v10;
  }

  return v5;
}

@end