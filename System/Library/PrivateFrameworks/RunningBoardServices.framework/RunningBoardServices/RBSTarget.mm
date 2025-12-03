@interface RBSTarget
+ (RBSTarget)targetWithEndpoint:(id)endpoint;
+ (RBSTarget)targetWithProcessIdentifier:(id)identifier;
+ (RBSTarget)targetWithProcessIdentifier:(id)identifier environmentIdentifier:(id)environmentIdentifier;
+ (RBSTarget)targetWithProcessIdentity:(id)identity;
+ (RBSTarget)targetWithProcessIdentity:(id)identity environmentIdentifier:(id)identifier;
+ (id)currentProcess;
+ (id)systemTarget;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesProcess:(id)process;
- (NSString)debugDescription;
- (NSString)shortDescription;
- (RBSTarget)init;
- (RBSTarget)initWithRBSXPCCoder:(id)coder;
- (id)copyWithPersonaString:(id)string;
- (id)processPredicate;
- (unint64_t)hash;
- (void)_initWithProcessIdentifier:(void *)identifier processIdentity:(void *)identity environmentIdentifier:(uint64_t)environmentIdentifier euid:;
- (void)_initWithProcessIdentifier:(void *)identifier processIdentity:(void *)identity environmentIdentifier:(void *)environmentIdentifier endpoint:(uint64_t)endpoint euid:;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSTarget

- (NSString)shortDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  shortDescription = selfCopy->_shortDescription;
  if (!shortDescription)
  {
    if (selfCopy->_processIdentifier)
    {
      p_environment = &selfCopy->_environment;
      v5 = MEMORY[0x1E696AEC0];
      if (selfCopy->_environment)
      {
        shortDescription = [MEMORY[0x1E696AD98] numberWithInt:{-[RBSProcessIdentifier pid](selfCopy->_processIdentifier, "pid")}];
LABEL_8:
        v8 = shortDescription;
        v9 = [v5 stringWithFormat:@"%@<%@>", shortDescription, *p_environment];
LABEL_14:
        v12 = selfCopy->_shortDescription;
        selfCopy->_shortDescription = v9;

        shortDescription = v8;
LABEL_15:

        goto LABEL_16;
      }

      shortDescription2 = [MEMORY[0x1E696AD98] numberWithInt:{-[RBSProcessIdentifier pid](selfCopy->_processIdentifier, "pid")}];
    }

    else
    {
      processIdentity = selfCopy->_processIdentity;
      if (!processIdentity)
      {
        if (selfCopy->_endpoint)
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@>", selfCopy->_endpoint];
          shortDescription = selfCopy->_shortDescription;
          selfCopy->_shortDescription = v11;
        }

        else
        {
          selfCopy->_shortDescription = @"system";
        }

        goto LABEL_15;
      }

      p_environment = &selfCopy->_environment;
      v5 = MEMORY[0x1E696AEC0];
      if (selfCopy->_environment)
      {
        shortDescription = [(RBSProcessIdentity *)processIdentity shortDescription];
        goto LABEL_8;
      }

      shortDescription2 = [(RBSProcessIdentity *)processIdentity shortDescription];
    }

    v8 = shortDescription2;
    v9 = [v5 stringWithFormat:@"%@", shortDescription2];
    goto LABEL_14;
  }

LABEL_16:
  objc_sync_exit(selfCopy);

  v13 = selfCopy->_shortDescription;

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

+ (RBSTarget)targetWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (!endpointCopy)
  {
    +[RBSTarget targetWithEndpoint:];
  }

  if (MEMORY[0x193AD5A20](endpointCopy) != MEMORY[0x1E69E9E90])
  {
    +[RBSTarget targetWithEndpoint:];
  }

  v4 = [[RBSTarget alloc] _initWithProcessIdentifier:0 processIdentity:0 environmentIdentifier:endpointCopy endpoint:0 euid:?];

  return v4;
}

- (RBSTarget)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBSTarget.m" lineNumber:93 description:@"-init is not allowed on RBSTarget"];

  return 0;
}

- (BOOL)matchesProcess:(id)process
{
  processCopy = process;
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

    v5 = [processIdentity matchesProcess:processCopy];
  }

  return v5;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  processIdentifier = self->_processIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:processIdentifier forKey:@"processIdentifier"];
  [coderCopy encodeObject:self->_processIdentity forKey:@"processIdentity"];
  [coderCopy encodeObject:self->_environment forKey:@"environment"];
  [coderCopy encodeXPCObject:self->_endpoint forKey:@"endpoint"];
}

