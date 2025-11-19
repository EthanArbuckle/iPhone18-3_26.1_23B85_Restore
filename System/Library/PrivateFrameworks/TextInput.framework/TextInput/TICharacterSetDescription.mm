@interface TICharacterSetDescription
- (BOOL)isEqual:(id)a3;
- (NSCharacterSet)characterSet;
- (TICharacterSetDescription)initWithBase:(int64_t)a3 additionalCharacters:(id)a4 removedCharacters:(id)a5 inverted:(BOOL)a6;
- (TICharacterSetDescription)initWithCoder:(id)a3;
- (id)awakeAfterUsingCoder:(id)a3;
- (id)description;
- (id)invertedSetDescription;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)newCharacterSetFromDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TICharacterSetDescription

- (unint64_t)hash
{
  v3 = 257 * [(TICharacterSetDescription *)self baseIdentifier];
  v4 = 257 * (v3 + [(TICharacterSetDescription *)self inverted]);
  v5 = [(TICharacterSetDescription *)self charactersAddedToBase];
  v6 = v4 + [v5 hash];

  v7 = [(TICharacterSetDescription *)self charactersRemovedFromBase];
  v8 = [v7 hash];

  return v8 + 257 * v6;
}

- (NSCharacterSet)characterSet
{
  characterSet = self->_characterSet;
  if (!characterSet)
  {
    v4 = [(TICharacterSetDescription *)self newCharacterSetFromDescription];
    v5 = self->_characterSet;
    self->_characterSet = v4;

    characterSet = self->_characterSet;
  }

  return characterSet;
}

- (id)newCharacterSetFromDescription
{
  if ([(TICharacterSetDescription *)self baseIdentifier])
  {
    v3 = CFCharacterSetGetPredefined([(TICharacterSetDescription *)self baseIdentifier]);
  }

  else
  {
    v3 = 0;
  }

  v4 = [(TICharacterSetDescription *)self charactersAddedToBase];

  if (v4)
  {
    if (v3)
    {
      v5 = [v3 mutableCopy];
      v6 = [(TICharacterSetDescription *)self charactersAddedToBase];
      [v5 addCharactersInString:v6];

      v7 = [v5 copy];
      v3 = v7;
    }

    else
    {
      v8 = MEMORY[0x1E696AB08];
      v5 = [(TICharacterSetDescription *)self charactersAddedToBase];
      v3 = [v8 characterSetWithCharactersInString:v5];
    }
  }

  v9 = [(TICharacterSetDescription *)self charactersRemovedFromBase];

  if (v9)
  {
    v10 = [v3 mutableCopy];
    v11 = [(TICharacterSetDescription *)self charactersRemovedFromBase];
    [v10 removeCharactersInString:v11];

    v12 = [v10 copy];
    v3 = v12;
  }

  if ([(TICharacterSetDescription *)self inverted])
  {
    v13 = [v3 invertedSet];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v16 = [MEMORY[0x1E696AB08] characterSetWithRange:{0, 0}];
      v15 = [v16 invertedSet];

      v3 = v16;
    }

    return v15;
  }

  return v3;
}

- (id)invertedSetDescription
{
  v3 = [TICharacterSetDescription alloc];
  v4 = [(TICharacterSetDescription *)self baseIdentifier];
  v5 = [(TICharacterSetDescription *)self charactersAddedToBase];
  v6 = [(TICharacterSetDescription *)self charactersRemovedFromBase];
  v7 = [(TICharacterSetDescription *)v3 initWithBase:v4 additionalCharacters:v5 removedCharacters:v6 inverted:[(TICharacterSetDescription *)self inverted]^ 1];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TIMutableCharacterSetDescription allocWithZone:a3];
  v5 = [(TICharacterSetDescription *)self baseIdentifier];
  v6 = [(TICharacterSetDescription *)self charactersAddedToBase];
  v7 = [(TICharacterSetDescription *)self charactersRemovedFromBase];
  v8 = [(TICharacterSetDescription *)v4 initWithBase:v5 additionalCharacters:v6 removedCharacters:v7 inverted:[(TICharacterSetDescription *)self inverted]];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v16.receiver = self;
  v16.super_class = TICharacterSetDescription;
  v4 = [(TICharacterSetDescription *)&v16 description];
  v5 = [v3 stringWithString:v4];

  v6 = [v5 rangeOfString:@">" options:4];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 replaceCharactersInRange:v6 withString:{v7, &stru_1EF56D550}];
  }

  if ([(TICharacterSetDescription *)self baseIdentifier])
  {
    v8 = [(TICharacterSetDescription *)self baseIdentifier];
    if (v8 == 3)
    {
      v9 = sel_whitespaceAndNewlineCharacterSet;
    }

    else if (v8 == 10)
    {
      v9 = sel_alphanumericCharacterSet;
    }

    else
    {
      v9 = 0;
    }

    v10 = NSStringFromSelector(v9);
    [v5 appendFormat:@", base: %@", v10];
  }

  v11 = [(TICharacterSetDescription *)self charactersAddedToBase];

  if (v11)
  {
    v12 = [(TICharacterSetDescription *)self charactersAddedToBase];
    [v5 appendFormat:@", characters: <%@>", v12];
  }

  v13 = [(TICharacterSetDescription *)self charactersRemovedFromBase];

  if (v13)
  {
    v14 = [(TICharacterSetDescription *)self charactersRemovedFromBase];
    [v5 appendFormat:@", without: <%@>", v14];
  }

  if ([(TICharacterSetDescription *)self inverted])
  {
    [v5 appendFormat:@", inverted"];
  }

  [v5 appendString:@">"];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    v14 = 0;
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [(TICharacterSetDescription *)self baseIdentifier];
  if (v6 != [v5 baseIdentifier])
  {
    goto LABEL_6;
  }

  v7 = [(TICharacterSetDescription *)self inverted];
  if (v7 != [v5 inverted])
  {
    goto LABEL_6;
  }

  v8 = [(TICharacterSetDescription *)self charactersAddedToBase];
  v9 = [v5 charactersAddedToBase];
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_11;
  }

  v11 = [(TICharacterSetDescription *)self charactersAddedToBase];
  v12 = [v5 charactersAddedToBase];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
