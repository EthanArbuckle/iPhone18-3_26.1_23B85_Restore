@interface SBSAImpactFeedbackAction
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SBSAImpactFeedbackAction)initWithImpactFeedbackStyle:(int64_t)style prepareOnly:(BOOL)only reasons:(id)reasons;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSAImpactFeedbackAction

- (SBSAImpactFeedbackAction)initWithImpactFeedbackStyle:(int64_t)style prepareOnly:(BOOL)only reasons:(id)reasons
{
  reasonsCopy = reasons;
  v14.receiver = self;
  v14.super_class = SBSAImpactFeedbackAction;
  v9 = [(SBSAImpactFeedbackAction *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_impactFeedbackStyle = style;
    v9->_prepareOnly = only;
    v11 = [reasonsCopy copy];
    reasons = v10->_reasons;
    v10->_reasons = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  impactFeedbackStyle = self->_impactFeedbackStyle;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __36__SBSAImpactFeedbackAction_isEqual___block_invoke;
  v21[3] = &unk_2783ACDE0;
  v7 = equalCopy;
  v22 = v7;
  v8 = [v5 appendInteger:impactFeedbackStyle counterpart:v21];
  prepareOnly = self->_prepareOnly;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __36__SBSAImpactFeedbackAction_isEqual___block_invoke_2;
  v19[3] = &unk_2783ACE58;
  v10 = v7;
  v20 = v10;
  v11 = [v8 appendBool:prepareOnly counterpart:v19];
  reasons = self->_reasons;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __36__SBSAImpactFeedbackAction_isEqual___block_invoke_3;
  v17[3] = &unk_2783ACDB8;
  v18 = v10;
  v13 = v10;
  v14 = [v11 appendObject:reasons counterpart:v17];
  v15 = [v14 isEqual];

  return v15;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:self->_impactFeedbackStyle];
  v5 = [v4 appendBool:self->_prepareOnly];
  v6 = [v5 appendObject:self->_reasons];
  v7 = [v6 hash];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  impactFeedbackStyle = self->_impactFeedbackStyle;
  v6 = NSStringFromBOOL();
  v7 = [v3 stringWithFormat:@"<%@: %p impactFeedbackStyle: %ld; prepareOnly: %@; reasons: %@>", v4, self, impactFeedbackStyle, v6, self->_reasons];;

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  prepareOnly = self->_prepareOnly;
  reasons = self->_reasons;
  impactFeedbackStyle = self->_impactFeedbackStyle;

  return [v4 initWithImpactFeedbackStyle:impactFeedbackStyle prepareOnly:prepareOnly reasons:reasons];
}

@end