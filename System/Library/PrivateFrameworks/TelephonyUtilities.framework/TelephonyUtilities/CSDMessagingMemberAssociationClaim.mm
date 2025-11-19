@interface CSDMessagingMemberAssociationClaim
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)tuAssociationForHandle:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasType:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingMemberAssociationClaim

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingMemberAssociationClaim;
  v3 = [(CSDMessagingMemberAssociationClaim *)&v7 description];
  v4 = [(CSDMessagingMemberAssociationClaim *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  primaryHandle = self->_primaryHandle;
  if (primaryHandle)
  {
    v6 = [(CSDMessagingHandle *)primaryHandle dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"primaryHandle"];
  }

  if (*&self->_has)
  {
    v7 = [NSNumber numberWithUnsignedLongLong:self->_primaryIdentifier];
    [v3 setObject:v7 forKey:@"primaryIdentifier"];
  }

  primaryAvcIdentifier = self->_primaryAvcIdentifier;
  if (primaryAvcIdentifier)
  {
    [v3 setObject:primaryAvcIdentifier forKey:@"primaryAvcIdentifier"];
  }

  associatedPseudonym = self->_associatedPseudonym;
  if (associatedPseudonym)
  {
    v10 = [(CSDMessagingHandle *)associatedPseudonym dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"associatedPseudonym"];
  }

  conversationGroupUUIDString = self->_conversationGroupUUIDString;
  if (conversationGroupUUIDString)
  {
    [v3 setObject:conversationGroupUUIDString forKey:@"conversationGroupUUIDString"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = [NSNumber numberWithInt:self->_type];
    [v3 setObject:v12 forKey:@"type"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if ((*&self->_has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

  if (self->_primaryHandle)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    primaryIdentifier = self->_primaryIdentifier;
    PBDataWriterWriteUint64Field();
  }

  if (self->_primaryAvcIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_associatedPseudonym)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_conversationGroupUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 4) != 0)
  {
    v4[13] = self->_version;
    *(v4 + 56) |= 4u;
  }

  v5 = v4;
  if (self->_primaryHandle)
  {
    [v4 setPrimaryHandle:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_primaryIdentifier;
    *(v4 + 56) |= 1u;
  }

  if (self->_primaryAvcIdentifier)
  {
    [v5 setPrimaryAvcIdentifier:?];
    v4 = v5;
  }

  if (self->_associatedPseudonym)
  {
    [v5 setAssociatedPseudonym:?];
    v4 = v5;
  }

  if (self->_conversationGroupUUIDString)
  {
    [v5 setConversationGroupUUIDString:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4[12] = self->_type;
    *(v4 + 56) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v5[13] = self->_version;
    *(v5 + 56) |= 4u;
  }

  v7 = [(CSDMessagingHandle *)self->_primaryHandle copyWithZone:a3];
  v8 = v6[5];
  v6[5] = v7;

  if (*&self->_has)
  {
    v6[1] = self->_primaryIdentifier;
    *(v6 + 56) |= 1u;
  }

  v9 = [(NSString *)self->_primaryAvcIdentifier copyWithZone:a3];
  v10 = v6[4];
  v6[4] = v9;

  v11 = [(CSDMessagingHandle *)self->_associatedPseudonym copyWithZone:a3];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(NSString *)self->_conversationGroupUUIDString copyWithZone:a3];
  v14 = v6[3];
  v6[3] = v13;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 12) = self->_type;
    *(v6 + 56) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  has = self->_has;
  v6 = *(v4 + 56);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_version != *(v4 + 13))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 56) & 4) != 0)
  {
    goto LABEL_25;
  }

  primaryHandle = self->_primaryHandle;
  if (primaryHandle | *(v4 + 5))
  {
    if (![(CSDMessagingHandle *)primaryHandle isEqual:?])
    {
LABEL_25:
      v12 = 0;
      goto LABEL_26;
    }

    has = self->_has;
  }

  v8 = *(v4 + 56);
  if (has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_primaryIdentifier != *(v4 + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(v4 + 56))
  {
    goto LABEL_25;
  }

  primaryAvcIdentifier = self->_primaryAvcIdentifier;
  if (primaryAvcIdentifier | *(v4 + 4) && ![(NSString *)primaryAvcIdentifier isEqual:?])
  {
    goto LABEL_25;
  }

  associatedPseudonym = self->_associatedPseudonym;
  if (associatedPseudonym | *(v4 + 2))
  {
    if (![(CSDMessagingHandle *)associatedPseudonym isEqual:?])
    {
      goto LABEL_25;
    }
  }

  conversationGroupUUIDString = self->_conversationGroupUUIDString;
  if (conversationGroupUUIDString | *(v4 + 3))
  {
    if (![(NSString *)conversationGroupUUIDString isEqual:?])
    {
      goto LABEL_25;
    }
  }

  v12 = (*(v4 + 56) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_type != *(v4 + 12))
    {
      goto LABEL_25;
    }

    v12 = 1;
  }

