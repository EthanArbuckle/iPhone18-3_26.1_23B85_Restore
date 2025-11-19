@interface ChannelActivityActivationResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsStatus:(id)a3;
- (int)status;
- (unint64_t)hash;
- (void)addParticipantPayload:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasResponseMessageIndex:(BOOL)a3;
- (void)setHasRetryIntervalSeconds:(BOOL)a3;
- (void)setHasServerTimestampSeconds:(BOOL)a3;
- (void)setHasStatus:(BOOL)a3;
- (void)setHasTotalResponseMessages:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ChannelActivityActivationResponse

- (int)status
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_status;
  }

  else
  {
    return 0;
  }
}

- (void)setHasStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SUCCESS"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"AUTH_EXPIRED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AUTH_FAILED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BAD_REQUEST"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CHANNEL_IDENTITY_VALIDATION_FAILED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"INTERNAL_ERROR"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"STALE_PUBLISH_REJECTED"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"RATE_LIMITED"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"INVALID_NONCE"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasServerTimestampSeconds:(BOOL)a3
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

- (void)setHasVersion:(BOOL)a3
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

- (void)addParticipantPayload:(id)a3
{
  v4 = a3;
  participantPayloads = self->_participantPayloads;
  v8 = v4;
  if (!participantPayloads)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_participantPayloads;
    self->_participantPayloads = v6;

    v4 = v8;
    participantPayloads = self->_participantPayloads;
  }

  [(NSMutableArray *)participantPayloads addObject:v4];
}

