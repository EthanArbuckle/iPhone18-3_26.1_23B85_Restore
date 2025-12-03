@interface PETAggregationKey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDatestamp:(BOOL)datestamp;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PETAggregationKey

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 36);
  if ((v6 & 4) != 0)
  {
    self->_type = *(fromCopy + 8);
    *&self->_has |= 4u;
    v6 = *(fromCopy + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_datestamp = *(fromCopy + 4);
  *&self->_has |= 2u;
  if (*(fromCopy + 36))
  {
LABEL_4:
    self->_bucket = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  rawMessage = self->_rawMessage;
  v8 = v5[3];
  if (rawMessage)
  {
    if (v8)
    {
      [(PETRawMessage *)rawMessage mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PETAggregationKey *)self setRawMessage:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_10:
    v13 = 0;
    return v9 ^ v8 ^ v13 ^ [(PETRawMessage *)self->_rawMessage hash:v3];
  }

  v8 = 2654435761 * self->_type;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v9 = 2654435761 * self->_datestamp;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  bucket = self->_bucket;
  if (bucket < 0.0)
  {
    bucket = -bucket;
  }

  *v6.i64 = floor(bucket + 0.5);
  v11 = (bucket - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v7, v6).i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

  return v9 ^ v8 ^ v13 ^ [(PETRawMessage *)self->_rawMessage hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(equalCopy + 36);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0 || self->_type != *(equalCopy + 8))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_datestamp != *(equalCopy + 4))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_bucket != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_19;
  }

  rawMessage = self->_rawMessage;
  if (rawMessage | *(equalCopy + 3))
  {
    v7 = [(PETRawMessage *)rawMessage isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_20:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_datestamp;
    *(v5 + 36) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 32) = self->_type;
  *(v5 + 36) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 8) = self->_bucket;
    *(v5 + 36) |= 1u;
  }

LABEL_5:
  v8 = [(PETRawMessage *)self->_rawMessage copyWithZone:zone];
  v9 = v6[3];
  v6[3] = v8;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[8] = self->_type;
    *(toCopy + 36) |= 4u;
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

  toCopy[4] = self->_datestamp;
  *(toCopy + 36) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(toCopy + 1) = *&self->_bucket;
    *(toCopy + 36) |= 1u;
  }

LABEL_5:
  if (self->_rawMessage)
  {
    v6 = toCopy;
    [toCopy setRawMessage:?];
    toCopy = v6;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if ((has & 4) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
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

  datestamp = self->_datestamp;
  PBDataWriterWriteUint32Field();
  toCopy = v9;
  if (*&self->_has)
  {
LABEL_4:
    bucket = self->_bucket;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
  }

LABEL_5:
  if (self->_rawMessage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    type = self->_type;
    if (type >= 4)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v6 = off_1E86C2840[type];
    }

    [dictionary setObject:v6 forKey:@"type"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_datestamp];
    [dictionary setObject:v7 forKey:@"datestamp"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bucket];
    [dictionary setObject:v8 forKey:@"bucket"];
  }

  rawMessage = self->_rawMessage;
  if (rawMessage)
  {
    dictionaryRepresentation = [(PETRawMessage *)rawMessage dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"raw_message"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PETAggregationKey;
  v4 = [(PETAggregationKey *)&v8 description];
  dictionaryRepresentation = [(PETAggregationKey *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasDatestamp:(BOOL)datestamp
{
  if (datestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"SCALAR"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"DISTRIBUTION"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"HISTOGRAM"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)type
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

@end