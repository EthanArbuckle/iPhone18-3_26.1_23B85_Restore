@interface HKSPChange
- (BOOL)isEqual:(id)equal;
- (HKSPChange)initWithCoder:(id)coder;
- (HKSPChange)initWithProperty:(id)property changedValue:(id)value originalValue:(id)originalValue;
- (id)deepCopy;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSPChange

- (HKSPChange)initWithProperty:(id)property changedValue:(id)value originalValue:(id)originalValue
{
  propertyCopy = property;
  valueCopy = value;
  originalValueCopy = originalValue;
  v16.receiver = self;
  v16.super_class = HKSPChange;
  v11 = [(HKSPChange *)&v16 init];
  if (v11)
  {
    v12 = [propertyCopy copy];
    property = v11->_property;
    v11->_property = v12;

    objc_storeStrong(&v11->_changedValue, value);
    objc_storeStrong(&v11->_originalValue, originalValue);
    v14 = v11;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [MEMORY[0x277CF0C20] builderWithObject:v5 ofExpectedClass:objc_opt_class()];
      property = [(HKSPChange *)self property];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __22__HKSPChange_isEqual___block_invoke;
      v22[3] = &unk_279C73D48;
      v8 = v5;
      v23 = v8;
      v9 = [v6 appendObject:property counterpart:v22];

      originalValue = [(HKSPChange *)self originalValue];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __22__HKSPChange_isEqual___block_invoke_2;
      v20[3] = &unk_279C73D70;
      v11 = v8;
      v21 = v11;
      v12 = [v6 appendObject:originalValue counterpart:v20];

      changedValue = [(HKSPChange *)self changedValue];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __22__HKSPChange_isEqual___block_invoke_3;
      v18[3] = &unk_279C73D70;
      v19 = v11;
      v14 = v11;
      v15 = [v6 appendObject:changedValue counterpart:v18];

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

- (void)encodeWithCoder:(id)coder
{
  property = self->_property;
  coderCopy = coder;
  [coderCopy encodeObject:property forKey:@"HKSPProperty"];
  [coderCopy encodeObject:self->_changedValue forKey:@"HKSPChangedValue"];
  [coderCopy encodeObject:self->_originalValue forKey:@"HKSPOriginalValue"];
}

- (HKSPChange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = HKSPChange;
  v5 = [(HKSPChange *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = +[HKSPProperty allowedSubclassesForSecureCoding];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"HKSPProperty"];
    property = v5->_property;
    v5->_property = v9;

    v11 = MEMORY[0x277CBEB98];
    allowedInnerClassesForSecureCoding = [(HKSPProperty *)v5->_property allowedInnerClassesForSecureCoding];
    v13 = [v11 setWithArray:allowedInnerClassesForSecureCoding];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"HKSPChangedValue"];
    changedValue = v5->_changedValue;
    v5->_changedValue = v14;

    v16 = MEMORY[0x277CBEB98];
    allowedInnerClassesForSecureCoding2 = [(HKSPProperty *)v5->_property allowedInnerClassesForSecureCoding];
    v18 = [v16 setWithArray:allowedInnerClassesForSecureCoding2];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"HKSPOriginalValue"];
    originalValue = v5->_originalValue;
    v5->_originalValue = v19;

    v21 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  property = [(HKSPChange *)self property];
  v5 = [builder appendObject:property];

  changedValue = [(HKSPChange *)self changedValue];
  v7 = [builder appendObject:changedValue];

  originalValue = [(HKSPChange *)self originalValue];
  v9 = [builder appendObject:originalValue];

  v10 = [builder hash];
  return v10;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HKSPChange *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  identifier = [(HKSPProperty *)self->_property identifier];
  [v4 appendString:identifier withName:@"identifier"];

  v6 = [v4 appendObject:self->_changedValue withName:@"changedValue"];
  v7 = [v4 appendObject:self->_originalValue withName:@"originalValue"];

  return v4;
}

@end