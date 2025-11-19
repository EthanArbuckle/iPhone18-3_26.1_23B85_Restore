@interface CSDMessagingConversationParticipantAssociation
+ (id)participantAssociationWithTUConversationParticipantAssociation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TUConversationParticipantAssociation)tuConversationParticipantAssociation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingConversationParticipantAssociation

- (void)setHasVersion:(BOOL)a3
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
  v7.super_class = CSDMessagingConversationParticipantAssociation;
  v3 = [(CSDMessagingConversationParticipantAssociation *)&v7 description];
  v4 = [(CSDMessagingConversationParticipantAssociation *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if ((has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    identifier = self->_identifier;
    PBDataWriterWriteUint64Field();
    v4 = v8;
  }

  if (self->_avcIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[6] = self->_version;
    *(v4 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = self->_identifier;
    *(v4 + 28) |= 1u;
  }

  if (self->_avcIdentifier)
  {
    v6 = v4;
    [v4 setAvcIdentifier:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSString *)self->_avcIdentifier copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(v4 + 28);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_version != *(v4 + 6))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_identifier != *(v4 + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_14;
  }

  avcIdentifier = self->_avcIdentifier;
  if (avcIdentifier | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 28);
  if ((v5 & 2) != 0)
  {
    self->_version = *(v4 + 6);
    *&self->_has |= 2u;
    v5 = *(v4 + 28);
  }

  if (v5)
  {
    self->_identifier = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    v6 = v4;
    [(CSDMessagingConversationParticipantAssociation *)self setAvcIdentifier:?];
    v4 = v6;
  }
}

+ (id)participantAssociationWithTUConversationParticipantAssociation:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc_init(CSDMessagingConversationParticipantAssociation);
    -[CSDMessagingConversationParticipantAssociation setIdentifier:](v4, "setIdentifier:", [v3 identifier]);
    v5 = [v3 avcIdentifier];

    [(CSDMessagingConversationParticipantAssociation *)v4 setAvcIdentifier:v5];
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
    v4 = [(CSDMessagingConversationParticipantAssociation *)self avcIdentifier];
    [v3 setAvcIdentifier:v4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end