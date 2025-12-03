@interface UISceneConfiguration
+ (UISceneConfiguration)configurationWithName:(NSString *)name sessionRole:(UISceneSessionRole)sessionRole;
+ (id)_internalConfigurationWithRole:(id)role sceneClass:(Class)class delegateClass:(Class)delegateClass bridgingID:(id)d sceneDelegateWrapper:(Class)wrapper;
+ (id)_internalConfigurationWithRole:(id)role sceneClass:(Class)class delegateClass:(Class)delegateClass storyboard:(id)storyboard;
- (BOOL)isEqual:(id)equal;
- (UISceneConfiguration)initWithCoder:(id)coder;
- (id)_initWithConfiguration:(id)configuration;
- (id)_initWithConfiguration:(id)configuration sceneDelegateWrapper:(Class)wrapper;
- (id)_initWithLoadErrorForSessionRole:(id)role;
- (id)_initWithName:(id)name sessionRole:(id)role includingPlist:(BOOL)plist;
- (id)_initWithRole:(id)role bridgingID:(id)d sceneDelegateWrapper:(Class)wrapper;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setDelegateClass:(Class)delegateClass;
- (void)setSceneClass:(Class)sceneClass;
- (void)setStoryboard:(UIStoryboard *)storyboard;
@end

@implementation UISceneConfiguration

+ (UISceneConfiguration)configurationWithName:(NSString *)name sessionRole:(UISceneSessionRole)sessionRole
{
  v6 = sessionRole;
  v7 = name;
  v8 = [[self alloc] initWithName:v7 sessionRole:v6];

  return v8;
}

