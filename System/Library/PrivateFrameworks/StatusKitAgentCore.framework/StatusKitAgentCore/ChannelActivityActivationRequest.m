@interface ChannelActivityActivationRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPushPriority:(id)a3;
- (int)StringAsRequestFlag:(id)a3;
- (int)pushPriority;
- (int)requestFlag;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPushPriority:(BOOL)a3;
- (void)setHasRequestFlag:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasRequestFlag:(BOOL)a3
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

- (int)StringAsRequestFlag:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NEW_REQUEST"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"REFRESH_REQUEST"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"UPDATE_MISSED"])
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

- (void)setHasPushPriority:(BOOL)a3
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

- (int)StringAsPushPriority:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"LOW"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NORMAL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"HIGH"])
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
  v5 = [(ChannelActivityActivationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  authCredential = self->_authCredential;
  if (authCredential)
  {
    v5 = [(AuthCredential *)authCredential dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"auth_credential"];
  }

  channelIdentity = self->_channelIdentity;
  if (channelIdentity)
  {
    v7 = [(ChannelIdentity *)channelIdentity dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"channel_identity"];
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

    [v3 setObject:v9 forKey:@"request_flag"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_clientTimestampSeconds];
    [v3 setObject:v11 forKey:@"client_timestamp_seconds"];
  }

  encryptedParticipantPayload = self->_encryptedParticipantPayload;
  if (encryptedParticipantPayload)
  {
    [v3 setObject:encryptedParticipantPayload forKey:@"encrypted_participant_payload"];
  }

  adopter = self->_adopter;
  if (adopter)
  {
    [v3 setObject:adopter forKey:@"adopter"];
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

    [v3 setObject:v15 forKey:@"push_priority"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_authCredential)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_channelIdentity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if ((*&self->_has & 4) != 0)
  {
    requestFlag = self->_requestFlag;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (*&self->_has)
  {
    clientTimestampSeconds = self->_clientTimestampSeconds;
    PBDataWriterWriteUint64Field();
    v4 = v8;
  }

  if (self->_encryptedParticipantPayload)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_adopter)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if ((*&self->_has & 2) != 0)
  {
    pushPriority = self->_pushPriority;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_authCredential)
  {
    [v4 setAuthCredential:?];
    v4 = v5;
  }

  if (self->_channelIdentity)
  {
    [v5 setChannelIdentity:?];
    v4 = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 13) = self->_requestFlag;
    *(v4 + 64) |= 4u;
  }

  if (self->_uuid)
  {
    [v5 setUuid:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_clientTimestampSeconds;
    *(v4 + 64) |= 1u;
  }

  if (self->_encryptedParticipantPayload)
  {
    [v5 setEncryptedParticipantPayload:?];
    v4 = v5;
  }

  if (self->_adopter)
  {
    [v5 setAdopter:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 12) = self->_pushPriority;
    *(v4 + 64) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(AuthCredential *)self->_authCredential copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(ChannelIdentity *)self->_channelIdentity copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 52) = self->_requestFlag;
    *(v5 + 64) |= 4u;
  }

  v10 = [(NSData *)self->_uuid copyWithZone:a3];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_clientTimestampSeconds;
    *(v5 + 64) |= 1u;
  }

  v12 = [(NSData *)self->_encryptedParticipantPayload copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSString *)self->_adopter copyWithZone:a3];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 48) = self->_pushPriority;
    *(v5 + 64) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  authCredential = self->_authCredential;
  if (authCredential | *(v4 + 3))
  {
    if (![(AuthCredential *)authCredential isEqual:?])
    {
      goto LABEL_27;
    }
  }

  channelIdentity = self->_channelIdentity;
  if (channelIdentity | *(v4 + 4))
  {
    if (![(ChannelIdentity *)channelIdentity isEqual:?])
    {
      goto LABEL_27;
    }
  }

  has = self->_has;
  v8 = *(v4 + 64);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 64) & 4) == 0 || self->_requestFlag != *(v4 + 13))
    {
      goto LABEL_27;
    }
  }

  else if ((*(v4 + 64) & 4) != 0)
  {
    goto LABEL_27;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 7))
  {
    if (![(NSData *)uuid isEqual:?])
    {
LABEL_27:
      v13 = 0;
      goto LABEL_28;
    }

    has = self->_has;
  }

  v10 = *(v4 + 64);
  if (has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_clientTimestampSeconds != *(v4 + 1))
    {
      goto LABEL_27;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_27;
  }

  encryptedParticipantPayload = self->_encryptedParticipantPayload;
  if (encryptedParticipantPayload | *(v4 + 5) && ![(NSData *)encryptedParticipantPayload isEqual:?])
  {
    goto LABEL_27;
  }

  adopter = self->_adopter;
  if (adopter | *(v4 + 2))
  {
    if (![(NSString *)adopter isEqual:?])
    {
      goto LABEL_27;
    }
  }

  v13 = (*(v4 + 64) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_pushPriority != *(v4 + 12))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  authCredential = self->_authCredential;
  v6 = *(v4 + 3);
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  channelIdentity = self->_channelIdentity;
  v8 = *(v4 + 4);
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

  v4 = v9;
LABEL_13:
  if ((*(v4 + 64) & 4) != 0)
  {
    self->_requestFlag = *(v4 + 13);
    *&self->_has |= 4u;
  }

  if (*(v4 + 7))
  {
    [(ChannelActivityActivationRequest *)self setUuid:?];
    v4 = v9;
  }

  if (*(v4 + 64))
  {
    self->_clientTimestampSeconds = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 5))
  {
    [(ChannelActivityActivationRequest *)self setEncryptedParticipantPayload:?];
    v4 = v9;
  }

  if (*(v4 + 2))
  {
    [(ChannelActivityActivationRequest *)self setAdopter:?];
    v4 = v9;
  }

  if ((*(v4 + 64) & 2) != 0)
  {
    self->_pushPriority = *(v4 + 12);
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end