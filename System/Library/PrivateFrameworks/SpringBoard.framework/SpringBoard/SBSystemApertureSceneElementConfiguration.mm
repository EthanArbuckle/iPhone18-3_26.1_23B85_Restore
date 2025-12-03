@interface SBSystemApertureSceneElementConfiguration
- (SBSystemApertureSceneElementConfiguration)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation SBSystemApertureSceneElementConfiguration

- (SBSystemApertureSceneElementConfiguration)init
{
  v3.receiver = self;
  v3.super_class = SBSystemApertureSceneElementConfiguration;
  result = [(SBSystemApertureSceneElementConfiguration *)&v3 init];
  if (result)
  {
    result->_maximumHeight = *MEMORY[0x277D77260];
    result->_minimalPresentationPossible = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [(SBSystemApertureSceneElementConfiguration *)self maximumHeight];
  [v4 setMaximumHeight:?];
  [v4 setAllowsSceneReactivation:{-[SBSystemApertureSceneElementConfiguration allowsSceneReactivation](self, "allowsSceneReactivation")}];
  [v4 setEntersBackgroundWhenBacklightIsOff:{-[SBSystemApertureSceneElementConfiguration entersBackgroundWhenBacklightIsOff](self, "entersBackgroundWhenBacklightIsOff")}];
  [v4 setMinimalPresentationPossible:{-[SBSystemApertureSceneElementConfiguration isMinimalPresentationPossible](self, "isMinimalPresentationPossible")}];
  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSystemApertureSceneElementConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSystemApertureSceneElementConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBSystemApertureSceneElementConfiguration *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__SBSystemApertureSceneElementConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

id __83__SBSystemApertureSceneElementConfiguration_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"allowsSceneReactivation") ifEqualTo:{@"allowsSceneReactivation", 1}];
  v3 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"entersBackgroundWhenBacklightIsOff") ifEqualTo:{@"entersBackgroundWhenBacklightIsOff", 1}];
  v4 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"isMinimalPresentationPossible") ifEqualTo:{@"isMinimalPresentationPossible", 1}];
  result = [*(a1 + 40) maximumHeight];
  if (v6 != *MEMORY[0x277D77260])
  {
    v7 = *(a1 + 32);
    [*(a1 + 40) maximumHeight];
    return [v7 appendFloat:@"maximumHeight" withName:?];
  }

  return result;
}

@end