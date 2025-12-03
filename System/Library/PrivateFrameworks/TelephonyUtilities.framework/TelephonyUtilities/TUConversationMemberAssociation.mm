@interface TUConversationMemberAssociation
+ (id)associationForHandle:(id)handle from:(id)from;
+ (id)messagingDataWithType:(int64_t)type primaryHandle:(id)handle primaryIdentifier:(unint64_t)identifier primaryAvcIdentifier:(id)avcIdentifier associatedPseudonym:(id)pseudonym conversationGroupUUIDString:(id)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAssociation:(id)association;
- (TUConversationMemberAssociation)initWithCoder:(id)coder;
- (TUConversationMemberAssociation)initWithHandle:(id)handle type:(int64_t)type primary:(BOOL)primary;
- (TUConversationMemberAssociation)initWithMemberAssociation:(id)association;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationMemberAssociation

- (TUConversationMemberAssociation)initWithMemberAssociation:(id)association
{
  associationCopy = association;
  v12.receiver = self;
  v12.super_class = TUConversationMemberAssociation;
  v5 = [(TUConversationMemberAssociation *)&v12 init];
  if (v5)
  {
    v5->_type = [associationCopy type];
    handle = [associationCopy handle];
    handle = v5->_handle;
    v5->_handle = handle;

    v5->_primary = [associationCopy isPrimary];
    v5->_identifier = [associationCopy identifier];
    avcIdentifier = [associationCopy avcIdentifier];
    v9 = [avcIdentifier copy];
    avcIdentifier = v5->_avcIdentifier;
    v5->_avcIdentifier = v9;
  }

  return v5;
}

- (TUConversationMemberAssociation)initWithHandle:(id)handle type:(int64_t)type primary:(BOOL)primary
{
  handleCopy = handle;
  v13.receiver = self;
  v13.super_class = TUConversationMemberAssociation;
  v10 = [(TUConversationMemberAssociation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    objc_storeStrong(&v10->_handle, handle);
    v11->_primary = primary;
  }

  return v11;
}

- (TUConversationMemberAssociation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = TUConversationMemberAssociation;
  v5 = [(TUConversationMemberAssociation *)&v18 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_type);
    v5->_type = [coderCopy decodeIntegerForKey:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_handle);
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];
    handle = v5->_handle;
    v5->_handle = v9;

    v11 = NSStringFromSelector(sel_isPrimary);
    v5->_primary = [coderCopy decodeBoolForKey:v11];

    v12 = NSStringFromSelector(sel_identifier);
    v5->_identifier = [coderCopy decodeInt64ForKey:v12];

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_avcIdentifier);
    v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];
    avcIdentifier = v5->_avcIdentifier;
    v5->_avcIdentifier = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  type = [(TUConversationMemberAssociation *)self type];
  v6 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v6];

  handle = [(TUConversationMemberAssociation *)self handle];
  v8 = NSStringFromSelector(sel_handle);
  [coderCopy encodeObject:handle forKey:v8];

  isPrimary = [(TUConversationMemberAssociation *)self isPrimary];
  v10 = NSStringFromSelector(sel_isPrimary);
  [coderCopy encodeBool:isPrimary forKey:v10];

  identifier = [(TUConversationMemberAssociation *)self identifier];
  v12 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeInt64:identifier forKey:v12];

  avcIdentifier = [(TUConversationMemberAssociation *)self avcIdentifier];
  v13 = NSStringFromSelector(sel_avcIdentifier);
  [coderCopy encodeObject:avcIdentifier forKey:v13];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUConversationMemberAssociation allocWithZone:zone];

  return [(TUConversationMemberAssociation *)v4 initWithMemberAssociation:self];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" type=%zd", -[TUConversationMemberAssociation type](self, "type")];
  handle = [(TUConversationMemberAssociation *)self handle];
  [v3 appendFormat:@" handle=%@", handle];

  isPrimary = [(TUConversationMemberAssociation *)self isPrimary];
  v6 = @"NO";
  if (isPrimary)
  {
    v6 = @"YES";
  }

  [v3 appendFormat:@" isPrimary=%@", v6];
  [v3 appendFormat:@" identifier=%llu", -[TUConversationMemberAssociation identifier](self, "identifier")];
  avcIdentifier = [(TUConversationMemberAssociation *)self avcIdentifier];

  if (avcIdentifier)
  {
    avcIdentifier2 = [(TUConversationMemberAssociation *)self avcIdentifier];
    [v3 appendFormat:@" avcIdentifier=%@", avcIdentifier2];
  }

  [v3 appendFormat:@">"];
  v9 = [v3 copy];

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TUConversationMemberAssociation type](self, "type")}];
  v4 = [v3 hash];
  handle = [(TUConversationMemberAssociation *)self handle];
  v6 = [handle hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[TUConversationMemberAssociation isPrimary](self, "isPrimary")}];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[TUConversationMemberAssociation identifier](self, "identifier")}];
  v10 = v6 ^ v8 ^ [v9 hash];
  avcIdentifier = [(TUConversationMemberAssociation *)self avcIdentifier];
  v12 = [avcIdentifier hash];

  return v10 ^ v12;
}