LABEL_11:
    v16 = [(TICharacterSetDescription *)self charactersRemovedFromBase];
    v17 = [v5 charactersRemovedFromBase];
    if (v16 == v17)
    {
      v14 = 1;
    }

    else
    {
      v18 = [(TICharacterSetDescription *)self charactersRemovedFromBase];
      v19 = [v5 charactersRemovedFromBase];
      v14 = [v18 isEqualToString:v19];
    }

    goto LABEL_7;
  }

LABEL_6:
  v14 = 0;
LABEL_7:

LABEL_9:
  return v14;
}

- (id)awakeAfterUsingCoder:(id)a3
{
  if (([(TICharacterSetDescription *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    if (awakeAfterUsingCoder__onceToken != -1)
    {
      dispatch_once(&awakeAfterUsingCoder__onceToken, &__block_literal_global_1065);
    }

    v4 = awakeAfterUsingCoder____decodedInstances;
    objc_sync_enter(v4);
    v5 = [awakeAfterUsingCoder____decodedInstances member:self];
    if (!v5)
    {
      [awakeAfterUsingCoder____decodedInstances addObject:self];
      v5 = self;
    }

    objc_sync_exit(v4);
  }

  else
  {
    v5 = self;
  }

  return v5;
}

uint64_t __50__TICharacterSetDescription_awakeAfterUsingCoder___block_invoke()
{
  awakeAfterUsingCoder____decodedInstances = objc_alloc_init(MEMORY[0x1E695DFA8]);

  return MEMORY[0x1EEE66BB8]();
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  baseIdentifier = self->_baseIdentifier;
  v8 = v4;
  if (baseIdentifier)
  {
    [v4 encodeInteger:baseIdentifier forKey:@"baseIdentifier"];
    v4 = v8;
  }

  charactersAddedToBase = self->_charactersAddedToBase;
  if (charactersAddedToBase)
  {
    [v8 encodeObject:charactersAddedToBase forKey:@"charactersAddedToBase"];
    v4 = v8;
  }

  charactersRemovedFromBase = self->_charactersRemovedFromBase;
  if (charactersRemovedFromBase)
  {
    [v8 encodeObject:charactersRemovedFromBase forKey:@"charactersRemovedFromBase"];
    v4 = v8;
  }

  if (self->_inverted)
  {
    [v8 encodeBool:1 forKey:@"inverted"];
    v4 = v8;
  }
}

- (TICharacterSetDescription)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TICharacterSetDescription;
  v5 = [(TICharacterSetDescription *)&v13 init];
  if (v5)
  {
    v5->_baseIdentifier = [v4 decodeIntegerForKey:@"baseIdentifier"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"charactersAddedToBase"];
    v7 = [v6 copy];
    charactersAddedToBase = v5->_charactersAddedToBase;
    v5->_charactersAddedToBase = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"charactersRemovedFromBase"];
    v10 = [v9 copy];
    charactersRemovedFromBase = v5->_charactersRemovedFromBase;
    v5->_charactersRemovedFromBase = v10;

    v5->_inverted = [v4 decodeBoolForKey:@"inverted"];
  }

  return v5;
}

- (TICharacterSetDescription)initWithBase:(int64_t)a3 additionalCharacters:(id)a4 removedCharacters:(id)a5 inverted:(BOOL)a6
{
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = TICharacterSetDescription;
  v12 = [(TICharacterSetDescription *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_baseIdentifier = a3;
    v14 = [v10 copy];
    charactersAddedToBase = v13->_charactersAddedToBase;
    v13->_charactersAddedToBase = v14;

    v16 = [v11 copy];
    charactersRemovedFromBase = v13->_charactersRemovedFromBase;
    v13->_charactersRemovedFromBase = v16;

    v13->_inverted = a6;
  }

  return v13;
}

@end