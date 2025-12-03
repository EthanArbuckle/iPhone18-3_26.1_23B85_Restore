@interface SIRINLUEXTERNALAsrTokenInformation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAddSpaceAfter:(BOOL)after;
- (void)setHasBeginIndex:(BOOL)index;
- (void)setHasEndIndex:(BOOL)index;
- (void)setHasEndMilliSeconds:(BOOL)seconds;
- (void)setHasRemoveSpaceAfter:(BOOL)after;
- (void)setHasRemoveSpaceBefore:(BOOL)before;
- (void)setHasStartMilliSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALAsrTokenInformation

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(SIRINLUEXTERNALAsrTokenInformation *)self setPostItnText:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(SIRINLUEXTERNALAsrTokenInformation *)self setPhoneSequence:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(SIRINLUEXTERNALAsrTokenInformation *)self setIpaPhoneSequence:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 64);
  if ((v5 & 0x20) != 0)
  {
    self->_addSpaceAfter = *(fromCopy + 60);
    *&self->_has |= 0x20u;
    v5 = *(fromCopy + 64);
    if ((v5 & 0x40) == 0)
    {
LABEL_9:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((*(fromCopy + 64) & 0x40) == 0)
  {
    goto LABEL_9;
  }

  self->_removeSpaceAfter = *(fromCopy + 61);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 64);
  if ((v5 & 0x80) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_removeSpaceBefore = *(fromCopy + 62);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 64);
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_confidenceScore = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 64);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_beginIndex = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 64);
  if ((v5 & 4) == 0)
  {
LABEL_13:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_endIndex = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_14:
    if ((v5 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_25:
  self->_startMilliSeconds = *(fromCopy + 14);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 64) & 8) != 0)
  {
LABEL_15:
    self->_endMilliSeconds = *(fromCopy + 6);
    *&self->_has |= 8u;
  }