- (id)_initWithName:(id)name sessionRole:(id)role includingPlist:(BOOL)plist
{
  plistCopy = plist;
  v65 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  roleCopy = role;
  v58.receiver = self;
  v58.super_class = UISceneConfiguration;
  v10 = [(UISceneConfiguration *)&v58 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_role, role);
    *&v11->_isDefault = 0;
    v11->_canBeAppliedToInternalScenes = 0;
    _infoPlistSceneConfigurations = [UIApp _infoPlistSceneConfigurations];
    if (_infoPlistSceneConfigurations)
    {
      v13 = !plistCopy;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (nameCopy)
      {
        v11->_hadResolutionErrorsOnLoad = 1;
        v14 = *(__UILogGetCategoryCachedImpl("SceneConfiguration", &qword_1ED4A2458) + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v60 = nameCopy;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Info.plist contained no UIScene configuration dictionary (looking for configuration named %@)", buf, 0xCu);
        }
      }

      goto LABEL_59;
    }

    v15 = [roleCopy isEqualToString:@"UIWindowSceneSessionRoleExternalDisplayNonInteractive"];
    v16 = [_infoPlistSceneConfigurations objectForKey:roleCopy];
    v17 = v16;
    if (v15 && (!v16 || ![v16 count]))
    {
      v18 = [_infoPlistSceneConfigurations objectForKey:@"UIWindowSceneSessionRoleExternalDisplay"];

      v17 = v18;
    }

    if (nameCopy)
    {
      v53 = MEMORY[0x1E69E9820];
      v54 = 3221225472;
      v55 = __65__UISceneConfiguration__initWithName_sessionRole_includingPlist___block_invoke;
      v56 = &unk_1E7127B48;
      v19 = nameCopy;
      v57 = v19;
      v20 = [v17 indexOfObjectPassingTest:&v53];
      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        firstObject = [v17 firstObject];
        v11->_hadResolutionErrorsOnLoad = 1;
        v22 = *(__UILogGetCategoryCachedImpl("SceneConfiguration", &_MergedGlobals_1339) + 8);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v60 = v19;
          v61 = 2112;
          v62 = roleCopy;
          v63 = 2112;
          v64 = roleCopy;
          _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Info.plist contained no configuration named %@ for %@. Falling back to first defined description for %@", buf, 0x20u);
        }
      }

      else
      {
        firstObject = [v17 objectAtIndex:v20];
      }

      firstObject2 = [v17 firstObject];
      v23 = [firstObject isEqualToDictionary:firstObject2];

      if (!firstObject)
      {
        goto LABEL_58;
      }
    }

    else
    {
      firstObject = [v17 firstObject];
      v23 = 1;
      if (!firstObject)
      {
LABEL_58:

LABEL_59:
        goto LABEL_60;
      }
    }

    v11->_isDefault = v23;
    v11->_fromPlist = 1;
    v25 = [firstObject objectForKeyedSubscript:@"UISceneConfigurationName"];
    name = v11->_name;
    v11->_name = v25;

    v11->_hadResolutionErrorsOnLoad = 0;
    v27 = [firstObject objectForKeyedSubscript:@"UISceneClassName"];
    v28 = NSClassFromString(v27);
    v11->_sceneClass = v28;
    if (v27)
    {
      v29 = v28 == 0;
    }

    else
    {
      v29 = 0;
    }

    if (v29)
    {
      v11->_hadResolutionErrorsOnLoad = 1;
      v32 = *(__UILogGetCategoryCachedImpl("SceneConfiguration", &qword_1ED4A2430) + 8);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v35 = @"(no name)";
        *buf = 138412802;
        if (nameCopy)
        {
          v35 = nameCopy;
        }

        v60 = v35;
        v61 = 2112;
        v62 = roleCopy;
        v63 = 2112;
        v64 = v27;
        v34 = "Info.plist configuration %@ for %@ contained UISceneClassName key, but could not load class with name %@.";
        goto LABEL_36;
      }
    }

    else if (v27)
    {
      v30 = v28;
      v31 = objc_opt_self();
      LOBYTE(v30) = [(objc_class *)v30 isSubclassOfClass:v31];

      if ((v30 & 1) == 0)
      {
        v11->_hadResolutionErrorsOnLoad = 1;
        v32 = *(__UILogGetCategoryCachedImpl("SceneConfiguration", &qword_1ED4A2438) + 8);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = @"(no name)";
          *buf = 138412802;
          if (nameCopy)
          {
            v33 = nameCopy;
          }

          v60 = v33;
          v61 = 2112;
          v62 = roleCopy;
          v63 = 2112;
          v64 = v27;
          v34 = "Info.plist configuration %@ for %@ contained UISceneClassName, %@, but it is not a subclass of UIScene.";
LABEL_36:
          _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, v34, buf, 0x20u);
        }
      }
    }

    v36 = [firstObject objectForKeyedSubscript:@"UISceneDelegateClassName"];
    v37 = NSClassFromString(v36);
    v11->_delegateClass = v37;
    v51 = v17;
    if (!v36 || v37)
    {
      if (!v36)
      {
        goto LABEL_50;
      }

      if (([(objc_class *)v37 conformsToProtocol:&unk_1F0089778]& 1) != 0)
      {
        goto LABEL_50;
      }

      v11->_hadResolutionErrorsOnLoad = 1;
      v38 = *(__UILogGetCategoryCachedImpl("SceneConfiguration", &qword_1ED4A2448) + 8);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      v41 = @"(no name)";
      *buf = 138412802;
      if (nameCopy)
      {
        v41 = nameCopy;
      }

      v60 = v41;
      v61 = 2112;
      v62 = roleCopy;
      v63 = 2112;
      v64 = v36;
      v40 = "Info.plist configuration %@ for %@ contained UISceneDelegateClassName, %@, but it does not conform to the UISceneDelegate protocol.";
    }

    else
    {
      v11->_hadResolutionErrorsOnLoad = 1;
      v38 = *(__UILogGetCategoryCachedImpl("SceneConfiguration", &qword_1ED4A2440) + 8);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
LABEL_50:
        v42 = v27;
        v43 = [firstObject objectForKeyedSubscript:{@"UISceneStoryboardFile", v51, v53, v54, v55, v56}];
        if (v43)
        {
          mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
          v45 = [UIStoryboard storyboardWithName:v43 bundle:mainBundle];
          storyboard = v11->_storyboard;
          v11->_storyboard = v45;

          if (!v11->_storyboard)
          {
            v11->_hadResolutionErrorsOnLoad = 1;
            v47 = *(__UILogGetCategoryCachedImpl("SceneConfiguration", &qword_1ED4A2450) + 8);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v48 = @"(no name)";
              *buf = 138412802;
              if (nameCopy)
              {
                v48 = nameCopy;
              }

              v60 = v48;
              v61 = 2112;
              v62 = roleCopy;
              v63 = 2112;
              v64 = v36;
              _os_log_impl(&dword_188A29000, v47, OS_LOG_TYPE_ERROR, "Info.plist configuration %@ for %@ contained UIMainStoryboardFile key, but could not find storyboard with name %@.", buf, 0x20u);
            }
          }
        }

        else
        {
          v49 = v11->_storyboard;
          v11->_storyboard = 0;
        }

        v17 = v52;
        goto LABEL_58;
      }

      v39 = @"(no name)";
      *buf = 138412802;
      if (nameCopy)
      {
        v39 = nameCopy;
      }

      v60 = v39;
      v61 = 2112;
      v62 = roleCopy;
      v63 = 2112;
      v64 = v36;
      v40 = "Info.plist configuration %@ for %@ contained UISceneDelegateClassName key, but could not load class with name %@.";
    }

    _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_ERROR, v40, buf, 0x20u);
    goto LABEL_50;
  }

