@interface SBSAMaintainedPreferences
+ (id)instanceWithBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (id)copyWithBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (id)jsonDescription;
- (unint64_t)hash;
@end

@implementation SBSAMaintainedPreferences

- (id)jsonDescription
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  if (self->_indicatorAppearanceStateContext)
  {
    indicatorAppearanceStateContext = self->_indicatorAppearanceStateContext;
  }

  else
  {
    indicatorAppearanceStateContext = @"nil";
  }

  [dictionary setObject:indicatorAppearanceStateContext forKey:@"indicatorAppearanceStateContext"];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  indicatorAppearanceStateContext = self->_indicatorAppearanceStateContext;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__SBSAMaintainedPreferences_isEqual___block_invoke;
  v11[3] = &unk_2783ACDB8;
  v12 = equalCopy;
  v7 = equalCopy;
  v8 = [v5 appendObject:indicatorAppearanceStateContext counterpart:v11];
  v9 = [v8 isEqual];

  return v9;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendObject:self->_indicatorAppearanceStateContext];
  v5 = [v4 hash];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(SBSAIndicatorAppearanceStateContext *)self->_indicatorAppearanceStateContext copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

+ (id)instanceWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v4 copyWithBlock:blockCopy];

  return v5;
}

- (id)copyWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(SBSAMaintainedPreferences *)self copy];
  if (blockCopy)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    blockCopy[2](blockCopy, v6);
  }

  return v5;
}

@end