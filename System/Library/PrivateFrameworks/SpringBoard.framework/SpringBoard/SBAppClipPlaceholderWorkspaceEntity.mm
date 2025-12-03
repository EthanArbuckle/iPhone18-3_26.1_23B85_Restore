@interface SBAppClipPlaceholderWorkspaceEntity
+ (BOOL)isAppClipUpdateAvailableForBundleIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (SBAppClipPlaceholderWorkspaceEntity)initWithBundleIdentifier:(id)identifier futureSceneIdentifier:(id)sceneIdentifier needsUpdate:(BOOL)update;
- (id)copyWithZone:(_NSZone *)zone;
- (id)entityGenerator;
- (void)entityGenerator;
@end

@implementation SBAppClipPlaceholderWorkspaceEntity

+ (BOOL)isAppClipUpdateAvailableForBundleIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 0;
  }

  v3 = MEMORY[0x277CC1E70];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:0];

  appClipMetadata = [v5 appClipMetadata];

  v8 = [v5 updateAvailability] == 1 && appClipMetadata != 0;
  return v8;
}

- (SBAppClipPlaceholderWorkspaceEntity)initWithBundleIdentifier:(id)identifier futureSceneIdentifier:(id)sceneIdentifier needsUpdate:(BOOL)update
{
  identifierCopy = identifier;
  sceneIdentifierCopy = sceneIdentifier;
  if (sceneIdentifierCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBAppClipPlaceholderWorkspaceEntity initWithBundleIdentifier:futureSceneIdentifier:needsUpdate:];
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  [SBAppClipPlaceholderWorkspaceEntity initWithBundleIdentifier:futureSceneIdentifier:needsUpdate:];
LABEL_3:
  sceneIdentifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Placeholder-%@", sceneIdentifierCopy];
  v17.receiver = self;
  v17.super_class = SBAppClipPlaceholderWorkspaceEntity;
  v11 = [(SBWorkspaceEntity *)&v17 initWithIdentifier:sceneIdentifierCopy displayChangeSettings:0];

  if (v11)
  {
    v12 = [identifierCopy copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v12;

    v14 = [sceneIdentifierCopy copy];
    futureSceneIdentifier = v11->_futureSceneIdentifier;
    v11->_futureSceneIdentifier = v14;

    v11->_needsUpdate = update;
  }

  return v11;
}

- (id)entityGenerator
{
  v3 = self->_bundleIdentifier;
  v4 = self->_futureSceneIdentifier;
  v5 = v4;
  needsUpdate = self->_needsUpdate;
  if (v3)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBAppClipPlaceholderWorkspaceEntity entityGenerator];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  [SBAppClipPlaceholderWorkspaceEntity entityGenerator];
LABEL_3:
  v7 = objc_opt_class();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__SBAppClipPlaceholderWorkspaceEntity_entityGenerator__block_invoke;
  v16[3] = &unk_2783AFAE0;
  v18 = v5;
  v19 = v7;
  v17 = v3;
  v20 = needsUpdate;
  v8 = v5;
  v9 = v3;
  v10 = MEMORY[0x223D6F7F0](v16);
  v14 = MEMORY[0x223D6F7F0](v10, v11, v12, v13);

  return v14;
}

id __54__SBAppClipPlaceholderWorkspaceEntity_entityGenerator__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 48)) initWithBundleIdentifier:*(a1 + 32) futureSceneIdentifier:*(a1 + 40) needsUpdate:*(a1 + 56)];

  return v1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      bundleIdentifier = self->_bundleIdentifier;
      bundleIdentifier = [(SBAppClipPlaceholderWorkspaceEntity *)v5 bundleIdentifier];
      if ([(NSString *)bundleIdentifier isEqualToString:bundleIdentifier])
      {
        futureSceneIdentifier = self->_futureSceneIdentifier;
        futureSceneIdentifier = [(SBAppClipPlaceholderWorkspaceEntity *)v5 futureSceneIdentifier];
        v10 = [(NSString *)futureSceneIdentifier isEqualToString:futureSceneIdentifier];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = SBAppClipPlaceholderWorkspaceEntity;
  v4 = [(SBWorkspaceEntity *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_bundleIdentifier copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSString *)self->_futureSceneIdentifier copy];
  v8 = v4[7];
  v4[7] = v7;

  *(v4 + 40) = self->_needsUpdate;
  return v4;
}

- (void)initWithBundleIdentifier:futureSceneIdentifier:needsUpdate:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"futureSceneIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)initWithBundleIdentifier:futureSceneIdentifier:needsUpdate:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"bundleIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)entityGenerator
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"futureSceneIdentifier" object:? file:? lineNumber:? description:?];
}

@end