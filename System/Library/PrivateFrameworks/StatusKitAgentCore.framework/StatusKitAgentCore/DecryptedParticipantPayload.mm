@interface DecryptedParticipantPayload
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation DecryptedParticipantPayload

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DecryptedParticipantPayload;
  v4 = [(DecryptedParticipantPayload *)&v8 description];
  dictionaryRepresentation = [(DecryptedParticipantPayload *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  tokenUri = self->_tokenUri;
  if (tokenUri)
  {
    [dictionary setObject:tokenUri forKey:@"token_uri"];
  }

  presenceIdentifier = self->_presenceIdentifier;
  if (presenceIdentifier)
  {
    [v4 setObject:presenceIdentifier forKey:@"presence_identifier"];
  }

  channelIdentifier = self->_channelIdentifier;
  if (channelIdentifier)
  {
    [v4 setObject:channelIdentifier forKey:@"channel_identifier"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v4 setObject:v8 forKey:@"timestamp"];
  }

  clientPayload = self->_clientPayload;
  if (clientPayload)
  {
    [v4 setObject:clientPayload forKey:@"client_payload"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_tokenUri)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_presenceIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_channelIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_clientPayload)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_tokenUri)
  {
    [toCopy setTokenUri:?];
    toCopy = v5;
  }

  if (self->_presenceIdentifier)
  {
    [v5 setPresenceIdentifier:?];
    toCopy = v5;
  }

  if (self->_channelIdentifier)
  {
    [v5 setChannelIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_timestamp;
    *(toCopy + 48) |= 1u;
  }

  if (self->_clientPayload)
  {
    [v5 setClientPayload:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_tokenUri copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_presenceIdentifier copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_channelIdentifier copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  v12 = [(NSData *)self->_clientPayload copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  tokenUri = self->_tokenUri;
  if (tokenUri | *(equalCopy + 5))
  {
    if (![(NSString *)tokenUri isEqual:?])
    {
      goto LABEL_15;
    }
  }

  presenceIdentifier = self->_presenceIdentifier;
  if (presenceIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)presenceIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  channelIdentifier = self->_channelIdentifier;
  if (channelIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)channelIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  clientPayload = self->_clientPayload;
  if (clientPayload | *(equalCopy + 3))
  {
    v10 = [(NSData *)clientPayload isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_tokenUri hash];
  v4 = [(NSString *)self->_presenceIdentifier hash];
  v5 = [(NSString *)self->_channelIdentifier hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_timestamp;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSData *)self->_clientPayload hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[5])
  {
    [(DecryptedParticipantPayload *)self setTokenUri:?];
    fromCopy = v5;
  }

  if (fromCopy[4])
  {
    [(DecryptedParticipantPayload *)self setPresenceIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(DecryptedParticipantPayload *)self setChannelIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[6])
  {
    self->_timestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[3])
  {
    [(DecryptedParticipantPayload *)self setClientPayload:?];
    fromCopy = v5;
  }
}

@end