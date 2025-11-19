@interface RBSTarget
+ (RBSTarget)targetWithEndpoint:(id)a3;
+ (RBSTarget)targetWithProcessIdentifier:(id)a3;
+ (RBSTarget)targetWithProcessIdentifier:(id)a3 environmentIdentifier:(id)a4;
+ (RBSTarget)targetWithProcessIdentity:(id)a3;
+ (RBSTarget)targetWithProcessIdentity:(id)a3 environmentIdentifier:(id)a4;
+ (id)currentProcess;
+ (id)systemTarget;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesProcess:(id)a3;
- (NSString)debugDescription;
- (NSString)shortDescription;
- (RBSTarget)init;
- (RBSTarget)initWithRBSXPCCoder:(id)a3;
- (id)copyWithPersonaString:(id)a3;
- (id)processPredicate;
- (unint64_t)hash;
- (void)_initWithProcessIdentifier:(void *)a3 processIdentity:(void *)a4 environmentIdentifier:(uint64_t)a5 euid:;
- (void)_initWithProcessIdentifier:(void *)a3 processIdentity:(void *)a4 environmentIdentifier:(void *)a5 endpoint:(uint64_t)a6 euid:;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSTarget

- (NSString)shortDescription
{
  v2 = self;
  objc_sync_enter(v2);
  shortDescription = v2->_shortDescription;
  if (!shortDescription)
  {
    if (v2->_processIdentifier)
    {
      p_environment = &v2->_environment;
      v5 = MEMORY[0x1E696AEC0];
      if (v2->_environment)
      {
        v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[RBSProcessIdentifier pid](v2->_processIdentifier, "pid")}];
LABEL_8:
        v8 = v6;
        v9 = [v5 stringWithFormat:@"%@<%@>", v6, *p_environment];
LABEL_14:
        v12 = v2->_shortDescription;
        v2->_shortDescription = v9;

        shortDescription = v8;
LABEL_15:

        goto LABEL_16;
      }

      v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[RBSProcessIdentifier pid](v2->_processIdentifier, "pid")}];
    }

    else
    {
      processIdentity = v2->_processIdentity;
      if (!processIdentity)
      {
        if (v2->_endpoint)
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@>", v2->_endpoint];
          shortDescription = v2->_shortDescription;
          v2->_shortDescription = v11;
        }

        else
        {
          v2->_shortDescription = @"system";
        }

        goto LABEL_15;
      }

      p_environment = &v2->_environment;
      v5 = MEMORY[0x1E696AEC0];
      if (v2->_environment)
      {
        v6 = [(RBSProcessIdentity *)processIdentity shortDescription];
        goto LABEL_8;
      }

      v10 = [(RBSProcessIdentity *)processIdentity shortDescription];
    }

    v8 = v10;
    v9 = [v5 stringWithFormat:@"%@", v10];
    goto LABEL_14;
  }

LABEL_16:
  objc_sync_exit(v2);

  v13 = v2->_shortDescription;

  return v13;
}

+ (id)currentProcess
{
  if (currentProcess_onceToken != -1)
  {
    +[RBSTarget currentProcess];
  }

  v3 = currentProcess_currentProcess;

  return v3;
}

void __27__RBSTarget_currentProcess__block_invoke()
{
  v0 = [RBSTarget alloc];
  v3 = +[RBSProcessIdentifier identifierForCurrentProcess];
  v1 = [(RBSTarget *)v0 _initWithProcessIdentifier:v3 processIdentity:0 environmentIdentifier:0 euid:0];
  v2 = currentProcess_currentProcess;
  currentProcess_currentProcess = v1;
}

- (id)processPredicate
{
  if (self->_endpoint)
  {
    v2 = objc_opt_new();
  }

  else
  {
    if (self->_processIdentity)
    {
      [RBSProcessPredicate predicateMatchingIdentity:?];
    }

    else
    {
      [RBSProcessPredicate predicateMatchingIdentifier:self->_processIdentifier];
    }
    v2 = ;
  }

  return v2;
}

