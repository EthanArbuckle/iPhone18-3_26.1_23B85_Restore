@interface RBSProcessInstance
+ (RBSProcessInstance)instanceWithIdentifier:(id)a3 identity:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesProcess:(id)a3;
- (NSString)description;
- (RBSProcessInstance)init;
- (RBSProcessInstance)initWithRBSXPCCoder:(id)a3;
- (id)copyWithPersonaString:(id)a3;
- (void)_initWithIdentifier:(void *)a3 identity:;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSProcessInstance

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(RBSProcessIdentity *)self->_identity shortDescription];
  v5 = [v3 stringWithFormat:@"[%@:%d]", v4, -[RBSProcessIdentifier rbs_pid](self->_identifier, "rbs_pid")];

  return v5;
}

+ (RBSProcessInstance)instanceWithIdentifier:(id)a3 identity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[RBSProcessInstance alloc] _initWithIdentifier:v6 identity:v5];

  return v7;
}

- (RBSProcessInstance)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBSProcessInstance.m" lineNumber:26 description:@"-init is not allowed on RBSProcessInstance"];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v5 = objc_opt_class();
    if (v5 != objc_opt_class() || (v6 = [(RBSProcessInstance *)self rbs_pid], v6 != [(RBSProcessInstance *)v4 rbs_pid]))
    {
      v11 = 0;
      goto LABEL_11;
    }

    v7 = [(RBSProcessInstance *)v4 identity];
    identity = self->_identity;
    p_identity = &self->_identity;
    if (![(RBSProcessIdentity *)identity isEqual:v7])
    {
      v10 = rbs_process_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(RBSProcessInstance *)p_identity isEqual:v7, v10];
      }
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v5 = a3;
  v4 = [(RBSProcessIdentifier *)self->_identifier pid];
  if (v4 >= 1)
  {
    [v5 encodeInt64:v4 forKey:@"pid"];
  }

  [v5 encodeObject:self->_identity forKey:@"_identity"];
}

- (RBSProcessInstance)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = RBSProcessInstance;
  v5 = [(RBSProcessInstance *)&v11 init];
  if (v5)
  {
    if ([v4 decodeInt64ForKey:@"pid"])
    {
      v6 = [RBSProcessIdentifier identifierWithPid:?];
      identifier = v5->_identifier;
      v5->_identifier = v6;
    }

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identity"];
    identity = v5->_identity;
    v5->_identity = v8;
  }

  return v5;
}

- (BOOL)matchesProcess:(id)a3
{
  v4 = [a3 instance];
  LOBYTE(self) = [(RBSProcessInstance *)self isEqual:v4];

  return self;
}

- (void)_initWithIdentifier:(void *)a3 identity:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (!v6)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:sel__initWithIdentifier_identity_ object:a1 file:@"RBSProcessInstance.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"identity"}];
    }

    v14.receiver = a1;
    v14.super_class = RBSProcessInstance;
    a1 = objc_msgSendSuper2(&v14, sel_init);
    if (a1)
    {
      v8 = [v7 copy];
      v9 = a1[1];
      a1[1] = v8;

      v10 = [v5 copy];
      v11 = a1[2];
      a1[2] = v10;
    }
  }

  return a1;
}

- (id)copyWithPersonaString:(id)a3
{
  v4 = a3;
  v5 = [RBSProcessInstance alloc];
  identifier = self->_identifier;
  v7 = [(RBSProcessIdentity *)self->_identity copyWithPersonaString:v4];

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