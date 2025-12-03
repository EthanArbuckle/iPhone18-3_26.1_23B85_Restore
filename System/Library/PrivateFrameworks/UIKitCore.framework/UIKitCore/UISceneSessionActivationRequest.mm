@interface UISceneSessionActivationRequest
+ (UISceneSessionActivationRequest)request;
+ (UISceneSessionActivationRequest)requestWithRole:(UISceneSessionRole)role;
+ (UISceneSessionActivationRequest)requestWithSession:(UISceneSession *)session;
+ (id)_requestWithConfiguration:(id)configuration;
- (id)_initWithSession:(id)session role:(id)role configuration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation UISceneSessionActivationRequest

- (id)_initWithSession:(id)session role:(id)role configuration:(id)configuration
{
  sessionCopy = session;
  roleCopy = role;
  configurationCopy = configuration;
  if (os_variant_has_internal_diagnostics())
  {
    if (!(sessionCopy | roleCopy | configurationCopy))
    {
      v24 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "Request cannot be initialized without a role, a configuration, or an existing scene session.", buf, 2u);
      }
    }
  }

  else if (!(sessionCopy | roleCopy | configurationCopy))
  {
    v25 = *(__UILogGetCategoryCachedImpl("Assert", &_initWithSession_role_configuration____s_category) + 8);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "Request cannot be initialized without a role, a configuration, or an existing scene session.", buf, 2u);
    }
  }

  v26.receiver = self;
  v26.super_class = UISceneSessionActivationRequest;
  v11 = [(UISceneSessionActivationRequest *)&v26 init];
  if (v11)
  {
    if (configurationCopy)
    {
      v12 = [configurationCopy copy];
      configuration = v11->_configuration;
      v11->_configuration = v12;

      role = [configurationCopy role];
      role = v11->_role;
      v11->_role = role;
    }

    else
    {
      role2 = [sessionCopy role];
      v17 = role2;
      if (role2)
      {
        v18 = role2;
      }

      else
      {
        v18 = [roleCopy copy];
      }

      v19 = v11->_role;
      v11->_role = v18;

      v20 = sessionCopy;
      role = v11->_session;
      v11->_session = v20;
    }

    v21 = objc_alloc_init(_UISceneConnectionOptionDefinitionPayloadStorage);
    definitionPayloadStorage = v11->_definitionPayloadStorage;
    v11->_definitionPayloadStorage = v21;
  }

  return v11;
}

+ (UISceneSessionActivationRequest)request
{
  v2 = [[UISceneSessionActivationRequest alloc] _initWithSession:0 role:@"UIWindowSceneSessionRoleApplication" configuration:0];

  return v2;
}

+ (UISceneSessionActivationRequest)requestWithRole:(UISceneSessionRole)role
{
  v3 = role;
  v4 = [[UISceneSessionActivationRequest alloc] _initWithSession:0 role:v3 configuration:0];

  return v4;
}

+ (UISceneSessionActivationRequest)requestWithSession:(UISceneSession *)session
{
  v3 = session;
  v4 = [[UISceneSessionActivationRequest alloc] _initWithSession:v3 role:0 configuration:0];

  return v4;
}

+ (id)_requestWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [[UISceneSessionActivationRequest alloc] _initWithSession:0 role:0 configuration:configurationCopy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UISceneSessionActivationRequest alloc];
  session = [(UISceneSessionActivationRequest *)self session];
  role = [(UISceneSessionActivationRequest *)self role];
  _configuration = [(UISceneSessionActivationRequest *)self _configuration];
  v8 = [(UISceneSessionActivationRequest *)v4 _initWithSession:session role:role configuration:_configuration];

  userActivity = [(UISceneSessionActivationRequest *)self userActivity];
  [v8 setUserActivity:userActivity];

  options = [(UISceneSessionActivationRequest *)self options];
  v11 = [options copy];
  [v8 setOptions:v11];

  return v8;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UISceneSessionActivationRequest *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__UISceneSessionActivationRequest_succinctDescriptionBuilder__block_invoke;
  v7[3] = &unk_1E70F35B8;
  v4 = v3;
  v8 = v4;
  selfCopy = self;
  [v4 appendProem:0 block:v7];
  v5 = v4;

  return v4;
}

void __61__UISceneSessionActivationRequest_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) role];
  [v1 appendString:v2 withName:@"role"];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(UISceneSessionActivationRequest *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];
  session = [(UISceneSessionActivationRequest *)self session];
  if (session || ([(UISceneSessionActivationRequest *)self role], (session = objc_claimAutoreleasedReturnValue()) != 0) || ([(UISceneSessionActivationRequest *)self userActivity], (session = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_5:
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__UISceneSessionActivationRequest_descriptionBuilderWithMultilinePrefix___block_invoke;
    v9[3] = &unk_1E70F35B8;
    v10 = succinctDescriptionBuilder;
    selfCopy = self;
    [v10 appendBodySectionWithName:&stru_1EFB14550 multilinePrefix:prefixCopy block:v9];

    goto LABEL_6;
  }

  options = [(UISceneSessionActivationRequest *)self options];

  if (options)
  {
    goto LABEL_5;
  }

LABEL_6:

  return succinctDescriptionBuilder;
}

void __73__UISceneSessionActivationRequest_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) session];
  v4 = [v2 appendObject:v3 withName:@"session" skipIfNil:1];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) userActivity];
  v7 = [v5 appendObject:v6 withName:@"userActivity" skipIfNil:1];

  v8 = *(a1 + 32);
  v10 = [*(a1 + 40) options];
  v9 = [v8 appendObject:v10 withName:@"options" skipIfNil:1];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UISceneSessionActivationRequest *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UISceneSessionActivationRequest *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end