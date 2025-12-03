@interface SBSBackgroundContentDefinition
- (SBSBackgroundContentDefinition)init;
- (SBSBackgroundContentDefinition)initWithSceneIdentifier:(id)identifier clientBundleIdentifier:(id)bundleIdentifier;
- (SBSBackgroundContentDefinition)initWithXPCDictionary:(id)dictionary;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation SBSBackgroundContentDefinition

- (SBSBackgroundContentDefinition)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v7 = [(SBSBackgroundContentDefinition *)self initWithSceneIdentifier:uUIDString clientBundleIdentifier:bundleIdentifier];
  return v7;
}

- (SBSBackgroundContentDefinition)initWithSceneIdentifier:(id)identifier clientBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  if (bundleIdentifierCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSBackgroundContentDefinition initWithSceneIdentifier:a2 clientBundleIdentifier:self];
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  [SBSBackgroundContentDefinition initWithSceneIdentifier:a2 clientBundleIdentifier:self];
LABEL_3:
  v15.receiver = self;
  v15.super_class = SBSBackgroundContentDefinition;
  v9 = [(SBSBackgroundContentDefinition *)&v15 init];
  if (v9)
  {
    v10 = [bundleIdentifierCopy copy];
    clientBundleIdentifier = v9->_clientBundleIdentifier;
    v9->_clientBundleIdentifier = v10;

    v12 = [identifierCopy copy];
    sceneIdentifier = v9->_sceneIdentifier;
    v9->_sceneIdentifier = v12;
  }

  return v9;
}

- (SBSBackgroundContentDefinition)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = BSDeserializeStringFromXPCDictionaryWithKey();
  v6 = BSDeserializeStringFromXPCDictionaryWithKey();

  v7 = [(SBSBackgroundContentDefinition *)self initWithSceneIdentifier:v6 clientBundleIdentifier:v5];
  return v7;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    BSSerializeStringToXPCDictionaryWithKey();
    BSSerializeStringToXPCDictionaryWithKey();
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSBackgroundContentDefinition *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSBackgroundContentDefinition *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBSBackgroundContentDefinition *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__SBSBackgroundContentDefinition_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E735F7F0;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

- (void)initWithSceneIdentifier:(uint64_t)a1 clientBundleIdentifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSBackgroundContentDefinition.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"clientBundleIdentifier"}];
}

- (void)initWithSceneIdentifier:(uint64_t)a1 clientBundleIdentifier:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSBackgroundContentDefinition.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"sceneIdentifier"}];
}

@end