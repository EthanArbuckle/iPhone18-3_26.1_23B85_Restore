@interface CSDMessagingMemberAssociationClaim
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)tuAssociationForHandle:(id)handle;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasType:(BOOL)type;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingMemberAssociationClaim

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasType:(BOOL)type
{
  if (type)
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
  dictionaryRepresentation = [(CSDMessagingMemberAssociationClaim *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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
    dictionaryRepresentation = [(CSDMessagingHandle *)primaryHandle dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"primaryHandle"];
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
    dictionaryRepresentation2 = [(CSDMessagingHandle *)associatedPseudonym dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"associatedPseudonym"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[13] = self->_version;
    *(toCopy + 56) |= 4u;
  }

  v5 = toCopy;
  if (self->_primaryHandle)
  {
    [toCopy setPrimaryHandle:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_primaryIdentifier;
    *(toCopy + 56) |= 1u;
  }

  if (self->_primaryAvcIdentifier)
  {
    [v5 setPrimaryAvcIdentifier:?];
    toCopy = v5;
  }

  if (self->_associatedPseudonym)
  {
    [v5 setAssociatedPseudonym:?];
    toCopy = v5;
  }

  if (self->_conversationGroupUUIDString)
  {
    [v5 setConversationGroupUUIDString:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[12] = self->_type;
    *(toCopy + 56) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    v5[13] = self->_version;
    *(v5 + 56) |= 4u;
  }

  v7 = [(CSDMessagingHandle *)self->_primaryHandle copyWithZone:zone];
  v8 = v6[5];
  v6[5] = v7;

  if (*&self->_has)
  {
    v6[1] = self->_primaryIdentifier;
    *(v6 + 56) |= 1u;
  }

  v9 = [(NSString *)self->_primaryAvcIdentifier copyWithZone:zone];
  v10 = v6[4];
  v6[4] = v9;

  v11 = [(CSDMessagingHandle *)self->_associatedPseudonym copyWithZone:zone];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(NSString *)self->_conversationGroupUUIDString copyWithZone:zone];
  v14 = v6[3];
  v6[3] = v13;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 12) = self->_type;
    *(v6 + 56) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  has = self->_has;
  v6 = *(equalCopy + 56);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_version != *(equalCopy + 13))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_25;
  }

  primaryHandle = self->_primaryHandle;
  if (primaryHandle | *(equalCopy + 5))
  {
    if (![(CSDMessagingHandle *)primaryHandle isEqual:?])
    {
LABEL_25:
      v12 = 0;
      goto LABEL_26;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 56);
  if (has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_primaryIdentifier != *(equalCopy + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_25;
  }

  primaryAvcIdentifier = self->_primaryAvcIdentifier;
  if (primaryAvcIdentifier | *(equalCopy + 4) && ![(NSString *)primaryAvcIdentifier isEqual:?])
  {
    goto LABEL_25;
  }

  associatedPseudonym = self->_associatedPseudonym;
  if (associatedPseudonym | *(equalCopy + 2))
  {
    if (![(CSDMessagingHandle *)associatedPseudonym isEqual:?])
    {
      goto LABEL_25;
    }
  }

  conversationGroupUUIDString = self->_conversationGroupUUIDString;
  if (conversationGroupUUIDString | *(equalCopy + 3))
  {
    if (![(NSString *)conversationGroupUUIDString isEqual:?])
    {
      goto LABEL_25;
    }
  }

  v12 = (*(equalCopy + 56) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_type != *(equalCopy + 12))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[14] & 4) != 0)
  {
    self->_version = fromCopy[13];
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

- (id)tuAssociationForHandle:(id)handle
{
  handleCopy = handle;
  primaryHandle = [(CSDMessagingMemberAssociationClaim *)self primaryHandle];
  tuHandle = [primaryHandle tuHandle];

  associatedPseudonym = [(CSDMessagingMemberAssociationClaim *)self associatedPseudonym];
  tuHandle2 = [associatedPseudonym tuHandle];

  v9 = [handleCopy isEqualToHandle:tuHandle];
  v10 = [handleCopy isEqualToHandle:tuHandle2];

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
      [v11 setHandle:tuHandle2];
    }

    else
    {
      [v11 setHandle:tuHandle];
      [v11 setIdentifier:{-[CSDMessagingMemberAssociationClaim primaryIdentifier](self, "primaryIdentifier")}];
      primaryAvcIdentifier = [(CSDMessagingMemberAssociationClaim *)self primaryAvcIdentifier];
      v13 = [primaryAvcIdentifier copy];
      [v11 setAvcIdentifier:v13];
    }
  }

  return v11;
}

@end