LABEL_60:

  return v11;
}

uint64_t __65__UISceneConfiguration__initWithName_sessionRole_includingPlist___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"UISceneConfigurationName"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_initWithLoadErrorForSessionRole:(id)role
{
  result = [(UISceneConfiguration *)self initWithName:0 sessionRole:role];
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

- (id)_initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8.receiver = self;
  v8.super_class = UISceneConfiguration;
  v5 = [(UISceneConfiguration *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_name, configurationCopy[2]);
    v6->_hadResolutionErrorsOnLoad = 0;
    objc_storeStrong(&v6->_role, configurationCopy[3]);
    v6->_sceneClass = configurationCopy[4];
    v6->_delegateClass = configurationCopy[5];
    objc_storeStrong(&v6->_storyboard, configurationCopy[6]);
    v6->_isDefault = *(configurationCopy + 9);
    v6->_fromPlist = *(configurationCopy + 10);
    objc_storeStrong(&v6->_bridgingID, configurationCopy[8]);
    objc_storeStrong(&v6->_sceneDelegateWrapper, configurationCopy[9]);
    v6->_canBeAppliedToInternalScenes = *(configurationCopy + 56);
  }

  return v6;
}

- (id)_initWithRole:(id)role bridgingID:(id)d sceneDelegateWrapper:(Class)wrapper
{
  roleCopy = role;
  dCopy = d;
  if (!wrapper || ([(objc_class *)wrapper conformsToProtocol:&unk_1F0089778]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISceneConfiguration.m" lineNumber:270 description:@"Delegate wrapper does not conform to UISceneDelegate"];
  }

  v20.receiver = self;
  v20.super_class = UISceneConfiguration;
  v12 = [(UISceneConfiguration *)&v20 init];
  v13 = v12;
  if (v12)
  {
    name = v12->_name;
    v12->_name = 0;

    v13->_hadResolutionErrorsOnLoad = 0;
    objc_storeStrong(&v13->_role, role);
    *&v13->_isDefault = 0;
    v13->_sceneClass = 0;
    v13->_delegateClass = 0;
    storyboard = v13->_storyboard;
    v13->_storyboard = 0;

    v16 = [dCopy copy];
    bridgingID = v13->_bridgingID;
    v13->_bridgingID = v16;

    objc_storeStrong(&v13->_sceneDelegateWrapper, wrapper);
    v13->_canBeAppliedToInternalScenes = 0;
  }

  return v13;
}

- (id)_initWithConfiguration:(id)configuration sceneDelegateWrapper:(Class)wrapper
{
  configurationCopy = configuration;
  if (!wrapper || ([(objc_class *)wrapper conformsToProtocol:&unk_1F0089778]& 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISceneConfiguration.m" lineNumber:289 description:@"Delegate wrapper does not conform to UISceneDelegate"];
  }

  v8 = [(UISceneConfiguration *)self _initWithConfiguration:configurationCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 9, wrapper);
    *(v9 + 56) = 0;
  }

  return v9;
}

+ (id)_internalConfigurationWithRole:(id)role sceneClass:(Class)class delegateClass:(Class)delegateClass storyboard:(id)storyboard
{
  storyboardCopy = storyboard;
  roleCopy = role;
  v12 = [[self alloc] initWithName:0 sessionRole:roleCopy];

  [v12 setSceneClass:class];
  [v12 setDelegateClass:delegateClass];
  [v12 setStoryboard:storyboardCopy];

  *(v12 + 56) = 1;
  v13 = *(v12 + 16);
  *(v12 + 16) = 0;
  v14 = v12;

  *(v12 + 9) = 0;
  return v12;
}

+ (id)_internalConfigurationWithRole:(id)role sceneClass:(Class)class delegateClass:(Class)delegateClass bridgingID:(id)d sceneDelegateWrapper:(Class)wrapper
{
  dCopy = d;
  roleCopy = role;
  v14 = [[self alloc] _initWithRole:roleCopy bridgingID:dCopy sceneDelegateWrapper:wrapper];

  [v14 setSceneClass:class];
  [v14 setDelegateClass:delegateClass];
  *(v14 + 56) = 1;
  v15 = *(v14 + 16);
  *(v14 + 16) = 0;
  v16 = v14;

  *(v14 + 9) = 0;
  return v14;
}

- (void)setSceneClass:(Class)sceneClass
{
  if (self->_sceneClass != sceneClass)
  {
    name = self->_name;
    self->_name = 0;
    selfCopy = self;

    *&selfCopy->_isDefault = 0;
    selfCopy->_canBeAppliedToInternalScenes = 0;

    self->_sceneClass = sceneClass;
  }
}

- (void)setDelegateClass:(Class)delegateClass
{
  if (self->_delegateClass != delegateClass)
  {
    name = self->_name;
    self->_name = 0;
    selfCopy = self;

    *&selfCopy->_isDefault = 0;
    selfCopy->_canBeAppliedToInternalScenes = 0;

    self->_delegateClass = delegateClass;
  }
}

- (void)setStoryboard:(UIStoryboard *)storyboard
{
  p_storyboard = &self->_storyboard;
  v8 = storyboard;
  if (([(UIStoryboard *)v8 isEqual:*p_storyboard]& 1) == 0)
  {
    name = self->_name;
    self->_name = 0;
    selfCopy = self;

    *&selfCopy->_isDefault = 0;
    selfCopy->_canBeAppliedToInternalScenes = 0;

    objc_storeStrong(p_storyboard, storyboard);
  }
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendString:self->_role];
  v5 = [builder appendString:self->_name];
  v6 = [builder appendClass:self->_sceneClass];
  v7 = [builder appendClass:self->_delegateClass];
  v8 = [builder appendObject:self->_storyboard];
  v9 = [builder appendClass:self->_sceneDelegateWrapper];
  v10 = [builder appendString:self->_bridgingID];
  v11 = [builder hash];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v29 = 1;
  }

  else
  {
    builder = [MEMORY[0x1E698E6A0] builder];
    v6 = objc_opt_class();
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __32__UISceneConfiguration_isEqual___block_invoke;
    v48[3] = &unk_1E7127B70;
    v7 = equalCopy;
    v49 = v7;
    v8 = [builder appendClass:v6 counterpart:v48];
    role = self->_role;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __32__UISceneConfiguration_isEqual___block_invoke_2;
    v46[3] = &unk_1E70F7FE0;
    v10 = v7;
    v47 = v10;
    v11 = [builder appendString:role counterpart:v46];
    name = self->_name;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __32__UISceneConfiguration_isEqual___block_invoke_3;
    v44[3] = &unk_1E70F7FE0;
    v13 = v10;
    v45 = v13;
    v14 = [builder appendString:name counterpart:v44];
    sceneClass = self->_sceneClass;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __32__UISceneConfiguration_isEqual___block_invoke_4;
    v42[3] = &unk_1E7127B70;
    v16 = v13;
    v43 = v16;
    v17 = [builder appendClass:sceneClass counterpart:v42];
    delegateClass = self->_delegateClass;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __32__UISceneConfiguration_isEqual___block_invoke_5;
    v40[3] = &unk_1E7127B70;
    v19 = v16;
    v41 = v19;
    v20 = [builder appendClass:delegateClass counterpart:v40];
    storyboard = self->_storyboard;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __32__UISceneConfiguration_isEqual___block_invoke_6;
    v38[3] = &unk_1E70F66F0;
    v22 = v19;
    v39 = v22;
    v23 = [builder appendObject:storyboard counterpart:v38];
    bridgingID = self->_bridgingID;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __32__UISceneConfiguration_isEqual___block_invoke_7;
    v36[3] = &unk_1E70F7FE0;
    v25 = v22;
    v37 = v25;
    v26 = [builder appendString:bridgingID counterpart:v36];
    sceneDelegateWrapper = self->_sceneDelegateWrapper;
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __32__UISceneConfiguration_isEqual___block_invoke_8;
    v34 = &unk_1E7127B70;
    v35 = v25;
    v28 = [builder appendClass:sceneDelegateWrapper counterpart:&v31];
    v29 = [builder isEqual];
  }

  return v29;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UISceneConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_name withName:@"name"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UISceneConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UISceneConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v6 setActiveMultilinePrefix:prefixCopy];

  [v6 appendString:self->_name withName:@"name"];
  [v6 appendString:self->_role withName:@"role"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__UISceneConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_1E70F5AF0;
  v7 = v6;
  v14 = has_internal_diagnostics;
  v12 = v7;
  selfCopy = self;
  v8 = [v7 modifyBody:v11];
  v9 = v7;

  return v7;
}

