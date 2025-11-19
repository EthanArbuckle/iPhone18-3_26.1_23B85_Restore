@interface TUConversationParticipantAssociation
+ (id)avcIdentifierFromURLComponents:(id)a3 namePrefix:(id)a4;
+ (id)identifierFromURLComponents:(id)a3 namePrefix:(id)a4;
+ (id)participantAssociationFromURLComponents:(id)a3 namePrefix:(id)a4;
+ (id)queryItemName:(id)a3 prefix:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToParticipantAssociation:(id)a3;
- (TUConversationParticipantAssociation)initWithCoder:(id)a3;
- (TUConversationParticipantAssociation)initWithParticipantAssociation:(id)a3;
- (id)avcIdentifierQueryItemWithNamePrefix:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)identifierQueryItemWithNamePrefix:(id)a3;
- (id)queryItemsWithNamePrefix:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationParticipantAssociation

- (TUConversationParticipantAssociation)initWithParticipantAssociation:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TUConversationParticipantAssociation;
  v5 = [(TUConversationParticipantAssociation *)&v10 init];
  if (v5)
  {
    v5->_identifier = [v4 identifier];
    v6 = [v4 avcIdentifier];
    v7 = [v6 copy];
    avcIdentifier = v5->_avcIdentifier;
    v5->_avcIdentifier = v7;
  }

  return v5;
}

- (TUConversationParticipantAssociation)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TUConversationParticipantAssociation;
  v5 = [(TUConversationParticipantAssociation *)&v12 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_identifier);
    v5->_identifier = [v4 decodeInt64ForKey:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_avcIdentifier);
    v9 = [v4 decodeObjectOfClass:v7 forKey:v8];
    avcIdentifier = v5->_avcIdentifier;
    v5->_avcIdentifier = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationParticipantAssociation *)self identifier];
  v6 = NSStringFromSelector(sel_identifier);
  [v4 encodeInt64:v5 forKey:v6];

  v8 = [(TUConversationParticipantAssociation *)self avcIdentifier];
  v7 = NSStringFromSelector(sel_avcIdentifier);
  [v4 encodeObject:v8 forKey:v7];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUConversationParticipantAssociation allocWithZone:a3];

  return [(TUConversationParticipantAssociation *)v4 initWithParticipantAssociation:self];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" identifier=%llu", -[TUConversationParticipantAssociation identifier](self, "identifier")];
  v4 = [(TUConversationParticipantAssociation *)self avcIdentifier];

  if (v4)
  {
    v5 = [(TUConversationParticipantAssociation *)self avcIdentifier];
    [v3 appendFormat:@" avcIdentifier=%@", v5];
  }

  [v3 appendString:@">"];
  v6 = [v3 copy];

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[TUConversationParticipantAssociation identifier](self, "identifier")}];
  v4 = [v3 hash];
  v5 = [(TUConversationParticipantAssociation *)self avcIdentifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationParticipantAssociation *)self isEqualToParticipantAssociation:v4];
  }

  return v5;
}

- (BOOL)isEqualToParticipantAssociation:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationParticipantAssociation *)self identifier];
  if (v5 == [v4 identifier])
  {
    v6 = [(TUConversationParticipantAssociation *)self avcIdentifier];
    v7 = [v4 avcIdentifier];
    v8 = TUStringsAreEqualOrNil(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)participantAssociationFromURLComponents:(id)a3 namePrefix:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 identifierFromURLComponents:v6 namePrefix:v7];
  if (v8)
  {
    v9 = objc_alloc_init(TUConversationParticipantAssociation);
    -[TUConversationParticipantAssociation setIdentifier:](v9, "setIdentifier:", [v8 unsignedLongLongValue]);
    if (v9)
    {
      v10 = [a1 avcIdentifierFromURLComponents:v6 namePrefix:v7];
      [(TUConversationParticipantAssociation *)v9 setAvcIdentifier:v10];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)identifierFromURLComponents:(id)a3 namePrefix:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_identifier);
  v9 = [v7 queryItemName:v8 prefix:v5];

  v10 = [v6 firstQueryItemWithName:v9];

  v11 = [v10 value];

  if (v11)
  {
    v12 = [v10 value];
    v11 = [v12 tu_unsignedLongLongNumber];
  }

  return v11;
}

+ (id)queryItemName:(id)a3 prefix:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", a4, v5];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

+ (id)avcIdentifierFromURLComponents:(id)a3 namePrefix:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_avcIdentifier);
  v9 = [v7 queryItemName:v8 prefix:v5];

  v10 = [v6 firstQueryItemWithName:v9];

  v11 = [v10 value];

  return v11;
}

- (id)queryItemsWithNamePrefix:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v6 = [(TUConversationParticipantAssociation *)self identifierQueryItemWithNamePrefix:v4];
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v8 = [v5 arrayWithArray:v7];

  v9 = [(TUConversationParticipantAssociation *)self avcIdentifier];

  if (v9)
  {
    v10 = [(TUConversationParticipantAssociation *)self avcIdentifierQueryItemWithNamePrefix:v4];
    [v8 addObject:v10];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)identifierQueryItemWithNamePrefix:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_identifier);
  v7 = [v5 queryItemName:v6 prefix:v4];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", -[TUConversationParticipantAssociation identifier](self, "identifier")];
  v9 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:v7 value:v8];

  return v9;
}

- (id)avcIdentifierQueryItemWithNamePrefix:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_avcIdentifier);
  v7 = [v5 queryItemName:v6 prefix:v4];

  v8 = objc_alloc(MEMORY[0x1E696AF60]);
  v9 = [(TUConversationParticipantAssociation *)self avcIdentifier];
  v10 = [v8 initWithName:v7 value:v9];

  return v10;
}

@end