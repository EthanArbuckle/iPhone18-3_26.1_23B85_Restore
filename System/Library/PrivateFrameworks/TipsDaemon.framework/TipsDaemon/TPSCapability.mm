@interface TPSCapability
- (TPSCapability)initWithDictionary:(id)dictionary;
- (id)debugDescription;
@end

@implementation TPSCapability

- (TPSCapability)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = TPSCapability;
  v5 = [(TPSCapability *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy TPSSafeStringForKey:@"key"];
    key = v5->_key;
    v5->_key = v6;

    v8 = [dictionaryCopy TPSSafeObjectForKey:@"value"];
    value = v5->_value;
    v5->_value = v8;

    v10 = [dictionaryCopy TPSSafeStringForKey:@"joinType"];
    if ([v10 isEqualToString:@"AND"])
    {
      v11 = 0;
    }

    else
    {
      if (![v10 isEqualToString:@"OR"])
      {
LABEL_7:

        goto LABEL_8;
      }

      v11 = 1;
    }

    v5->_joinType = v11;
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v9.receiver = self;
  v9.super_class = TPSCapability;
  v4 = [(TPSSerializableObject *)&v9 debugDescription];
  v5 = [v3 initWithString:v4];

  v6 = [(TPSCapability *)self key];
  [v5 appendFormat:@"; %@ = %@", @"key", v6];

  value = [(TPSCapability *)self value];
  [v5 appendFormat:@"; %@ = %@", @"value", value];

  [v5 appendFormat:@"; %@ = %ld", @"joinType", -[TPSCapability joinType](self, "joinType")];

  return v5;
}

@end