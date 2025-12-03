@interface TPSSizes
- (BOOL)isEqual:(id)equal;
- (TPSSizes)initWithCoder:(id)coder;
- (TPSSizes)initWithDictionary:(id)dictionary;
- (double)heightToWidthRatioForViewMode:(int64_t)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (TPSSizes)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = TPSSizes;
  v5 = [(TPSSerializableObject *)&v19 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy TPSSafeDictionaryForKey:@"compact"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = dictionaryCopy;
    }

    v9 = v8;

    v10 = [[TPSSize alloc] initWithDictionary:v9];
    compact = v5->_compact;
    v5->_compact = v10;

    v12 = [dictionaryCopy TPSSafeDictionaryForKey:@"regular"];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = dictionaryCopy;
    }

    v15 = v14;

    v16 = [[TPSSize alloc] initWithDictionary:v15];
    regular = v5->_regular;
    v5->_regular = v16;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = TPSSizes;
  v4 = [(TPSSerializableObject *)&v8 copyWithZone:zone];
  compact = [(TPSSizes *)self compact];
  [v4 setCompact:compact];

  regular = [(TPSSizes *)self regular];
  [v4 setRegular:regular];

  return v4;
}

- (TPSSizes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TPSSizes;
  v5 = [(TPSSerializableObject *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"compact"];
    compact = v5->_compact;
    v5->_compact = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"regular"];
    regular = v5->_regular;
    v5->_regular = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TPSSizes;
  coderCopy = coder;
  [(TPSSerializableObject *)&v7 encodeWithCoder:coderCopy];
  v5 = [(TPSSizes *)self compact:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"compact"];

  regular = [(TPSSizes *)self regular];
  [coderCopy encodeObject:regular forKey:@"regular"];
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

- (double)heightToWidthRatioForViewMode:(int64_t)mode
{
  if (mode)
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
    height = [v3 height];
    [height doubleValue];
    v7 = v6;
    width = [v4 width];
    [width doubleValue];
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

  compact = [(TPSSizes *)self compact];
  [v5 appendFormat:@" %@ = %@, ", @"compact", compact];

  regular = [(TPSSizes *)self regular];
  [v5 appendFormat:@" %@ = %@", @"regular", regular];

  return v5;
}

@end