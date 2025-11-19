@interface TPSSize
- (BOOL)isEqual:(id)a3;
- (TPSSize)initWithCoder:(id)a3;
- (TPSSize)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (TPSSize)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TPSSize;
  v5 = [(TPSSerializableObject *)&v12 initWithDictionary:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v4 TPSSafeNumberForKey:@"width"];
  width = v5->_width;
  v5->_width = v6;

  v8 = [v4 TPSSafeNumberForKey:@"height"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = TPSSize;
  v4 = [(TPSSerializableObject *)&v8 copyWithZone:a3];
  v5 = [(TPSSize *)self width];
  [v4 setWidth:v5];

  v6 = [(TPSSize *)self height];
  [v4 setHeight:v6];

  return v4;
}

- (TPSSize)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TPSSize;
  v5 = [(TPSSerializableObject *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"width"];
    width = v5->_width;
    v5->_width = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"height"];
    height = v5->_height;
    v5->_height = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = TPSSize;
  v4 = a3;
  [(TPSSerializableObject *)&v7 encodeWithCoder:v4];
  v5 = [(TPSSize *)self width:v7.receiver];
  [v4 encodeObject:v5 forKey:@"width"];

  v6 = [(TPSSize *)self height];
  [v4 encodeObject:v6 forKey:@"height"];
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

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = TPSSize;
  v4 = [(TPSSize *)&v9 description];
  v5 = [v3 initWithString:v4];

  v6 = [(TPSSize *)self width];
  [v5 appendFormat:@" %@ = %@, ", @"width", v6];

  v7 = [(TPSSize *)self height];
  [v5 appendFormat:@" %@ = %@", @"height", v7];

  return v5;
}

@end