@interface TPSSizes
- (BOOL)isEqual:(id)a3;
- (TPSSizes)initWithCoder:(id)a3;
- (TPSSizes)initWithDictionary:(id)a3;
- (double)heightToWidthRatioForViewMode:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSSizes

id __23__TPSSizes_na_identity__block_invoke()
{
  if (TPSSizesRegularKey_block_invoke_na_once_token_0 != -1)
  {
    __23__TPSSizes_na_identity__block_invoke_cold_1();
  }

  v1 = TPSSizesRegularKey_block_invoke_na_once_object_0;

  return v1;
}

uint64_t __23__TPSSizes_na_identity__block_invoke_2()
{
  v0 = __23__TPSSizes_na_identity__block_invoke_3();
  v1 = TPSSizesRegularKey_block_invoke_na_once_object_0;
  TPSSizesRegularKey_block_invoke_na_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __23__TPSSizes_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_13_0];
  v2 = [v0 appendCharacteristic:&__block_literal_global_15];
  v3 = [v0 build];

  return v3;
}

- (TPSSizes)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TPSSizes;
  v5 = [(TPSSerializableObject *)&v19 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 TPSSafeDictionaryForKey:@"compact"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;

    v10 = [[TPSSize alloc] initWithDictionary:v9];
    compact = v5->_compact;
    v5->_compact = v10;

    v12 = [v4 TPSSafeDictionaryForKey:@"regular"];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v4;
    }

    v15 = v14;

    v16 = [[TPSSize alloc] initWithDictionary:v15];
    regular = v5->_regular;
    v5->_regular = v16;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = TPSSizes;
  v4 = [(TPSSerializableObject *)&v8 copyWithZone:a3];
  v5 = [(TPSSizes *)self compact];
  [v4 setCompact:v5];

  v6 = [(TPSSizes *)self regular];
  [v4 setRegular:v6];

  return v4;
}

- (TPSSizes)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TPSSizes;
  v5 = [(TPSSerializableObject *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"compact"];
    compact = v5->_compact;
    v5->_compact = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"regular"];
    regular = v5->_regular;
    v5->_regular = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = TPSSizes;
  v4 = a3;
  [(TPSSerializableObject *)&v7 encodeWithCoder:v4];
  v5 = [(TPSSizes *)self compact:v7.receiver];
  [v4 encodeObject:v5 forKey:@"compact"];

  v6 = [(TPSSizes *)self regular];
  [v4 encodeObject:v6 forKey:@"regular"];
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

- (double)heightToWidthRatioForViewMode:(int64_t)a3
{
  if (a3)
  {
    [(TPSSizes *)self regular];
  }

  else
  {
    [(TPSSizes *)self compact];
  }
  v3 = ;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 height];
    [v5 doubleValue];
    v7 = v6;
    v8 = [v4 width];
    [v8 doubleValue];
    v10 = v7 / v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = TPSSizes;
  v4 = [(TPSSizes *)&v9 description];
  v5 = [v3 initWithString:v4];

  v6 = [(TPSSizes *)self compact];
  [v5 appendFormat:@" %@ = %@, ", @"compact", v6];

  v7 = [(TPSSizes *)self regular];
  [v5 appendFormat:@" %@ = %@", @"regular", v7];

  return v5;
}

@end