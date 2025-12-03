@interface PSGPBTypingSpeed
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMessageLength:(BOOL)length;
- (void)setHasMessageWords:(BOOL)words;
- (void)writeTo:(id)to;
@end

@implementation PSGPBTypingSpeed

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 7))
  {
    [(PSGPBTypingSpeed *)self setZkwExperimentId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 8))
  {
    [(PSGPBTypingSpeed *)self setZkwTreatmentId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 9))
  {
    [(PSGPBTypingSpeed *)self setZkwTreatmentName:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(PSGPBTypingSpeed *)self setWbExperimentId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(PSGPBTypingSpeed *)self setWbTreatmentId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 6))
  {
    [(PSGPBTypingSpeed *)self setWbTreatmentName:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 1))
  {
    [(PSGPBTypingSpeed *)self setLocaleIdentifier:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 80);
  if (v5)
  {
    self->_messageDurationMilliseconds = fromCopy[4];
    *&self->_has |= 1u;
    v5 = *(fromCopy + 80);
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

  else if ((fromCopy[20] & 2) == 0)
  {
    goto LABEL_17;
  }

  self->_messageLength = fromCopy[5];
  *&self->_has |= 2u;
  if ((fromCopy[20] & 4) != 0)
  {
LABEL_18:
    self->_messageWords = fromCopy[6];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  zkwExperimentId = self->_zkwExperimentId;
  if (zkwExperimentId | *(equalCopy + 7))
  {
    if (![(NSString *)zkwExperimentId isEqual:?])
    {
      goto LABEL_30;
    }
  }

  zkwTreatmentId = self->_zkwTreatmentId;
  if (zkwTreatmentId | *(equalCopy + 8))
  {
    if (![(NSString *)zkwTreatmentId isEqual:?])
    {
      goto LABEL_30;
    }
  }

  zkwTreatmentName = self->_zkwTreatmentName;
  if (zkwTreatmentName | *(equalCopy + 9))
  {
    if (![(NSString *)zkwTreatmentName isEqual:?])
    {
      goto LABEL_30;
    }
  }

  wbExperimentId = self->_wbExperimentId;
  if (wbExperimentId | *(equalCopy + 4))
  {
    if (![(NSString *)wbExperimentId isEqual:?])
    {
      goto LABEL_30;
    }
  }

  wbTreatmentId = self->_wbTreatmentId;
  if (wbTreatmentId | *(equalCopy + 5))
  {
    if (![(NSString *)wbTreatmentId isEqual:?])
    {
      goto LABEL_30;
    }
  }

  wbTreatmentName = self->_wbTreatmentName;
  if (wbTreatmentName | *(equalCopy + 6))
  {
    if (![(NSString *)wbTreatmentName isEqual:?])
    {
      goto LABEL_30;
    }
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)localeIdentifier isEqual:?])
    {
      goto LABEL_30;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 80) & 1) == 0 || self->_messageDurationMilliseconds != *(equalCopy + 4))
    {
      goto LABEL_30;
    }
  }

  else if (*(equalCopy + 80))
  {
LABEL_30:
    v12 = 0;
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 80) & 2) == 0 || self->_messageLength != *(equalCopy + 5))
    {
      goto LABEL_30;
    }
  }

  else if ((*(equalCopy + 80) & 2) != 0)
  {
    goto LABEL_30;
  }

  v12 = (*(equalCopy + 80) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 80) & 4) == 0 || self->_messageWords != *(equalCopy + 6))
    {
      goto LABEL_30;
    }

    v12 = 1;
  }

LABEL_31:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_zkwExperimentId copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(NSString *)self->_zkwTreatmentId copyWithZone:zone];
  v9 = *(v5 + 64);
  *(v5 + 64) = v8;

  v10 = [(NSString *)self->_zkwTreatmentName copyWithZone:zone];
  v11 = *(v5 + 72);
  *(v5 + 72) = v10;

  v12 = [(NSString *)self->_wbExperimentId copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NSString *)self->_wbTreatmentId copyWithZone:zone];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  v16 = [(NSString *)self->_wbTreatmentName copyWithZone:zone];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  v18 = [(NSString *)self->_localeIdentifier copyWithZone:zone];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_zkwExperimentId)
  {
    [toCopy setZkwExperimentId:?];
    toCopy = v6;
  }

  if (self->_zkwTreatmentId)
  {
    [v6 setZkwTreatmentId:?];
    toCopy = v6;
  }

  if (self->_zkwTreatmentName)
  {
    [v6 setZkwTreatmentName:?];
    toCopy = v6;
  }

  if (self->_wbExperimentId)
  {
    [v6 setWbExperimentId:?];
    toCopy = v6;
  }

  if (self->_wbTreatmentId)
  {
    [v6 setWbTreatmentId:?];
    toCopy = v6;
  }

  if (self->_wbTreatmentName)
  {
    [v6 setWbTreatmentName:?];
    toCopy = v6;
  }

  if (self->_localeIdentifier)
  {
    [v6 setLocaleIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 4) = self->_messageDurationMilliseconds;
    *(toCopy + 80) |= 1u;
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

  *(toCopy + 5) = self->_messageLength;
  *(toCopy + 80) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_18:
    *(toCopy + 6) = self->_messageWords;
    *(toCopy + 80) |= 4u;
  }

LABEL_19:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_zkwExperimentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_zkwTreatmentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_zkwTreatmentName)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_wbExperimentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_wbTreatmentId)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_wbTreatmentName)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_localeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    messageDurationMilliseconds = self->_messageDurationMilliseconds;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
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
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_18:
    messageWords = self->_messageWords;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

LABEL_19:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  zkwExperimentId = self->_zkwExperimentId;
  if (zkwExperimentId)
  {
    [dictionary setObject:zkwExperimentId forKey:@"zkw_experiment_id"];
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
  dictionaryRepresentation = [(PSGPBTypingSpeed *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasMessageWords:(BOOL)words
{
  if (words)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMessageLength:(BOOL)length
{
  if (length)
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