@interface RBSTerminateRequest
- (BOOL)execute:(id *)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (RBSTerminateRequest)initWithProcessIdentifier:(id)a3 context:(id)a4;
- (RBSTerminateRequest)initWithProcessIdentity:(id)a3 context:(id)a4;
- (RBSTerminateRequest)initWithRBSXPCCoder:(id)a3;
- (id)initForAllManagedWithReason:(id)a3;
- (id)initForAllManagedWithReason:(id)a3 service:(id)a4;
- (id)initWithPredicate:(void *)a3 context:(void *)a4 allowLaunch:(void *)a5 service:;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSTerminateRequest

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  v5 = v4;
  if (self->_targetsAllManagedProcesses)
  {
    allow = @"none";
    predicate = @"all-managed";
  }

  else
  {
    predicate = self->_predicate;
    allow = self->_allow;
  }

  v8 = [v3 initWithFormat:@"<%@| predicate:%@ allow:%@ context:%@>", v4, predicate, allow, self->_context];

  return v8;
}

- (RBSTerminateRequest)initWithProcessIdentity:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v7 isEmbeddedApplication])
  {
    v8 = [v7 embeddedApplicationIdentifier];

    v9 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v8];
    v10 = [(RBSTerminateRequest *)self initWithPredicate:v9 context:v6];

    v11 = v10;
  }

  else
  {
    v8 = [RBSProcessPredicate predicateMatchingIdentity:v7];

    v12 = [(RBSTerminateRequest *)self initWithPredicate:v8 context:v6];
    v11 = v12;
  }

  return v11;
}

- (RBSTerminateRequest)initWithProcessIdentifier:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    [RBSTerminateRequest initWithProcessIdentifier:a2 context:self];
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    [RBSTerminateRequest initWithProcessIdentifier:a2 context:self];
    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [RBSProcessPredicate predicateMatchingIdentifier:v7];
  v11 = [(RBSTerminateRequest *)self initWithPredicate:v10 context:v9];

  return v11;
}

- (id)initForAllManagedWithReason:(id)a3 service:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [RBSTerminateRequest initForAllManagedWithReason:a2 service:self];
  }

  v9 = [[RBSTerminateContext alloc] initWithExplanation:v7];
  [(RBSTerminateContext *)v9 setReportType:0];
  [(RBSTerminateContext *)v9 setPreventIfBeingDebugged:0];
  v13.receiver = self;
  v13.super_class = RBSTerminateRequest;
  v10 = [(RBSRequest *)&v13 _init];
  v11 = v10;
  if (v10)
  {
    *(v10 + 16) = 1;
    objc_storeStrong(v10 + 5, v9);
    objc_storeStrong(v11 + 1, a4);
  }

  return v11;
}

- (id)initForAllManagedWithReason:(id)a3
{
  v4 = a3;
  v5 = +[RBSConnection sharedInstance];
  v6 = [(RBSTerminateRequest *)self initForAllManagedWithReason:v4 service:v5];

  return v6;
}

- (BOOL)execute:(id *)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    predicate = self->_predicate;
    if (predicate)
    {
      context = self->_context;
      v9 = [RBSPreventLaunchLimitation limitationWithPredicate:predicate andException:self->_allow];
      v16[0] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
      [(RBSTerminateContext *)context setAttributes:v10];
    }
  }

  service = self->_service;
  if (!service)
  {
    v12 = +[RBSConnection sharedInstance];
    v13 = self->_service;
    self->_service = v12;

    service = self->_service;
  }

  result = [(RBSServiceLocalProtocol *)service executeTerminateRequest:self assertion:a3 error:a4];
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_23;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || self->_targetsAllManagedProcesses != v4->_targetsAllManagedProcesses)
  {
    goto LABEL_22;
  }

  context = self->_context;
  v7 = v4->_context;
  if (context != v7)
  {
    v8 = !context || v7 == 0;
    if (v8 || ![(RBSTerminateContext *)context isEqual:?])
    {
      goto LABEL_22;
    }
  }

  predicate = self->_predicate;
  v10 = v4->_predicate;
  if (predicate != v10)
  {
    v11 = !predicate || v10 == 0;
    if (v11 || ![(RBSProcessPredicate *)predicate isEqual:?])
    {
      goto LABEL_22;
    }
  }

  allow = self->_allow;
  v13 = v4->_allow;
  if (allow == v13)
  {
LABEL_23:
    v16 = 1;
    goto LABEL_24;
  }

  if (allow)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
LABEL_22:
    v16 = 0;
    goto LABEL_24;
  }

  v16 = [(RBSProcessPredicate *)allow isEqual:?];
LABEL_24:

  return v16;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_targetsAllManagedProcesses)
  {
    [v4 encodeBool:1 forKey:@"_targetsAllManagedProcesses"];
LABEL_7:
    v4 = v7;
    goto LABEL_8;
  }

  predicate = self->_predicate;
  if (predicate)
  {
    [v4 encodeObject:predicate forKey:@"_predicate"];
    v4 = v7;
  }

  allow = self->_allow;
  if (allow)
  {
    [v7 encodeObject:allow forKey:@"_allow"];
    goto LABEL_7;
  }

LABEL_8:
  [v4 encodeObject:self->_context forKey:@"_context"];
}

- (RBSTerminateRequest)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RBSTerminateRequest;
  v5 = [(RBSRequest *)&v13 _init];
  if (v5)
  {
    v5->_targetsAllManagedProcesses = [v4 decodeBoolForKey:@"_targetsAllManagedProcesses"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_predicate"];
    predicate = v5->_predicate;
    v5->_predicate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_allow"];
    allow = v5->_allow;
    v5->_allow = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_context"];
    context = v5->_context;
    v5->_context = v10;
  }

  return v5;
}

- (id)initWithPredicate:(void *)a3 context:(void *)a4 allowLaunch:(void *)a5 service:
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    v14 = [v11 explanation];

    if (!v14)
    {
      v15 = rbs_assertion_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18E8AD000, v15, OS_LOG_TYPE_FAULT, "Explanation must be set in the RBSTerminateContext before using it to initialize a RBSTerminateRequest", buf, 2u);
      }

      [v11 setExplanation:@"<no explanation given>"];
    }

    v20.receiver = a1;
    v20.super_class = RBSTerminateRequest;
    v16 = objc_msgSendSuper2(&v20, sel__init);
    a1 = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 3, a2);
      objc_storeStrong(a1 + 4, a4);
      v17 = [v11 copy];
      v18 = a1[5];
      a1[5] = v17;

      objc_storeStrong(a1 + 1, a5);
    }
  }

  return a1;
}

- (void)initWithProcessIdentifier:(uint64_t)a1 context:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSTerminateRequest.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"processIdentifier != nil"}];
}

- (void)initWithProcessIdentifier:(uint64_t)a1 context:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSTerminateRequest.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"context != nil"}];
}

- (void)initForAllManagedWithReason:(uint64_t)a1 service:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSTerminateRequest.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

@end