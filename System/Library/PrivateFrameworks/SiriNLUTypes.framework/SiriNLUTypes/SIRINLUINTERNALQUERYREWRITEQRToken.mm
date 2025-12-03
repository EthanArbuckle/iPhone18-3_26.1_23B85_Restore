@interface SIRINLUINTERNALQUERYREWRITEQRToken
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEndIndex:(BOOL)index;
- (void)setHasRemoveSpaceAfter:(BOOL)after;
- (void)setHasStartIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALQUERYREWRITEQRToken

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(SIRINLUINTERNALQUERYREWRITEQRToken *)self setValue:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 52);
  if ((v5 & 4) != 0)
  {
    self->_startIndex = *(fromCopy + 8);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 52);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(fromCopy + 52) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_endIndex = *(fromCopy + 4);
  *&self->_has |= 2u;
  if (*(fromCopy + 52))
  {
LABEL_6:
    self->_asrConfidence = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_7:
  if (*(fromCopy + 3))
  {
    [(SIRINLUINTERNALQUERYREWRITEQRToken *)self setPhoneSequence:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 52) & 8) != 0)
  {
    self->_removeSpaceAfter = *(fromCopy + 48);
    *&self->_has |= 8u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_value hash];
  if ((*&self->_has & 4) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v6 = 2654435761 * self->_startIndex;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = 2654435761 * self->_endIndex;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  asrConfidence = self->_asrConfidence;
  if (asrConfidence < 0.0)
  {
    asrConfidence = -asrConfidence;
  }

  *v4.i64 = floor(asrConfidence + 0.5);
  v9 = (asrConfidence - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v5, v4).i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_11:
  v12 = [(NSString *)self->_phoneSequence hash];
  if ((*&self->_has & 8) != 0)
  {
    v13 = 2654435761 * self->_removeSpaceAfter;
  }

  else
  {
    v13 = 0;
  }

  return v6 ^ v3 ^ v7 ^ v11 ^ v12 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  value = self->_value;
  if (value | *(equalCopy + 5))
  {
    if (![(NSString *)value isEqual:?])
    {
      goto LABEL_24;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 52);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 52) & 4) == 0 || self->_startIndex != *(equalCopy + 8))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 52) & 4) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_endIndex != *(equalCopy + 4))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_asrConfidence != *(equalCopy + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_24;
  }

  phoneSequence = self->_phoneSequence;
  if (phoneSequence | *(equalCopy + 3))
  {
    if (![(NSString *)phoneSequence isEqual:?])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v7 = *(equalCopy + 52);
  }

  v9 = (v7 & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((v7 & 8) != 0)
    {
      if (self->_removeSpaceAfter)
      {
        if ((*(equalCopy + 48) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else if (*(equalCopy + 48))
      {
        goto LABEL_24;
      }

      v9 = 1;
      goto LABEL_25;
    }

LABEL_24:
    v9 = 0;
  }

LABEL_25:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_value copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 32) = self->_startIndex;
    *(v5 + 52) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_endIndex;
  *(v5 + 52) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 8) = self->_asrConfidence;
    *(v5 + 52) |= 1u;
  }

LABEL_5:
  v9 = [(NSString *)self->_phoneSequence copyWithZone:zone];
  v10 = *(v5 + 24);
  *(v5 + 24) = v9;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 48) = self->_removeSpaceAfter;
    *(v5 + 52) |= 8u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_value)
  {
    [toCopy setValue:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 8) = self->_startIndex;
    *(toCopy + 52) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 4) = self->_endIndex;
  *(toCopy + 52) |= 2u;
  if (*&self->_has)
  {
LABEL_6:
    *(toCopy + 1) = *&self->_asrConfidence;
    *(toCopy + 52) |= 1u;
  }

LABEL_7:
  if (self->_phoneSequence)
  {
    [v6 setPhoneSequence:?];
    toCopy = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(toCopy + 48) = self->_removeSpaceAfter;
    *(toCopy + 52) |= 8u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_value)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    startIndex = self->_startIndex;
    PBDataWriterWriteUint32Field();
    toCopy = v10;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  endIndex = self->_endIndex;
  PBDataWriterWriteUint32Field();
  toCopy = v10;
  if (*&self->_has)
  {
LABEL_6:
    asrConfidence = self->_asrConfidence;
    PBDataWriterWriteDoubleField();
    toCopy = v10;
  }

LABEL_7:
  if (self->_phoneSequence)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if ((*&self->_has & 8) != 0)
  {
    removeSpaceAfter = self->_removeSpaceAfter;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  value = self->_value;
  if (value)
  {
    [dictionary setObject:value forKey:@"value"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_startIndex];
    [v4 setObject:v11 forKey:@"start_index"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_endIndex];
  [v4 setObject:v12 forKey:@"end_index"];

  if (*&self->_has)
  {
LABEL_6:
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_asrConfidence];
    [v4 setObject:v7 forKey:@"asr_confidence"];
  }

LABEL_7:
  phoneSequence = self->_phoneSequence;
  if (phoneSequence)
  {
    [v4 setObject:phoneSequence forKey:@"phone_sequence"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_removeSpaceAfter];
    [v4 setObject:v9 forKey:@"remove_space_after"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALQUERYREWRITEQRToken;
  v4 = [(SIRINLUINTERNALQUERYREWRITEQRToken *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALQUERYREWRITEQRToken *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasRemoveSpaceAfter:(BOOL)after
{
  if (after)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasEndIndex:(BOOL)index
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

- (void)setHasStartIndex:(BOOL)index
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

+ (id)options
{
  if (options_once_15597 != -1)
  {
    dispatch_once(&options_once_15597, &__block_literal_global_15598);
  }

  v3 = options_sOptions_15599;

  return v3;
}

void __45__SIRINLUINTERNALQUERYREWRITEQRToken_options__block_invoke()
{
  v0 = options_sOptions_15599;
  options_sOptions_15599 = &unk_1F48968F8;
}

@end