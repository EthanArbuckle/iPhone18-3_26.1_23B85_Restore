@interface STUIStatusBarItemUpdate
- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation STUIStatusBarItemUpdate

- (id)copyWithZone:(_NSZone *)a3
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
  v2 = [(STUIStatusBarItemUpdate *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarItemUpdate *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarItemUpdate *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(STUIStatusBarItemUpdate *)self succinctDescriptionBuilder];
  [v7 setUseDebugDescription:v4];
  [v7 setActiveMultilinePrefix:v6];

  v8 = [v7 activeMultilinePrefix];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__STUIStatusBarItemUpdate__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
  v12[3] = &unk_279D38150;
  v9 = v7;
  v13 = v9;
  v14 = self;
  [v9 appendBodySectionWithName:0 multilinePrefix:v8 block:v12];

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