- (void)setHasResponseMessageIndex:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTotalResponseMessages:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasRetryIntervalSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ChannelActivityActivationResponse;
  v4 = [(ChannelActivityActivationResponse *)&v8 description];
  v5 = [(ChannelActivityActivationResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 0x20) != 0)
  {
    status = self->_status;
    if (status >= 9)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_status];
    }

    else
    {
      v5 = off_27843DF58[status];
    }

    [v3 setObject:v5 forKey:@"status"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_serverTimestampSeconds];
    [v3 setObject:v8 forKey:@"server_timestamp_seconds"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_version];
    [v3 setObject:v9 forKey:@"version"];
  }

  if ([(NSMutableArray *)self->_participantPayloads count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_participantPayloads, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = self->_participantPayloads;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"participant_payload"];
  }

  v17 = self->_has;
  if ((v17 & 8) != 0)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_responseMessageIndex];
    [v3 setObject:v21 forKey:@"response_message_index"];

    v17 = self->_has;
    if ((v17 & 0x40) == 0)
    {
LABEL_23:
      if ((v17 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_23;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_totalResponseMessages];
  [v3 setObject:v22 forKey:@"total_response_messages"];

  v17 = self->_has;
  if ((v17 & 1) == 0)
  {
LABEL_24:
    if ((v17 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_31:
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_activationExpirySeconds];
  [v3 setObject:v23 forKey:@"activation_expiry_seconds"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_25:
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_retryIntervalSeconds];
    [v3 setObject:v18 forKey:@"retry_interval_seconds"];
  }

LABEL_26:
  v19 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((*&self->_has & 0x20) != 0)
  {
    status = self->_status;
    PBDataWriterWriteInt32Field();
  }

  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    serverTimestampSeconds = self->_serverTimestampSeconds;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint64Field();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = self->_participantPayloads;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v15 = self->_has;
  if ((v15 & 8) != 0)
  {
    responseMessageIndex = self->_responseMessageIndex;
    PBDataWriterWriteUint32Field();
    v15 = self->_has;
    if ((v15 & 0x40) == 0)
    {
LABEL_18:
      if ((v15 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_24:
      activationExpirySeconds = self->_activationExpirySeconds;
      PBDataWriterWriteUint64Field();
      if ((*&self->_has & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_18;
  }

  totalResponseMessages = self->_totalResponseMessages;
  PBDataWriterWriteUint32Field();
  v15 = self->_has;
  if (v15)
  {
    goto LABEL_24;
  }

LABEL_19:
  if ((v15 & 0x10) != 0)
  {
LABEL_20:
    retryIntervalSeconds = self->_retryIntervalSeconds;
    PBDataWriterWriteUint32Field();
  }

LABEL_21:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 0x20) != 0)
  {
    v4[12] = self->_status;
    *(v4 + 64) |= 0x20u;
  }

  v11 = v4;
  if (self->_uuid)
  {
    [v4 setUuid:?];
    v4 = v11;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_serverTimestampSeconds;
    *(v4 + 64) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 3) = self->_version;
    *(v4 + 64) |= 4u;
  }

  if ([(ChannelActivityActivationResponse *)self participantPayloadsCount])
  {
    [v11 clearParticipantPayloads];
    v6 = [(ChannelActivityActivationResponse *)self participantPayloadsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(ChannelActivityActivationResponse *)self participantPayloadAtIndex:i];
        [v11 addParticipantPayload:v9];
      }
    }
  }

  v10 = self->_has;
  if ((v10 & 8) != 0)
  {
    v11[10] = self->_responseMessageIndex;
    *(v11 + 64) |= 8u;
    v10 = self->_has;
    if ((v10 & 0x40) == 0)
    {
LABEL_15:
      if ((v10 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_15;
  }

  v11[13] = self->_totalResponseMessages;
  *(v11 + 64) |= 0x40u;
  v10 = self->_has;
  if ((v10 & 1) == 0)
  {
LABEL_16:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_23:
  *(v11 + 1) = self->_activationExpirySeconds;
  *(v11 + 64) |= 1u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_17:
    v11[11] = self->_retryIntervalSeconds;
    *(v11 + 64) |= 0x10u;
  }

LABEL_18:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 48) = self->_status;
    *(v5 + 64) |= 0x20u;
  }

  v7 = [(NSData *)self->_uuid copyWithZone:a3];
  v8 = *(v6 + 56);
  *(v6 + 56) = v7;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_serverTimestampSeconds;
    *(v6 + 64) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 24) = self->_version;
    *(v6 + 64) |= 4u;
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

        v15 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{a3, v19}];
        [v6 addParticipantPayload:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = self->_has;
  if ((v16 & 8) != 0)
  {
    *(v6 + 40) = self->_responseMessageIndex;
    *(v6 + 64) |= 8u;
    v16 = self->_has;
    if ((v16 & 0x40) == 0)
    {
LABEL_16:
      if ((v16 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_22:
      *(v6 + 8) = self->_activationExpirySeconds;
      *(v6 + 64) |= 1u;
      if ((*&self->_has & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_16;
  }

  *(v6 + 52) = self->_totalResponseMessages;
  *(v6 + 64) |= 0x40u;
  v16 = self->_has;
  if (v16)
  {
    goto LABEL_22;
  }

LABEL_17:
  if ((v16 & 0x10) != 0)
  {
LABEL_18:
    *(v6 + 44) = self->_retryIntervalSeconds;
    *(v6 + 64) |= 0x10u;
  }

LABEL_19:
  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  has = self->_has;
  v6 = *(v4 + 64);
  if ((has & 0x20) != 0)
  {
    if ((*(v4 + 64) & 0x20) == 0 || self->_status != *(v4 + 12))
    {
      goto LABEL_42;
    }
  }

  else if ((*(v4 + 64) & 0x20) != 0)
  {
    goto LABEL_42;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 7))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_42;
    }

    has = self->_has;
  }

  v8 = *(v4 + 64);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 64) & 2) == 0 || self->_serverTimestampSeconds != *(v4 + 2))
    {
      goto LABEL_42;
    }
  }

  else if ((*(v4 + 64) & 2) != 0)
  {
    goto LABEL_42;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 64) & 4) == 0 || self->_version != *(v4 + 3))
    {
      goto LABEL_42;
    }
  }

  else if ((*(v4 + 64) & 4) != 0)
  {
    goto LABEL_42;
  }

  participantPayloads = self->_participantPayloads;
  if (participantPayloads | *(v4 + 4))
  {
    if ([(NSMutableArray *)participantPayloads isEqual:?])
    {
      has = self->_has;
      goto LABEL_23;
    }

LABEL_42:
    v10 = 0;
    goto LABEL_43;
  }

