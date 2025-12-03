@interface RBSTerminateRequest
- (BOOL)execute:(id *)execute error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (RBSTerminateRequest)initWithProcessIdentifier:(id)identifier context:(id)context;
- (RBSTerminateRequest)initWithProcessIdentity:(id)identity context:(id)context;
- (RBSTerminateRequest)initWithRBSXPCCoder:(id)coder;
- (id)initForAllManagedWithReason:(id)reason;
- (id)initForAllManagedWithReason:(id)reason service:(id)service;
- (id)initWithPredicate:(void *)predicate context:(void *)context allowLaunch:(void *)launch service:;
- (void)encodeWithRBSXPCCoder:(id)coder;
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

- (RBSTerminateRequest)initWithProcessIdentity:(id)identity context:(id)context
{
  contextCopy = context;
  identityCopy = identity;
  if ([identityCopy isEmbeddedApplication])
  {
    embeddedApplicationIdentifier = [identityCopy embeddedApplicationIdentifier];

    v9 = [RBSProcessPredicate predicateMatchingBundleIdentifier:embeddedApplicationIdentifier];
    v10 = [(RBSTerminateRequest *)self initWithPredicate:v9 context:contextCopy];

    v11 = v10;
  }

  else
  {
    embeddedApplicationIdentifier = [RBSProcessPredicate predicateMatchingIdentity:identityCopy];

    v12 = [(RBSTerminateRequest *)self initWithPredicate:embeddedApplicationIdentifier context:contextCopy];
    v11 = v12;
  }

  return v11;
}

- (RBSTerminateRequest)initWithProcessIdentifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  v9 = contextCopy;
  if (!identifierCopy)
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

  if (!contextCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = [RBSProcessPredicate predicateMatchingIdentifier:identifierCopy];
  v11 = [(RBSTerminateRequest *)self initWithPredicate:v10 context:v9];

  return v11;
}

- (id)initForAllManagedWithReason:(id)reason service:(id)service
{
  reasonCopy = reason;
  serviceCopy = service;
  if (!reasonCopy)
  {
    [RBSTerminateRequest initForAllManagedWithReason:a2 service:self];
  }

  v9 = [[RBSTerminateContext alloc] initWithExplanation:reasonCopy];
  [(RBSTerminateContext *)v9 setReportType:0];
  [(RBSTerminateContext *)v9 setPreventIfBeingDebugged:0];
  v13.receiver = self;
  v13.super_class = RBSTerminateRequest;
  _init = [(RBSRequest *)&v13 _init];
  v11 = _init;
  if (_init)
  {
    *(_init + 16) = 1;
    objc_storeStrong(_init + 5, v9);
    objc_storeStrong(v11 + 1, service);
  }

  return v11;
}

- (id)initForAllManagedWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = +[RBSConnection sharedInstance];
  v6 = [(RBSTerminateRequest *)self initForAllManagedWithReason:reasonCopy service:v5];

  return v6;
}

- (BOOL)execute:(id *)execute error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (execute)
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

  result = [(RBSServiceLocalProtocol *)service executeTerminateRequest:self assertion:execute error:error];
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_23;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || self->_targetsAllManagedProcesses != equalCopy->_targetsAllManagedProcesses)
  {
    goto LABEL_22;
  }

  context = self->_context;
  v7 = equalCopy->_context;
  if (context != v7)
  {
    v8 = !context || v7 == 0;
    if (v8 || ![(RBSTerminateContext *)context isEqual:?])
    {
      goto LABEL_22;
    }
  }

  predicate = self->_predicate;
  v10 = equalCopy->_predicate;
  if (predicate != v10)
  {
    v11 = !predicate || v10 == 0;
    if (v11 || ![(RBSProcessPredicate *)predicate isEqual:?])
    {
      goto LABEL_22;
    }
  }

  allow = self->_allow;
  v13 = equalCopy->_allow;
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

- (void)encodeWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v7 = coderCopy;
  if (self->_targetsAllManagedProcesses)
  {
    [coderCopy encodeBool:1 forKey:@"_targetsAllManagedProcesses"];
LABEL_7:
    coderCopy = v7;
    goto LABEL_8;
  }

  predicate = self->_predicate;
  if (predicate)
  {
    [coderCopy encodeObject:predicate forKey:@"_predicate"];
    coderCopy = v7;
  }

  allow = self->_allow;
  if (allow)
  {
    [v7 encodeObject:allow forKey:@"_allow"];
    goto LABEL_7;
  }

LABEL_8:
  [coderCopy encodeObject:self->_context forKey:@"_context"];
}

- (RBSTerminateRequest)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = RBSTerminateRequest;
  _init = [(RBSRequest *)&v13 _init];
  if (_init)
  {
    _init->_targetsAllManagedProcesses = [coderCopy decodeBoolForKey:@"_targetsAllManagedProcesses"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_predicate"];
    predicate = _init->_predicate;
    _init->_predicate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_allow"];
    allow = _init->_allow;
    _init->_allow = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_context"];
    context = _init->_context;
    _init->_context = v10;
  }

  return _init;
}

- (id)initWithPredicate:(void *)predicate context:(void *)context allowLaunch:(void *)launch service:
{
  v10 = a2;
  predicateCopy = predicate;
  contextCopy = context;
  launchCopy = launch;
  if (self)
  {
    explanation = [predicateCopy explanation];

    if (!explanation)
    {
      v15 = rbs_assertion_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_18E8AD000, v15, OS_LOG_TYPE_FAULT, "Explanation must be set in the RBSTerminateContext before using it to initialize a RBSTerminateRequest", buf, 2u);
      }

      [predicateCopy setExplanation:@"<no explanation given>"];
    }

    v20.receiver = self;
    v20.super_class = RBSTerminateRequest;
    v16 = objc_msgSendSuper2(&v20, sel__init);
    self = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 3, a2);
      objc_storeStrong(self + 4, context);
      v17 = [predicateCopy copy];
      v18 = self[5];
      self[5] = v17;

      objc_storeStrong(self + 1, launch);
    }
  }

  return self;
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