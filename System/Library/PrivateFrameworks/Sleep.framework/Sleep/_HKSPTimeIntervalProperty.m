@interface _HKSPTimeIntervalProperty
- (double)timeIntervalValueForObject:(id)a3;
- (void)copyValueFromObject:(id)a3 toObject:(id)a4;
- (void)decodeValueForObject:(id)a3 fromCoder:(id)a4;
- (void)encodeValueForObject:(id)a3 fromCoder:(id)a4;
@end

@implementation _HKSPTimeIntervalProperty

- (void)copyValueFromObject:(id)a3 toObject:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  [(_HKSPTimeIntervalProperty *)self timeIntervalValueForObject:a3];
  v8 = [v6 numberWithDouble:?];
  [v7 hksp_setValue:v8 forProperty:self];
}

- (void)decodeValueForObject:(id)a3 fromCoder:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = a3;
  v12 = [(HKSPProperty *)self identifier];
  [v7 decodeDoubleForKey:v12];
  v10 = v9;

  v11 = [v6 numberWithDouble:v10];
  [v8 hksp_setValue:v11 forProperty:self];
}

- (void)encodeValueForObject:(id)a3 fromCoder:(id)a4
{
  v6 = a4;
  [(_HKSPTimeIntervalProperty *)self timeIntervalValueForObject:a3];
  v8 = v7;
  v9 = [(HKSPProperty *)self identifier];
  [v6 encodeDouble:v9 forKey:v8];
}

- (double)timeIntervalValueForObject:(id)a3
{
  v3 = [a3 hksp_valueForProperty:self];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

@end