- (RBSTarget)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:@"endpoint"];
  if (!v5)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processIdentity"];
LABEL_10:
    v8 = v7;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processIdentifier"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
    self = [(RBSTarget *)self _initWithProcessIdentifier:v11 processIdentity:v8 environmentIdentifier:v12 endpoint:0 euid:0];

    selfCopy = self;
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

  selfCopy = 0;
LABEL_8:

  return selfCopy;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && ((processIdentifier = self->_processIdentifier, processIdentifier == equalCopy->_processIdentifier) || [(RBSProcessIdentifier *)processIdentifier isEqual:?]) && ((processIdentity = self->_processIdentity, processIdentity == equalCopy->_processIdentity) || [(RBSProcessIdentity *)processIdentity isEqual:?]) && ((environment = self->_environment, environment == equalCopy->_environment) || [(NSString *)environment isEqualToString:?]))
    {
      endpoint = self->_endpoint;
      v12 = equalCopy->_endpoint;
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

    shortDescription = [(RBSProcessIdentity *)self->_processIdentity shortDescription];
    v8 = [v4 stringWithFormat:@"<%@: %p pid: %@; identity: %@; environment: %@>", v7, self, v10, shortDescription, self->_environment];;

    if (processIdentifier)
    {
    }
  }

  return v8;
}

- (void)_initWithProcessIdentifier:(void *)identifier processIdentity:(void *)identity environmentIdentifier:(uint64_t)environmentIdentifier euid:
{
  if (self)
  {
    identityCopy = identity;
    identifierCopy = identifier;
    v11 = a2;
    v12 = [[RBSTarget alloc] _initWithProcessIdentifier:v11 processIdentity:identifierCopy environmentIdentifier:identityCopy endpoint:0 euid:environmentIdentifier];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (RBSTarget)targetWithProcessIdentity:(id)identity
{
  identityCopy = identity;
  v4 = [[RBSTarget alloc] _initWithProcessIdentifier:identityCopy processIdentity:0 environmentIdentifier:0 euid:?];

  return v4;
}

+ (RBSTarget)targetWithProcessIdentity:(id)identity environmentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identityCopy = identity;
  v7 = [[RBSTarget alloc] _initWithProcessIdentifier:identityCopy processIdentity:identifierCopy environmentIdentifier:0 euid:?];

  return v7;
}

+ (RBSTarget)targetWithProcessIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy rbs_pid] <= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"RBSTarget.m" lineNumber:73 description:@"must specify a valid pid"];
  }

  v6 = [[RBSTarget alloc] _initWithProcessIdentifier:identifierCopy processIdentity:0 environmentIdentifier:0 euid:0];

  return v6;
}

+ (RBSTarget)targetWithProcessIdentifier:(id)identifier environmentIdentifier:(id)environmentIdentifier
{
  environmentIdentifierCopy = environmentIdentifier;
  identifierCopy = identifier;
  v7 = [[RBSTarget alloc] _initWithProcessIdentifier:identifierCopy processIdentity:0 environmentIdentifier:environmentIdentifierCopy euid:0];

  return v7;
}

- (void)_initWithProcessIdentifier:(void *)identifier processIdentity:(void *)identity environmentIdentifier:(void *)environmentIdentifier endpoint:(uint64_t)endpoint euid:
{
  v11 = a2;
  identifierCopy = identifier;
  identityCopy = identity;
  environmentIdentifierCopy = environmentIdentifier;
  if (self)
  {
    v24.receiver = self;
    v24.super_class = RBSTarget;
    self = objc_msgSendSuper2(&v24, sel_init);
    if (self)
    {
      if (v11)
      {
        v15 = [RBSProcessIdentifier identifierForIdentifier:v11];
      }

      else
      {
        v15 = 0;
      }

      v16 = self[1];
      self[1] = v15;

      if (endpoint)
      {
        v17 = [identifierCopy copyWithAuid:endpoint];
      }

      else
      {
        v17 = [identifierCopy copy];
      }

      v18 = self[2];
      self[2] = v17;

      v19 = [identityCopy copy];
      v20 = self[3];
      self[3] = v19;

      if (environmentIdentifierCopy)
      {
        v21 = xpc_copy(environmentIdentifierCopy);
        v22 = self[4];
        self[4] = v21;
      }
    }
  }

  return self;
}

- (id)copyWithPersonaString:(id)string
{
  stringCopy = string;
  v5 = [RBSTarget alloc];
  processIdentifier = self->_processIdentifier;
  v7 = [(RBSProcessIdentity *)self->_processIdentity copyWithPersonaString:stringCopy];

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