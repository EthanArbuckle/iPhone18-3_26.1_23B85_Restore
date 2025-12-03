@interface ChannelActivityPollingResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsStatus:(id)status;
- (int)status;
- (unint64_t)hash;
- (void)addParticipantPayload:(id)payload;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasResponseMessageIndex:(BOOL)index;
- (void)setHasRetryIntervalSeconds:(BOOL)seconds;
- (void)setHasStatus:(BOOL)status;
- (void)setHasTotalResponseMessages:(BOOL)messages;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation ChannelActivityPollingResponse

- (int)status
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_status;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStatus:(BOOL)status
{
  if (status)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"SUCCESS"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"AUTH_EXPIRED"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"AUTH_FAILED"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"BAD_REQUEST"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"CHANNEL_IDENTITY_VALIDATION_FAILED"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"INTERNAL_ERROR"])
  {
    v4 = 5;
  }

  else if ([statusCopy isEqualToString:@"STALE_PUBLISH_REJECTED"])
  {
    v4 = 6;
  }

  else if ([statusCopy isEqualToString:@"RATE_LIMITED"])
  {
    v4 = 7;
  }

  else if ([statusCopy isEqualToString:@"INVALID_NONCE"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

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

- (void)addParticipantPayload:(id)payload
{
  payloadCopy = payload;
  participantPayloads = self->_participantPayloads;
  v8 = payloadCopy;
  if (!participantPayloads)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_participantPayloads;
    self->_participantPayloads = v6;

    payloadCopy = v8;
    participantPayloads = self->_participantPayloads;
  }

  [(NSMutableArray *)participantPayloads addObject:payloadCopy];
}

- (void)setHasResponseMessageIndex:(BOOL)index
{
  if (index)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTotalResponseMessages:(BOOL)messages
{
  if (messages)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasRetryIntervalSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ChannelActivityPollingResponse;
  v4 = [(ChannelActivityPollingResponse *)&v8 description];
  dictionaryRepresentation = [(ChannelActivityPollingResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 0x10) != 0)
  {
    status = self->_status;
    if (status >= 9)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_status];
    }

    else
    {
      v5 = off_27843E000[status];
    }

    [dictionary setObject:v5 forKey:@"status"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_serverTimestampSeconds];
    [dictionary setObject:v8 forKey:@"server_timestamp_seconds"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_version];
    [dictionary setObject:v9 forKey:@"version"];
  }

  if ([(NSMutableArray *)self->_participantPayloads count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_participantPayloads, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = self->_participantPayloads;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"participant_payload"];
  }

  v17 = self->_has;
  if ((v17 & 4) != 0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_responseMessageIndex];
    [dictionary setObject:v21 forKey:@"response_message_index"];

    v17 = self->_has;
    if ((v17 & 0x20) == 0)
    {
LABEL_23:
      if ((v17 & 8) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_23;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_totalResponseMessages];
  [dictionary setObject:v22 forKey:@"total_response_messages"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_24:
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_retryIntervalSeconds];
    [dictionary setObject:v18 forKey:@"retry_interval_seconds"];
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if ((*&self->_has & 0x10) != 0)
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }

  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if (has)
  {
    serverTimestampSeconds = self->_serverTimestampSeconds;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint64Field();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = self->_participantPayloads;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = self->_has;
  if ((v15 & 4) == 0)
  {
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_22:
    totalResponseMessages = self->_totalResponseMessages;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  responseMessageIndex = self->_responseMessageIndex;
  PBDataWriterWriteUint32Field();
  v15 = self->_has;
  if ((v15 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  if ((v15 & 8) != 0)
  {
LABEL_19:
    retryIntervalSeconds = self->_retryIntervalSeconds;
    PBDataWriterWriteUint32Field();
  }

LABEL_20:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x10) != 0)
  {
    toCopy[10] = self->_status;
    *(toCopy + 56) |= 0x10u;
  }

  v11 = toCopy;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
    toCopy = v11;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_serverTimestampSeconds;
    *(toCopy + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_version;
    *(toCopy + 56) |= 2u;
  }

  if ([(ChannelActivityPollingResponse *)self participantPayloadsCount])
  {
    [v11 clearParticipantPayloads];
    participantPayloadsCount = [(ChannelActivityPollingResponse *)self participantPayloadsCount];
    if (participantPayloadsCount)
    {
      v7 = participantPayloadsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(ChannelActivityPollingResponse *)self participantPayloadAtIndex:i];
        [v11 addParticipantPayload:v9];
      }
    }
  }

  v10 = self->_has;
  if ((v10 & 4) != 0)
  {
    v11[8] = self->_responseMessageIndex;
    *(v11 + 56) |= 4u;
    v10 = self->_has;
    if ((v10 & 0x20) == 0)
    {
LABEL_15:
      if ((v10 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_15;
  }

  v11[11] = self->_totalResponseMessages;
  *(v11 + 56) |= 0x20u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    v11[9] = self->_retryIntervalSeconds;
    *(v11 + 56) |= 8u;
  }

LABEL_17:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 40) = self->_status;
    *(v5 + 56) |= 0x10u;
  }

  v7 = [(NSData *)self->_uuid copyWithZone:zone];
  v8 = *(v6 + 48);
  *(v6 + 48) = v7;

  has = self->_has;
  if (has)
  {
    *(v6 + 8) = self->_serverTimestampSeconds;
    *(v6 + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_version;
    *(v6 + 56) |= 2u;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_participantPayloads;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{zone, v19}];
        [v6 addParticipantPayload:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = self->_has;
  if ((v16 & 4) == 0)
  {
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_20:
    *(v6 + 44) = self->_totalResponseMessages;
    *(v6 + 56) |= 0x20u;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *(v6 + 32) = self->_responseMessageIndex;
  *(v6 + 56) |= 4u;
  v16 = self->_has;
  if ((v16 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  if ((v16 & 8) != 0)
  {
LABEL_17:
    *(v6 + 36) = self->_retryIntervalSeconds;
    *(v6 + 56) |= 8u;
  }

LABEL_18:
  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  has = self->_has;
  v6 = *(equalCopy + 56);
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 56) & 0x10) == 0 || self->_status != *(equalCopy + 10))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 56) & 0x10) != 0)
  {
    goto LABEL_37;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 6))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_37;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 56);
  if (has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_serverTimestampSeconds != *(equalCopy + 1))
    {
      goto LABEL_37;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_37;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_version != *(equalCopy + 2))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_37;
  }

  participantPayloads = self->_participantPayloads;
  if (participantPayloads | *(equalCopy + 3))
  {
    if ([(NSMutableArray *)participantPayloads isEqual:?])
    {
      has = self->_has;
      goto LABEL_23;
    }

LABEL_37:
    v10 = 0;
    goto LABEL_38;
  }

