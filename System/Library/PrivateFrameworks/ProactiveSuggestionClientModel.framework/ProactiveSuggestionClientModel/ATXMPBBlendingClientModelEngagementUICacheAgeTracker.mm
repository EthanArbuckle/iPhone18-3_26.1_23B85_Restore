@interface ATXMPBBlendingClientModelEngagementUICacheAgeTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsOutcomeType:(id)type;
- (int)outcomeType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXMPBBlendingClientModelEngagementUICacheAgeTracker

- (int)outcomeType
{
  if (*&self->_has)
  {
    return self->_outcomeType;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsOutcomeType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Conversion"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Rejection"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Abandon"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXMPBBlendingClientModelEngagementUICacheAgeTracker;
  v4 = [(ATXMPBBlendingClientModelEngagementUICacheAgeTracker *)&v8 description];
  dictionaryRepresentation = [(ATXMPBBlendingClientModelEngagementUICacheAgeTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = self->_outcomeType - 1;
    if (v4 >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_outcomeType];
    }

    else
    {
      v5 = off_1E86A4F90[v4];
    }

    [dictionary setObject:v5 forKey:@"outcomeType"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [dictionary setObject:consumerSubType forKey:@"consumerSubType"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [dictionary setObject:abGroup forKey:@"abGroup"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    outcomeType = self->_outcomeType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_outcomeType;
    *(toCopy + 28) |= 1u;
  }

  v5 = toCopy;
  if (self->_consumerSubType)
  {
    [toCopy setConsumerSubType:?];
    toCopy = v5;
  }

  if (self->_abGroup)
  {
    [v5 setAbGroup:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_outcomeType;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_consumerSubType copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_abGroup copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_outcomeType != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(equalCopy + 2) && ![(NSString *)consumerSubType isEqual:?])
  {
    goto LABEL_11;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(equalCopy + 1))
  {
    v8 = [(NSString *)abGroup isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_outcomeType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_consumerSubType hash]^ v3;
  return v4 ^ [(NSString *)self->_abGroup hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[7])
  {
    self->_outcomeType = fromCopy[6];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(ATXMPBBlendingClientModelEngagementUICacheAgeTracker *)self setConsumerSubType:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(ATXMPBBlendingClientModelEngagementUICacheAgeTracker *)self setAbGroup:?];
    fromCopy = v5;
  }
}

@end