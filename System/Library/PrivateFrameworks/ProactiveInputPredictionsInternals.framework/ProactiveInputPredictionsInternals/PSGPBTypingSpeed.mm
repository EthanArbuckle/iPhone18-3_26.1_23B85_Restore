@interface PSGPBTypingSpeed
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMessageLength:(BOOL)a3;
- (void)setHasMessageWords:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PSGPBTypingSpeed

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 7))
  {
    [(PSGPBTypingSpeed *)self setZkwExperimentId:?];
    v4 = v6;
  }

  if (*(v4 + 8))
  {
    [(PSGPBTypingSpeed *)self setZkwTreatmentId:?];
    v4 = v6;
  }

  if (*(v4 + 9))
  {
    [(PSGPBTypingSpeed *)self setZkwTreatmentName:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(PSGPBTypingSpeed *)self setWbExperimentId:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(PSGPBTypingSpeed *)self setWbTreatmentId:?];
    v4 = v6;
  }

  if (*(v4 + 6))
  {
    [(PSGPBTypingSpeed *)self setWbTreatmentName:?];
    v4 = v6;
  }

  if (*(v4 + 1))
  {
    [(PSGPBTypingSpeed *)self setLocaleIdentifier:?];
    v4 = v6;
  }

  v5 = *(v4 + 80);
  if (v5)
  {
    self->_messageDurationMilliseconds = v4[4];
    *&self->_has |= 1u;
    v5 = *(v4 + 80);
    if ((v5 & 2) == 0)
    {
LABEL_17:
      if ((v5 & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((v4[20] & 2) == 0)
  {
    goto LABEL_17;
  }

  self->_messageLength = v4[5];
  *&self->_has |= 2u;
  if ((v4[20] & 4) != 0)
  {
LABEL_18:
    self->_messageWords = v4[6];
    *&self->_has |= 4u;
  }

LABEL_19:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_zkwExperimentId hash];
  v4 = [(NSString *)self->_zkwTreatmentId hash];
  v5 = [(NSString *)self->_zkwTreatmentName hash];
  v6 = [(NSString *)self->_wbExperimentId hash];
  v7 = [(NSString *)self->_wbTreatmentId hash];
  v8 = [(NSString *)self->_wbTreatmentName hash];
  v9 = [(NSString *)self->_localeIdentifier hash];
  if ((*&self->_has & 1) == 0)
  {
    v10 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

  v10 = 2654435761 * self->_messageDurationMilliseconds;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = 2654435761 * self->_messageLength;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v12 = 2654435761 * self->_messageWords;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  zkwExperimentId = self->_zkwExperimentId;
  if (zkwExperimentId | *(v4 + 7))
  {
    if (![(NSString *)zkwExperimentId isEqual:?])
    {
      goto LABEL_30;
    }
  }

  zkwTreatmentId = self->_zkwTreatmentId;
  if (zkwTreatmentId | *(v4 + 8))
  {
    if (![(NSString *)zkwTreatmentId isEqual:?])
    {
      goto LABEL_30;
    }
  }

  zkwTreatmentName = self->_zkwTreatmentName;
  if (zkwTreatmentName | *(v4 + 9))
  {
    if (![(NSString *)zkwTreatmentName isEqual:?])
    {
      goto LABEL_30;
    }
  }

  wbExperimentId = self->_wbExperimentId;
  if (wbExperimentId | *(v4 + 4))
  {
    if (![(NSString *)wbExperimentId isEqual:?])
    {
      goto LABEL_30;
    }
  }

  wbTreatmentId = self->_wbTreatmentId;
  if (wbTreatmentId | *(v4 + 5))
  {
    if (![(NSString *)wbTreatmentId isEqual:?])
    {
      goto LABEL_30;
    }
  }

  wbTreatmentName = self->_wbTreatmentName;
  if (wbTreatmentName | *(v4 + 6))
  {
    if (![(NSString *)wbTreatmentName isEqual:?])
    {
      goto LABEL_30;
    }
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier | *(v4 + 1))
  {
    if (![(NSString *)localeIdentifier isEqual:?])
    {
      goto LABEL_30;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 80) & 1) == 0 || self->_messageDurationMilliseconds != *(v4 + 4))
    {
      goto LABEL_30;
    }
  }

  else if (*(v4 + 80))
  {
LABEL_30:
    v12 = 0;
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 80) & 2) == 0 || self->_messageLength != *(v4 + 5))
    {
      goto LABEL_30;
    }
  }

  else if ((*(v4 + 80) & 2) != 0)
  {
    goto LABEL_30;
  }

  v12 = (*(v4 + 80) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 80) & 4) == 0 || self->_messageWords != *(v4 + 6))
    {
      goto LABEL_30;
    }

    v12 = 1;
  }