void __62__UISceneConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__UISceneConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F5AF0;
  v9 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

id __62__UISceneConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);
    v3 = [v2 activeMultilinePrefix];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __62__UISceneConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke_3;
    v13 = &unk_1E70F35B8;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v14 = v4;
    v15 = v5;
    [v2 appendBodySectionWithName:@"flags" multilinePrefix:v3 block:&v10];
  }

  v6 = [*(a1 + 32) appendClass:*(*(a1 + 40) + 32) withName:{@"sceneClass", v10, v11, v12, v13}];
  v7 = [*(a1 + 32) appendClass:*(*(a1 + 40) + 40) withName:@"delegateClass"];
  result = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"storyboard"];
  if (*(a1 + 48) == 1)
  {
    v9 = *(a1 + 40);
    if (*(v9 + 72))
    {
      [*(a1 + 32) appendString:*(v9 + 64) withName:@"bridgingID" skipIfEmpty:1];
      return [*(a1 + 32) appendClass:*(*(a1 + 40) + 72) withName:@"delegateWrapper"];
    }
  }

  return result;
}

id __62__UISceneConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 9) withName:@"isDefault"];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 10) withName:@"isFromPlist"];
  v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"hadResolutionErrorsOnLoad"];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 56) withName:@"internal"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UISceneConfiguration allocWithZone:zone];

  return [(UISceneConfiguration *)v4 _initWithConfiguration:self];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v17 = coderCopy;
  if (self->_name && self->_fromPlist)
  {
    [coderCopy encodeObject:? forKey:?];
    [v17 encodeObject:self->_role forKey:@"_UISceneConfigurationSessionRole"];
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];

    v7 = [infoDictionary objectForKeyedSubscript:*MEMORY[0x1E695E500]];
    [v17 encodeObject:v7 forKey:@"_UISceneConfigurationEncodingBundleVersion"];

    v8 = [infoDictionary objectForKeyedSubscript:@"CFBundleShortVersionString"];
    [v17 encodeObject:v8 forKey:@"_UISceneConfigurationEncodingBundleShortVersionString"];

    [v17 encodeBool:self->_fromPlist forKey:@"_UISceneConfigurationFromPlist"];
    [v17 encodeObject:self->_role forKey:@"_UISceneConfigurationSessionRole"];
    v9 = NSStringFromClass(self->_sceneClass);
    [v17 encodeObject:v9 forKey:@"_UISceneConfigurationSceneClassName"];

    v10 = NSStringFromClass(self->_delegateClass);
    [v17 encodeObject:v10 forKey:@"_UISceneConfigurationDelegateClassName"];

    name = [(UIStoryboard *)self->_storyboard name];
    [v17 encodeObject:name forKey:@"_UISceneConfigurationStoryboardName"];

    bundle = [(UIStoryboard *)self->_storyboard bundle];
    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    if ([bundle isEqual:mainBundle2])
    {
      bundleIdentifier = 0;
    }

    else
    {
      bundle2 = [(UIStoryboard *)self->_storyboard bundle];
      bundleIdentifier = [bundle2 bundleIdentifier];
    }

    [v17 encodeObject:bundleIdentifier forKey:@"_UISceneConfigurationStoryboardBundleID"];
    v16 = NSStringFromClass(self->_sceneDelegateWrapper);
    [v17 encodeObject:v16 forKey:@"_UISceneConfigurationSceneDelegateWrapperKey"];

    [v17 encodeObject:self->_bridgingID forKey:@"_UISceneConfigurationBridgingIDKey"];
    [v17 encodeBool:self->_canBeAppliedToInternalScenes forKey:@"_UISceneConfigurationCanBeAppliedToInternalScenesKey"];
  }
}

