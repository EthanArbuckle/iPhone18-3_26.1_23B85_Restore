@interface ATXMPBBlendingSessionEngagementTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEngagementType:(id)type;
- (int)engagementType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (int)StringAsEngagementType:(id)type
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
  v8.super_class = ATXMPBBlendingSessionEngagementTracker;
  v4 = [(ATXMPBBlendingSessionEngagementTracker *)&v8 description];
  dictionaryRepresentation = [(ATXMPBBlendingSessionEngagementTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [dictionary setObject:consumerSubType forKey:@"consumerSubType"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    engagementType = self->_engagementType;
    PBDataWriterWriteInt32Field();
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
  v5 = toCopy;
  if (self->_consumerSubType)
  {
    [toCopy setConsumerSubType:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_engagementType;
    *(toCopy + 28) |= 1u;
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
  v6 = [(NSString *)self->_consumerSubType copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_engagementType;
    *(v5 + 28) |= 1u;
  }

  v8 = [(NSString *)self->_abGroup copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(equalCopy + 2))
  {
    if (![(NSString *)consumerSubType isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_engagementType != *(equalCopy + 6))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(ATXMPBBlendingSessionEngagementTracker *)self setConsumerSubType:?];
    fromCopy = v5;
  }

  if (fromCopy[7])
  {
    self->_engagementType = fromCopy[6];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(ATXMPBBlendingSessionEngagementTracker *)self setAbGroup:?];
    fromCopy = v5;
  }
}

@end