LABEL_23:
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_responseMessageIndex != *(equalCopy + 8))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_37;
  }

  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 56) & 0x20) == 0 || self->_totalResponseMessages != *(equalCopy + 11))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 56) & 0x20) != 0)
  {
    goto LABEL_37;
  }

  v10 = (*(equalCopy + 56) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 56) & 8) == 0 || self->_retryIntervalSeconds != *(equalCopy + 9))
    {
      goto LABEL_37;
    }

    v10 = 1;
  }

LABEL_38:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v3 = 2654435761 * self->_status;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_uuid hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_serverTimestampSeconds;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v6 = 2654435761u * self->_version;
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  v7 = [(NSMutableArray *)self->_participantPayloads hash];
  if ((*&self->_has & 4) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v9 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

  v8 = 2654435761 * self->_responseMessageIndex;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v9 = 2654435761 * self->_totalResponseMessages;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v10 = 2654435761 * self->_retryIntervalSeconds;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[14] & 0x10) != 0)
  {
    self->_status = fromCopy[10];
    *&self->_has |= 0x10u;
  }

  if (*(fromCopy + 6))
  {
    [(ChannelActivityPollingResponse *)self setUuid:?];
  }

  v6 = *(v5 + 56);
  if (v6)
  {
    self->_serverTimestampSeconds = *(v5 + 1);
    *&self->_has |= 1u;
    v6 = *(v5 + 56);
  }

  if ((v6 & 2) != 0)
  {
    self->_version = *(v5 + 2);
    *&self->_has |= 2u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = *(v5 + 3);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(ChannelActivityPollingResponse *)self addParticipantPayload:*(*(&v14 + 1) + 8 * i), v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *(v5 + 56);
  if ((v12 & 4) == 0)
  {
    if ((*(v5 + 56) & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_22:
    self->_totalResponseMessages = *(v5 + 11);
    *&self->_has |= 0x20u;
    if ((*(v5 + 56) & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  self->_responseMessageIndex = *(v5 + 8);
  *&self->_has |= 4u;
  v12 = *(v5 + 56);
  if ((v12 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  if ((v12 & 8) != 0)
  {
LABEL_19:
    self->_retryIntervalSeconds = *(v5 + 9);
    *&self->_has |= 8u;
  }

LABEL_20:

  v13 = *MEMORY[0x277D85DE8];
}

@end