@interface TPSGradient
- (BOOL)isEqual:(id)equal;
- (TPSGradient)initWithCoder:(id)coder;
- (TPSGradient)initWithColorStrings:(id)strings;
- (TPSGradient)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSGradient

- (TPSGradient)initWithDictionary:(id)dictionary
{
  v32 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = TPSGradient;
  v5 = [(TPSSerializableObject *)&v30 initWithDictionary:dictionaryCopy];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = [dictionaryCopy TPSSafeDictionaryForKey:@"attrs"];
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

  v10 = [v9 TPSSafeArrayForKey:@"stops"];
  v11 = [v10 count];
  if (v11)
  {
    v25 = v9;
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [[TPSGradientStop alloc] initWithDictionary:*(*(&v26 + 1) + 8 * i)];
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v15);
    }

    v19 = [v12 copy];
    stops = v5->_stops;
    v5->_stops = v19;

    v9 = v25;
  }

  v21 = [(NSArray *)v5->_stops count];

  if (!v21)
  {
    v22 = 0;
  }

  else
  {
LABEL_15:
    v22 = v5;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (TPSGradient)initWithColorStrings:(id)strings
{
  v27 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v25.receiver = self;
  v25.super_class = TPSGradient;
  v5 = [(TPSGradient *)&v25 init];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = [stringsCopy count];
  if (v6 > 0)
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:v6];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = stringsCopy;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * v12);
          v14 = [TPSGradientStop alloc];
          v15 = [(TPSGradientStop *)v14 initWithColorString:v13, v21];
          [v7 addObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v10);
    }

    v16 = [v7 copy];
    stops = v5->_stops;
    v5->_stops = v16;
  }

  if (![(NSArray *)v5->_stops count])
  {
    v18 = 0;
  }

  else
  {
LABEL_12:
    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = TPSGradient;
  v4 = [(TPSSerializableObject *)&v7 copyWithZone:zone];
  stops = [(TPSGradient *)self stops];
  [v4 setStops:stops];

  return v4;
}

- (TPSGradient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = TPSGradient;
  v5 = [(TPSSerializableObject *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"stops"];
    stops = v5->_stops;
    v5->_stops = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TPSGradient;
  coderCopy = coder;
  [(TPSSerializableObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(TPSGradient *)self stops:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"stops"];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v9.receiver = self;
  v9.super_class = TPSGradient;
  v4 = [(TPSSerializableObject *)&v9 debugDescription];
  v5 = [v3 initWithString:v4];

  stops = [(TPSGradient *)self stops];
  v7 = [stops debugDescription];
  [v5 appendFormat:@"\n  %@ = %@", @"stops", v7];

  return v5;
}

id __26__TPSGradient_na_identity__block_invoke()
{
  if (TPSGradientStopsKey_block_invoke_na_once_token_0 != -1)
  {
    __26__TPSGradient_na_identity__block_invoke_cold_1();
  }

  v1 = TPSGradientStopsKey_block_invoke_na_once_object_0;

  return v1;
}

uint64_t __26__TPSGradient_na_identity__block_invoke_2()
{
  v0 = __26__TPSGradient_na_identity__block_invoke_3();
  v1 = TPSGradientStopsKey_block_invoke_na_once_object_0;
  TPSGradientStopsKey_block_invoke_na_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __26__TPSGradient_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_31];
  v2 = [v0 build];

  return v2;
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