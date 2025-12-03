@interface TPSGradientStop
- (BOOL)isEqual:(id)equal;
- (TPSGradientStop)initWithCoder:(id)coder;
- (TPSGradientStop)initWithColorString:(id)string;
- (TPSGradientStop)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSGradientStop

- (TPSGradientStop)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = TPSGradientStop;
  v5 = [(TPSSerializableObject *)&v11 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy TPSSafeNumberForKey:@"stop"];
    location = v5->_location;
    v5->_location = v6;

    v8 = [dictionaryCopy TPSSafeStringForKey:@"color"];
    colorString = v5->_colorString;
    v5->_colorString = v8;
  }

  return v5;
}

- (TPSGradientStop)initWithColorString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = TPSGradientStop;
  v6 = [(TPSGradientStop *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_colorString, string);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = TPSGradientStop;
  v4 = [(TPSSerializableObject *)&v8 copyWithZone:zone];
  location = [(TPSGradientStop *)self location];
  [v4 setLocation:location];

  colorString = [(TPSGradientStop *)self colorString];
  [v4 setColorString:colorString];

  return v4;
}

- (TPSGradientStop)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TPSGradientStop;
  v5 = [(TPSSerializableObject *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stop"];
    location = v5->_location;
    v5->_location = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    colorString = v5->_colorString;
    v5->_colorString = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TPSGradientStop;
  coderCopy = coder;
  [(TPSSerializableObject *)&v7 encodeWithCoder:coderCopy];
  v5 = [(TPSGradientStop *)self location:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"stop"];

  colorString = [(TPSGradientStop *)self colorString];
  [coderCopy encodeObject:colorString forKey:@"color"];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v10.receiver = self;
  v10.super_class = TPSGradientStop;
  v4 = [(TPSSerializableObject *)&v10 debugDescription];
  v5 = [v3 initWithString:v4];

  location = [(TPSGradientStop *)self location];
  [v5 appendFormat:@"\n  %@ = %@", @"stop", location];

  colorString = [(TPSGradientStop *)self colorString];

  if (colorString)
  {
    colorString2 = [(TPSGradientStop *)self colorString];
    [v5 appendFormat:@"\n  %@ = %@", @"color", colorString2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

@end