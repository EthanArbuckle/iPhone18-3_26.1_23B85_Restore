@interface TPSGradientStop
- (BOOL)isEqual:(id)a3;
- (TPSGradientStop)initWithCoder:(id)a3;
- (TPSGradientStop)initWithColorString:(id)a3;
- (TPSGradientStop)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSGradientStop

- (TPSGradientStop)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TPSGradientStop;
  v5 = [(TPSSerializableObject *)&v11 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 TPSSafeNumberForKey:@"stop"];
    location = v5->_location;
    v5->_location = v6;

    v8 = [v4 TPSSafeStringForKey:@"color"];
    colorString = v5->_colorString;
    v5->_colorString = v8;
  }

  return v5;
}

- (TPSGradientStop)initWithColorString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TPSGradientStop;
  v6 = [(TPSGradientStop *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_colorString, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = TPSGradientStop;
  v4 = [(TPSSerializableObject *)&v8 copyWithZone:a3];
  v5 = [(TPSGradientStop *)self location];
  [v4 setLocation:v5];

  v6 = [(TPSGradientStop *)self colorString];
  [v4 setColorString:v6];

  return v4;
}

- (TPSGradientStop)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TPSGradientStop;
  v5 = [(TPSSerializableObject *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stop"];
    location = v5->_location;
    v5->_location = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    colorString = v5->_colorString;
    v5->_colorString = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = TPSGradientStop;
  v4 = a3;
  [(TPSSerializableObject *)&v7 encodeWithCoder:v4];
  v5 = [(TPSGradientStop *)self location:v7.receiver];
  [v4 encodeObject:v5 forKey:@"stop"];

  v6 = [(TPSGradientStop *)self colorString];
  [v4 encodeObject:v6 forKey:@"color"];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v10.receiver = self;
  v10.super_class = TPSGradientStop;
  v4 = [(TPSSerializableObject *)&v10 debugDescription];
  v5 = [v3 initWithString:v4];

  v6 = [(TPSGradientStop *)self location];
  [v5 appendFormat:@"\n  %@ = %@", @"stop", v6];

  v7 = [(TPSGradientStop *)self colorString];

  if (v7)
  {
    v8 = [(TPSGradientStop *)self colorString];
    [v5 appendFormat:@"\n  %@ = %@", @"color", v8];
  }

  return v5;
}

id __30__TPSGradientStop_na_identity__block_invoke()
{
  if (TPSGradientStopColorStringKey_block_invoke_na_once_token_0 != -1)
  {
    __30__TPSGradientStop_na_identity__block_invoke_cold_1();
  }

  v1 = TPSGradientStopColorStringKey_block_invoke_na_once_object_0;

  return v1;
}

uint64_t __30__TPSGradientStop_na_identity__block_invoke_2()
{
  v0 = __30__TPSGradientStop_na_identity__block_invoke_3();
  v1 = TPSGradientStopColorStringKey_block_invoke_na_once_object_0;
  TPSGradientStopColorStringKey_block_invoke_na_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __30__TPSGradientStop_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_29];
  v2 = [v0 appendCharacteristic:&__block_literal_global_32];
  v3 = [v0 build];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

@end