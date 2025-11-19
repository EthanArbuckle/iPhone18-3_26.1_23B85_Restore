@interface TUConversationMemberAssociation
+ (id)associationForHandle:(id)a3 from:(id)a4;
+ (id)messagingDataWithType:(int64_t)a3 primaryHandle:(id)a4 primaryIdentifier:(unint64_t)a5 primaryAvcIdentifier:(id)a6 associatedPseudonym:(id)a7 conversationGroupUUIDString:(id)a8;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAssociation:(id)a3;
- (TUConversationMemberAssociation)initWithCoder:(id)a3;
- (TUConversationMemberAssociation)initWithHandle:(id)a3 type:(int64_t)a4 primary:(BOOL)a5;
- (TUConversationMemberAssociation)initWithMemberAssociation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationMemberAssociation

- (TUConversationMemberAssociation)initWithMemberAssociation:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TUConversationMemberAssociation;
  v5 = [(TUConversationMemberAssociation *)&v12 init];
  if (v5)
  {
    v5->_type = [v4 type];
    v6 = [v4 handle];
    handle = v5->_handle;
    v5->_handle = v6;

    v5->_primary = [v4 isPrimary];
    v5->_identifier = [v4 identifier];
    v8 = [v4 avcIdentifier];
    v9 = [v8 copy];
    avcIdentifier = v5->_avcIdentifier;
    v5->_avcIdentifier = v9;
  }

  return v5;
}

- (TUConversationMemberAssociation)initWithHandle:(id)a3 type:(int64_t)a4 primary:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = TUConversationMemberAssociation;
  v10 = [(TUConversationMemberAssociation *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a4;
    objc_storeStrong(&v10->_handle, a3);
    v11->_primary = a5;
  }

  return v11;
}

- (TUConversationMemberAssociation)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = TUConversationMemberAssociation;
  v5 = [(TUConversationMemberAssociation *)&v18 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_type);
    v5->_type = [v4 decodeIntegerForKey:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_handle);
    v9 = [v4 decodeObjectOfClass:v7 forKey:v8];
    handle = v5->_handle;
    v5->_handle = v9;

    v11 = NSStringFromSelector(sel_isPrimary);
    v5->_primary = [v4 decodeBoolForKey:v11];

    v12 = NSStringFromSelector(sel_identifier);
    v5->_identifier = [v4 decodeInt64ForKey:v12];

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_avcIdentifier);
    v15 = [v4 decodeObjectOfClass:v13 forKey:v14];
    avcIdentifier = v5->_avcIdentifier;
    v5->_avcIdentifier = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationMemberAssociation *)self type];
  v6 = NSStringFromSelector(sel_type);
  [v4 encodeInteger:v5 forKey:v6];

  v7 = [(TUConversationMemberAssociation *)self handle];
  v8 = NSStringFromSelector(sel_handle);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(TUConversationMemberAssociation *)self isPrimary];
  v10 = NSStringFromSelector(sel_isPrimary);
  [v4 encodeBool:v9 forKey:v10];

  v11 = [(TUConversationMemberAssociation *)self identifier];
  v12 = NSStringFromSelector(sel_identifier);
  [v4 encodeInt64:v11 forKey:v12];

  v14 = [(TUConversationMemberAssociation *)self avcIdentifier];
  v13 = NSStringFromSelector(sel_avcIdentifier);
  [v4 encodeObject:v14 forKey:v13];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUConversationMemberAssociation allocWithZone:a3];

  return [(TUConversationMemberAssociation *)v4 initWithMemberAssociation:self];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" type=%zd", -[TUConversationMemberAssociation type](self, "type")];
  v4 = [(TUConversationMemberAssociation *)self handle];
  [v3 appendFormat:@" handle=%@", v4];

  v5 = [(TUConversationMemberAssociation *)self isPrimary];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  [v3 appendFormat:@" isPrimary=%@", v6];
  [v3 appendFormat:@" identifier=%llu", -[TUConversationMemberAssociation identifier](self, "identifier")];
  v7 = [(TUConversationMemberAssociation *)self avcIdentifier];

  if (v7)
  {
    v8 = [(TUConversationMemberAssociation *)self avcIdentifier];
    [v3 appendFormat:@" avcIdentifier=%@", v8];
  }

  [v3 appendFormat:@">"];
  v9 = [v3 copy];

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TUConversationMemberAssociation type](self, "type")}];
  v4 = [v3 hash];
  v5 = [(TUConversationMemberAssociation *)self handle];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[TUConversationMemberAssociation isPrimary](self, "isPrimary")}];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[TUConversationMemberAssociation identifier](self, "identifier")}];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(TUConversationMemberAssociation *)self avcIdentifier];
  v12 = [v11 hash];

  return v10 ^ v12;
}

+ (id)messagingDataWithType:(int64_t)a3 primaryHandle:(id)a4 primaryIdentifier:(unint64_t)a5 primaryAvcIdentifier:(id)a6 associatedPseudonym:(id)a7 conversationGroupUUIDString:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a4;
  v17 = objc_alloc_init(CSDMessagingMemberAssociationClaim);
  [(CSDMessagingMemberAssociationClaim *)v17 setType:a3];
  v18 = [CSDMessagingHandle handleWithTUHandle:v16];

  [(CSDMessagingMemberAssociationClaim *)v17 setPrimaryHandle:v18];
  [(CSDMessagingMemberAssociationClaim *)v17 setPrimaryIdentifier:a5];
  [(CSDMessagingMemberAssociationClaim *)v17 setPrimaryAvcIdentifier:v15];

  v19 = [CSDMessagingHandle handleWithTUHandle:v14];

  [(CSDMessagingMemberAssociationClaim *)v17 setAssociatedPseudonym:v19];
  [(CSDMessagingMemberAssociationClaim *)v17 setConversationGroupUUIDString:v13];

  v20 = [(CSDMessagingMemberAssociationClaim *)v17 data];

  return v20;
}

+ (id)associationForHandle:(id)a3 from:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CSDMessagingMemberAssociationClaim alloc] initWithData:v5];

  v8 = [(CSDMessagingMemberAssociationClaim *)v7 tuAssociationForHandle:v6];

  return v8;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationMemberAssociation *)self isEqualToAssociation:v4];
  }

  return v5;
}

- (BOOL)isEqualToAssociation:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationMemberAssociation *)self type];
  if (v5 == [v4 type])
  {
    v6 = [(TUConversationMemberAssociation *)self handle];
    v7 = [v4 handle];
    if ([v6 isEqualToHandle:v7] && (v8 = -[TUConversationMemberAssociation isPrimary](self, "isPrimary"), v8 == objc_msgSend(v4, "isPrimary")) && (v9 = -[TUConversationMemberAssociation identifier](self, "identifier"), v9 == objc_msgSend(v4, "identifier")))
    {
      v10 = [(TUConversationMemberAssociation *)self avcIdentifier];
      v11 = [v4 avcIdentifier];
      v12 = [v10 isEqualToString:v11];
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