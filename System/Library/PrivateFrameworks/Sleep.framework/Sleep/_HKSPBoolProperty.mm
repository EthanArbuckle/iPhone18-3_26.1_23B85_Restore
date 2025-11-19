@interface _HKSPBoolProperty
- (BOOL)BOOLValueForObject:(id)a3;
- (void)copyValueFromObject:(id)a3 toObject:(id)a4;
- (void)decodeValueForObject:(id)a3 fromCoder:(id)a4;
- (void)encodeValueForObject:(id)a3 fromCoder:(id)a4;
@end

@implementation _HKSPBoolProperty

- (void)copyValueFromObject:(id)a3 toObject:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithBool:{-[_HKSPBoolProperty BOOLValueForObject:](self, "BOOLValueForObject:", a3)}];
  [v7 hksp_setValue:v8 forProperty:self];
}

- (void)decodeValueForObject:(id)a3 fromCoder:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = a3;
  v11 = [(HKSPProperty *)self identifier];
  v9 = [v7 decodeBoolForKey:v11];

  v10 = [v6 numberWithBool:v9];
  [v8 hksp_setValue:v10 forProperty:self];
}

- (void)encodeValueForObject:(id)a3 fromCoder:(id)a4
{
  v6 = a4;
  v7 = [(_HKSPBoolProperty *)self BOOLValueForObject:a3];
  v8 = [(HKSPProperty *)self identifier];
  [v6 encodeBool:v7 forKey:v8];
}

- (BOOL)BOOLValueForObject:(id)a3
{
  v3 = [a3 hksp_valueForProperty:self];
  v4 = [v3 BOOLValue];

  return v4;
}

@end