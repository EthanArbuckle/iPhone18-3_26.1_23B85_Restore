@interface ATXPBBiomeProactiveSuggestionUIFeedbackResult
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEngagedSuggestions:(id)suggestions;
- (void)addRejectedSuggestions:(id)suggestions;
- (void)addShownSuggestions:(id)suggestions;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSessionEndDate:(BOOL)date;
- (void)setHasSessionStartDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation ATXPBBiomeProactiveSuggestionUIFeedbackResult

- (void)setHasSessionStartDate:(BOOL)date
{
  if (date)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSessionEndDate:(BOOL)date
{
  if (date)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addShownSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  shownSuggestions = self->_shownSuggestions;
  v8 = suggestionsCopy;
  if (!shownSuggestions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_shownSuggestions;
    self->_shownSuggestions = v6;

    suggestionsCopy = v8;
    shownSuggestions = self->_shownSuggestions;
  }

  [(NSMutableArray *)shownSuggestions addObject:suggestionsCopy];
}

- (void)addEngagedSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  engagedSuggestions = self->_engagedSuggestions;
  v8 = suggestionsCopy;
  if (!engagedSuggestions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_engagedSuggestions;
    self->_engagedSuggestions = v6;

    suggestionsCopy = v8;
    engagedSuggestions = self->_engagedSuggestions;
  }

  [(NSMutableArray *)engagedSuggestions addObject:suggestionsCopy];
}

