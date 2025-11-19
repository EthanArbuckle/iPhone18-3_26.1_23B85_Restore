@interface SBSAPreferencesDidChangeAction
- (BOOL)isEqual:(id)a3;
- (SBSAPreferencesDidChangeAction)initWithReasons:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation SBSAPreferencesDidChangeAction

- (SBSAPreferencesDidChangeAction)initWithReasons:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSAPreferencesDidChangeAction;
  v5 = [(SBSAPreferencesDidChangeAction *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    reasons = v5->_reasons;
    v5->_reasons = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  reasons = self->_reasons;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__SBSAPreferencesDidChangeAction_isEqual___block_invoke;
  v11[3] = &unk_2783ACDB8;
  v12 = v4;
  v7 = v4;
  v8 = [v5 appendObject:reasons counterpart:v11];
  v9 = [v8 isEqual];

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_reasons];
  v5 = [v4 hash];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  reasons = self->_reasons;

  return [v4 initWithReasons:reasons];
}

@end