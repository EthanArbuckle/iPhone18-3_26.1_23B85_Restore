@interface STUIStatusBarItemUpdate
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation STUIStatusBarItemUpdate

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(STUIStatusBarItemUpdate);
  [(STUIStatusBarItemUpdate *)v4 setEnablementChanged:self->_enablementChanged];
  [(STUIStatusBarItemUpdate *)v4 setEnabled:self->_enabled];
  [(STUIStatusBarItemUpdate *)v4 setDataChanged:self->_dataChanged];
  [(STUIStatusBarItemUpdate *)v4 setData:self->_data];
  [(STUIStatusBarItemUpdate *)v4 setStyleAttributesChanged:self->_styleAttributesChanged];
  [(STUIStatusBarItemUpdate *)v4 setStyleAttributes:self->_styleAttributes];
  [(STUIStatusBarItemUpdate *)v4 setPlacementInfo:self->_placementInfo];
  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STUIStatusBarItemUpdate *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarItemUpdate *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarItemUpdate *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  debugCopy = debug;
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STUIStatusBarItemUpdate *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setUseDebugDescription:debugCopy];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];

  activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__STUIStatusBarItemUpdate__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
  v12[3] = &unk_279D38150;
  v9 = succinctDescriptionBuilder;
  v13 = v9;
  selfCopy = self;
  [v9 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v12];

  v10 = v9;
  return v9;
}

void __75__STUIStatusBarItemUpdate__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"enablementChanged"), @"enablementChanged"}];
  v3 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"enabled"), @"enabled"}];
  v4 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"dataChanged"), @"dataChanged"}];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) data];
  v7 = [v5 appendObject:v6 withName:@"data" skipIfNil:1];

  v8 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"styleAttributesChanged"), @"styleAttributesChanged"}];
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) styleAttributes];
  v11 = [v9 appendObject:v10 withName:@"styleAttributes" skipIfNil:1];

  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) placementInfo];
  [v12 appendDictionarySection:v13 withName:@"placementInfo" skipIfEmpty:1];
}

@end