- (UISceneConfiguration)initWithCoder:(id)coder
{
  v59 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"_UISceneConfigurationName"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"_UISceneConfigurationSessionRole"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"UISceneSessionRoleNone";
  }

  v11 = v10;

  if (v6)
  {
    v12 = [(UISceneConfiguration *)self initWithName:v6 sessionRole:v11];
    goto LABEL_40;
  }

  v13 = -[UISceneConfiguration _initWithName:sessionRole:includingPlist:](self, "_initWithName:sessionRole:includingPlist:", 0, v11, [coderCopy decodeBoolForKey:@"_UISceneConfigurationFromPlist"]);
  v12 = v13;
  if (!v13)
  {
    goto LABEL_40;
  }

  if (v11 == @"UISceneSessionRoleNone")
  {
    v13->_hadResolutionErrorsOnLoad = 1;
  }

  v14 = objc_opt_self();
  v15 = [coderCopy decodeObjectOfClass:v14 forKey:@"_UISceneConfigurationSceneClassName"];

  v16 = NSClassFromString(v15);
  v17 = v16;
  if (!v15 || v16)
  {
    if (v15)
    {
      v20 = objc_opt_self();
      v21 = [(objc_class *)v17 isSubclassOfClass:v20];

      if ((v21 & 1) == 0)
      {
        v12->_hadResolutionErrorsOnLoad = 1;
        v18 = *(__UILogGetCategoryCachedImpl("SceneConfiguration", &qword_1ED4A2468) + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v54 = v11;
          v55 = 2112;
          v56 = v15;
          v19 = "Encoded configuration for %@ contained a UIScene class named %@, but it was not actually a subclass of UIScene!";
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
    v12->_hadResolutionErrorsOnLoad = 1;
    v18 = *(__UILogGetCategoryCachedImpl("SceneConfiguration", &qword_1ED4A2460) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v54 = v11;
      v55 = 2112;
      v56 = v15;
      v19 = "Encoded configuration for %@ contained a UIScene class named %@, but no class with that name could be found.";
LABEL_17:
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0x16u);
    }
  }

  v22 = objc_opt_self();
  v23 = [coderCopy decodeObjectOfClass:v22 forKey:@"_UISceneConfigurationDelegateClassName"];

  v24 = NSClassFromString(v23);
  v25 = v24;
  v47 = v17;
  if (!v23 || v24)
  {
    if (!v23)
    {
      goto LABEL_27;
    }

    if (([(objc_class *)v24 conformsToProtocol:&unk_1F0089778]& 1) != 0)
    {
      goto LABEL_27;
    }

    v12->_hadResolutionErrorsOnLoad = 1;
    v26 = *(__UILogGetCategoryCachedImpl("SceneConfiguration", &qword_1ED4A2478) + 8);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *buf = 138412546;
    v54 = v11;
    v55 = 2112;
    v56 = v15;
    v27 = "Encoded configuration for %@ contained a UISceneDelegate class named %@, but it does not actually conform to the UISceneDelegate protocol!";
    goto LABEL_26;
  }

  v12->_hadResolutionErrorsOnLoad = 1;
  v26 = *(__UILogGetCategoryCachedImpl("SceneConfiguration", &qword_1ED4A2470) + 8);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v54 = v11;
    v55 = 2112;
    v56 = v15;
    v27 = "Encoded configuration for %@ contained a UISceneDelegate class named %@, but no class with that name could be found.";
LABEL_26:
    _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, v27, buf, 0x16u);
  }

