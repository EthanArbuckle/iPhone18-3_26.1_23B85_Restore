@interface SBSRemoteAlertDefinition
- (SBSRemoteAlertDefinition)initWithSceneProvidingProcess:(id)a3 configurationIdentifier:(id)a4;
- (SBSRemoteAlertDefinition)initWithServiceName:(id)a3 viewControllerClassName:(id)a4;
- (SBSRemoteAlertDefinition)initWithXPCDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation SBSRemoteAlertDefinition

- (SBSRemoteAlertDefinition)initWithServiceName:(id)a3 viewControllerClassName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSRemoteAlertDefinition initWithServiceName:a2 viewControllerClassName:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [SBSRemoteAlertDefinition initWithServiceName:a2 viewControllerClassName:self];
LABEL_3:
  v16.receiver = self;
  v16.super_class = SBSRemoteAlertDefinition;
  v10 = [(SBSRemoteAlertDefinition *)&v16 init];
  if (v10)
  {
    v11 = [v7 copy];
    serviceName = v10->_serviceName;
    v10->_serviceName = v11;

    v13 = [v9 copy];
    viewControllerClassName = v10->_viewControllerClassName;
    v10->_viewControllerClassName = v13;
  }

  return v10;
}

- (SBSRemoteAlertDefinition)initWithSceneProvidingProcess:(id)a3 configurationIdentifier:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [SBSRemoteAlertDefinition initWithSceneProvidingProcess:a2 configurationIdentifier:self];
  }

  v15.receiver = self;
  v15.super_class = SBSRemoteAlertDefinition;
  v10 = [(SBSRemoteAlertDefinition *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sceneProvidingProcess, a3);
    v12 = [v9 copy];
    configurationIdentifier = v11->_configurationIdentifier;
    v11->_configurationIdentifier = v12;
  }

  return v11;
}

- (SBSRemoteAlertDefinition)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = BSDeserializeStringFromXPCDictionaryWithKey();
  v6 = BSDeserializeStringFromXPCDictionaryWithKey();
  objc_opt_class();
  v7 = BSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
  v8 = BSDeserializeStringFromXPCDictionaryWithKey();
  if (v7)
  {
    v9 = [(SBSRemoteAlertDefinition *)self initWithSceneProvidingProcess:v7 configurationIdentifier:v8];
  }

  else
  {
    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = &stru_1F058B7C8;
    }

    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = &stru_1F058B7C8;
    }

    v9 = [(SBSRemoteAlertDefinition *)self initWithServiceName:v10 viewControllerClassName:v11];
  }

  v12 = v9;
  if (v9)
  {
    v13 = BSDeserializeCFValueFromXPCDictionaryWithKey();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SBSRemoteAlertDefinition *)v12 setUserInfo:v13];
    }

    if (v7)
    {
      v14 = xpc_dictionary_get_BOOL(v4, "supportsMultipleDisplayPresentations");
      v15 = BSDeserializeStringFromXPCDictionaryWithKey();
      [(SBSRemoteAlertDefinition *)v12 setSupportsMultipleDisplayPresentations:v14];
      [(SBSRemoteAlertDefinition *)v12 setSecondaryConfigurationIdentifier:v15];
    }

    else
    {
      v15 = BSDeserializeStringFromXPCDictionaryWithKey();
      [(SBSRemoteAlertDefinition *)v12 setSecondaryViewControllerClassName:v15];
    }

    [(SBSRemoteAlertDefinition *)v12 setPrefersEmbeddedDisplayPresentation:xpc_dictionary_get_BOOL(v4, "prefersEmbeddedDisplayPresentation")];
    v16 = BSDeserializeStringFromXPCDictionaryWithKey();
    [(SBSRemoteAlertDefinition *)v12 setImpersonatedCarPlayAppIdentifier:v16];

    [(SBSRemoteAlertDefinition *)v12 setForCarPlay:xpc_dictionary_get_BOOL(v4, "forCarPlay")];
  }

  return v12;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    xdict = v4;
    if (self->_sceneProvidingProcess)
    {
      BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
      BSSerializeStringToXPCDictionaryWithKey();
      if (self->_supportsMultipleDisplayPresentations)
      {
        xpc_dictionary_set_BOOL(xdict, "supportsMultipleDisplayPresentations", 1);
      }
    }

    else
    {
      BSSerializeStringToXPCDictionaryWithKey();
      BSSerializeStringToXPCDictionaryWithKey();
    }

    BSSerializeStringToXPCDictionaryWithKey();
    if (self->_prefersEmbeddedDisplayPresentation)
    {
      xpc_dictionary_set_BOOL(xdict, "prefersEmbeddedDisplayPresentation", 1);
    }

    BSSerializeCFValueToXPCDictionaryWithKey();
    BSSerializeStringToXPCDictionaryWithKey();
    v4 = xdict;
    if (self->_forCarPlay)
    {
      xpc_dictionary_set_BOOL(xdict, "forCarPlay", 1);
      v4 = xdict;
    }
  }
}

