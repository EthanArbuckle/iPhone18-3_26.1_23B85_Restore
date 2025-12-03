@interface _HKSPTimeIntervalProperty
- (double)timeIntervalValueForObject:(id)object;
- (void)copyValueFromObject:(id)object toObject:(id)toObject;
- (void)decodeValueForObject:(id)object fromCoder:(id)coder;
- (void)encodeValueForObject:(id)object fromCoder:(id)coder;
@end

@implementation _HKSPTimeIntervalProperty

- (void)copyValueFromObject:(id)object toObject:(id)toObject
{
  v6 = MEMORY[0x277CCABB0];
  toObjectCopy = toObject;
  [(_HKSPTimeIntervalProperty *)self timeIntervalValueForObject:object];
  v8 = [v6 numberWithDouble:?];
  [toObjectCopy hksp_setValue:v8 forProperty:self];
}

- (void)decodeValueForObject:(id)object fromCoder:(id)coder
{
  v6 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  objectCopy = object;
  identifier = [(HKSPProperty *)self identifier];
  [coderCopy decodeDoubleForKey:identifier];
  v10 = v9;

  v11 = [v6 numberWithDouble:v10];
  [objectCopy hksp_setValue:v11 forProperty:self];
}

- (void)encodeValueForObject:(id)object fromCoder:(id)coder
{
  coderCopy = coder;
  [(_HKSPTimeIntervalProperty *)self timeIntervalValueForObject:object];
  v8 = v7;
  identifier = [(HKSPProperty *)self identifier];
  [coderCopy encodeDouble:identifier forKey:v8];
}

- (double)timeIntervalValueForObject:(id)object
{
  v3 = [object hksp_valueForProperty:self];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

@end