+ (id)messagingDataWithType:(int64_t)type primaryHandle:(id)handle primaryIdentifier:(unint64_t)identifier primaryAvcIdentifier:(id)avcIdentifier associatedPseudonym:(id)pseudonym conversationGroupUUIDString:(id)string
{
  stringCopy = string;
  pseudonymCopy = pseudonym;
  avcIdentifierCopy = avcIdentifier;
  handleCopy = handle;
  v17 = objc_alloc_init(CSDMessagingMemberAssociationClaim);
  [(CSDMessagingMemberAssociationClaim *)v17 setType:type];
  v18 = [CSDMessagingHandle handleWithTUHandle:handleCopy];

  [(CSDMessagingMemberAssociationClaim *)v17 setPrimaryHandle:v18];
  [(CSDMessagingMemberAssociationClaim *)v17 setPrimaryIdentifier:identifier];
  [(CSDMessagingMemberAssociationClaim *)v17 setPrimaryAvcIdentifier:avcIdentifierCopy];

  v19 = [CSDMessagingHandle handleWithTUHandle:pseudonymCopy];

  [(CSDMessagingMemberAssociationClaim *)v17 setAssociatedPseudonym:v19];
  [(CSDMessagingMemberAssociationClaim *)v17 setConversationGroupUUIDString:stringCopy];

  data = [(CSDMessagingMemberAssociationClaim *)v17 data];

  return data;
}

+ (id)associationForHandle:(id)handle from:(id)from
{
  fromCopy = from;
  handleCopy = handle;
  v7 = [[CSDMessagingMemberAssociationClaim alloc] initWithData:fromCopy];

  v8 = [(CSDMessagingMemberAssociationClaim *)v7 tuAssociationForHandle:handleCopy];

  return v8;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationMemberAssociation *)self isEqualToAssociation:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToAssociation:(id)association
{
  associationCopy = association;
  type = [(TUConversationMemberAssociation *)self type];
  if (type == [associationCopy type])
  {
    handle = [(TUConversationMemberAssociation *)self handle];
    handle2 = [associationCopy handle];
    if ([handle isEqualToHandle:handle2] && (v8 = -[TUConversationMemberAssociation isPrimary](self, "isPrimary"), v8 == objc_msgSend(associationCopy, "isPrimary")) && (v9 = -[TUConversationMemberAssociation identifier](self, "identifier"), v9 == objc_msgSend(associationCopy, "identifier")))
    {
      avcIdentifier = [(TUConversationMemberAssociation *)self avcIdentifier];
      avcIdentifier2 = [associationCopy avcIdentifier];
      v12 = [avcIdentifier isEqualToString:avcIdentifier2];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end