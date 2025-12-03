@interface RBSProcessHandlePredicateImpl
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesProcess:(id)process;
- (RBSProcessHandlePredicateImpl)initWithHandle:(id)handle;
- (RBSProcessHandlePredicateImpl)initWithRBSXPCCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithRBSXPCCoder:(id)coder;
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

- (RBSProcessHandlePredicateImpl)initWithHandle:(id)handle
{
  handleCopy = handle;
  if (!handleCopy)
  {
    [(RBSProcessHandlePredicateImpl *)a2 initWithHandle:?];
  }

  v10.receiver = self;
  v10.super_class = RBSProcessHandlePredicateImpl;
  v6 = [(RBSProcessHandlePredicateImpl *)&v10 init];
  if (v6)
  {
    identity = [handleCopy identity];
    identity = v6->_identity;
    v6->_identity = identity;

    v6->_pid = [handleCopy pid];
  }

  return v6;
}

- (BOOL)matchesProcess:(id)process
{
  pid = self->_pid;
  if (pid != -1)
  {
    return pid == [process pid];
  }

  identity = self->_identity;
  identity = [process identity];
  v7 = identity;
  if (identity == identity)
  {
    v4 = 1;
  }

  else
  {
    if (identity)
    {
      v8 = identity == 0;
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
      v4 = [(RBSProcessIdentity *)identity isEqual:identity];
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_11;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || self->_pid != equalCopy->_pid)
  {
LABEL_10:
    v10 = 0;
    goto LABEL_12;
  }

  identity = self->_identity;
  v7 = equalCopy->_identity;
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

- (void)encodeWithRBSXPCCoder:(id)coder
{
  identity = self->_identity;
  coderCopy = coder;
  [coderCopy encodeObject:identity forKey:@"_identity"];
  [coderCopy encodeInt64:self->_pid forKey:@"_pid"];
}

- (RBSProcessHandlePredicateImpl)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = RBSProcessHandlePredicateImpl;
  v5 = [(RBSProcessHandlePredicateImpl *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identity"];
    identity = v5->_identity;
    v5->_identity = v6;

    v5->_pid = [coderCopy decodeInt64ForKey:@"_pid"];
  }

  return v5;
}

- (void)initWithHandle:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSProcessPredicate+Identifier.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"handle"}];
}

@end