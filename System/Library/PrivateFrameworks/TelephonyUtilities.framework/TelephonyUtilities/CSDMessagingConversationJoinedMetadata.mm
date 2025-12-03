@interface CSDMessagingConversationJoinedMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingConversationJoinedMetadata

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationJoinedMetadata;
  v3 = [(CSDMessagingConversationJoinedMetadata *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingConversationJoinedMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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
    dictionaryRepresentation = [(CSDMessagingConversationParticipant *)sender dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"sender"];
  }

  audioRouteUniqueIdentifier = self->_audioRouteUniqueIdentifier;
  if (audioRouteUniqueIdentifier)
  {
    [v3 setObject:audioRouteUniqueIdentifier forKey:@"audioRouteUniqueIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_sender)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_audioRouteUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_version;
    *(toCopy + 28) |= 1u;
  }

  v5 = toCopy;
  if (self->_sender)
  {
    [toCopy setSender:?];
    toCopy = v5;
  }

  if (self->_audioRouteUniqueIdentifier)
  {
    [v5 setAudioRouteUniqueIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 6) = self->_version;
    *(v5 + 28) |= 1u;
  }

  v7 = [(CSDMessagingConversationParticipant *)self->_sender copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_audioRouteUniqueIdentifier copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_version != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  sender = self->_sender;
  if (sender | *(equalCopy + 2) && ![(CSDMessagingConversationParticipant *)sender isEqual:?])
  {
    goto LABEL_11;
  }

  audioRouteUniqueIdentifier = self->_audioRouteUniqueIdentifier;
  if (audioRouteUniqueIdentifier | *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 28))
  {
    self->_version = *(fromCopy + 6);
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