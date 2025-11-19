@interface ATXMPBBlendingClientModelEngagementTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEngagementType:(id)a3;
- (int)engagementType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasConsumerSubTypeCacheAge:(BOOL)a3;
- (void)setHasEngagementType:(BOOL)a3;
- (void)setHasNumSuggestionsForClientModelInLayout:(BOOL)a3;
- (void)setHasPositionInClientModelCacheOfEngagedSuggestion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXMPBBlendingClientModelEngagementTracker

- (void)setHasNumSuggestionsForClientModelInLayout:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasPositionInClientModelCacheOfEngagedSuggestion:(BOOL)a3
{
  if (a3)
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

- (void)setHasEngagementType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsEngagementType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ExplicitConfirm"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ImplicitAbandon"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ExplicitReject"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ExplicitTap"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ImplicitDwell"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ExplicitUserScroll"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"NotSeen"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"ExplicitConfirmOnlyIfHigherRankedSuggestionsWereDeduped"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasConsumerSubTypeCacheAge:(BOOL)a3
{
  if (a3)
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
  v5 = [(ATXMPBBlendingClientModelEngagementTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  layoutType = self->_layoutType;
  if (layoutType)
  {
    [v3 setObject:layoutType forKey:@"layoutType"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_layoutType)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    numSuggestionsForClientModelInLayout = self->_numSuggestionsForClientModelInLayout;
    PBDataWriterWriteUint32Field();
    v4 = v12;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    positionInClientModelCacheOfEngagedSuggestion = self->_positionInClientModelCacheOfEngagedSuggestion;
    PBDataWriterWriteUint32Field();
    v4 = v12;
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  v8 = self->_has;
  if ((v8 & 4) != 0)
  {
    engagementType = self->_engagementType;
    PBDataWriterWriteInt32Field();
    v4 = v12;
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
  v4 = v12;
  if (*&self->_has)
  {
LABEL_14:
    clientModelCacheAge = self->_clientModelCacheAge;
    PBDataWriterWriteUint32Field();
    v4 = v12;
  }

LABEL_15:
  if (self->_abGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }

  if (self->_clientModelABGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v12;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_layoutType)
  {
    [v4 setLayoutType:?];
    v4 = v7;
  }

  if (self->_clientModelId)
  {
    [v7 setClientModelId:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v4 + 16) = self->_numSuggestionsForClientModelInLayout;
    *(v4 + 72) |= 8u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v4 + 17) = self->_positionInClientModelCacheOfEngagedSuggestion;
    *(v4 + 72) |= 0x10u;
  }

  if (self->_consumerSubType)
  {
    [v7 setConsumerSubType:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    *(v4 + 13) = self->_engagementType;
    *(v4 + 72) |= 4u;
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

  *(v4 + 12) = self->_consumerSubTypeCacheAge;
  *(v4 + 72) |= 2u;
  if (*&self->_has)
  {
LABEL_14:
    *(v4 + 6) = self->_clientModelCacheAge;
    *(v4 + 72) |= 1u;
  }

LABEL_15:
  if (self->_abGroup)
  {
    [v7 setAbGroup:?];
    v4 = v7;
  }

  if (self->_clientModelABGroup)
  {
    [v7 setClientModelABGroup:?];
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_layoutType copyWithZone:a3];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(NSString *)self->_clientModelId copyWithZone:a3];
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

  v11 = [(NSString *)self->_consumerSubType copyWithZone:a3];
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
  v14 = [(NSString *)self->_abGroup copyWithZone:a3];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  v16 = [(NSString *)self->_clientModelABGroup copyWithZone:a3];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  layoutType = self->_layoutType;
  if (layoutType | *(v4 + 7))
  {
    if (![(NSString *)layoutType isEqual:?])
    {
      goto LABEL_38;
    }
  }

  clientModelId = self->_clientModelId;
  if (clientModelId | *(v4 + 4))
  {
    if (![(NSString *)clientModelId isEqual:?])
    {
      goto LABEL_38;
    }
  }

  has = self->_has;
  v8 = *(v4 + 72);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 72) & 8) == 0 || self->_numSuggestionsForClientModelInLayout != *(v4 + 16))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 72) & 8) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 72) & 0x10) == 0 || self->_positionInClientModelCacheOfEngagedSuggestion != *(v4 + 17))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 72) & 0x10) != 0)
  {
    goto LABEL_38;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(v4 + 5))
  {
    if (![(NSString *)consumerSubType isEqual:?])
    {
LABEL_38:
      v13 = 0;
      goto LABEL_39;
    }

    has = self->_has;
  }

  v10 = *(v4 + 72);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 72) & 4) == 0 || self->_engagementType != *(v4 + 13))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 72) & 4) != 0)
  {
    goto LABEL_38;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 72) & 2) == 0 || self->_consumerSubTypeCacheAge != *(v4 + 12))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 72) & 2) != 0)
  {
    goto LABEL_38;
  }

  if (has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_clientModelCacheAge != *(v4 + 6))
    {
      goto LABEL_38;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_38;
  }

  abGroup = self->_abGroup;
  if (abGroup | *(v4 + 1) && ![(NSString *)abGroup isEqual:?])
  {
    goto LABEL_38;
  }

  clientModelABGroup = self->_clientModelABGroup;
  if (clientModelABGroup | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 7))
  {
    [(ATXMPBBlendingClientModelEngagementTracker *)self setLayoutType:?];
    v4 = v7;
  }

  if (*(v4 + 4))
  {
    [(ATXMPBBlendingClientModelEngagementTracker *)self setClientModelId:?];
    v4 = v7;
  }

  v5 = *(v4 + 72);
  if ((v5 & 8) != 0)
  {
    self->_numSuggestionsForClientModelInLayout = *(v4 + 16);
    *&self->_has |= 8u;
    v5 = *(v4 + 72);
  }

  if ((v5 & 0x10) != 0)
  {
    self->_positionInClientModelCacheOfEngagedSuggestion = *(v4 + 17);
    *&self->_has |= 0x10u;
  }

  if (*(v4 + 5))
  {
    [(ATXMPBBlendingClientModelEngagementTracker *)self setConsumerSubType:?];
    v4 = v7;
  }

  v6 = *(v4 + 72);
  if ((v6 & 4) != 0)
  {
    self->_engagementType = *(v4 + 13);
    *&self->_has |= 4u;
    v6 = *(v4 + 72);
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

  else if ((*(v4 + 72) & 2) == 0)
  {
    goto LABEL_13;
  }

  self->_consumerSubTypeCacheAge = *(v4 + 12);
  *&self->_has |= 2u;
  if (*(v4 + 72))
  {
LABEL_14:
    self->_clientModelCacheAge = *(v4 + 6);
    *&self->_has |= 1u;
  }

LABEL_15:
  if (*(v4 + 1))
  {
    [(ATXMPBBlendingClientModelEngagementTracker *)self setAbGroup:?];
    v4 = v7;
  }

  if (*(v4 + 2))
  {
    [(ATXMPBBlendingClientModelEngagementTracker *)self setClientModelABGroup:?];
    v4 = v7;
  }
}

@end