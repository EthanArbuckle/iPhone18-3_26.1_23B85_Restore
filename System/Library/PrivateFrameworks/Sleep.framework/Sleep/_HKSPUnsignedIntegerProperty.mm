@interface _HKSPUnsignedIntegerProperty
- (unint64_t)unsignedIntegerValueForObject:(id)object;
- (void)copyValueFromObject:(id)object toObject:(id)toObject;
- (void)decodeValueForObject:(id)object fromCoder:(id)coder;
- (void)encodeValueForObject:(id)object fromCoder:(id)coder;
@end

@implementation _HKSPUnsignedIntegerProperty

- (void)copyValueFromObject:(id)object toObject:(id)toObject
{
  v6 = MEMORY[0x277CCABB0];
  toObjectCopy = toObject;
  v8 = [v6 numberWithUnsignedInteger:{-[_HKSPUnsignedIntegerProperty unsignedIntegerValueForObject:](self, "unsignedIntegerValueForObject:", object)}];
  [toObjectCopy hksp_setValue:v8 forProperty:self];
}

- (void)decodeValueForObject:(id)object fromCoder:(id)coder
{
  v6 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  objectCopy = object;
  identifier = [(HKSPProperty *)self identifier];
  v9 = [coderCopy decodeIntegerForKey:identifier];

  v10 = [v6 numberWithInteger:v9];
  [objectCopy hksp_setValue:v10 forProperty:self];
}

- (void)encodeValueForObject:(id)object fromCoder:(id)coder
{
  coderCopy = coder;
  v7 = [(_HKSPUnsignedIntegerProperty *)self unsignedIntegerValueForObject:object];
  identifier = [(HKSPProperty *)self identifier];
  [coderCopy encodeInteger:v7 forKey:identifier];
}

- (unint64_t)unsignedIntegerValueForObject:(id)object
{
  v3 = [object hksp_valueForProperty:self];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end