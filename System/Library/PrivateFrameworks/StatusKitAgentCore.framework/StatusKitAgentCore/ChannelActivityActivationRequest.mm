@interface ChannelActivityActivationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPushPriority:(id)priority;
- (int)StringAsRequestFlag:(id)flag;
- (int)pushPriority;
- (int)requestFlag;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPushPriority:(BOOL)priority;
- (void)setHasRequestFlag:(BOOL)flag;
- (void)writeTo:(id)to;
@end

@implementation ChannelActivityActivationRequest

- (int)requestFlag
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_requestFlag;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRequestFlag:(BOOL)flag
{
  if (flag)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsRequestFlag:(id)flag
{
  flagCopy = flag;
  if ([flagCopy isEqualToString:@"NEW_REQUEST"])
  {
    v4 = 0;
  }

  else if ([flagCopy isEqualToString:@"REFRESH_REQUEST"])
  {
    v4 = 1;
  }

  else if ([flagCopy isEqualToString:@"UPDATE_MISSED"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)pushPriority
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_pushPriority;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPushPriority:(BOOL)priority
{
  if (priority)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsPushPriority:(id)priority
{
  priorityCopy = priority;
  if ([priorityCopy isEqualToString:@"LOW"])
  {
    v4 = 0;
  }

  else if ([priorityCopy isEqualToString:@"NORMAL"])
  {
    v4 = 1;
  }

  else if ([priorityCopy isEqualToString:@"HIGH"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ChannelActivityActivationRequest;
  v4 = [(ChannelActivityActivationRequest *)&v8 description];
  dictionaryRepresentation = [(ChannelActivityActivationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  authCredential = self->_authCredential;
  if (authCredential)
  {
    dictionaryRepresentation = [(AuthCredential *)authCredential dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"auth_credential"];
  }

  channelIdentity = self->_channelIdentity;
  if (channelIdentity)
  {
    dictionaryRepresentation2 = [(ChannelIdentity *)channelIdentity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"channel_identity"];
  }

  if ((*&self->_has & 4) != 0)
  {
    requestFlag = self->_requestFlag;
    if (requestFlag >= 3)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_requestFlag];
    }

    else
    {
      v9 = off_27843DF28[requestFlag];
    }

    [dictionary setObject:v9 forKey:@"request_flag"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_clientTimestampSeconds];
    [dictionary setObject:v11 forKey:@"client_timestamp_seconds"];
  }

  encryptedParticipantPayload = self->_encryptedParticipantPayload;
  if (encryptedParticipantPayload)
  {
    [dictionary setObject:encryptedParticipantPayload forKey:@"encrypted_participant_payload"];
  }

  adopter = self->_adopter;
  if (adopter)
  {
    [dictionary setObject:adopter forKey:@"adopter"];
  }

  if ((*&self->_has & 2) != 0)
  {
    pushPriority = self->_pushPriority;
    if (pushPriority >= 3)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_pushPriority];
    }

    else
    {
      v15 = off_27843DF40[pushPriority];
    }

    [dictionary setObject:v15 forKey:@"push_priority"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_authCredential)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_channelIdentity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if ((*&self->_has & 4) != 0)
  {
    requestFlag = self->_requestFlag;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (*&self->_has)
  {
    clientTimestampSeconds = self->_clientTimestampSeconds;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
  }

  if (self->_encryptedParticipantPayload)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_adopter)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if ((*&self->_has & 2) != 0)
  {
    pushPriority = self->_pushPriority;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_authCredential)
  {
    [toCopy setAuthCredential:?];
    toCopy = v5;
  }

  if (self->_channelIdentity)
  {
    [v5 setChannelIdentity:?];
    toCopy = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 13) = self->_requestFlag;
    *(toCopy + 64) |= 4u;
  }

  if (self->_uuid)
  {
    [v5 setUuid:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_clientTimestampSeconds;
    *(toCopy + 64) |= 1u;
  }

  if (self->_encryptedParticipantPayload)
  {
    [v5 setEncryptedParticipantPayload:?];
    toCopy = v5;
  }

  if (self->_adopter)
  {
    [v5 setAdopter:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 12) = self->_pushPriority;
    *(toCopy + 64) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(AuthCredential *)self->_authCredential copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(ChannelIdentity *)self->_channelIdentity copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 52) = self->_requestFlag;
    *(v5 + 64) |= 4u;
  }

  v10 = [(NSData *)self->_uuid copyWithZone:zone];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_clientTimestampSeconds;
    *(v5 + 64) |= 1u;
  }

  v12 = [(NSData *)self->_encryptedParticipantPayload copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSString *)self->_adopter copyWithZone:zone];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 48) = self->_pushPriority;
    *(v5 + 64) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  authCredential = self->_authCredential;
  if (authCredential | *(equalCopy + 3))
  {
    if (![(AuthCredential *)authCredential isEqual:?])
    {
      goto LABEL_27;
    }
  }

  channelIdentity = self->_channelIdentity;
  if (channelIdentity | *(equalCopy + 4))
  {
    if (![(ChannelIdentity *)channelIdentity isEqual:?])
    {
      goto LABEL_27;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 64);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 64) & 4) == 0 || self->_requestFlag != *(equalCopy + 13))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 64) & 4) != 0)
  {
    goto LABEL_27;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 7))
  {
    if (![(NSData *)uuid isEqual:?])
    {
LABEL_27:
      v13 = 0;
      goto LABEL_28;
    }

    has = self->_has;
  }

  v10 = *(equalCopy + 64);
  if (has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_clientTimestampSeconds != *(equalCopy + 1))
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_27;
  }

  encryptedParticipantPayload = self->_encryptedParticipantPayload;
  if (encryptedParticipantPayload | *(equalCopy + 5) && ![(NSData *)encryptedParticipantPayload isEqual:?])
  {
    goto LABEL_27;
  }

  adopter = self->_adopter;
  if (adopter | *(equalCopy + 2))
  {
    if (![(NSString *)adopter isEqual:?])
    {
      goto LABEL_27;
    }
  }

  v13 = (*(equalCopy + 64) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_pushPriority != *(equalCopy + 12))
    {
      goto LABEL_27;
    }

    v13 = 1;
  }