- (id)succinctDescription
{
  v2 = [(SBSRemoteAlertDefinition *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSRemoteAlertDefinition *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBSRemoteAlertDefinition *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__SBSRemoteAlertDefinition_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E735F7F0;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

id __66__SBSRemoteAlertDefinition_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"service" skipIfNil:1];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"vcClass" skipIfNil:1];
  v4 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 56) withName:@"secondaryVCClass" skipIfNil:1];
  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"sceneProvidingProcess" skipIfNil:1];
  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"configurationIdentifier" skipIfNil:1];
  v7 = *(a1 + 40);
  if (*(v7 + 8) == 1)
  {
    v8 = [*(a1 + 32) appendBool:1 withName:@"supportsMultipleDisplayPresentations"];
    v7 = *(a1 + 40);
  }

  v9 = [*(a1 + 32) appendObject:*(v7 + 32) withName:@"secondaryConfigurationIdentifier" skipIfNil:1];
  v10 = *(a1 + 40);
  if (*(v10 + 9) == 1)
  {
    v11 = [*(a1 + 32) appendBool:1 withName:@"prefersEmbeddedDisplayPresentation"];
    v10 = *(a1 + 40);
  }

  if (*(v10 + 10) == 1)
  {
    v12 = [*(a1 + 32) appendBool:1 withName:@"forCarPlay"];
    v10 = *(a1 + 40);
  }

  v13 = [*(a1 + 32) appendObject:*(v10 + 72) withName:@"impersonatesCarPlayApp" skipIfNil:1];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 64) withName:@"userInfo" skipIfNil:1];
}

- (id)copyWithZone:(_NSZone *)a3
{
  sceneProvidingProcess = self->_sceneProvidingProcess;
  v5 = objc_alloc(objc_opt_class());
  if (sceneProvidingProcess)
  {
    v6 = [v5 initWithSceneProvidingProcess:self->_sceneProvidingProcess configurationIdentifier:self->_configurationIdentifier];
  }

  else
  {
    v6 = [v5 initWithServiceName:self->_serviceName viewControllerClassName:self->_viewControllerClassName];
  }

  v7 = v6;
  if (v6)
  {
    *(v6 + 10) = self->_forCarPlay;
    v8 = [(NSString *)self->_impersonatedCarPlayAppIdentifier copy];
    v9 = *(v7 + 72);
    *(v7 + 72) = v8;

    v10 = [(NSDictionary *)self->_userInfo copy];
    v11 = *(v7 + 64);
    *(v7 + 64) = v10;

    v12 = [(NSString *)self->_secondaryViewControllerClassName copy];
    v13 = *(v7 + 56);
    *(v7 + 56) = v12;

    *(v7 + 8) = self->_supportsMultipleDisplayPresentations;
    v14 = [(NSString *)self->_secondaryConfigurationIdentifier copy];
    v15 = *(v7 + 32);
    *(v7 + 32) = v14;

    *(v7 + 9) = self->_prefersEmbeddedDisplayPresentation;
  }

  return v7;
}

- (void)initWithServiceName:(uint64_t)a1 viewControllerClassName:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSRemoteAlertDefinition.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"serviceName"}];
}

- (void)initWithServiceName:(uint64_t)a1 viewControllerClassName:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSRemoteAlertDefinition.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"viewControllerClassName"}];
}

- (void)initWithSceneProvidingProcess:(uint64_t)a1 configurationIdentifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSRemoteAlertDefinition.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"sceneProvidingProcess"}];
}

@end