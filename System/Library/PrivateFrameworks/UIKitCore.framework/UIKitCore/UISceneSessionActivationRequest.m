@interface UISceneSessionActivationRequest
+ (UISceneSessionActivationRequest)request;
+ (UISceneSessionActivationRequest)requestWithRole:(UISceneSessionRole)role;
+ (UISceneSessionActivationRequest)requestWithSession:(UISceneSession *)session;
+ (id)_requestWithConfiguration:(id)a3;
- (id)_initWithSession:(id)a3 role:(id)a4 configuration:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation UISceneSessionActivationRequest

- (id)_initWithSession:(id)a3 role:(id)a4 configuration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_diagnostics())
  {
    if (!(v8 | v9 | v10))
    {
      v24 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "Request cannot be initialized without a role, a configuration, or an existing scene session.", buf, 2u);
      }
    }
  }

  else if (!(v8 | v9 | v10))
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
    if (v10)
    {
      v12 = [v10 copy];
      configuration = v11->_configuration;
      v11->_configuration = v12;

      v14 = [v10 role];
      role = v11->_role;
      v11->_role = v14;
    }

    else
    {
      v16 = [v8 role];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = [v9 copy];
      }

      v19 = v11->_role;
      v11->_role = v18;

      v20 = v8;
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

+ (id)_requestWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[UISceneSessionActivationRequest alloc] _initWithSession:0 role:0 configuration:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UISceneSessionActivationRequest alloc];
  v5 = [(UISceneSessionActivationRequest *)self session];
  v6 = [(UISceneSessionActivationRequest *)self role];
  v7 = [(UISceneSessionActivationRequest *)self _configuration];
  v8 = [(UISceneSessionActivationRequest *)v4 _initWithSession:v5 role:v6 configuration:v7];

  v9 = [(UISceneSessionActivationRequest *)self userActivity];
  [v8 setUserActivity:v9];

  v10 = [(UISceneSessionActivationRequest *)self options];
  v11 = [v10 copy];
  [v8 setOptions:v11];

  return v8;
}

- (id)succinctDescription
{
  v2 = [(UISceneSessionActivationRequest *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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
  v9 = self;
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

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(UISceneSessionActivationRequest *)self succinctDescriptionBuilder];
  [v5 setActiveMultilinePrefix:v4];
  v6 = [(UISceneSessionActivationRequest *)self session];
  if (v6 || ([(UISceneSessionActivationRequest *)self role], (v6 = objc_claimAutoreleasedReturnValue()) != 0) || ([(UISceneSessionActivationRequest *)self userActivity], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_5:
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__UISceneSessionActivationRequest_descriptionBuilderWithMultilinePrefix___block_invoke;
    v9[3] = &unk_1E70F35B8;
    v10 = v5;
    v11 = self;
    [v10 appendBodySectionWithName:&stru_1EFB14550 multilinePrefix:v4 block:v9];

    goto LABEL_6;
  }

  v8 = [(UISceneSessionActivationRequest *)self options];

  if (v8)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v5;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UISceneSessionActivationRequest *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(UISceneSessionActivationRequest *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end