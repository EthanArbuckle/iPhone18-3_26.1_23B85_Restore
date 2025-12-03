@interface CSDMessagingConversationParticipantAssociation
+ (id)participantAssociationWithTUConversationParticipantAssociation:(id)association;
- (BOOL)isEqual:(id)equal;
- (TUConversationParticipantAssociation)tuConversationParticipantAssociation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingConversationParticipantAssociation

- (void)setHasVersion:(BOOL)version
{
  if (version)
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
  v7.super_class = CSDMessagingConversationParticipantAssociation;
  v3 = [(CSDMessagingConversationParticipantAssociation *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingConversationParticipantAssociation *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v5 forKey:@"version"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [NSNumber numberWithUnsignedLongLong:self->_identifier];
    [v3 setObject:v6 forKey:@"identifier"];
  }

  avcIdentifier = self->_avcIdentifier;
  if (avcIdentifier)
  {
    [v3 setObject:avcIdentifier forKey:@"avcIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if ((has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    identifier = self->_identifier;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
  }

  if (self->_avcIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[6] = self->_version;
    *(toCopy + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = self->_identifier;
    *(toCopy + 28) |= 1u;
  }

  if (self->_avcIdentifier)
  {
    v6 = toCopy;
    [toCopy setAvcIdentifier:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 6) = self->_version;
    *(v5 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v5[1] = self->_identifier;
    *(v5 + 28) |= 1u;
  }

  v8 = [(NSString *)self->_avcIdentifier copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(equalCopy + 28);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_version != *(equalCopy + 6))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_identifier != *(equalCopy + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_14;
  }

  avcIdentifier = self->_avcIdentifier;
  if (avcIdentifier | *(equalCopy + 2))
  {
    v7 = [(NSString *)avcIdentifier isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_version;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSString *)self->_avcIdentifier hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761u * self->_identifier;
  return v7 ^ v6 ^ [(NSString *)self->_avcIdentifier hash:v3];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 28);
  if ((v5 & 2) != 0)
  {
    self->_version = *(fromCopy + 6);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 28);
  }

  if (v5)
  {
    self->_identifier = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(CSDMessagingConversationParticipantAssociation *)self setAvcIdentifier:?];
    fromCopy = v6;
  }
}

+ (id)participantAssociationWithTUConversationParticipantAssociation:(id)association
{
  if (association)
  {
    associationCopy = association;
    v4 = objc_alloc_init(CSDMessagingConversationParticipantAssociation);
    -[CSDMessagingConversationParticipantAssociation setIdentifier:](v4, "setIdentifier:", [associationCopy identifier]);
    avcIdentifier = [associationCopy avcIdentifier];

    [(CSDMessagingConversationParticipantAssociation *)v4 setAvcIdentifier:avcIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (TUConversationParticipantAssociation)tuConversationParticipantAssociation
{
  if ([(CSDMessagingConversationParticipantAssociation *)self hasIdentifier])
  {
    v3 = objc_alloc_init(TUConversationParticipantAssociation);
    [v3 setIdentifier:{-[CSDMessagingConversationParticipantAssociation identifier](self, "identifier")}];
    avcIdentifier = [(CSDMessagingConversationParticipantAssociation *)self avcIdentifier];
    [v3 setAvcIdentifier:avcIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end