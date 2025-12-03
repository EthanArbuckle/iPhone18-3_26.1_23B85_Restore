@interface SBActivityItem
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SBActivityItem)initWithContentUpdate:(id)update;
- (double)relevanceScore;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)setContentUpdate:(id)update;
@end

@implementation SBActivityItem

- (SBActivityItem)initWithContentUpdate:(id)update
{
  updateCopy = update;
  v9.receiver = self;
  v9.super_class = SBActivityItem;
  v6 = [(SBActivityItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentUpdate, update);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  identifier = self->_identifier;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __26__SBActivityItem_isEqual___block_invoke;
  v18[3] = &unk_2783A91C8;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendObject:identifier counterpart:v18];
  relevanceScore = self->_relevanceScore;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __26__SBActivityItem_isEqual___block_invoke_2;
  v16 = &unk_2783ACE08;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendDouble:&v13 counterpart:relevanceScore];
  LOBYTE(v7) = [v5 isEqual];

  return v7;
}

- (void)setContentUpdate:(id)update
{
  updateCopy = update;
  contentUpdate = self->_contentUpdate;
  p_contentUpdate = &self->_contentUpdate;
  if (contentUpdate != updateCopy)
  {
    v8 = updateCopy;
    objc_storeStrong(p_contentUpdate, update);
    updateCopy = v8;
  }
}

- (double)relevanceScore
{
  content = [(ACActivityContentUpdate *)self->_contentUpdate content];
  [content relevanceScore];
  v4 = v3;

  return v4;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = SBActivityItem;
  v3 = [(SBActivityItem *)&v6 description];
  v4 = [(SBActivityItem *)self descriptionWithMultilinePrefix:v3];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBActivityItem *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBActivityItem *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBActivityItem *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_identifier withName:@"identifier"];
  v6 = [succinctDescriptionBuilder appendObject:self->_descriptor withName:@"descriptor"];
  v7 = [succinctDescriptionBuilder appendDouble:@"relevanceScore" withName:2 decimalPrecision:self->_relevanceScore];

  return succinctDescriptionBuilder;
}

@end