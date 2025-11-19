@interface CSDMessagingConversationJoinedMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingConversationJoinedMetadata

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationJoinedMetadata;
  v3 = [(CSDMessagingConversationJoinedMetadata *)&v7 description];
  v4 = [(CSDMessagingConversationJoinedMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  sender = self->_sender;
  if (sender)
  {
    v6 = [(CSDMessagingConversationParticipant *)sender dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"sender"];
  }

  audioRouteUniqueIdentifier = self->_audioRouteUniqueIdentifier;
  if (audioRouteUniqueIdentifier)
  {
    [v3 setObject:audioRouteUniqueIdentifier forKey:@"audioRouteUniqueIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_sender)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_audioRouteUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_version;
    *(v4 + 28) |= 1u;
  }

  v5 = v4;
  if (self->_sender)
  {
    [v4 setSender:?];
    v4 = v5;
  }

  if (self->_audioRouteUniqueIdentifier)
  {
    [v5 setAudioRouteUniqueIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 6) = self->_version;
    *(v5 + 28) |= 1u;
  }

  v7 = [(CSDMessagingConversationParticipant *)self->_sender copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_audioRouteUniqueIdentifier copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_version != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  sender = self->_sender;
  if (sender | *(v4 + 2) && ![(CSDMessagingConversationParticipant *)sender isEqual:?])
  {
    goto LABEL_11;
  }

  audioRouteUniqueIdentifier = self->_audioRouteUniqueIdentifier;
  if (audioRouteUniqueIdentifier | *(v4 + 1))
  {
    v8 = [(NSString *)audioRouteUniqueIdentifier isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(CSDMessagingConversationParticipant *)self->_sender hash]^ v3;
  return v4 ^ [(NSString *)self->_audioRouteUniqueIdentifier hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 28))
  {
    self->_version = *(v4 + 6);
    *&self->_has |= 1u;
  }

  sender = self->_sender;
  v7 = v5[2];
  v8 = v5;
  if (sender)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(CSDMessagingConversationParticipant *)sender mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(CSDMessagingConversationJoinedMetadata *)self setSender:?];
  }

  v5 = v8;
LABEL_9:
  if (v5[1])
  {
    [(CSDMessagingConversationJoinedMetadata *)self setAudioRouteUniqueIdentifier:?];
    v5 = v8;
  }
}

@end