LABEL_16:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_postItnText hash];
  v4 = [(NSString *)self->_phoneSequence hash];
  v5 = [(NSString *)self->_ipaPhoneSequence hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v8 = 2654435761 * self->_addSpaceAfter;
    if ((*&self->_has & 0x40) != 0)
    {
LABEL_3:
      v9 = 2654435761 * self->_removeSpaceAfter;
      if ((*&self->_has & 0x80) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v10 = 0;
      if (*&self->_has)
      {
        goto LABEL_5;
      }

LABEL_12:
      v14 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v10 = 2654435761 * self->_removeSpaceBefore;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  confidenceScore = self->_confidenceScore;
  if (confidenceScore < 0.0)
  {
    confidenceScore = -confidenceScore;
  }

  *v6.i64 = floor(confidenceScore + 0.5);
  v12 = (confidenceScore - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v7, v6).i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

LABEL_13:
  if ((*&self->_has & 2) != 0)
  {
    v15 = 2654435761 * self->_beginIndex;
    if ((*&self->_has & 4) != 0)
    {
LABEL_15:
      v16 = 2654435761 * self->_endIndex;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      v17 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      v18 = 0;
      return v4 ^ v3 ^ v5 ^ v8 ^ v9 ^ v10 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
    }
  }

  else
  {
    v15 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_15;
    }
  }

  v16 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v17 = 2654435761 * self->_startMilliSeconds;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v18 = 2654435761 * self->_endMilliSeconds;
  return v4 ^ v3 ^ v5 ^ v8 ^ v9 ^ v10 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_56;
  }

  postItnText = self->_postItnText;
  if (postItnText | *(equalCopy + 6))
  {
    if (![(NSString *)postItnText isEqual:?])
    {
      goto LABEL_56;
    }
  }

  phoneSequence = self->_phoneSequence;
  if (phoneSequence | *(equalCopy + 5))
  {
    if (![(NSString *)phoneSequence isEqual:?])
    {
      goto LABEL_56;
    }
  }

  ipaPhoneSequence = self->_ipaPhoneSequence;
  if (ipaPhoneSequence | *(equalCopy + 4))
  {
    if (![(NSString *)ipaPhoneSequence isEqual:?])
    {
      goto LABEL_56;
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 64) & 0x20) == 0)
    {
      goto LABEL_56;
    }

    v8 = *(equalCopy + 60);
    if (self->_addSpaceAfter)
    {
      if ((*(equalCopy + 60) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (*(equalCopy + 60))
    {
      goto LABEL_56;
    }
  }

  else if ((*(equalCopy + 64) & 0x20) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 64) & 0x40) == 0)
    {
      goto LABEL_56;
    }

    v9 = *(equalCopy + 61);
    if (self->_removeSpaceAfter)
    {
      if ((*(equalCopy + 61) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (*(equalCopy + 61))
    {
      goto LABEL_56;
    }
  }

  else if ((*(equalCopy + 64) & 0x40) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 0x80) == 0)
  {
    if ((*(equalCopy + 64) & 0x80) == 0)
    {
      goto LABEL_14;
    }

LABEL_56:
    v11 = 0;
    goto LABEL_57;
  }

  if ((*(equalCopy + 64) & 0x80) == 0)
  {
    goto LABEL_56;
  }

  v10 = *(equalCopy + 62);
  if (self->_removeSpaceBefore)
  {
    if ((*(equalCopy + 62) & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if (*(equalCopy + 62))
  {
    goto LABEL_56;
  }

LABEL_14:
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_confidenceScore != *(equalCopy + 1))
    {
      goto LABEL_56;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_beginIndex != *(equalCopy + 4))
    {
      goto LABEL_56;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 64) & 4) == 0 || self->_endIndex != *(equalCopy + 5))
    {
      goto LABEL_56;
    }
  }

  else if ((*(equalCopy + 64) & 4) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 64) & 0x10) == 0 || self->_startMilliSeconds != *(equalCopy + 14))
    {
      goto LABEL_56;
    }
  }

  else if ((*(equalCopy + 64) & 0x10) != 0)
  {
    goto LABEL_56;
  }

  v11 = (*(equalCopy + 64) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 64) & 8) == 0 || self->_endMilliSeconds != *(equalCopy + 6))
    {
      goto LABEL_56;
    }

    v11 = 1;
  }

LABEL_57:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_postItnText copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_phoneSequence copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_ipaPhoneSequence copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v5 + 60) = self->_addSpaceAfter;
    *(v5 + 64) |= 0x20u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 61) = self->_removeSpaceAfter;
  *(v5 + 64) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v5 + 62) = self->_removeSpaceBefore;
  *(v5 + 64) |= 0x80u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v5 + 8) = self->_confidenceScore;
  *(v5 + 64) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v5 + 16) = self->_beginIndex;
  *(v5 + 64) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    *(v5 + 56) = self->_startMilliSeconds;
    *(v5 + 64) |= 0x10u;
    if ((*&self->_has & 8) == 0)
    {
      return v5;
    }

    goto LABEL_9;
  }

