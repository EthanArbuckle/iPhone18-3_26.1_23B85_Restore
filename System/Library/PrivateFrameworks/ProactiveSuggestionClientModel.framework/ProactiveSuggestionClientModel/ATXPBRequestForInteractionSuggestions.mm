@interface ATXPBRequestForInteractionSuggestions
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBRequestForInteractionSuggestions

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBRequestForInteractionSuggestions;
  v4 = [(ATXPBRequestForInteractionSuggestions *)&v8 description];
  dictionaryRepresentation = [(ATXPBRequestForInteractionSuggestions *)self dictionaryRepresentation];
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

  psPredictionContext = self->_psPredictionContext;
  if (psPredictionContext)
  {
    [v4 setObject:psPredictionContext forKey:@"psPredictionContext"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeout];
    [v4 setObject:v9 forKey:@"timeout"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uuidString)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_originatorId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_consumerSubTypeString)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_psPredictionContext)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    timeout = self->_timeout;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uuidString)
  {
    [toCopy setUuidString:?];
    toCopy = v5;
  }

  if (self->_originatorId)
  {
    [v5 setOriginatorId:?];
    toCopy = v5;
  }

  if (self->_consumerSubTypeString)
  {
    [v5 setConsumerSubTypeString:?];
    toCopy = v5;
  }

  if (self->_psPredictionContext)
  {
    [v5 setPsPredictionContext:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_timeout;
    *(toCopy + 48) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uuidString copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_originatorId copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_consumerSubTypeString copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSData *)self->_psPredictionContext copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_timeout;
    *(v5 + 48) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  uuidString = self->_uuidString;
  if (uuidString | *(equalCopy + 5))
  {
    if (![(NSString *)uuidString isEqual:?])
    {
      goto LABEL_14;
    }
  }

  originatorId = self->_originatorId;
  if (originatorId | *(equalCopy + 3))
  {
    if (![(NSString *)originatorId isEqual:?])
    {
      goto LABEL_14;
    }
  }

  consumerSubTypeString = self->_consumerSubTypeString;
  if (consumerSubTypeString | *(equalCopy + 2))
  {
    if (![(NSString *)consumerSubTypeString isEqual:?])
    {
      goto LABEL_14;
    }
  }

  psPredictionContext = self->_psPredictionContext;
  if (psPredictionContext | *(equalCopy + 4))
  {
    if (![(NSData *)psPredictionContext isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v9 = (*(equalCopy + 48) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) != 0 && self->_timeout == *(equalCopy + 1))
    {
      v9 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuidString hash];
  v4 = [(NSString *)self->_originatorId hash];
  v5 = [(NSString *)self->_consumerSubTypeString hash];
  v6 = [(NSData *)self->_psPredictionContext hash];
  if (*&self->_has)
  {
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
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v8, v7).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v9;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(ATXPBRequestForInteractionSuggestions *)self setUuidString:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(ATXPBRequestForInteractionSuggestions *)self setOriginatorId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(ATXPBRequestForInteractionSuggestions *)self setConsumerSubTypeString:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(ATXPBRequestForInteractionSuggestions *)self setPsPredictionContext:?];
    fromCopy = v5;
  }

  if (fromCopy[6])
  {
    self->_timeout = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end