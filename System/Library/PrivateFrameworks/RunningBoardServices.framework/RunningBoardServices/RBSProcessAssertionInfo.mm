@interface RBSProcessAssertionInfo
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RBSProcessAssertionInfo)initWithRBSXPCCoder:(id)a3;
- (RBSProcessAssertionInfo)initWithType:(unsigned __int8)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSProcessAssertionInfo

- (unint64_t)hash
{
  v2 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * self->_type) ^ ((0xBF58476D1CE4E5B9 * self->_type) >> 27));
  v3 = self->_reason ^ (self->_reason >> 30);
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v3) ^ ((0xBF58476D1CE4E5B9 * v3) >> 27));
  return v2 ^ ((v4 ^ v2) >> 31) ^ v4;
}

- (RBSProcessAssertionInfo)initWithType:(unsigned __int8)a3
{
  result = [(RBSProcessAssertionInfo *)self init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    goto LABEL_19;
  }

  if (!v4)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[RBSProcessAssertionInfo allocWithZone:?], "initWithType:", self->_type];
  [(RBSProcessAssertionInfo *)v4 setReason:self->_reason];
  [(RBSProcessAssertionInfo *)v4 setExplanation:self->_explanation];
  [(RBSProcessAssertionInfo *)v4 setDomain:self->_domain];
  [(RBSProcessAssertionInfo *)v4 setName:self->_name];
  return v4;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeUInt64:type forKey:@"t"];
  [v5 encodeUInt64:self->_reason forKey:@"r"];
  [v5 encodeObject:self->_explanation forKey:@"e"];
  [v5 encodeObject:self->_domain forKey:@"d"];
  [v5 encodeObject:self->_name forKey:@"n"];
}

- (RBSProcessAssertionInfo)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = -[RBSProcessAssertionInfo initWithType:](self, "initWithType:", [v4 decodeUInt64ForKey:@"t"]);
  if (v5)
  {
    v5->_reason = [v4 decodeUInt64ForKey:@"r"];
    v6 = [v4 decodeStringForKey:@"e"];
    explanation = v5->_explanation;
    v5->_explanation = v6;

    v8 = [v4 decodeStringForKey:@"d"];
    domain = v5->_domain;
    v5->_domain = v8;

    v10 = [v4 decodeStringForKey:@"n"];
    name = v5->_name;
    v5->_name = v10;
  }

  return v5;
}

@end