LABEL_28:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(AuthCredential *)self->_authCredential hash];
  v4 = [(ChannelIdentity *)self->_channelIdentity hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_requestFlag;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSData *)self->_uuid hash];
  if (*&self->_has)
  {
    v7 = 2654435761u * self->_clientTimestampSeconds;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSData *)self->_encryptedParticipantPayload hash];
  v9 = [(NSString *)self->_adopter hash];
  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_pushPriority;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  authCredential = self->_authCredential;
  v6 = *(fromCopy + 3);
  v9 = fromCopy;
  if (authCredential)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(AuthCredential *)authCredential mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(ChannelActivityActivationRequest *)self setAuthCredential:?];
  }

  fromCopy = v9;
LABEL_7:
  channelIdentity = self->_channelIdentity;
  v8 = *(fromCopy + 4);
  if (channelIdentity)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(ChannelIdentity *)channelIdentity mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(ChannelActivityActivationRequest *)self setChannelIdentity:?];
  }

  fromCopy = v9;
LABEL_13:
  if ((*(fromCopy + 64) & 4) != 0)
  {
    self->_requestFlag = *(fromCopy + 13);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 7))
  {
    [(ChannelActivityActivationRequest *)self setUuid:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 64))
  {
    self->_clientTimestampSeconds = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 5))
  {
    [(ChannelActivityActivationRequest *)self setEncryptedParticipantPayload:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 2))
  {
    [(ChannelActivityActivationRequest *)self setAdopter:?];
    fromCopy = v9;
  }

  if ((*(fromCopy + 64) & 2) != 0)
  {
    self->_pushPriority = *(fromCopy + 12);
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end