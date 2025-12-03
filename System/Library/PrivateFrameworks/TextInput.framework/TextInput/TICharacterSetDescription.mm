@interface TICharacterSetDescription
- (BOOL)isEqual:(id)equal;
- (NSCharacterSet)characterSet;
- (TICharacterSetDescription)initWithBase:(int64_t)base additionalCharacters:(id)characters removedCharacters:(id)removedCharacters inverted:(BOOL)inverted;
- (TICharacterSetDescription)initWithCoder:(id)coder;
- (id)awakeAfterUsingCoder:(id)coder;
- (id)description;
- (id)invertedSetDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)newCharacterSetFromDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TICharacterSetDescription

- (unint64_t)hash
{
  v3 = 257 * [(TICharacterSetDescription *)self baseIdentifier];
  v4 = 257 * (v3 + [(TICharacterSetDescription *)self inverted]);
  charactersAddedToBase = [(TICharacterSetDescription *)self charactersAddedToBase];
  v6 = v4 + [charactersAddedToBase hash];

  charactersRemovedFromBase = [(TICharacterSetDescription *)self charactersRemovedFromBase];
  v8 = [charactersRemovedFromBase hash];

  return v8 + 257 * v6;
}

- (NSCharacterSet)characterSet
{
  characterSet = self->_characterSet;
  if (!characterSet)
  {
    newCharacterSetFromDescription = [(TICharacterSetDescription *)self newCharacterSetFromDescription];
    v5 = self->_characterSet;
    self->_characterSet = newCharacterSetFromDescription;

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

  charactersAddedToBase = [(TICharacterSetDescription *)self charactersAddedToBase];

  if (charactersAddedToBase)
  {
    if (v3)
    {
      charactersAddedToBase3 = [v3 mutableCopy];
      charactersAddedToBase2 = [(TICharacterSetDescription *)self charactersAddedToBase];
      [charactersAddedToBase3 addCharactersInString:charactersAddedToBase2];

      v7 = [charactersAddedToBase3 copy];
      v3 = v7;
    }

    else
    {
      v8 = MEMORY[0x1E696AB08];
      charactersAddedToBase3 = [(TICharacterSetDescription *)self charactersAddedToBase];
      v3 = [v8 characterSetWithCharactersInString:charactersAddedToBase3];
    }
  }

  charactersRemovedFromBase = [(TICharacterSetDescription *)self charactersRemovedFromBase];

  if (charactersRemovedFromBase)
  {
    v10 = [v3 mutableCopy];
    charactersRemovedFromBase2 = [(TICharacterSetDescription *)self charactersRemovedFromBase];
    [v10 removeCharactersInString:charactersRemovedFromBase2];

    v12 = [v10 copy];
    v3 = v12;
  }

  if ([(TICharacterSetDescription *)self inverted])
  {
    invertedSet = [v3 invertedSet];
    v14 = invertedSet;
    if (invertedSet)
    {
      invertedSet2 = invertedSet;
    }

    else
    {
      v16 = [MEMORY[0x1E696AB08] characterSetWithRange:{0, 0}];
      invertedSet2 = [v16 invertedSet];

      v3 = v16;
    }

    return invertedSet2;
  }

  return v3;
}

- (id)invertedSetDescription
{
  v3 = [TICharacterSetDescription alloc];
  baseIdentifier = [(TICharacterSetDescription *)self baseIdentifier];
  charactersAddedToBase = [(TICharacterSetDescription *)self charactersAddedToBase];
  charactersRemovedFromBase = [(TICharacterSetDescription *)self charactersRemovedFromBase];
  v7 = [(TICharacterSetDescription *)v3 initWithBase:baseIdentifier additionalCharacters:charactersAddedToBase removedCharacters:charactersRemovedFromBase inverted:[(TICharacterSetDescription *)self inverted]^ 1];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TIMutableCharacterSetDescription allocWithZone:zone];
  baseIdentifier = [(TICharacterSetDescription *)self baseIdentifier];
  charactersAddedToBase = [(TICharacterSetDescription *)self charactersAddedToBase];
  charactersRemovedFromBase = [(TICharacterSetDescription *)self charactersRemovedFromBase];
  v8 = [(TICharacterSetDescription *)v4 initWithBase:baseIdentifier additionalCharacters:charactersAddedToBase removedCharacters:charactersRemovedFromBase inverted:[(TICharacterSetDescription *)self inverted]];

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
    baseIdentifier = [(TICharacterSetDescription *)self baseIdentifier];
    if (baseIdentifier == 3)
    {
      v9 = sel_whitespaceAndNewlineCharacterSet;
    }

    else if (baseIdentifier == 10)
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

  charactersAddedToBase = [(TICharacterSetDescription *)self charactersAddedToBase];

  if (charactersAddedToBase)
  {
    charactersAddedToBase2 = [(TICharacterSetDescription *)self charactersAddedToBase];
    [v5 appendFormat:@", characters: <%@>", charactersAddedToBase2];
  }

  charactersRemovedFromBase = [(TICharacterSetDescription *)self charactersRemovedFromBase];

  if (charactersRemovedFromBase)
  {
    charactersRemovedFromBase2 = [(TICharacterSetDescription *)self charactersRemovedFromBase];
    [v5 appendFormat:@", without: <%@>", charactersRemovedFromBase2];
  }

  if ([(TICharacterSetDescription *)self inverted])
  {
    [v5 appendFormat:@", inverted"];
  }

  [v5 appendString:@">"];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    v14 = 0;
    goto LABEL_9;
  }

  v5 = equalCopy;
  baseIdentifier = [(TICharacterSetDescription *)self baseIdentifier];
  if (baseIdentifier != [v5 baseIdentifier])
  {
    goto LABEL_6;
  }

  inverted = [(TICharacterSetDescription *)self inverted];
  if (inverted != [v5 inverted])
  {
    goto LABEL_6;
  }

  charactersAddedToBase = [(TICharacterSetDescription *)self charactersAddedToBase];
  charactersAddedToBase2 = [v5 charactersAddedToBase];
  v10 = charactersAddedToBase2;
  if (charactersAddedToBase == charactersAddedToBase2)
  {

    goto LABEL_11;
  }

  charactersAddedToBase3 = [(TICharacterSetDescription *)self charactersAddedToBase];
  charactersAddedToBase4 = [v5 charactersAddedToBase];
  v13 = [charactersAddedToBase3 isEqualToString:charactersAddedToBase4];

  if (v13)
  {
LABEL_11:
    charactersRemovedFromBase = [(TICharacterSetDescription *)self charactersRemovedFromBase];
    charactersRemovedFromBase2 = [v5 charactersRemovedFromBase];
    if (charactersRemovedFromBase == charactersRemovedFromBase2)
    {
      v14 = 1;
    }

    else
    {
      charactersRemovedFromBase3 = [(TICharacterSetDescription *)self charactersRemovedFromBase];
      charactersRemovedFromBase4 = [v5 charactersRemovedFromBase];
      v14 = [charactersRemovedFromBase3 isEqualToString:charactersRemovedFromBase4];
    }

    goto LABEL_7;
  }

