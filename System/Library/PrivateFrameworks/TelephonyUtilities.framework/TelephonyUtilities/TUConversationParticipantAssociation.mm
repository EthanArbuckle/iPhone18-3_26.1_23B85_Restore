@interface TUConversationParticipantAssociation
+ (id)avcIdentifierFromURLComponents:(id)components namePrefix:(id)prefix;
+ (id)identifierFromURLComponents:(id)components namePrefix:(id)prefix;
+ (id)participantAssociationFromURLComponents:(id)components namePrefix:(id)prefix;
+ (id)queryItemName:(id)name prefix:(id)prefix;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToParticipantAssociation:(id)association;
- (TUConversationParticipantAssociation)initWithCoder:(id)coder;
- (TUConversationParticipantAssociation)initWithParticipantAssociation:(id)association;
- (id)avcIdentifierQueryItemWithNamePrefix:(id)prefix;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)identifierQueryItemWithNamePrefix:(id)prefix;
- (id)queryItemsWithNamePrefix:(id)prefix;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationParticipantAssociation

- (TUConversationParticipantAssociation)initWithParticipantAssociation:(id)association
{
  associationCopy = association;
  v10.receiver = self;
  v10.super_class = TUConversationParticipantAssociation;
  v5 = [(TUConversationParticipantAssociation *)&v10 init];
  if (v5)
  {
    v5->_identifier = [associationCopy identifier];
    avcIdentifier = [associationCopy avcIdentifier];
    v7 = [avcIdentifier copy];
    avcIdentifier = v5->_avcIdentifier;
    v5->_avcIdentifier = v7;
  }

  return v5;
}

- (TUConversationParticipantAssociation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = TUConversationParticipantAssociation;
  v5 = [(TUConversationParticipantAssociation *)&v12 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_identifier);
    v5->_identifier = [coderCopy decodeInt64ForKey:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_avcIdentifier);
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];
    avcIdentifier = v5->_avcIdentifier;
    v5->_avcIdentifier = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(TUConversationParticipantAssociation *)self identifier];
  v6 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeInt64:identifier forKey:v6];

  avcIdentifier = [(TUConversationParticipantAssociation *)self avcIdentifier];
  v7 = NSStringFromSelector(sel_avcIdentifier);
  [coderCopy encodeObject:avcIdentifier forKey:v7];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUConversationParticipantAssociation allocWithZone:zone];

  return [(TUConversationParticipantAssociation *)v4 initWithParticipantAssociation:self];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" identifier=%llu", -[TUConversationParticipantAssociation identifier](self, "identifier")];
  avcIdentifier = [(TUConversationParticipantAssociation *)self avcIdentifier];

  if (avcIdentifier)
  {
    avcIdentifier2 = [(TUConversationParticipantAssociation *)self avcIdentifier];
    [v3 appendFormat:@" avcIdentifier=%@", avcIdentifier2];
  }

  [v3 appendString:@">"];
  v6 = [v3 copy];

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[TUConversationParticipantAssociation identifier](self, "identifier")}];
  v4 = [v3 hash];
  avcIdentifier = [(TUConversationParticipantAssociation *)self avcIdentifier];
  v6 = [avcIdentifier hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationParticipantAssociation *)self isEqualToParticipantAssociation:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToParticipantAssociation:(id)association
{
  associationCopy = association;
  identifier = [(TUConversationParticipantAssociation *)self identifier];
  if (identifier == [associationCopy identifier])
  {
    avcIdentifier = [(TUConversationParticipantAssociation *)self avcIdentifier];
    avcIdentifier2 = [associationCopy avcIdentifier];
    v8 = TUStringsAreEqualOrNil(avcIdentifier, avcIdentifier2);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)participantAssociationFromURLComponents:(id)components namePrefix:(id)prefix
{
  componentsCopy = components;
  prefixCopy = prefix;
  v8 = [self identifierFromURLComponents:componentsCopy namePrefix:prefixCopy];
  if (v8)
  {
    v9 = objc_alloc_init(TUConversationParticipantAssociation);
    -[TUConversationParticipantAssociation setIdentifier:](v9, "setIdentifier:", [v8 unsignedLongLongValue]);
    if (v9)
    {
      v10 = [self avcIdentifierFromURLComponents:componentsCopy namePrefix:prefixCopy];
      [(TUConversationParticipantAssociation *)v9 setAvcIdentifier:v10];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)identifierFromURLComponents:(id)components namePrefix:(id)prefix
{
  prefixCopy = prefix;
  componentsCopy = components;
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_identifier);
  v9 = [v7 queryItemName:v8 prefix:prefixCopy];

  v10 = [componentsCopy firstQueryItemWithName:v9];

  value = [v10 value];

  if (value)
  {
    value2 = [v10 value];
    value = [value2 tu_unsignedLongLongNumber];
  }

  return value;
}

+ (id)queryItemName:(id)name prefix:(id)prefix
{
  nameCopy = name;
  v6 = nameCopy;
  if (prefix)
  {
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", prefix, nameCopy];
  }

  else
  {
    nameCopy = nameCopy;
  }

  v8 = nameCopy;

  return v8;
}

+ (id)avcIdentifierFromURLComponents:(id)components namePrefix:(id)prefix
{
  prefixCopy = prefix;
  componentsCopy = components;
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_avcIdentifier);
  v9 = [v7 queryItemName:v8 prefix:prefixCopy];

  v10 = [componentsCopy firstQueryItemWithName:v9];

  value = [v10 value];

  return value;
}

- (id)queryItemsWithNamePrefix:(id)prefix
{
  v13[1] = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  v5 = MEMORY[0x1E695DF70];
  v6 = [(TUConversationParticipantAssociation *)self identifierQueryItemWithNamePrefix:prefixCopy];
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v8 = [v5 arrayWithArray:v7];

  avcIdentifier = [(TUConversationParticipantAssociation *)self avcIdentifier];

  if (avcIdentifier)
  {
    v10 = [(TUConversationParticipantAssociation *)self avcIdentifierQueryItemWithNamePrefix:prefixCopy];
    [v8 addObject:v10];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)identifierQueryItemWithNamePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_identifier);
  v7 = [v5 queryItemName:v6 prefix:prefixCopy];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", -[TUConversationParticipantAssociation identifier](self, "identifier")];
  v9 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:v7 value:v8];

  return v9;
}

- (id)avcIdentifierQueryItemWithNamePrefix:(id)prefix
{
  prefixCopy = prefix;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_avcIdentifier);
  v7 = [v5 queryItemName:v6 prefix:prefixCopy];

  v8 = objc_alloc(MEMORY[0x1E696AF60]);
  avcIdentifier = [(TUConversationParticipantAssociation *)self avcIdentifier];
  v10 = [v8 initWithName:v7 value:avcIdentifier];

  return v10;
}

@end