@interface DecryptedParticipantPayload
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DecryptedParticipantPayload

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DecryptedParticipantPayload;
  v4 = [(DecryptedParticipantPayload *)&v8 description];
  v5 = [(DecryptedParticipantPayload *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  tokenUri = self->_tokenUri;
  if (tokenUri)
  {
    [v3 setObject:tokenUri forKey:@"token_uri"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_tokenUri)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_presenceIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_channelIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_clientPayload)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_tokenUri)
  {
    [v4 setTokenUri:?];
    v4 = v5;
  }

  if (self->_presenceIdentifier)
  {
    [v5 setPresenceIdentifier:?];
    v4 = v5;
  }

  if (self->_channelIdentifier)
  {
    [v5 setChannelIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_timestamp;
    *(v4 + 48) |= 1u;
  }

  if (self->_clientPayload)
  {
    [v5 setClientPayload:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_tokenUri copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_presenceIdentifier copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_channelIdentifier copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  v12 = [(NSData *)self->_clientPayload copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  tokenUri = self->_tokenUri;
  if (tokenUri | *(v4 + 5))
  {
    if (![(NSString *)tokenUri isEqual:?])
    {
      goto LABEL_15;
    }
  }

  presenceIdentifier = self->_presenceIdentifier;
  if (presenceIdentifier | *(v4 + 4))
  {
    if (![(NSString *)presenceIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  channelIdentifier = self->_channelIdentifier;
  if (channelIdentifier | *(v4 + 2))
  {
    if (![(NSString *)channelIdentifier isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  clientPayload = self->_clientPayload;
  if (clientPayload | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[5])
  {
    [(DecryptedParticipantPayload *)self setTokenUri:?];
    v4 = v5;
  }

  if (v4[4])
  {
    [(DecryptedParticipantPayload *)self setPresenceIdentifier:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(DecryptedParticipantPayload *)self setChannelIdentifier:?];
    v4 = v5;
  }

  if (v4[6])
  {
    self->_timestamp = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[3])
  {
    [(DecryptedParticipantPayload *)self setClientPayload:?];
    v4 = v5;
  }
}

@end