+ (id)systemTarget
{
  if (systemTarget_onceToken != -1)
  {
    +[RBSTarget systemTarget];
  }

  v3 = systemTarget_systemTarget;

  return v3;
}

uint64_t __25__RBSTarget_systemTarget__block_invoke()
{
  systemTarget_systemTarget = [[RBSTarget alloc] _initWithProcessIdentifier:0 processIdentity:0 environmentIdentifier:0 euid:?];

  return MEMORY[0x1EEE66BB8]();
}

+ (RBSTarget)targetWithEndpoint:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    +[RBSTarget targetWithEndpoint:];
  }

  if (MEMORY[0x193AD5A20](v3) != MEMORY[0x1E69E9E90])
  {
    +[RBSTarget targetWithEndpoint:];
  }

  v4 = [[RBSTarget alloc] _initWithProcessIdentifier:0 processIdentity:0 environmentIdentifier:v3 endpoint:0 euid:?];

  return v4;
}

- (RBSTarget)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBSTarget.m" lineNumber:93 description:@"-init is not allowed on RBSTarget"];

  return 0;
}

- (BOOL)matchesProcess:(id)a3
{
  v4 = a3;
  if (self->_endpoint)
  {
    v5 = 0;
  }

  else
  {
    processIdentity = self->_processIdentity;
    if (!processIdentity)
    {
      processIdentity = self->_processIdentifier;
    }

    v5 = [processIdentity matchesProcess:v4];
  }

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  processIdentifier = self->_processIdentifier;
  v5 = a3;
  [v5 encodeObject:processIdentifier forKey:@"processIdentifier"];
  [v5 encodeObject:self->_processIdentity forKey:@"processIdentity"];
  [v5 encodeObject:self->_environment forKey:@"environment"];
  [v5 encodeXPCObject:self->_endpoint forKey:@"endpoint"];
}

- (RBSTarget)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:@"endpoint"];
  if (!v5)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processIdentity"];
LABEL_10:
    v8 = v7;
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processIdentifier"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
    self = [(RBSTarget *)self _initWithProcessIdentifier:v11 processIdentity:v8 environmentIdentifier:v12 endpoint:0 euid:0];

    v9 = self;
    goto LABEL_8;
  }

  v6 = NSClassFromString(&cfstr_Rblaunchdprope.isa);
  if (!v6)
  {
    [RBSTarget initWithRBSXPCCoder:];
  }

  v7 = [(objc_class *)v6 processIdentityForEndpoint:v5];
  if (v7)
  {
    goto LABEL_10;
  }

  v8 = rbs_coder_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(RBSTarget *)v5 initWithRBSXPCCoder:v8];
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (unint64_t)hash
{
  endpoint = self->_endpoint;
  if (endpoint)
  {

    return xpc_hash(endpoint);
  }

  else
  {
    v5 = [(RBSProcessIdentifier *)self->_processIdentifier hash];
    v6 = [(RBSProcessIdentity *)self->_processIdentity hash]^ v5;
    return v6 ^ [(NSString *)self->_environment hash];
  }
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
    if (v5 == objc_opt_class() && ((processIdentifier = self->_processIdentifier, processIdentifier == v4->_processIdentifier) || [(RBSProcessIdentifier *)processIdentifier isEqual:?]) && ((processIdentity = self->_processIdentity, processIdentity == v4->_processIdentity) || [(RBSProcessIdentity *)processIdentity isEqual:?]) && ((environment = self->_environment, environment == v4->_environment) || [(NSString *)environment isEqualToString:?]))
    {
      endpoint = self->_endpoint;
      v12 = v4->_endpoint;
      if (endpoint && v12)
      {
        v6 = xpc_equal(endpoint, v12);
      }

      else
      {
        v6 = endpoint == v12;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSString)debugDescription
{
  endpoint = self->_endpoint;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  if (endpoint)
  {
    v8 = [v4 stringWithFormat:@"<%@: %p endpoint: %@>", v6, self, self->_endpoint];;
  }

  else
  {
    processIdentifier = self->_processIdentifier;
    if (processIdentifier)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[RBSProcessIdentifier pid](self->_processIdentifier, "pid")}];
    }

    else
    {
      v10 = @"(n/a)";
    }

    v11 = [(RBSProcessIdentity *)self->_processIdentity shortDescription];
    v8 = [v4 stringWithFormat:@"<%@: %p pid: %@; identity: %@; environment: %@>", v7, self, v10, v11, self->_environment];;

    if (processIdentifier)
    {
    }
  }

  return v8;
}

