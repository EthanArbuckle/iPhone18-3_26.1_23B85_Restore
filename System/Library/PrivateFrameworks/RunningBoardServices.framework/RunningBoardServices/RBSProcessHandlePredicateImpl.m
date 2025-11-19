@interface RBSProcessHandlePredicateImpl
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesProcess:(id)a3;
- (RBSProcessHandlePredicateImpl)initWithHandle:(id)a3;
- (RBSProcessHandlePredicateImpl)initWithRBSXPCCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSProcessHandlePredicateImpl

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| %@:%d>", v4, self->_identity, self->_pid];

  return v5;
}

- (unint64_t)hash
{
  if (self->_pid == -1)
  {
    return [(RBSProcessIdentity *)self->_identity hash];
  }

  else
  {
    return self->_pid;
  }
}

- (RBSProcessHandlePredicateImpl)initWithHandle:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(RBSProcessHandlePredicateImpl *)a2 initWithHandle:?];
  }

  v10.receiver = self;
  v10.super_class = RBSProcessHandlePredicateImpl;
  v6 = [(RBSProcessHandlePredicateImpl *)&v10 init];
  if (v6)
  {
    v7 = [v5 identity];
    identity = v6->_identity;
    v6->_identity = v7;

    v6->_pid = [v5 pid];
  }

  return v6;
}

- (BOOL)matchesProcess:(id)a3
{
  pid = self->_pid;
  if (pid != -1)
  {
    return pid == [a3 pid];
  }

  identity = self->_identity;
  v6 = [a3 identity];
  v7 = v6;
  if (identity == v6)
  {
    v4 = 1;
  }

  else
  {
    if (identity)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v4 = 0;
    }

    else
    {
      v4 = [(RBSProcessIdentity *)identity isEqual:v6];
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_11;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || self->_pid != v4->_pid)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_12;
  }

  identity = self->_identity;
  v7 = v4->_identity;
  if (identity == v7)
  {
LABEL_11:
    v10 = 1;
    goto LABEL_12;
  }

  if (identity)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_10;
  }

  v10 = [(RBSProcessIdentity *)identity isEqual:?];
LABEL_12:

  return v10;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  identity = self->_identity;
  v5 = a3;
  [v5 encodeObject:identity forKey:@"_identity"];
  [v5 encodeInt64:self->_pid forKey:@"_pid"];
}

- (RBSProcessHandlePredicateImpl)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RBSProcessHandlePredicateImpl;
  v5 = [(RBSProcessHandlePredicateImpl *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identity"];
    identity = v5->_identity;
    v5->_identity = v6;

    v5->_pid = [v4 decodeInt64ForKey:@"_pid"];
  }

  return v5;
}

- (void)initWithHandle:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSProcessPredicate+Identifier.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"handle"}];
}

@end