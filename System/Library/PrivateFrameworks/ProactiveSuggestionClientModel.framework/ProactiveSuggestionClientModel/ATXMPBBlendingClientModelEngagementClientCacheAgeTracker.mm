@interface ATXMPBBlendingClientModelEngagementClientCacheAgeTracker
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

@implementation ATXMPBBlendingClientModelEngagementClientCacheAgeTracker

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
  v8.super_class = ATXMPBBlendingClientModelEngagementClientCacheAgeTracker;
  v4 = [(ATXMPBBlendingClientModelEngagementClientCacheAgeTracker *)&v8 description];
  dictionaryRepresentation = [(ATXMPBBlendingClientModelEngagementClientCacheAgeTracker *)self dictionaryRepresentation];
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
      v5 = off_1E86A4C98[v4];
    }

    [dictionary setObject:v5 forKey:@"outcomeType"];
  }

  clientModelId = self->_clientModelId;
  if (clientModelId)
  {
    [dictionary setObject:clientModelId forKey:@"clientModelId"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [dictionary setObject:consumerSubType forKey:@"consumerSubType"];
  }

  clientModelABGroup = self->_clientModelABGroup;
  if (clientModelABGroup)
  {
    [dictionary setObject:clientModelABGroup forKey:@"clientModelABGroup"];
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

  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_clientModelABGroup)
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
    toCopy[8] = self->_outcomeType;
    *(toCopy + 36) |= 1u;
  }

  v5 = toCopy;
  if (self->_clientModelId)
  {
    [toCopy setClientModelId:?];
    toCopy = v5;
  }

  if (self->_consumerSubType)
  {
    [v5 setConsumerSubType:?];
    toCopy = v5;
  }

  if (self->_clientModelABGroup)
  {
    [v5 setClientModelABGroup:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_outcomeType;
    *(v5 + 36) |= 1u;
  }

  v7 = [(NSString *)self->_clientModelId copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_consumerSubType copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(NSString *)self->_clientModelABGroup copyWithZone:zone];
  v12 = v6[1];
  v6[1] = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_outcomeType != *(equalCopy + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  clientModelId = self->_clientModelId;
  if (clientModelId | *(equalCopy + 2) && ![(NSString *)clientModelId isEqual:?])
  {
    goto LABEL_13;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(equalCopy + 3))
  {
    if (![(NSString *)consumerSubType isEqual:?])
    {
      goto LABEL_13;
    }
  }

  clientModelABGroup = self->_clientModelABGroup;
  if (clientModelABGroup | *(equalCopy + 1))
  {
    v9 = [(NSString *)clientModelABGroup isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
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

  v4 = [(NSString *)self->_clientModelId hash]^ v3;
  v5 = [(NSString *)self->_consumerSubType hash];
  return v4 ^ v5 ^ [(NSString *)self->_clientModelABGroup hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[9])
  {
    self->_outcomeType = fromCopy[8];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(ATXMPBBlendingClientModelEngagementClientCacheAgeTracker *)self setClientModelId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(ATXMPBBlendingClientModelEngagementClientCacheAgeTracker *)self setConsumerSubType:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(ATXMPBBlendingClientModelEngagementClientCacheAgeTracker *)self setClientModelABGroup:?];
    fromCopy = v5;
  }
}

@end