@interface RBSProcessInstance
+ (RBSProcessInstance)instanceWithIdentifier:(id)identifier identity:(id)identity;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesProcess:(id)process;
- (NSString)description;
- (RBSProcessInstance)init;
- (RBSProcessInstance)initWithRBSXPCCoder:(id)coder;
- (id)copyWithPersonaString:(id)string;
- (void)_initWithIdentifier:(void *)identifier identity:;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSProcessInstance

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  shortDescription = [(RBSProcessIdentity *)self->_identity shortDescription];
  v5 = [v3 stringWithFormat:@"[%@:%d]", shortDescription, -[RBSProcessIdentifier rbs_pid](self->_identifier, "rbs_pid")];

  return v5;
}

+ (RBSProcessInstance)instanceWithIdentifier:(id)identifier identity:(id)identity
{
  identityCopy = identity;
  identifierCopy = identifier;
  v7 = [[RBSProcessInstance alloc] _initWithIdentifier:identifierCopy identity:identityCopy];

  return v7;
}

- (RBSProcessInstance)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBSProcessInstance.m" lineNumber:26 description:@"-init is not allowed on RBSProcessInstance"];

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    v5 = objc_opt_class();
    if (v5 != objc_opt_class() || (v6 = [(RBSProcessInstance *)self rbs_pid], v6 != [(RBSProcessInstance *)equalCopy rbs_pid]))
    {
      v11 = 0;
      goto LABEL_11;
    }

    identity = [(RBSProcessInstance *)equalCopy identity];
    identity = self->_identity;
    p_identity = &self->_identity;
    if (![(RBSProcessIdentity *)identity isEqual:identity])
    {
      v10 = rbs_process_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(RBSProcessInstance *)p_identity isEqual:identity, v10];
      }
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(RBSProcessIdentifier *)self->_identifier pid];
  if (v4 >= 1)
  {
    [coderCopy encodeInt64:v4 forKey:@"pid"];
  }

  [coderCopy encodeObject:self->_identity forKey:@"_identity"];
}

- (RBSProcessInstance)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = RBSProcessInstance;
  v5 = [(RBSProcessInstance *)&v11 init];
  if (v5)
  {
    if ([coderCopy decodeInt64ForKey:@"pid"])
    {
      v6 = [RBSProcessIdentifier identifierWithPid:?];
      identifier = v5->_identifier;
      v5->_identifier = v6;
    }

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identity"];
    identity = v5->_identity;
    v5->_identity = v8;
  }

  return v5;
}

- (BOOL)matchesProcess:(id)process
{
  instance = [process instance];
  LOBYTE(self) = [(RBSProcessInstance *)self isEqual:instance];

  return self;
}

- (void)_initWithIdentifier:(void *)identifier identity:
{
  v5 = a2;
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (self)
  {
    if (!identifierCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithIdentifier_identity_ object:self file:@"RBSProcessInstance.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"identity"}];
    }

    v14.receiver = self;
    v14.super_class = RBSProcessInstance;
    self = objc_msgSendSuper2(&v14, sel_init);
    if (self)
    {
      v8 = [v7 copy];
      v9 = self[1];
      self[1] = v8;

      v10 = [v5 copy];
      v11 = self[2];
      self[2] = v10;
    }
  }

  return self;
}

- (id)copyWithPersonaString:(id)string
{
  stringCopy = string;
  v5 = [RBSProcessInstance alloc];
  identifier = self->_identifier;
  v7 = [(RBSProcessIdentity *)self->_identity copyWithPersonaString:stringCopy];

  v8 = [(RBSProcessInstance *)v5 _initWithIdentifier:v7 identity:?];
  return v8;
}

- (void)isEqual:(NSObject *)a3 .cold.1(id *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [*a1 debugDescription];
  v6 = [a2 debugDescription];
  v8 = 138543618;
  v9 = v5;
  v10 = 2114;
  v11 = v6;
  _os_log_fault_impl(&dword_18E8AD000, a3, OS_LOG_TYPE_FAULT, "Two equal instances have unequal identities. %{public}@ and %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end