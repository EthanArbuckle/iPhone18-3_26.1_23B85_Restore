@interface HKSPProperty
+ (NSArray)allowedSubclassesForSecureCoding;
- (BOOL)isEqual:(id)a3;
- (HKSPProperty)initWithCoder:(id)a3;
- (HKSPProperty)initWithIdentifier:(id)a3 propertyName:(id)a4;
- (NSArray)allowedInnerClassesForSecureCoding;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (unint64_t)hash;
- (void)copyValueFromObject:(id)a3 toObject:(id)a4;
- (void)decodeValueForObject:(id)a3 fromCoder:(id)a4;
- (void)encodeValueForObject:(id)a3 fromCoder:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSPProperty

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [(HKSPProperty *)self identifier];
  v5 = [v3 appendObject:v4];

  v6 = [(HKSPProperty *)self propertyName];
  v7 = [v3 appendObject:v6];

  v8 = [v3 hash];
  return v8;
}

+ (NSArray)allowedSubclassesForSecureCoding
{
  v5[5] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (NSArray)allowedInnerClassesForSecureCoding
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HKSPChange.m" lineNumber:38 description:@"subclasses must implement"];

  return MEMORY[0x277CBEBF8];
}

- (HKSPProperty)initWithIdentifier:(id)a3 propertyName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = HKSPProperty;
  v8 = [(HKSPProperty *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    propertyName = v8->_propertyName;
    v8->_propertyName = v11;

    v13 = v8;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [MEMORY[0x277CF0C20] builderWithObject:v5 ofExpectedClass:objc_opt_class()];
      identifier = self->_identifier;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __24__HKSPProperty_isEqual___block_invoke;
      v20[3] = &unk_279C74680;
      v8 = v5;
      v21 = v8;
      v9 = [v6 appendObject:identifier counterpart:v20];
      propertyName = self->_propertyName;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __24__HKSPProperty_isEqual___block_invoke_2;
      v18 = &unk_279C74680;
      v19 = v8;
      v11 = v8;
      v12 = [v6 appendObject:propertyName counterpart:&v15];
      v13 = [v6 isEqual];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"HKSPIdentifier"];
  [v5 encodeObject:self->_propertyName forKey:@"HKSPPropertyName"];
}

- (HKSPProperty)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKSPProperty;
  v5 = [(HKSPProperty *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKSPIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKSPPropertyName"];
    propertyName = v5->_propertyName;
    v5->_propertyName = v8;

    v10 = v5;
  }

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HKSPProperty *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v4 appendString:self->_identifier withName:@"identifier"];
  v5 = [v4 appendObject:self->_propertyName withName:@"propertyName"];

  return v4;
}

- (void)copyValueFromObject:(id)a3 toObject:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"HKSPProperty+Subclasses.m" lineNumber:18 description:@"Subclass must implement"];
}

- (void)decodeValueForObject:(id)a3 fromCoder:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"HKSPProperty+Subclasses.m" lineNumber:22 description:@"Subclass must implement"];
}

- (void)encodeValueForObject:(id)a3 fromCoder:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"HKSPProperty+Subclasses.m" lineNumber:26 description:@"Subclass must implement"];
}

@end