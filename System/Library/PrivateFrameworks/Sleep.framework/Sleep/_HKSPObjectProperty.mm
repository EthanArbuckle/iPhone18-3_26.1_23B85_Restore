@interface _HKSPObjectProperty
- (BOOL)isEqual:(id)equal;
- (_HKSPObjectProperty)initWithCoder:(id)coder;
- (_HKSPObjectProperty)initWithIdentifier:(id)identifier propertyName:(id)name expectedValueClass:(Class)class;
- (_HKSPObjectProperty)initWithIdentifier:(id)identifier propertyName:(id)name expectedValueClasses:(id)classes;
- (void)copyValueFromObject:(id)object toObject:(id)toObject;
- (void)decodeValueForObject:(id)object fromCoder:(id)coder;
- (void)encodeValueForObject:(id)object fromCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKSPObjectProperty

- (_HKSPObjectProperty)initWithIdentifier:(id)identifier propertyName:(id)name expectedValueClass:(Class)class
{
  v15 = *MEMORY[0x277D85DE8];
  classCopy = class;
  v7 = MEMORY[0x277CBEA60];
  nameCopy = name;
  identifierCopy = identifier;
  v10 = [v7 arrayWithObjects:&classCopy count:1];
  v11 = [(_HKSPObjectProperty *)self initWithIdentifier:identifierCopy propertyName:nameCopy expectedValueClasses:v10, classCopy, v15];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (_HKSPObjectProperty)initWithIdentifier:(id)identifier propertyName:(id)name expectedValueClasses:(id)classes
{
  classesCopy = classes;
  v14.receiver = self;
  v14.super_class = _HKSPObjectProperty;
  v9 = [(HKSPProperty *)&v14 initWithIdentifier:identifier propertyName:name];
  if (v9)
  {
    v10 = [classesCopy copy];
    expectedValueClasses = v9->_expectedValueClasses;
    v9->_expectedValueClasses = v10;

    v12 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = _HKSPObjectProperty;
  if ([(HKSPProperty *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
    expectedValueClasses = [(_HKSPObjectProperty *)self expectedValueClasses];
    expectedValueClasses2 = [v5 expectedValueClasses];

    v8 = [expectedValueClasses isEqualToArray:expectedValueClasses2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _HKSPObjectProperty;
  coderCopy = coder;
  [(HKSPProperty *)&v6 encodeWithCoder:coderCopy];
  v5 = [(NSArray *)self->_expectedValueClasses na_map:&__block_literal_global_23, v6.receiver, v6.super_class];
  [coderCopy encodeObject:v5 forKey:@"HKSPExpectedClasses"];
}

- (_HKSPObjectProperty)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = _HKSPObjectProperty;
  coderCopy = coder;
  v4 = [(HKSPProperty *)&v13 initWithCoder:coderCopy];
  v5 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"HKSPExpectedClasses"];

  v9 = [v8 na_map:&__block_literal_global_338_0];
  expectedValueClasses = v4->_expectedValueClasses;
  v4->_expectedValueClasses = v9;

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)copyValueFromObject:(id)object toObject:(id)toObject
{
  toObjectCopy = toObject;
  v8 = [object hksp_valueForProperty:self];
  v7 = [v8 copy];
  [toObjectCopy hksp_setValue:v7 forProperty:self];
}

- (void)decodeValueForObject:(id)object fromCoder:(id)coder
{
  v6 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  objectCopy = object;
  expectedValueClasses = [(_HKSPObjectProperty *)self expectedValueClasses];
  v9 = [v6 setWithArray:expectedValueClasses];
  identifier = [(HKSPProperty *)self identifier];
  v11 = [coderCopy decodeObjectOfClasses:v9 forKey:identifier];

  [objectCopy hksp_setValue:v11 forProperty:self];
}

- (void)encodeValueForObject:(id)object fromCoder:(id)coder
{
  coderCopy = coder;
  v8 = [object hksp_valueForProperty:self];
  identifier = [(HKSPProperty *)self identifier];
  [coderCopy encodeObject:v8 forKey:identifier];
}

@end