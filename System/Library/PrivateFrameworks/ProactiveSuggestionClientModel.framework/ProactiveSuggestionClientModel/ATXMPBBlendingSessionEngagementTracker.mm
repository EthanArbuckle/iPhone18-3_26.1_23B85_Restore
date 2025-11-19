@interface ATXMPBBlendingSessionEngagementTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEngagementType:(id)a3;
- (int)engagementType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXMPBBlendingSessionEngagementTracker

- (int)engagementType
{
  if (*&self->_has)
  {
    return self->_engagementType;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsEngagementType:(id)a3
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
  v8.super_class = ATXMPBBlendingSessionEngagementTracker;
  v4 = [(ATXMPBBlendingSessionEngagementTracker *)&v8 description];
  v5 = [(ATXMPBBlendingSessionEngagementTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [v3 setObject:consumerSubType forKey:@"consumerSubType"];
  }

  if (*&self->_has)
  {
    v6 = self->_engagementType - 1;
    if (v6 >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_engagementType];
    }

    else
    {
      v7 = off_1E86A4E98[v6];
    }

    [v4 setObject:v7 forKey:@"engagementType"];
  }

  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v4 setObject:abGroup forKey:@"abGroup"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    engagementType = self->_engagementType;
    PBDataWriterWriteInt32Field();
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
  v5 = v4;
  if (self->_consumerSubType)
  {
    [v4 setConsumerSubType:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_engagementType;
    *(v4 + 28) |= 1u;
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
  v6 = [(NSString *)self->_consumerSubType copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_engagementType;
    *(v5 + 28) |= 1u;
  }

  v8 = [(NSString *)self->_abGroup copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(v4 + 2))
  {
    if (![(NSString *)consumerSubType isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_engagementType != *(v4 + 6))
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
  v3 = [(NSString *)self->_consumerSubType hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_engagementType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_abGroup hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(ATXMPBBlendingSessionEngagementTracker *)self setConsumerSubType:?];
    v4 = v5;
  }

  if (v4[7])
  {
    self->_engagementType = v4[6];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(ATXMPBBlendingSessionEngagementTracker *)self setAbGroup:?];
    v4 = v5;
  }
}

@end