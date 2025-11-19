@interface _HKSPObjectProperty
- (BOOL)isEqual:(id)a3;
- (_HKSPObjectProperty)initWithCoder:(id)a3;
- (_HKSPObjectProperty)initWithIdentifier:(id)a3 propertyName:(id)a4 expectedValueClass:(Class)a5;
- (_HKSPObjectProperty)initWithIdentifier:(id)a3 propertyName:(id)a4 expectedValueClasses:(id)a5;
- (void)copyValueFromObject:(id)a3 toObject:(id)a4;
- (void)decodeValueForObject:(id)a3 fromCoder:(id)a4;
- (void)encodeValueForObject:(id)a3 fromCoder:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKSPObjectProperty

- (_HKSPObjectProperty)initWithIdentifier:(id)a3 propertyName:(id)a4 expectedValueClass:(Class)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = a5;
  v7 = MEMORY[0x277CBEA60];
  v8 = a4;
  v9 = a3;
  v10 = [v7 arrayWithObjects:&v14 count:1];
  v11 = [(_HKSPObjectProperty *)self initWithIdentifier:v9 propertyName:v8 expectedValueClasses:v10, v14, v15];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (_HKSPObjectProperty)initWithIdentifier:(id)a3 propertyName:(id)a4 expectedValueClasses:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = _HKSPObjectProperty;
  v9 = [(HKSPProperty *)&v14 initWithIdentifier:a3 propertyName:a4];
  if (v9)
  {
    v10 = [v8 copy];
    expectedValueClasses = v9->_expectedValueClasses;
    v9->_expectedValueClasses = v10;

    v12 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _HKSPObjectProperty;
  if ([(HKSPProperty *)&v10 isEqual:v4])
  {
    v5 = v4;
    v6 = [(_HKSPObjectProperty *)self expectedValueClasses];
    v7 = [v5 expectedValueClasses];

    v8 = [v6 isEqualToArray:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _HKSPObjectProperty;
  v4 = a3;
  [(HKSPProperty *)&v6 encodeWithCoder:v4];
  v5 = [(NSArray *)self->_expectedValueClasses na_map:&__block_literal_global_23, v6.receiver, v6.super_class];
  [v4 encodeObject:v5 forKey:@"HKSPExpectedClasses"];
}

- (_HKSPObjectProperty)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = _HKSPObjectProperty;
  v3 = a3;
  v4 = [(HKSPProperty *)&v13 initWithCoder:v3];
  v5 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [v3 decodeObjectOfClasses:v7 forKey:@"HKSPExpectedClasses"];

  v9 = [v8 na_map:&__block_literal_global_338_0];
  expectedValueClasses = v4->_expectedValueClasses;
  v4->_expectedValueClasses = v9;

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)copyValueFromObject:(id)a3 toObject:(id)a4
{
  v6 = a4;
  v8 = [a3 hksp_valueForProperty:self];
  v7 = [v8 copy];
  [v6 hksp_setValue:v7 forProperty:self];
}

- (void)decodeValueForObject:(id)a3 fromCoder:(id)a4
{
  v6 = MEMORY[0x277CBEB98];
  v7 = a4;
  v8 = a3;
  v12 = [(_HKSPObjectProperty *)self expectedValueClasses];
  v9 = [v6 setWithArray:v12];
  v10 = [(HKSPProperty *)self identifier];
  v11 = [v7 decodeObjectOfClasses:v9 forKey:v10];

  [v8 hksp_setValue:v11 forProperty:self];
}

- (void)encodeValueForObject:(id)a3 fromCoder:(id)a4
{
  v6 = a4;
  v8 = [a3 hksp_valueForProperty:self];
  v7 = [(HKSPProperty *)self identifier];
  [v6 encodeObject:v8 forKey:v7];
}

@end