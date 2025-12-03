@interface ATXMPBBlendingClientModelEngagementTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEngagementType:(id)type;
- (int)engagementType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConsumerSubTypeCacheAge:(BOOL)age;
- (void)setHasEngagementType:(BOOL)type;
- (void)setHasNumSuggestionsForClientModelInLayout:(BOOL)layout;
- (void)setHasPositionInClientModelCacheOfEngagedSuggestion:(BOOL)suggestion;
- (void)writeTo:(id)to;
@end

@implementation ATXMPBBlendingClientModelEngagementTracker

- (void)setHasNumSuggestionsForClientModelInLayout:(BOOL)layout
{
  if (layout)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasPositionInClientModelCacheOfEngagedSuggestion:(BOOL)suggestion
{
  if (suggestion)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)engagementType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_engagementType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasEngagementType:(BOOL)type
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

- (int)StringAsEngagementType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ExplicitConfirm"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ImplicitAbandon"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ExplicitReject"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"ExplicitTap"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"ImplicitDwell"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"ExplicitUserScroll"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"NotSeen"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"ExplicitConfirmOnlyIfHigherRankedSuggestionsWereDeduped"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasConsumerSubTypeCacheAge:(BOOL)age
{
  if (age)
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
  v8.super_class = ATXMPBBlendingClientModelEngagementTracker;
  v4 = [(ATXMPBBlendingClientModelEngagementTracker *)&v8 description];
  dictionaryRepresentation = [(ATXMPBBlendingClientModelEngagementTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  layoutType = self->_layoutType;
  if (layoutType)
  {
    [dictionary setObject:layoutType forKey:@"layoutType"];
  }

  clientModelId = self->_clientModelId;
  if (clientModelId)
  {
    [v4 setObject:clientModelId forKey:@"clientModelId"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numSuggestionsForClientModelInLayout];
    [v4 setObject:v8 forKey:@"numSuggestionsForClientModelInLayout"];

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_positionInClientModelCacheOfEngagedSuggestion];
    [v4 setObject:v9 forKey:@"positionInClientModelCacheOfEngagedSuggestion"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [v4 setObject:consumerSubType forKey:@"consumerSubType"];
  }

  v11 = self->_has;
  if ((v11 & 4) != 0)
  {
    v16 = self->_engagementType - 1;
    if (v16 >= 8)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_engagementType];
    }

    else
    {
      v17 = off_1E86A4E38[v16];
    }

    [v4 setObject:v17 forKey:@"engagementType"];

    v11 = self->_has;
    if ((v11 & 2) == 0)
    {
LABEL_13:
      if ((v11 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_consumerSubTypeCacheAge];
  [v4 setObject:v18 forKey:@"consumerSubTypeCacheAge"];

  if (*&self->_has)
  {
LABEL_14:
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_clientModelCacheAge];
    [v4 setObject:v12 forKey:@"clientModelCacheAge"];
  }

LABEL_15:
  abGroup = self->_abGroup;
  if (abGroup)
  {
    [v4 setObject:abGroup forKey:@"abGroup"];
  }

  clientModelABGroup = self->_clientModelABGroup;
  if (clientModelABGroup)
  {
    [v4 setObject:clientModelABGroup forKey:@"clientModelABGroup"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v12 = toCopy;
  if (self->_layoutType)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    numSuggestionsForClientModelInLayout = self->_numSuggestionsForClientModelInLayout;
    PBDataWriterWriteUint32Field();
    toCopy = v12;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    positionInClientModelCacheOfEngagedSuggestion = self->_positionInClientModelCacheOfEngagedSuggestion;
    PBDataWriterWriteUint32Field();
    toCopy = v12;
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  v8 = self->_has;
  if ((v8 & 4) != 0)
  {
    engagementType = self->_engagementType;
    PBDataWriterWriteInt32Field();
    toCopy = v12;
    v8 = self->_has;
    if ((v8 & 2) == 0)
    {
LABEL_13:
      if ((v8 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

  consumerSubTypeCacheAge = self->_consumerSubTypeCacheAge;
  PBDataWriterWriteUint32Field();
  toCopy = v12;
  if (*&self->_has)
  {
LABEL_14:
    clientModelCacheAge = self->_clientModelCacheAge;
    PBDataWriterWriteUint32Field();
    toCopy = v12;
  }

LABEL_15:
  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }

  if (self->_clientModelABGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v12;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_layoutType)
  {
    [toCopy setLayoutType:?];
    toCopy = v7;
  }

  if (self->_clientModelId)
  {
    [v7 setClientModelId:?];
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(toCopy + 16) = self->_numSuggestionsForClientModelInLayout;
    *(toCopy + 72) |= 8u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(toCopy + 17) = self->_positionInClientModelCacheOfEngagedSuggestion;
    *(toCopy + 72) |= 0x10u;
  }

  if (self->_consumerSubType)
  {
    [v7 setConsumerSubType:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    *(toCopy + 13) = self->_engagementType;
    *(toCopy + 72) |= 4u;
    v6 = self->_has;
    if ((v6 & 2) == 0)
    {
LABEL_13:
      if ((v6 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

  *(toCopy + 12) = self->_consumerSubTypeCacheAge;
  *(toCopy + 72) |= 2u;
  if (*&self->_has)
  {
LABEL_14:
    *(toCopy + 6) = self->_clientModelCacheAge;
    *(toCopy + 72) |= 1u;
  }

LABEL_15:
  if (self->_abGroup)
  {
    [v7 setAbGroup:?];
    toCopy = v7;
  }

  if (self->_clientModelABGroup)
  {
    [v7 setClientModelABGroup:?];
    toCopy = v7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_layoutType copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(NSString *)self->_clientModelId copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 64) = self->_numSuggestionsForClientModelInLayout;
    *(v5 + 72) |= 8u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v5 + 68) = self->_positionInClientModelCacheOfEngagedSuggestion;
    *(v5 + 72) |= 0x10u;
  }

  v11 = [(NSString *)self->_consumerSubType copyWithZone:zone];
  v12 = *(v5 + 40);
  *(v5 + 40) = v11;

  v13 = self->_has;
  if ((v13 & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    *(v5 + 48) = self->_consumerSubTypeCacheAge;
    *(v5 + 72) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(v5 + 52) = self->_engagementType;
  *(v5 + 72) |= 4u;
  v13 = self->_has;
  if ((v13 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v13)
  {
LABEL_8:
    *(v5 + 24) = self->_clientModelCacheAge;
    *(v5 + 72) |= 1u;
  }

LABEL_9:
  v14 = [(NSString *)self->_abGroup copyWithZone:zone];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  v16 = [(NSString *)self->_clientModelABGroup copyWithZone:zone];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  layoutType = self->_layoutType;
  if (layoutType | *(equalCopy + 7))
  {
    if (![(NSString *)layoutType isEqual:?])
    {
      goto LABEL_38;
    }
  }

  clientModelId = self->_clientModelId;
  if (clientModelId | *(equalCopy + 4))
  {
    if (![(NSString *)clientModelId isEqual:?])
    {
      goto LABEL_38;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 72);
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 72) & 8) == 0 || self->_numSuggestionsForClientModelInLayout != *(equalCopy + 16))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 72) & 8) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 72) & 0x10) == 0 || self->_positionInClientModelCacheOfEngagedSuggestion != *(equalCopy + 17))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 72) & 0x10) != 0)
  {
    goto LABEL_38;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(equalCopy + 5))
  {
    if (![(NSString *)consumerSubType isEqual:?])
    {
LABEL_38:
      v13 = 0;
      goto LABEL_39;
    }

    has = self->_has;
  }

  v10 = *(equalCopy + 72);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 72) & 4) == 0 || self->_engagementType != *(equalCopy + 13))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 72) & 4) != 0)
  {
    goto LABEL_38;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 72) & 2) == 0 || self->_consumerSubTypeCacheAge != *(equalCopy + 12))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 72) & 2) != 0)
  {
    goto LABEL_38;
  }

  if (has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_clientModelCacheAge != *(equalCopy + 6))
    {
      goto LABEL_38;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_38;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(equalCopy + 1) && ![(NSString *)abGroup isEqual:?])
  {
    goto LABEL_38;
  }

  clientModelABGroup = self->_clientModelABGroup;
  if (clientModelABGroup | *(equalCopy + 2))
  {
    v13 = [(NSString *)clientModelABGroup isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_39:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_layoutType hash];
  v4 = [(NSString *)self->_clientModelId hash];
  if ((*&self->_has & 8) != 0)
  {
    v5 = 2654435761 * self->_numSuggestionsForClientModelInLayout;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_positionInClientModelCacheOfEngagedSuggestion;
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = [(NSString *)self->_consumerSubType hash];
  if ((*&self->_has & 4) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v9 = 0;
    if (*&self->_has)
    {
      goto LABEL_9;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v8 = 2654435761 * self->_engagementType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v9 = 2654435761 * self->_consumerSubTypeCacheAge;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v10 = 2654435761 * self->_clientModelCacheAge;
LABEL_13:
  v11 = v4 ^ v3 ^ v5 ^ v6 ^ v7;
  v12 = v8 ^ v9 ^ v10 ^ [(NSString *)self->_abGroup hash];
  return v11 ^ v12 ^ [(NSString *)self->_clientModelABGroup hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 7))
  {
    [(ATXMPBBlendingClientModelEngagementTracker *)self setLayoutType:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 4))
  {
    [(ATXMPBBlendingClientModelEngagementTracker *)self setClientModelId:?];
    fromCopy = v7;
  }

  v5 = *(fromCopy + 72);
  if ((v5 & 8) != 0)
  {
    self->_numSuggestionsForClientModelInLayout = *(fromCopy + 16);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 72);
  }

  if ((v5 & 0x10) != 0)
  {
    self->_positionInClientModelCacheOfEngagedSuggestion = *(fromCopy + 17);
    *&self->_has |= 0x10u;
  }

  if (*(fromCopy + 5))
  {
    [(ATXMPBBlendingClientModelEngagementTracker *)self setConsumerSubType:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 72);
  if ((v6 & 4) != 0)
  {
    self->_engagementType = *(fromCopy + 13);
    *&self->_has |= 4u;
    v6 = *(fromCopy + 72);
    if ((v6 & 2) == 0)
    {
LABEL_13:
      if ((v6 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*(fromCopy + 72) & 2) == 0)
  {
    goto LABEL_13;
  }

  self->_consumerSubTypeCacheAge = *(fromCopy + 12);
  *&self->_has |= 2u;
  if (*(fromCopy + 72))
  {
LABEL_14:
    self->_clientModelCacheAge = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

LABEL_15:
  if (*(fromCopy + 1))
  {
    [(ATXMPBBlendingClientModelEngagementTracker *)self setAbGroup:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 2))
  {
    [(ATXMPBBlendingClientModelEngagementTracker *)self setClientModelABGroup:?];
    fromCopy = v7;
  }
}

@end