LABEL_27:
  v28 = objc_opt_self();
  v29 = [coderCopy decodeObjectOfClass:v28 forKey:@"_UISceneConfigurationStoryboardName"];

  v30 = objc_opt_self();
  v31 = [coderCopy decodeObjectOfClass:v30 forKey:@"_UISceneConfigurationStoryboardBundleID"];

  v51 = v31;
  v52 = v29;
  v49 = v23;
  v50 = v15;
  if (v29)
  {
    if (v31)
    {
      [MEMORY[0x1E696AAE8] bundleWithIdentifier:v31];
    }

    else
    {
      [MEMORY[0x1E696AAE8] mainBundle];
    }
    v34 = ;
    v33 = v47;
    v32 = [UIStoryboard storyboardWithName:v52 bundle:v34, v47];

    if (!v32)
    {
      v12->_hadResolutionErrorsOnLoad = 1;
      v35 = *(__UILogGetCategoryCachedImpl("SceneConfiguration", &qword_1ED4A2480) + 8);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v54 = v11;
        v55 = 2112;
        v56 = v52;
        v57 = 2112;
        v58 = v31;
        _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "Encoded configuration for %@ contained a storyboard named %@ from bundle %@, but the storyboard could not be found.", buf, 0x20u);
      }

      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
    v33 = v47;
  }

  v48 = v25;
  v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UISceneConfigurationSceneDelegateWrapperKey"];
  v37 = NSClassFromString(v36);
  v38 = v37;
  if (v36)
  {
    if (!v37)
    {
      v12->_hadResolutionErrorsOnLoad = 1;
      if (os_variant_has_internal_diagnostics())
      {
        v46 = *(__UILogGetCategoryCachedImpl("SceneConfiguration", &qword_1ED4A2488) + 8);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v54 = v11;
          v55 = 2112;
          v56 = v36;
          _os_log_impl(&dword_188A29000, v46, OS_LOG_TYPE_ERROR, "Encoded configuration for %@ contained a scene delegate wrapper class named %@, but no class with that name could be found.", buf, 0x16u);
        }
      }
    }
  }

  v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UISceneConfigurationBridgingIDKey"];
  v40 = [coderCopy decodeBoolForKey:@"_UISceneConfigurationCanBeAppliedToInternalScenesKey"];
  v12->_sceneClass = v33;
  v12->_delegateClass = v48;
  storyboard = v12->_storyboard;
  v12->_storyboard = v32;
  v42 = v32;

  objc_storeStrong(&v12->_sceneDelegateWrapper, v38);
  bridgingID = v12->_bridgingID;
  v12->_bridgingID = v39;

  v12->_canBeAppliedToInternalScenes = v40;
LABEL_40:
  v44 = v12;

  return v44;
}

@end