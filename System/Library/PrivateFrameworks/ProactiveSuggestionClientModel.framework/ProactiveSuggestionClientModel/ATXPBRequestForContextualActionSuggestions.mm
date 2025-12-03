@interface ATXPBRequestForContextualActionSuggestions
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMaxSuggestions:(BOOL)suggestions;
- (void)writeTo:(id)to;
@end

@implementation ATXPBRequestForContextualActionSuggestions

- (void)setHasMaxSuggestions:(BOOL)suggestions
{
  if (suggestions)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBRequestForContextualActionSuggestions;
  v4 = [(ATXPBRequestForContextualActionSuggestions *)&v8 description];
  dictionaryRepresentation = [(ATXPBRequestForContextualActionSuggestions *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  uuidString = self->_uuidString;
  if (uuidString)
  {
    [dictionary setObject:uuidString forKey:@"uuidString"];
  }

  originatorId = self->_originatorId;
  if (originatorId)
  {
    [v4 setObject:originatorId forKey:@"originatorId"];
  }

  consumerSubTypeString = self->_consumerSubTypeString;
  if (consumerSubTypeString)
  {
    [v4 setObject:consumerSubTypeString forKey:@"consumerSubTypeString"];
  }

  caxPredictionContext = self->_caxPredictionContext;
  if (caxPredictionContext)
  {
    [v4 setObject:caxPredictionContext forKey:@"caxPredictionContext"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:self->_maxSuggestions];
    [v4 setObject:v10 forKey:@"maxSuggestions"];

    has = self->_has;
  }

  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeout];
    [v4 setObject:v11 forKey:@"timeout"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_uuidString)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_originatorId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_consumerSubTypeString)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_caxPredictionContext)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    maxSuggestions = self->_maxSuggestions;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    timeout = self->_timeout;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uuidString)
  {
    [toCopy setUuidString:?];
    toCopy = v6;
  }

  if (self->_originatorId)
  {
    [v6 setOriginatorId:?];
    toCopy = v6;
  }

  if (self->_consumerSubTypeString)
  {
    [v6 setConsumerSubTypeString:?];
    toCopy = v6;
  }

  if (self->_caxPredictionContext)
  {
    [v6 setCaxPredictionContext:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 8) = self->_maxSuggestions;
    *(toCopy + 56) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_timeout;
    *(toCopy + 56) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uuidString copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_originatorId copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_consumerSubTypeString copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSData *)self->_caxPredictionContext copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_maxSuggestions;
    *(v5 + 56) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_timeout;
    *(v5 + 56) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  uuidString = self->_uuidString;
  if (uuidString | *(equalCopy + 6))
  {
    if (![(NSString *)uuidString isEqual:?])
    {
      goto LABEL_19;
    }
  }

  originatorId = self->_originatorId;
  if (originatorId | *(equalCopy + 5))
  {
    if (![(NSString *)originatorId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  consumerSubTypeString = self->_consumerSubTypeString;
  if (consumerSubTypeString | *(equalCopy + 3))
  {
    if (![(NSString *)consumerSubTypeString isEqual:?])
    {
      goto LABEL_19;
    }
  }

  caxPredictionContext = self->_caxPredictionContext;
  if (caxPredictionContext | *(equalCopy + 2))
  {
    if (![(NSData *)caxPredictionContext isEqual:?])
    {
      goto LABEL_19;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_maxSuggestions != *(equalCopy + 8))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  v9 = (*(equalCopy + 56) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_timeout != *(equalCopy + 1))
    {
      goto LABEL_19;
    }

    v9 = 1;
  }

LABEL_20:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuidString hash];
  v4 = [(NSString *)self->_originatorId hash];
  v5 = [(NSString *)self->_consumerSubTypeString hash];
  v6 = [(NSData *)self->_caxPredictionContext hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_maxSuggestions;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ v13;
  }

  v9 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  timeout = self->_timeout;
  if (timeout < 0.0)
  {
    timeout = -timeout;
  }

  *v7.i64 = floor(timeout + 0.5);
  v11 = (timeout - *v7.i64) * 1.84467441e19;
  *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v8, v7).i64;
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

  return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ v13;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(ATXPBRequestForContextualActionSuggestions *)self setUuidString:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(ATXPBRequestForContextualActionSuggestions *)self setOriginatorId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(ATXPBRequestForContextualActionSuggestions *)self setConsumerSubTypeString:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(ATXPBRequestForContextualActionSuggestions *)self setCaxPredictionContext:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 56);
  if ((v5 & 2) != 0)
  {
    self->_maxSuggestions = *(fromCopy + 8);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 56);
  }

  if (v5)
  {
    self->_timeout = *(fromCopy + 1);
    *&self->_has |= 1u;
  }
}

@end