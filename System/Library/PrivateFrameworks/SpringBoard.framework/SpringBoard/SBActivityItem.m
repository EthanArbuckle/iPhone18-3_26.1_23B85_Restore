@interface SBActivityItem
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SBActivityItem)initWithContentUpdate:(id)a3;
- (double)relevanceScore;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)setContentUpdate:(id)a3;
@end

@implementation SBActivityItem

- (SBActivityItem)initWithContentUpdate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBActivityItem;
  v6 = [(SBActivityItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentUpdate, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  identifier = self->_identifier;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __26__SBActivityItem_isEqual___block_invoke;
  v18[3] = &unk_2783A91C8;
  v7 = v4;
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

- (void)setContentUpdate:(id)a3
{
  v5 = a3;
  contentUpdate = self->_contentUpdate;
  p_contentUpdate = &self->_contentUpdate;
  if (contentUpdate != v5)
  {
    v8 = v5;
    objc_storeStrong(p_contentUpdate, a3);
    v5 = v8;
  }
}

- (double)relevanceScore
{
  v2 = [(ACActivityContentUpdate *)self->_contentUpdate content];
  [v2 relevanceScore];
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
  v2 = [(SBActivityItem *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBActivityItem *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBActivityItem *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_identifier withName:@"identifier"];
  v6 = [v4 appendObject:self->_descriptor withName:@"descriptor"];
  v7 = [v4 appendDouble:@"relevanceScore" withName:2 decimalPrecision:self->_relevanceScore];

  return v4;
}

@end