LABEL_6:
  v14 = 0;
LABEL_7:

LABEL_9:
  return v14;
}

- (id)awakeAfterUsingCoder:(id)coder
{
  if (([(TICharacterSetDescription *)self isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    if (awakeAfterUsingCoder__onceToken != -1)
    {
      dispatch_once(&awakeAfterUsingCoder__onceToken, &__block_literal_global_1065);
    }

    v4 = awakeAfterUsingCoder____decodedInstances;
    objc_sync_enter(v4);
    selfCopy2 = [awakeAfterUsingCoder____decodedInstances member:self];
    if (!selfCopy2)
    {
      [awakeAfterUsingCoder____decodedInstances addObject:self];
      selfCopy2 = self;
    }

    objc_sync_exit(v4);
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

uint64_t __50__TICharacterSetDescription_awakeAfterUsingCoder___block_invoke()
{
  awakeAfterUsingCoder____decodedInstances = objc_alloc_init(MEMORY[0x1E695DFA8]);

  return MEMORY[0x1EEE66BB8]();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  baseIdentifier = self->_baseIdentifier;
  v8 = coderCopy;
  if (baseIdentifier)
  {
    [coderCopy encodeInteger:baseIdentifier forKey:@"baseIdentifier"];
    coderCopy = v8;
  }

  charactersAddedToBase = self->_charactersAddedToBase;
  if (charactersAddedToBase)
  {
    [v8 encodeObject:charactersAddedToBase forKey:@"charactersAddedToBase"];
    coderCopy = v8;
  }

  charactersRemovedFromBase = self->_charactersRemovedFromBase;
  if (charactersRemovedFromBase)
  {
    [v8 encodeObject:charactersRemovedFromBase forKey:@"charactersRemovedFromBase"];
    coderCopy = v8;
  }

  if (self->_inverted)
  {
    [v8 encodeBool:1 forKey:@"inverted"];
    coderCopy = v8;
  }
}

- (TICharacterSetDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TICharacterSetDescription;
  v5 = [(TICharacterSetDescription *)&v13 init];
  if (v5)
  {
    v5->_baseIdentifier = [coderCopy decodeIntegerForKey:@"baseIdentifier"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"charactersAddedToBase"];
    v7 = [v6 copy];
    charactersAddedToBase = v5->_charactersAddedToBase;
    v5->_charactersAddedToBase = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"charactersRemovedFromBase"];
    v10 = [v9 copy];
    charactersRemovedFromBase = v5->_charactersRemovedFromBase;
    v5->_charactersRemovedFromBase = v10;

    v5->_inverted = [coderCopy decodeBoolForKey:@"inverted"];
  }

  return v5;
}

- (TICharacterSetDescription)initWithBase:(int64_t)base additionalCharacters:(id)characters removedCharacters:(id)removedCharacters inverted:(BOOL)inverted
{
  charactersCopy = characters;
  removedCharactersCopy = removedCharacters;
  v19.receiver = self;
  v19.super_class = TICharacterSetDescription;
  v12 = [(TICharacterSetDescription *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_baseIdentifier = base;
    v14 = [charactersCopy copy];
    charactersAddedToBase = v13->_charactersAddedToBase;
    v13->_charactersAddedToBase = v14;

    v16 = [removedCharactersCopy copy];
    charactersRemovedFromBase = v13->_charactersRemovedFromBase;
    v13->_charactersRemovedFromBase = v16;

    v13->_inverted = inverted;
  }

  return v13;
}

@end