@interface RBSProcessIdentityPredicate
- (BOOL)isEqual:(id)a3;
- (RBSProcessIdentityPredicate)initWithRBSXPCCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)initWithIdentity:(void *)a1;
@end

@implementation RBSProcessIdentityPredicate

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = RBSProcessIdentityPredicate;
  v3 = [(RBSProcessPredicateImpl *)&v5 hash];
  return [(RBSProcessIdentity *)self->_identity hash]^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      [(RBSProcessIdentityPredicate *)self isEqual:v4, &v8];
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| %@>", v4, self->_identity];

  return v5;
}

- (RBSProcessIdentityPredicate)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RBSProcessIdentityPredicate;
  v5 = [(RBSProcessIdentityPredicate *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identity"];
    identity = v5->_identity;
    v5->_identity = v6;
  }

  return v5;
}

- (void)initWithIdentity:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:sel_initWithIdentity_ object:a1 file:@"RBSProcessPredicate+Identity.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"identity"}];
    }

    v9.receiver = a1;
    v9.super_class = RBSProcessIdentityPredicate;
    a1 = objc_msgSendSuper2(&v9, sel_init);
    if (a1)
    {
      v5 = [v4 copy];
      v6 = a1[1];
      a1[1] = v5;
    }
  }

  return a1;
}

- (uint64_t)isEqual:(char *)a3 .cold.1(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  if (a2)
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v4 == v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (v4 && v6)
    {
      v7 = [v4 isEqual:v6];
    }
  }

  *a3 = v7;

  return MEMORY[0x1EEE66BB8]();
}

@end