LABEL_31:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_zkwExperimentId copyWithZone:a3];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(NSString *)self->_zkwTreatmentId copyWithZone:a3];
  v9 = *(v5 + 64);
  *(v5 + 64) = v8;

  v10 = [(NSString *)self->_zkwTreatmentName copyWithZone:a3];
  v11 = *(v5 + 72);
  *(v5 + 72) = v10;

  v12 = [(NSString *)self->_wbExperimentId copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NSString *)self->_wbTreatmentId copyWithZone:a3];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  v16 = [(NSString *)self->_wbTreatmentName copyWithZone:a3];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  v18 = [(NSString *)self->_localeIdentifier copyWithZone:a3];
  v19 = *(v5 + 8);
  *(v5 + 8) = v18;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 20) = self->_messageLength;
    *(v5 + 80) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 16) = self->_messageDurationMilliseconds;
  *(v5 + 80) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_messageWords;
    *(v5 + 80) |= 4u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_zkwExperimentId)
  {
    [v4 setZkwExperimentId:?];
    v4 = v6;
  }

  if (self->_zkwTreatmentId)
  {
    [v6 setZkwTreatmentId:?];
    v4 = v6;
  }

  if (self->_zkwTreatmentName)
  {
    [v6 setZkwTreatmentName:?];
    v4 = v6;
  }

  if (self->_wbExperimentId)
  {
    [v6 setWbExperimentId:?];
    v4 = v6;
  }

  if (self->_wbTreatmentId)
  {
    [v6 setWbTreatmentId:?];
    v4 = v6;
  }

  if (self->_wbTreatmentName)
  {
    [v6 setWbTreatmentName:?];
    v4 = v6;
  }

  if (self->_localeIdentifier)
  {
    [v6 setLocaleIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 4) = self->_messageDurationMilliseconds;
    *(v4 + 80) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_17:
      if ((has & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_17;
  }

  *(v4 + 5) = self->_messageLength;
  *(v4 + 80) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_18:
    *(v4 + 6) = self->_messageWords;
    *(v4 + 80) |= 4u;
  }

LABEL_19:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_zkwExperimentId)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_zkwTreatmentId)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_zkwTreatmentName)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_wbExperimentId)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_wbTreatmentId)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_wbTreatmentName)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_localeIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    messageDurationMilliseconds = self->_messageDurationMilliseconds;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_17:
      if ((has & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_17;
  }

  messageLength = self->_messageLength;
  PBDataWriterWriteInt32Field();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_18:
    messageWords = self->_messageWords;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

LABEL_19:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  zkwExperimentId = self->_zkwExperimentId;
  if (zkwExperimentId)
  {
    [v3 setObject:zkwExperimentId forKey:@"zkw_experiment_id"];
  }

  zkwTreatmentId = self->_zkwTreatmentId;
  if (zkwTreatmentId)
  {
    [v4 setObject:zkwTreatmentId forKey:@"zkw_treatment_id"];
  }

  zkwTreatmentName = self->_zkwTreatmentName;
  if (zkwTreatmentName)
  {
    [v4 setObject:zkwTreatmentName forKey:@"zkw_treatment_name"];
  }

  wbExperimentId = self->_wbExperimentId;
  if (wbExperimentId)
  {
    [v4 setObject:wbExperimentId forKey:@"wb_experiment_id"];
  }

  wbTreatmentId = self->_wbTreatmentId;
  if (wbTreatmentId)
  {
    [v4 setObject:wbTreatmentId forKey:@"wb_treatment_id"];
  }

  wbTreatmentName = self->_wbTreatmentName;
  if (wbTreatmentName)
  {
    [v4 setObject:wbTreatmentName forKey:@"wb_treatment_name"];
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier)
  {
    [v4 setObject:localeIdentifier forKey:@"locale_identifier"];
  }

  has = self->_has;
  if (has)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInt:self->_messageDurationMilliseconds];
    [v4 setObject:v15 forKey:@"message_duration_milliseconds"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_17:
      if ((has & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_17;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithInt:self->_messageLength];
  [v4 setObject:v16 forKey:@"message_length"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_18:
    v13 = [MEMORY[0x277CCABB0] numberWithInt:self->_messageWords];
    [v4 setObject:v13 forKey:@"message_words"];
  }

LABEL_19:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PSGPBTypingSpeed;
  v4 = [(PSGPBTypingSpeed *)&v8 description];
  v5 = [(PSGPBTypingSpeed *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasMessageWords:(BOOL)a3
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

- (void)setHasMessageLength:(BOOL)a3
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

@end