LABEL_23:
  if ((has & 8) != 0)
  {
    if ((*(v4 + 64) & 8) == 0 || self->_responseMessageIndex != *(v4 + 10))
    {
      goto LABEL_42;
    }
  }

  else if ((*(v4 + 64) & 8) != 0)
  {
    goto LABEL_42;
  }

  if ((has & 0x40) != 0)
  {
    if ((*(v4 + 64) & 0x40) == 0 || self->_totalResponseMessages != *(v4 + 13))
    {
      goto LABEL_42;
    }
  }

  else if ((*(v4 + 64) & 0x40) != 0)
  {
    goto LABEL_42;
  }

  if (has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_activationExpirySeconds != *(v4 + 1))
    {
      goto LABEL_42;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_42;
  }

  v10 = (*(v4 + 64) & 0x10) == 0;
  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 64) & 0x10) == 0 || self->_retryIntervalSeconds != *(v4 + 11))
    {
      goto LABEL_42;
    }

    v10 = 1;
  }

LABEL_43:

  return v10;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x20) != 0)
  {
    v3 = 2654435761 * self->_status;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_uuid hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761u * self->_serverTimestampSeconds;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_6:
      v6 = 2654435761u * self->_version;
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  v7 = [(NSMutableArray *)self->_participantPayloads hash];
  if ((*&self->_has & 8) != 0)
  {
    v8 = 2654435761 * self->_responseMessageIndex;
    if ((*&self->_has & 0x40) != 0)
    {
LABEL_11:
      v9 = 2654435761 * self->_totalResponseMessages;
      if (*&self->_has)
      {
        goto LABEL_12;
      }

LABEL_16:
      v10 = 0;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_13;
      }

LABEL_17:
      v11 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_11;
    }
  }

  v9 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v10 = 2654435761u * self->_activationExpirySeconds;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  v11 = 2654435761 * self->_retryIntervalSeconds;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if ((v4[16] & 0x20) != 0)
  {
    self->_status = v4[12];
    *&self->_has |= 0x20u;
  }

  if (*(v4 + 7))
  {
    [(ChannelActivityActivationResponse *)self setUuid:?];
  }

  v6 = *(v5 + 64);
  if ((v6 & 2) != 0)
  {
    self->_serverTimestampSeconds = *(v5 + 2);
    *&self->_has |= 2u;
    v6 = *(v5 + 64);
  }

  if ((v6 & 4) != 0)
  {
    self->_version = *(v5 + 3);
    *&self->_has |= 4u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = *(v5 + 4);
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

        [(ChannelActivityActivationResponse *)self addParticipantPayload:*(*(&v14 + 1) + 8 * i), v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = *(v5 + 64);
  if ((v12 & 8) != 0)
  {
    self->_responseMessageIndex = *(v5 + 10);
    *&self->_has |= 8u;
    v12 = *(v5 + 64);
    if ((v12 & 0x40) == 0)
    {
LABEL_18:
      if ((v12 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_24:
      self->_activationExpirySeconds = *(v5 + 1);
      *&self->_has |= 1u;
      if ((*(v5 + 64) & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((*(v5 + 64) & 0x40) == 0)
  {
    goto LABEL_18;
  }

  self->_totalResponseMessages = *(v5 + 13);
  *&self->_has |= 0x40u;
  v12 = *(v5 + 64);
  if (v12)
  {
    goto LABEL_24;
  }

LABEL_19:
  if ((v12 & 0x10) != 0)
  {
LABEL_20:
    self->_retryIntervalSeconds = *(v5 + 11);
    *&self->_has |= 0x10u;
  }

LABEL_21:

  v13 = *MEMORY[0x277D85DE8];
}

@end