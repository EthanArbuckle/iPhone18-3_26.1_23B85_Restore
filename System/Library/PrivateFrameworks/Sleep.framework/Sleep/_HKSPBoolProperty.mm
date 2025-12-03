@interface _HKSPBoolProperty
- (BOOL)BOOLValueForObject:(id)object;
- (void)copyValueFromObject:(id)object toObject:(id)toObject;
- (void)decodeValueForObject:(id)object fromCoder:(id)coder;
- (void)encodeValueForObject:(id)object fromCoder:(id)coder;
@end

@implementation _HKSPBoolProperty

- (void)copyValueFromObject:(id)object toObject:(id)toObject
{
  v6 = MEMORY[0x277CCABB0];
  toObjectCopy = toObject;
  v8 = [v6 numberWithBool:{-[_HKSPBoolProperty BOOLValueForObject:](self, "BOOLValueForObject:", object)}];
  [toObjectCopy hksp_setValue:v8 forProperty:self];
}

- (void)decodeValueForObject:(id)object fromCoder:(id)coder
{
  v6 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  objectCopy = object;
  identifier = [(HKSPProperty *)self identifier];
  v9 = [coderCopy decodeBoolForKey:identifier];

  v10 = [v6 numberWithBool:v9];
  [objectCopy hksp_setValue:v10 forProperty:self];
}

- (void)encodeValueForObject:(id)object fromCoder:(id)coder
{
  coderCopy = coder;
  v7 = [(_HKSPBoolProperty *)self BOOLValueForObject:object];
  identifier = [(HKSPProperty *)self identifier];
  [coderCopy encodeBool:v7 forKey:identifier];
}

- (BOOL)BOOLValueForObject:(id)object
{
  v3 = [object hksp_valueForProperty:self];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

@end