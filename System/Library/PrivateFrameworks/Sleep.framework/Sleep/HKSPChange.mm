@interface HKSPChange
- (BOOL)isEqual:(id)a3;
- (HKSPChange)initWithCoder:(id)a3;
- (HKSPChange)initWithProperty:(id)a3 changedValue:(id)a4 originalValue:(id)a5;
- (id)deepCopy;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSPChange

- (HKSPChange)initWithProperty:(id)a3 changedValue:(id)a4 originalValue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HKSPChange;
  v11 = [(HKSPChange *)&v16 init];
  if (v11)
  {
    v12 = [v8 copy];
    property = v11->_property;
    v11->_property = v12;

    objc_storeStrong(&v11->_changedValue, a4);
    objc_storeStrong(&v11->_originalValue, a5);
    v14 = v11;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [MEMORY[0x277CF0C20] builderWithObject:v5 ofExpectedClass:objc_opt_class()];
      v7 = [(HKSPChange *)self property];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __22__HKSPChange_isEqual___block_invoke;
      v22[3] = &unk_279C73D48;
      v8 = v5;
      v23 = v8;
      v9 = [v6 appendObject:v7 counterpart:v22];

      v10 = [(HKSPChange *)self originalValue];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __22__HKSPChange_isEqual___block_invoke_2;
      v20[3] = &unk_279C73D70;
      v11 = v8;
      v21 = v11;
      v12 = [v6 appendObject:v10 counterpart:v20];

      v13 = [(HKSPChange *)self changedValue];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __22__HKSPChange_isEqual___block_invoke_3;
      v18[3] = &unk_279C73D70;
      v19 = v11;
      v14 = v11;
      v15 = [v6 appendObject:v13 counterpart:v18];

      v16 = [v6 isEqual];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)deepCopy
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(HKSPProperty *)self->_property copy];
  v5 = [self->_changedValue copyWithZone:0];
  v6 = [self->_originalValue copyWithZone:0];
  v7 = [v3 initWithProperty:v4 changedValue:v5 originalValue:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  property = self->_property;
  v5 = a3;
  [v5 encodeObject:property forKey:@"HKSPProperty"];
  [v5 encodeObject:self->_changedValue forKey:@"HKSPChangedValue"];
  [v5 encodeObject:self->_originalValue forKey:@"HKSPOriginalValue"];
}

- (HKSPChange)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HKSPChange;
  v5 = [(HKSPChange *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = +[HKSPProperty allowedSubclassesForSecureCoding];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"HKSPProperty"];
    property = v5->_property;
    v5->_property = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = [(HKSPProperty *)v5->_property allowedInnerClassesForSecureCoding];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"HKSPChangedValue"];
    changedValue = v5->_changedValue;
    v5->_changedValue = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = [(HKSPProperty *)v5->_property allowedInnerClassesForSecureCoding];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"HKSPOriginalValue"];
    originalValue = v5->_originalValue;
    v5->_originalValue = v19;

    v21 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [(HKSPChange *)self property];
  v5 = [v3 appendObject:v4];

  v6 = [(HKSPChange *)self changedValue];
  v7 = [v3 appendObject:v6];

  v8 = [(HKSPChange *)self originalValue];
  v9 = [v3 appendObject:v8];

  v10 = [v3 hash];
  return v10;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HKSPChange *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [(HKSPProperty *)self->_property identifier];
  [v4 appendString:v5 withName:@"identifier"];

  v6 = [v4 appendObject:self->_changedValue withName:@"changedValue"];
  v7 = [v4 appendObject:self->_originalValue withName:@"originalValue"];

  return v4;
}

@end