- (void)_initWithProcessIdentifier:(void *)a3 processIdentity:(void *)a4 environmentIdentifier:(uint64_t)a5 euid:
{
  if (a1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    v12 = [[RBSTarget alloc] _initWithProcessIdentifier:v11 processIdentity:v10 environmentIdentifier:v9 endpoint:0 euid:a5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (RBSTarget)targetWithProcessIdentity:(id)a3
{
  v3 = a3;
  v4 = [[RBSTarget alloc] _initWithProcessIdentifier:v3 processIdentity:0 environmentIdentifier:0 euid:?];

  return v4;
}

+ (RBSTarget)targetWithProcessIdentity:(id)a3 environmentIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[RBSTarget alloc] _initWithProcessIdentifier:v6 processIdentity:v5 environmentIdentifier:0 euid:?];

  return v7;
}

+ (RBSTarget)targetWithProcessIdentifier:(id)a3
{
  v5 = a3;
  if ([v5 rbs_pid] <= 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"RBSTarget.m" lineNumber:73 description:@"must specify a valid pid"];
  }

  v6 = [[RBSTarget alloc] _initWithProcessIdentifier:v5 processIdentity:0 environmentIdentifier:0 euid:0];

  return v6;
}

+ (RBSTarget)targetWithProcessIdentifier:(id)a3 environmentIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[RBSTarget alloc] _initWithProcessIdentifier:v6 processIdentity:0 environmentIdentifier:v5 euid:0];

  return v7;
}

- (void)_initWithProcessIdentifier:(void *)a3 processIdentity:(void *)a4 environmentIdentifier:(void *)a5 endpoint:(uint64_t)a6 euid:
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (a1)
  {
    v24.receiver = a1;
    v24.super_class = RBSTarget;
    a1 = objc_msgSendSuper2(&v24, sel_init);
    if (a1)
    {
      if (v11)
      {
        v15 = [RBSProcessIdentifier identifierForIdentifier:v11];
      }

      else
      {
        v15 = 0;
      }

      v16 = a1[1];
      a1[1] = v15;

      if (a6)
      {
        v17 = [v12 copyWithAuid:a6];
      }

      else
      {
        v17 = [v12 copy];
      }

      v18 = a1[2];
      a1[2] = v17;

      v19 = [v13 copy];
      v20 = a1[3];
      a1[3] = v19;

      if (v14)
      {
        v21 = xpc_copy(v14);
        v22 = a1[4];
        a1[4] = v21;
      }
    }
  }

  return a1;
}

- (id)copyWithPersonaString:(id)a3
{
  v4 = a3;
  v5 = [RBSTarget alloc];
  processIdentifier = self->_processIdentifier;
  v7 = [(RBSProcessIdentity *)self->_processIdentity copyWithPersonaString:v4];

  v8 = [(RBSTarget *)v5 _initWithProcessIdentifier:v7 processIdentity:self->_environment environmentIdentifier:self->_endpoint endpoint:0 euid:?];
  return v8;
}

+ (void)targetWithPid:environmentIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)targetWithEndpoint:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

+ (void)targetWithEndpoint:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithRBSXPCCoder:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithRBSXPCCoder:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18E8AD000, a2, OS_LOG_TYPE_ERROR, "no identity found for endpoint %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end