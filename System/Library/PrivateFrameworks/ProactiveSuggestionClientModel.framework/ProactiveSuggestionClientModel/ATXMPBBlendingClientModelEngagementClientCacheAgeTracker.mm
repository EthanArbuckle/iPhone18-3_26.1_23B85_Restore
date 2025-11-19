@interface ATXMPBBlendingClientModelEngagementClientCacheAgeTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsOutcomeType:(id)a3;
- (int)outcomeType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsOutcomeType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Conversion"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Rejection"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Abandon"])
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
  v5 = [(ATXMPBBlendingClientModelEngagementClientCacheAgeTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v5 forKey:@"outcomeType"];
  }

  clientModelId = self->_clientModelId;
  if (clientModelId)
  {
    [v3 setObject:clientModelId forKey:@"clientModelId"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [v3 setObject:consumerSubType forKey:@"consumerSubType"];
  }

  clientModelABGroup = self->_clientModelABGroup;
  if (clientModelABGroup)
  {
    [v3 setObject:clientModelABGroup forKey:@"clientModelABGroup"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    outcomeType = self->_outcomeType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_clientModelABGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[8] = self->_outcomeType;
    *(v4 + 36) |= 1u;
  }

  v5 = v4;
  if (self->_clientModelId)
  {
    [v4 setClientModelId:?];
    v4 = v5;
  }

  if (self->_consumerSubType)
  {
    [v5 setConsumerSubType:?];
    v4 = v5;
  }

  if (self->_clientModelABGroup)
  {
    [v5 setClientModelABGroup:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_outcomeType;
    *(v5 + 36) |= 1u;
  }

  v7 = [(NSString *)self->_clientModelId copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_consumerSubType copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(NSString *)self->_clientModelABGroup copyWithZone:a3];
  v12 = v6[1];
  v6[1] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_outcomeType != *(v4 + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  clientModelId = self->_clientModelId;
  if (clientModelId | *(v4 + 2) && ![(NSString *)clientModelId isEqual:?])
  {
    goto LABEL_13;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(v4 + 3))
  {
    if (![(NSString *)consumerSubType isEqual:?])
    {
      goto LABEL_13;
    }
  }

  clientModelABGroup = self->_clientModelABGroup;
  if (clientModelABGroup | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[9])
  {
    self->_outcomeType = v4[8];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(ATXMPBBlendingClientModelEngagementClientCacheAgeTracker *)self setClientModelId:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(ATXMPBBlendingClientModelEngagementClientCacheAgeTracker *)self setConsumerSubType:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(ATXMPBBlendingClientModelEngagementClientCacheAgeTracker *)self setClientModelABGroup:?];
    v4 = v5;
  }
}

@end