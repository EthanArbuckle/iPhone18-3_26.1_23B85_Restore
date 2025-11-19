@interface ATXMPBBlendingClientModelEngagementUICacheAgeTracker
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
  v8.super_class = ATXMPBBlendingClientModelEngagementUICacheAgeTracker;
  v4 = [(ATXMPBBlendingClientModelEngagementUICacheAgeTracker *)&v8 description];
  v5 = [(ATXMPBBlendingClientModelEngagementUICacheAgeTracker *)self dictionaryRepresentation];
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
      v5 = off_1E86A4F90[v4];
    }

    [v3 setObject:v5 forKey:@"outcomeType"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [v3 setObject:consumerSubType forKey:@"consumerSubType"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v3 setObject:abGroup forKey:@"abGroup"];
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

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_abGroup)
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
    v4[6] = self->_outcomeType;
    *(v4 + 28) |= 1u;
  }

  v5 = v4;
  if (self->_consumerSubType)
  {
    [v4 setConsumerSubType:?];
    v4 = v5;
  }

  if (self->_abGroup)
  {
    [v5 setAbGroup:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_outcomeType;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_consumerSubType copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_abGroup copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_outcomeType != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(v4 + 2) && ![(NSString *)consumerSubType isEqual:?])
  {
    goto LABEL_11;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[7])
  {
    self->_outcomeType = v4[6];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(ATXMPBBlendingClientModelEngagementUICacheAgeTracker *)self setConsumerSubType:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(ATXMPBBlendingClientModelEngagementUICacheAgeTracker *)self setAbGroup:?];
    v4 = v5;
  }
}

@end