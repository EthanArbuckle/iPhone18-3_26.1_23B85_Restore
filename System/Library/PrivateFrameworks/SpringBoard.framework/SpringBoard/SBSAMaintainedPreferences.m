@interface SBSAMaintainedPreferences
+ (id)instanceWithBlock:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithBlock:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)jsonDescription;
- (unint64_t)hash;
@end

@implementation SBSAMaintainedPreferences

- (id)jsonDescription
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  if (self->_indicatorAppearanceStateContext)
  {
    indicatorAppearanceStateContext = self->_indicatorAppearanceStateContext;
  }

  else
  {
    indicatorAppearanceStateContext = @"nil";
  }

  [v3 setObject:indicatorAppearanceStateContext forKey:@"indicatorAppearanceStateContext"];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  indicatorAppearanceStateContext = self->_indicatorAppearanceStateContext;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__SBSAMaintainedPreferences_isEqual___block_invoke;
  v11[3] = &unk_2783ACDB8;
  v12 = v4;
  v7 = v4;
  v8 = [v5 appendObject:indicatorAppearanceStateContext counterpart:v11];
  v9 = [v8 isEqual];

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_indicatorAppearanceStateContext];
  v5 = [v4 hash];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(SBSAIndicatorAppearanceStateContext *)self->_indicatorAppearanceStateContext copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

+ (id)instanceWithBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [v4 copyWithBlock:v3];

  return v5;
}

- (id)copyWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(SBSAMaintainedPreferences *)self copy];
  if (v4)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() "mutatorClass"))];
    v4[2](v4, v6);
  }

  return v5;
}

@end