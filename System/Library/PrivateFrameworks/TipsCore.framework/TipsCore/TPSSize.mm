@interface TPSSize
- (BOOL)isEqual:(id)equal;
- (TPSSize)initWithCoder:(id)coder;
- (TPSSize)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSSize

id __22__TPSSize_na_identity__block_invoke()
{
  if (TPSSizeHeightKey_block_invoke_na_once_token_0 != -1)
  {
    __22__TPSSize_na_identity__block_invoke_cold_1();
  }

  v1 = TPSSizeHeightKey_block_invoke_na_once_object_0;

  return v1;
}

uint64_t __22__TPSSize_na_identity__block_invoke_2()
{
  v0 = __22__TPSSize_na_identity__block_invoke_3();
  v1 = TPSSizeHeightKey_block_invoke_na_once_object_0;
  TPSSizeHeightKey_block_invoke_na_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __22__TPSSize_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_13_1];
  v2 = [v0 appendCharacteristic:&__block_literal_global_15_0];
  v3 = [v0 build];

  return v3;
}

- (TPSSize)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = TPSSize;
  v5 = [(TPSSerializableObject *)&v12 initWithDictionary:dictionaryCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [dictionaryCopy TPSSafeNumberForKey:@"width"];
  width = v5->_width;
  v5->_width = v6;

  v8 = [dictionaryCopy TPSSafeNumberForKey:@"height"];
  height = v5->_height;
  v5->_height = v8;

  if ([(NSNumber *)v5->_width intValue]< 1 || [(NSNumber *)v5->_height intValue]< 1)
  {
    v10 = 0;
  }

  else
  {
LABEL_4:
    v10 = v5;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = TPSSize;
  v4 = [(TPSSerializableObject *)&v8 copyWithZone:zone];
  width = [(TPSSize *)self width];
  [v4 setWidth:width];

  height = [(TPSSize *)self height];
  [v4 setHeight:height];

  return v4;
}

- (TPSSize)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TPSSize;
  v5 = [(TPSSerializableObject *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"width"];
    width = v5->_width;
    v5->_width = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"height"];
    height = v5->_height;
    v5->_height = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TPSSize;
  coderCopy = coder;
  [(TPSSerializableObject *)&v7 encodeWithCoder:coderCopy];
  v5 = [(TPSSize *)self width:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"width"];

  height = [(TPSSize *)self height];
  [coderCopy encodeObject:height forKey:@"height"];
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

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = TPSSize;
  v4 = [(TPSSize *)&v9 description];
  v5 = [v3 initWithString:v4];

  width = [(TPSSize *)self width];
  [v5 appendFormat:@" %@ = %@, ", @"width", width];

  height = [(TPSSize *)self height];
  [v5 appendFormat:@" %@ = %@", @"height", height];

  return v5;
}

@end