LABEL_26:

  return v12;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(CSDMessagingHandle *)self->_primaryHandle hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_primaryIdentifier;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_primaryAvcIdentifier hash];
  v7 = [(CSDMessagingHandle *)self->_associatedPseudonym hash];
  v8 = [(NSString *)self->_conversationGroupUUIDString hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_type;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[14] & 4) != 0)
  {
    self->_version = v4[13];
    *&self->_has |= 4u;
  }

  primaryHandle = self->_primaryHandle;
  v7 = *(v5 + 5);
  v10 = v5;
  if (primaryHandle)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(CSDMessagingHandle *)primaryHandle mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(CSDMessagingMemberAssociationClaim *)self setPrimaryHandle:?];
  }

  v5 = v10;
LABEL_9:
  if (*(v5 + 56))
  {
    self->_primaryIdentifier = *(v5 + 1);
    *&self->_has |= 1u;
  }

  if (*(v5 + 4))
  {
    [(CSDMessagingMemberAssociationClaim *)self setPrimaryAvcIdentifier:?];
    v5 = v10;
  }

  associatedPseudonym = self->_associatedPseudonym;
  v9 = *(v5 + 2);
  if (associatedPseudonym)
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    [(CSDMessagingHandle *)associatedPseudonym mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    [(CSDMessagingMemberAssociationClaim *)self setAssociatedPseudonym:?];
  }

  v5 = v10;
LABEL_19:
  if (*(v5 + 3))
  {
    [(CSDMessagingMemberAssociationClaim *)self setConversationGroupUUIDString:?];
    v5 = v10;
  }

  if ((*(v5 + 56) & 2) != 0)
  {
    self->_type = *(v5 + 12);
    *&self->_has |= 2u;
  }
}

- (id)tuAssociationForHandle:(id)a3
{
  v4 = a3;
  v5 = [(CSDMessagingMemberAssociationClaim *)self primaryHandle];
  v6 = [v5 tuHandle];

  v7 = [(CSDMessagingMemberAssociationClaim *)self associatedPseudonym];
  v8 = [v7 tuHandle];

  v9 = [v4 isEqualToHandle:v6];
  v10 = [v4 isEqualToHandle:v8];

  if (v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = objc_alloc_init(TUConversationMemberAssociation);
    [v11 setType:{-[CSDMessagingMemberAssociationClaim type](self, "type")}];
    [v11 setPrimary:v9];
    if (v9)
    {
      [v11 setHandle:v8];
    }

    else
    {
      [v11 setHandle:v6];
      [v11 setIdentifier:{-[CSDMessagingMemberAssociationClaim primaryIdentifier](self, "primaryIdentifier")}];
      v12 = [(CSDMessagingMemberAssociationClaim *)self primaryAvcIdentifier];
      v13 = [v12 copy];
      [v11 setAvcIdentifier:v13];
    }
  }

  return v11;
}

@end