LABEL_16:
  *(v5 + 20) = self->_endIndex;
  *(v5 + 64) |= 4u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((has & 8) != 0)
  {
LABEL_9:
    *(v5 + 24) = self->_endMilliSeconds;
    *(v5 + 64) |= 8u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_postItnText)
  {
    [toCopy setPostItnText:?];
    toCopy = v6;
  }

  if (self->_phoneSequence)
  {
    [v6 setPhoneSequence:?];
    toCopy = v6;
  }

  if (self->_ipaPhoneSequence)
  {
    [v6 setIpaPhoneSequence:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(toCopy + 60) = self->_addSpaceAfter;
    *(toCopy + 64) |= 0x20u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_9:
      if ((has & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 61) = self->_removeSpaceAfter;
  *(toCopy + 64) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(toCopy + 62) = self->_removeSpaceBefore;
  *(toCopy + 64) |= 0x80u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(toCopy + 1) = *&self->_confidenceScore;
  *(toCopy + 64) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(toCopy + 4) = self->_beginIndex;
  *(toCopy + 64) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(toCopy + 5) = self->_endIndex;
  *(toCopy + 64) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_14:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_25:
  *(toCopy + 14) = self->_startMilliSeconds;
  *(toCopy + 64) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_15:
    *(toCopy + 6) = self->_endMilliSeconds;
    *(toCopy + 64) |= 8u;
  }

LABEL_16:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v14 = toCopy;
  if (self->_postItnText)
  {
    PBDataWriterWriteStringField();
    toCopy = v14;
  }

  if (self->_phoneSequence)
  {
    PBDataWriterWriteStringField();
    toCopy = v14;
  }

  if (self->_ipaPhoneSequence)
  {
    PBDataWriterWriteStringField();
    toCopy = v14;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    addSpaceAfter = self->_addSpaceAfter;
    PBDataWriterWriteBOOLField();
    toCopy = v14;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_9:
      if ((has & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_9;
  }

  removeSpaceAfter = self->_removeSpaceAfter;
  PBDataWriterWriteBOOLField();
  toCopy = v14;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  removeSpaceBefore = self->_removeSpaceBefore;
  PBDataWriterWriteBOOLField();
  toCopy = v14;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  confidenceScore = self->_confidenceScore;
  PBDataWriterWriteDoubleField();
  toCopy = v14;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  beginIndex = self->_beginIndex;
  PBDataWriterWriteUint32Field();
  toCopy = v14;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  endIndex = self->_endIndex;
  PBDataWriterWriteUint32Field();
  toCopy = v14;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_14:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_25:
  startMilliSeconds = self->_startMilliSeconds;
  PBDataWriterWriteInt32Field();
  toCopy = v14;
  if ((*&self->_has & 8) != 0)
  {
LABEL_15:
    endMilliSeconds = self->_endMilliSeconds;
    PBDataWriterWriteInt32Field();
    toCopy = v14;
  }

LABEL_16:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  postItnText = self->_postItnText;
  if (postItnText)
  {
    [dictionary setObject:postItnText forKey:@"post_itn_text"];
  }

  phoneSequence = self->_phoneSequence;
  if (phoneSequence)
  {
    [v4 setObject:phoneSequence forKey:@"phone_sequence"];
  }

  ipaPhoneSequence = self->_ipaPhoneSequence;
  if (ipaPhoneSequence)
  {
    [v4 setObject:ipaPhoneSequence forKey:@"ipa_phone_sequence"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_addSpaceAfter];
    [v4 setObject:v11 forKey:@"add_space_after"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_9:
      if ((has & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_9;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_removeSpaceAfter];
  [v4 setObject:v12 forKey:@"remove_space_after"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_removeSpaceBefore];
  [v4 setObject:v13 forKey:@"remove_space_before"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidenceScore];
  [v4 setObject:v14 forKey:@"confidence_score"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_beginIndex];
  [v4 setObject:v15 forKey:@"begin_index"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_endIndex];
  [v4 setObject:v16 forKey:@"end_index"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_14:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_25:
  v17 = [MEMORY[0x1E696AD98] numberWithInt:self->_startMilliSeconds];
  [v4 setObject:v17 forKey:@"start_milli_seconds"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_15:
    v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_endMilliSeconds];
    [v4 setObject:v9 forKey:@"end_milli_seconds"];
  }

LABEL_16:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALAsrTokenInformation;
  v4 = [(SIRINLUEXTERNALAsrTokenInformation *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALAsrTokenInformation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasEndMilliSeconds:(BOOL)seconds
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

- (void)setHasStartMilliSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasEndIndex:(BOOL)index
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

- (void)setHasBeginIndex:(BOOL)index
{
  if (index)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasRemoveSpaceBefore:(BOOL)before
{
  if (before)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasRemoveSpaceAfter:(BOOL)after
{
  if (after)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasAddSpaceAfter:(BOOL)after
{
  if (after)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

@end