- (void)addRejectedSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  rejectedSuggestions = self->_rejectedSuggestions;
  v8 = suggestionsCopy;
  if (!rejectedSuggestions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_rejectedSuggestions;
    self->_rejectedSuggestions = v6;

    suggestionsCopy = v8;
    rejectedSuggestions = self->_rejectedSuggestions;
  }

  [(NSMutableArray *)rejectedSuggestions addObject:suggestionsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBBiomeProactiveSuggestionUIFeedbackResult;
  v4 = [(ATXPBBiomeProactiveSuggestionUIFeedbackResult *)&v8 description];
  dictionaryRepresentation = [(ATXPBBiomeProactiveSuggestionUIFeedbackResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v51 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  sessionId = self->_sessionId;
  if (sessionId)
  {
    [dictionary setObject:sessionId forKey:@"sessionId"];
  }

  blendingUICacheUpdateUUID = self->_blendingUICacheUpdateUUID;
  if (blendingUICacheUpdateUUID)
  {
    [v4 setObject:blendingUICacheUpdateUUID forKey:@"blendingUICacheUpdateUUID"];
  }

  clientModelId = self->_clientModelId;
  if (clientModelId)
  {
    [v4 setObject:clientModelId forKey:@"clientModelId"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_clientModelCacheCreationDate];
    [v4 setObject:v8 forKey:@"clientModelCacheCreationDate"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [v4 setObject:consumerSubType forKey:@"consumerSubType"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_sessionStartDate];
    [v4 setObject:v11 forKey:@"sessionStartDate"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_sessionEndDate];
    [v4 setObject:v12 forKey:@"sessionEndDate"];
  }

  if ([(NSMutableArray *)self->_shownSuggestions count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_shownSuggestions, "count")}];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v14 = self->_shownSuggestions;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v45;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation = [*(*(&v44 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"shownSuggestions"];
  }

  if ([(NSMutableArray *)self->_engagedSuggestions count])
  {
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_engagedSuggestions, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v21 = self->_engagedSuggestions;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v41;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation2 = [*(*(&v40 + 1) + 8 * j) dictionaryRepresentation];
          [v20 addObject:dictionaryRepresentation2];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v23);
    }

    [v4 setObject:v20 forKey:@"engagedSuggestions"];
  }

  if ([(NSMutableArray *)self->_rejectedSuggestions count])
  {
    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_rejectedSuggestions, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v28 = self->_rejectedSuggestions;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v37;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v37 != v31)
          {
            objc_enumerationMutation(v28);
          }

          dictionaryRepresentation3 = [*(*(&v36 + 1) + 8 * k) dictionaryRepresentation];
          [v27 addObject:dictionaryRepresentation3];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v30);
    }

    [v4 setObject:v27 forKey:@"rejectedSuggestions"];
  }

  v34 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)to
{
  v43 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_blendingUICacheUpdateUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    clientModelCacheCreationDate = self->_clientModelCacheCreationDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    sessionStartDate = self->_sessionStartDate;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    sessionEndDate = self->_sessionEndDate;
    PBDataWriterWriteDoubleField();
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = self->_shownSuggestions;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v11);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = self->_engagedSuggestions;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v32 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v17);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = self->_rejectedSuggestions;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v28 + 1) + 8 * k);
        PBDataWriterWriteSubmessage();
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v23);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v18 = toCopy;
  if (self->_sessionId)
  {
    [toCopy setSessionId:?];
    toCopy = v18;
  }

  if (self->_blendingUICacheUpdateUUID)
  {
    [v18 setBlendingUICacheUpdateUUID:?];
    toCopy = v18;
  }

  if (self->_clientModelId)
  {
    [v18 setClientModelId:?];
    toCopy = v18;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_clientModelCacheCreationDate;
    *(toCopy + 88) |= 1u;
  }

  if (self->_consumerSubType)
  {
    [v18 setConsumerSubType:?];
    toCopy = v18;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 3) = *&self->_sessionStartDate;
    *(toCopy + 88) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_sessionEndDate;
    *(toCopy + 88) |= 2u;
  }

  if ([(ATXPBBiomeProactiveSuggestionUIFeedbackResult *)self shownSuggestionsCount])
  {
    [v18 clearShownSuggestions];
    shownSuggestionsCount = [(ATXPBBiomeProactiveSuggestionUIFeedbackResult *)self shownSuggestionsCount];
    if (shownSuggestionsCount)
    {
      v7 = shownSuggestionsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(ATXPBBiomeProactiveSuggestionUIFeedbackResult *)self shownSuggestionsAtIndex:i];
        [v18 addShownSuggestions:v9];
      }
    }
  }

  if ([(ATXPBBiomeProactiveSuggestionUIFeedbackResult *)self engagedSuggestionsCount])
  {
    [v18 clearEngagedSuggestions];
    engagedSuggestionsCount = [(ATXPBBiomeProactiveSuggestionUIFeedbackResult *)self engagedSuggestionsCount];
    if (engagedSuggestionsCount)
    {
      v11 = engagedSuggestionsCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(ATXPBBiomeProactiveSuggestionUIFeedbackResult *)self engagedSuggestionsAtIndex:j];
        [v18 addEngagedSuggestions:v13];
      }
    }
  }

  if ([(ATXPBBiomeProactiveSuggestionUIFeedbackResult *)self rejectedSuggestionsCount])
  {
    [v18 clearRejectedSuggestions];
    rejectedSuggestionsCount = [(ATXPBBiomeProactiveSuggestionUIFeedbackResult *)self rejectedSuggestionsCount];
    if (rejectedSuggestionsCount)
    {
      v15 = rejectedSuggestionsCount;
      for (k = 0; k != v15; ++k)
      {
        v17 = [(ATXPBBiomeProactiveSuggestionUIFeedbackResult *)self rejectedSuggestionsAtIndex:k];
        [v18 addRejectedSuggestions:v17];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sessionId copyWithZone:zone];
  v7 = *(v5 + 72);
  *(v5 + 72) = v6;

  v8 = [(NSString *)self->_blendingUICacheUpdateUUID copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_clientModelId copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_clientModelCacheCreationDate;
    *(v5 + 88) |= 1u;
  }

  v12 = [(NSString *)self->_consumerSubType copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_sessionStartDate;
    *(v5 + 88) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_sessionEndDate;
    *(v5 + 88) |= 2u;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v15 = self->_shownSuggestions;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v44;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v44 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v43 + 1) + 8 * i) copyWithZone:zone];
        [v5 addShownSuggestions:v20];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v17);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v21 = self->_engagedSuggestions;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v40;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v39 + 1) + 8 * j) copyWithZone:zone];
        [v5 addEngagedSuggestions:v26];
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v23);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = self->_rejectedSuggestions;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v36;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v35 + 1) + 8 * k) copyWithZone:{zone, v35}];
        [v5 addRejectedSuggestions:v32];
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v29);
  }

  v33 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  sessionId = self->_sessionId;
  if (sessionId | *(equalCopy + 9))
  {
    if (![(NSString *)sessionId isEqual:?])
    {
      goto LABEL_32;
    }
  }

  blendingUICacheUpdateUUID = self->_blendingUICacheUpdateUUID;
  if (blendingUICacheUpdateUUID | *(equalCopy + 4))
  {
    if (![(NSString *)blendingUICacheUpdateUUID isEqual:?])
    {
      goto LABEL_32;
    }
  }

  clientModelId = self->_clientModelId;
  if (clientModelId | *(equalCopy + 5))
  {
    if (![(NSString *)clientModelId isEqual:?])
    {
      goto LABEL_32;
    }
  }

  has = self->_has;
  v9 = *(equalCopy + 88);
  if (has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_clientModelCacheCreationDate != *(equalCopy + 1))
    {
      goto LABEL_32;
    }
  }

  else if (*(equalCopy + 88))
  {
    goto LABEL_32;
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(equalCopy + 6))
  {
    if (![(NSString *)consumerSubType isEqual:?])
    {
LABEL_32:
      v15 = 0;
      goto LABEL_33;
    }

    has = self->_has;
  }

  v11 = *(equalCopy + 88);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 88) & 4) == 0 || self->_sessionStartDate != *(equalCopy + 3))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 88) & 4) != 0)
  {
    goto LABEL_32;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 88) & 2) == 0 || self->_sessionEndDate != *(equalCopy + 2))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 88) & 2) != 0)
  {
    goto LABEL_32;
  }

  shownSuggestions = self->_shownSuggestions;
  if (shownSuggestions | *(equalCopy + 10) && ![(NSMutableArray *)shownSuggestions isEqual:?])
  {
    goto LABEL_32;
  }

  engagedSuggestions = self->_engagedSuggestions;
  if (engagedSuggestions | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)engagedSuggestions isEqual:?])
    {
      goto LABEL_32;
    }
  }

  rejectedSuggestions = self->_rejectedSuggestions;
  if (rejectedSuggestions | *(equalCopy + 8))
  {
    v15 = [(NSMutableArray *)rejectedSuggestions isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_33:

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sessionId hash];
  v4 = [(NSString *)self->_blendingUICacheUpdateUUID hash];
  v5 = [(NSString *)self->_clientModelId hash];
  if (*&self->_has)
  {
    clientModelCacheCreationDate = self->_clientModelCacheCreationDate;
    if (clientModelCacheCreationDate < 0.0)
    {
      clientModelCacheCreationDate = -clientModelCacheCreationDate;
    }

    *v6.i64 = floor(clientModelCacheCreationDate + 0.5);
    v10 = (clientModelCacheCreationDate - *v6.i64) * 1.84467441e19;
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

  v12 = [(NSString *)self->_consumerSubType hash];
  if ((*&self->_has & 4) != 0)
  {
    sessionStartDate = self->_sessionStartDate;
    if (sessionStartDate < 0.0)
    {
      sessionStartDate = -sessionStartDate;
    }

    *v13.i64 = floor(sessionStartDate + 0.5);
    v17 = (sessionStartDate - *v13.i64) * 1.84467441e19;
    *v14.i64 = *v13.i64 - trunc(*v13.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v13 = vbslq_s8(vnegq_f64(v18), v14, v13);
    v15 = 2654435761u * *v13.i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    sessionEndDate = self->_sessionEndDate;
    if (sessionEndDate < 0.0)
    {
      sessionEndDate = -sessionEndDate;
    }

    *v13.i64 = floor(sessionEndDate + 0.5);
    v21 = (sessionEndDate - *v13.i64) * 1.84467441e19;
    *v14.i64 = *v13.i64 - trunc(*v13.i64 * 5.42101086e-20) * 1.84467441e19;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v19 = 2654435761u * *vbslq_s8(vnegq_f64(v22), v14, v13).i64;
    if (v21 >= 0.0)
    {
      if (v21 > 0.0)
      {
        v19 += v21;
      }
    }

    else
    {
      v19 -= fabs(v21);
    }
  }

  else
  {
    v19 = 0;
  }

  v23 = v4 ^ v3 ^ v5 ^ v8 ^ v12 ^ v15 ^ v19;
  v24 = [(NSMutableArray *)self->_shownSuggestions hash];
  v25 = v24 ^ [(NSMutableArray *)self->_engagedSuggestions hash];
  return v23 ^ v25 ^ [(NSMutableArray *)self->_rejectedSuggestions hash];
}

- (void)mergeFrom:(id)from
{
  v37 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 9))
  {
    [(ATXPBBiomeProactiveSuggestionUIFeedbackResult *)self setSessionId:?];
  }

  if (*(fromCopy + 4))
  {
    [(ATXPBBiomeProactiveSuggestionUIFeedbackResult *)self setBlendingUICacheUpdateUUID:?];
  }

  if (*(fromCopy + 5))
  {
    [(ATXPBBiomeProactiveSuggestionUIFeedbackResult *)self setClientModelId:?];
  }

  if (*(fromCopy + 88))
  {
    self->_clientModelCacheCreationDate = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 6))
  {
    [(ATXPBBiomeProactiveSuggestionUIFeedbackResult *)self setConsumerSubType:?];
  }

  v5 = *(fromCopy + 88);
  if ((v5 & 4) != 0)
  {
    self->_sessionStartDate = *(fromCopy + 3);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 88);
  }

  if ((v5 & 2) != 0)
  {
    self->_sessionEndDate = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = *(fromCopy + 10);
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ATXPBBiomeProactiveSuggestionUIFeedbackResult *)self addShownSuggestions:*(*(&v30 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v8);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = *(fromCopy + 7);
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(ATXPBBiomeProactiveSuggestionUIFeedbackResult *)self addEngagedSuggestions:*(*(&v26 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v13);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = *(fromCopy + 8);
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(ATXPBBiomeProactiveSuggestionUIFeedbackResult *)self addRejectedSuggestions:*(*(&v22 + 1) + 8 * k), v22];
      }

      v18 = [v16 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v18);
  }

  v21 = *MEMORY[0x1E69E9840];
}

@end