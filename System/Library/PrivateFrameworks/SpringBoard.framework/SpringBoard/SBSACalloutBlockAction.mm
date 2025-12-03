@interface SBSACalloutBlockAction
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SBSACalloutBlockAction)initWithCalloutBlock:(id)block reasons:(id)reasons;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSACalloutBlockAction

- (SBSACalloutBlockAction)initWithCalloutBlock:(id)block reasons:(id)reasons
{
  blockCopy = block;
  reasonsCopy = reasons;
  v14.receiver = self;
  v14.super_class = SBSACalloutBlockAction;
  v8 = [(SBSACalloutBlockAction *)&v14 init];
  if (v8)
  {
    v9 = [blockCopy copy];
    calloutBlock = v8->_calloutBlock;
    v8->_calloutBlock = v9;

    v11 = [reasonsCopy copy];
    reasons = v8->_reasons;
    v8->_reasons = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = MEMORY[0x223D6F7F0](self->_calloutBlock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __34__SBSACalloutBlockAction_isEqual___block_invoke;
  v19[3] = &unk_2783ACDB8;
  v7 = equalCopy;
  v20 = v7;
  v8 = [v5 appendObject:v6 counterpart:v19];
  reasons = self->_reasons;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __34__SBSACalloutBlockAction_isEqual___block_invoke_2;
  v17 = &unk_2783ACDB8;
  v18 = v7;
  v10 = v7;
  v11 = [v8 appendObject:reasons counterpart:&v14];
  v12 = [v11 isEqual];

  return v12;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = MEMORY[0x223D6F7F0](self->_calloutBlock);
  v5 = [builder appendObject:v4];
  v6 = [v5 appendObject:self->_reasons];
  v7 = [v6 hash];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = MEMORY[0x223D6F7F0](self->_calloutBlock);
  v6 = [v3 stringWithFormat:@"<%@: %p calloutBlock: %@; reasons: %@>", v4, self, v5, self->_reasons];;

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  reasons = self->_reasons;
  calloutBlock = self->_calloutBlock;

  return [v4 initWithCalloutBlock:calloutBlock reasons:reasons];
}

@end