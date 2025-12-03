@interface ATXPBRequestForSuggestions
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBRequestForSuggestions

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBRequestForSuggestions;
  v4 = [(ATXPBRequestForSuggestions *)&v8 description];
  dictionaryRepresentation = [(ATXPBRequestForSuggestions *)self dictionaryRepresentation];
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

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeout];
    [v4 setObject:v8 forKey:@"timeout"];
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

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_timeout;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uuidString copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_originatorId copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_consumerSubTypeString copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_timeout;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  uuidString = self->_uuidString;
  if (uuidString | *(equalCopy + 4))
  {
    if (![(NSString *)uuidString isEqual:?])
    {
      goto LABEL_12;
    }
  }

  originatorId = self->_originatorId;
  if (originatorId | *(equalCopy + 3))
  {
    if (![(NSString *)originatorId isEqual:?])
    {
      goto LABEL_12;
    }
  }

  consumerSubTypeString = self->_consumerSubTypeString;
  if (consumerSubTypeString | *(equalCopy + 2))
  {
    if (![(NSString *)consumerSubTypeString isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) != 0 && self->_timeout == *(equalCopy + 1))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uuidString hash];
  v4 = [(NSString *)self->_originatorId hash];
  v5 = [(NSString *)self->_consumerSubTypeString hash];
  if (*&self->_has)
  {
    timeout = self->_timeout;
    if (timeout < 0.0)
    {
      timeout = -timeout;
    }

    *v6.i64 = floor(timeout + 0.5);
    v10 = (timeout - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(ATXPBRequestForSuggestions *)self setUuidString:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(ATXPBRequestForSuggestions *)self setOriginatorId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(ATXPBRequestForSuggestions *)self setConsumerSubTypeString:?];
    fromCopy = v5;
  }

  if (fromCopy[5])
  {
    self->_timeout = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end