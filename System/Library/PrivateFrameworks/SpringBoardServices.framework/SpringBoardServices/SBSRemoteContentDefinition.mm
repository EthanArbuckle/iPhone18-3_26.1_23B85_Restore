@interface SBSRemoteContentDefinition
- (SBSRemoteContentDefinition)initWithServiceName:(id)name viewControllerClassName:(id)className xpcEndpoint:(id)endpoint userInfo:(id)info;
- (SBSRemoteContentDefinition)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation SBSRemoteContentDefinition

- (SBSRemoteContentDefinition)initWithServiceName:(id)name viewControllerClassName:(id)className xpcEndpoint:(id)endpoint userInfo:(id)info
{
  nameCopy = name;
  classNameCopy = className;
  endpointCopy = endpoint;
  infoCopy = info;
  if (nameCopy)
  {
    if (classNameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSRemoteContentDefinition initWithServiceName:a2 viewControllerClassName:self xpcEndpoint:? userInfo:?];
    if (classNameCopy)
    {
      goto LABEL_3;
    }
  }

  [SBSRemoteContentDefinition initWithServiceName:a2 viewControllerClassName:self xpcEndpoint:? userInfo:?];
LABEL_3:
  v21.receiver = self;
  v21.super_class = SBSRemoteContentDefinition;
  v15 = [(SBSRemoteContentDefinition *)&v21 init];
  if (v15)
  {
    v16 = [nameCopy copy];
    serviceName = v15->_serviceName;
    v15->_serviceName = v16;

    v18 = [classNameCopy copy];
    viewControllerClassName = v15->_viewControllerClassName;
    v15->_viewControllerClassName = v18;

    objc_storeStrong(&v15->_xpcEndpoint, endpoint);
    objc_storeStrong(&v15->_userInfo, info);
  }

  return v15;
}

- (SBSRemoteContentDefinition)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = BSDeserializeStringFromXPCDictionaryWithKey();
  v6 = BSDeserializeStringFromXPCDictionaryWithKey();
  v7 = xpc_dictionary_get_value(dictionaryCopy, "endpoint");
  v8 = BSDeserializeCFValueFromXPCDictionaryWithKey();

  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = &stru_1F058B7C8;
  }

  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = &stru_1F058B7C8;
  }

  v11 = [(SBSRemoteContentDefinition *)self initWithServiceName:v9 viewControllerClassName:v10 xpcEndpoint:v7 userInfo:v8];

  return v11;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    xdict = dictionary;
    BSSerializeStringToXPCDictionaryWithKey();
    BSSerializeStringToXPCDictionaryWithKey();
    xpc_dictionary_set_value(xdict, "endpoint", self->_xpcEndpoint);
    BSSerializeCFValueToXPCDictionaryWithKey();
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSRemoteContentDefinition *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSRemoteContentDefinition *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBSRemoteContentDefinition *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__SBSRemoteContentDefinition_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E735F7F0;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

id __68__SBSRemoteContentDefinition_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"service"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"vcClass"];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"xpcEndpoint" skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"userInfo" skipIfNil:1];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithServiceName:self->_serviceName viewControllerClassName:self->_viewControllerClassName];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_userInfo copy];
    v6 = *(v4 + 32);
    *(v4 + 32) = v5;

    objc_storeStrong((v4 + 24), self->_xpcEndpoint);
  }

  return v4;
}

- (void)initWithServiceName:(uint64_t)a1 viewControllerClassName:(uint64_t)a2 xpcEndpoint:userInfo:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSRemoteContentDefinition.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"serviceName"}];
}

- (void)initWithServiceName:(uint64_t)a1 viewControllerClassName:(uint64_t)a2 xpcEndpoint:userInfo:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSRemoteContentDefinition.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"viewControllerClassName"}];
}

@end