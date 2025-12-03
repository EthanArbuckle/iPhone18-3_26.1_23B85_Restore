@interface SBSAPreferencesDidChangeAction
- (BOOL)isEqual:(id)equal;
- (SBSAPreferencesDidChangeAction)initWithReasons:(id)reasons;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSAPreferencesDidChangeAction

- (SBSAPreferencesDidChangeAction)initWithReasons:(id)reasons
{
  reasonsCopy = reasons;
  v9.receiver = self;
  v9.super_class = SBSAPreferencesDidChangeAction;
  v5 = [(SBSAPreferencesDidChangeAction *)&v9 init];
  if (v5)
  {
    v6 = [reasonsCopy copy];
    reasons = v5->_reasons;
    v5->_reasons = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  reasons = self->_reasons;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__SBSAPreferencesDidChangeAction_isEqual___block_invoke;
  v11[3] = &unk_2783ACDB8;
  v12 = equalCopy;
  v7 = equalCopy;
  v8 = [v5 appendObject:reasons counterpart:v11];
  v9 = [v8 isEqual];

  return v9;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_reasons];
  v5 = [v4 hash];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  reasons = self->_reasons;

  return [v4 initWithReasons:reasons];
}

@end