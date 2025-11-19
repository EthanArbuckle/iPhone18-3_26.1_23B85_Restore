@interface AWDCoreRoutineMagicMomentsSuggestionInstance
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSuggestions:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasConfidence:(BOOL)a3;
- (void)setHasDurationSinceLastSuggestion:(BOOL)a3;
- (void)setHasReposponceTime:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineMagicMomentsSuggestionInstance

- (void)dealloc
{
  [(AWDCoreRoutineMagicMomentsSuggestionInstance *)self setSuggestionId:0];
  [(AWDCoreRoutineMagicMomentsSuggestionInstance *)self setSuggestions:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMagicMomentsSuggestionInstance;
  [(AWDCoreRoutineMagicMomentsSuggestionInstance *)&v3 dealloc];
}

- (void)setHasConfidence:(BOOL)a3
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

- (void)addSuggestions:(id)a3
{
  suggestions = self->_suggestions;
  if (!suggestions)
  {
    suggestions = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_suggestions = suggestions;
  }

  [(NSMutableArray *)suggestions addObject:a3];
}

- (void)setHasReposponceTime:(BOOL)a3
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

- (void)setHasDurationSinceLastSuggestion:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMagicMomentsSuggestionInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineMagicMomentsSuggestionInstance description](&v3, sel_description), -[AWDCoreRoutineMagicMomentsSuggestionInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  suggestionId = self->_suggestionId;
  if (suggestionId)
  {
    [v3 setObject:suggestionId forKey:@"suggestionId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_confidence), @"confidence"}];
  }

  if ([(NSMutableArray *)self->_suggestions count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_suggestions, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    suggestions = self->_suggestions;
    v7 = [(NSMutableArray *)suggestions countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(suggestions);
          }

          [v5 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)suggestions countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"suggestions"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_reposponceTime), @"reposponceTime"}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_durationSinceLastSuggestion), @"durationSinceLastSuggestion"}];
  }

  v12 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_suggestionId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    confidence = self->_confidence;
    PBDataWriterWriteInt32Field();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  suggestions = self->_suggestions;
  v7 = [(NSMutableArray *)suggestions countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(suggestions);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)suggestions countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    reposponceTime = self->_reposponceTime;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    durationSinceLastSuggestion = self->_durationSinceLastSuggestion;
    PBDataWriterWriteInt32Field();
  }

  v15 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 48) |= 1u;
  }

  if (self->_suggestionId)
  {
    [a3 setSuggestionId:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 4) = self->_confidence;
    *(a3 + 48) |= 2u;
  }

  if ([(AWDCoreRoutineMagicMomentsSuggestionInstance *)self suggestionsCount])
  {
    [a3 clearSuggestions];
    v5 = [(AWDCoreRoutineMagicMomentsSuggestionInstance *)self suggestionsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addSuggestions:{-[AWDCoreRoutineMagicMomentsSuggestionInstance suggestionsAtIndex:](self, "suggestionsAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(a3 + 6) = self->_reposponceTime;
    *(a3 + 48) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(a3 + 5) = self->_durationSinceLastSuggestion;
    *(a3 + 48) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
  }

  *(v6 + 32) = [(NSString *)self->_suggestionId copyWithZone:a3];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_confidence;
    *(v6 + 48) |= 2u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  suggestions = self->_suggestions;
  v8 = [(NSMutableArray *)suggestions countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(suggestions);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) copyWithZone:a3];
        [v6 addSuggestions:v12];
      }

      v9 = [(NSMutableArray *)suggestions countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v6 + 24) = self->_reposponceTime;
    *(v6 + 48) |= 8u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 20) = self->_durationSinceLastSuggestion;
    *(v6 + 48) |= 4u;
  }

  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 48);
    if (has)
    {
      if ((*(a3 + 48) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_27;
      }
    }

    else if (*(a3 + 48))
    {
LABEL_27:
      LOBYTE(v5) = 0;
      return v5;
    }

    suggestionId = self->_suggestionId;
    if (suggestionId | *(a3 + 4))
    {
      v5 = [(NSString *)suggestionId isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 48);
    if ((has & 2) != 0)
    {
      if ((*(a3 + 48) & 2) == 0 || self->_confidence != *(a3 + 4))
      {
        goto LABEL_27;
      }
    }

    else if ((*(a3 + 48) & 2) != 0)
    {
      goto LABEL_27;
    }

    suggestions = self->_suggestions;
    if (suggestions | *(a3 + 5))
    {
      v5 = [(NSMutableArray *)suggestions isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 8) != 0)
    {
      if ((*(a3 + 48) & 8) == 0 || self->_reposponceTime != *(a3 + 6))
      {
        goto LABEL_27;
      }
    }

    else if ((*(a3 + 48) & 8) != 0)
    {
      goto LABEL_27;
    }

    LOBYTE(v5) = (*(a3 + 48) & 4) == 0;
    if ((has & 4) != 0)
    {
      if ((*(a3 + 48) & 4) == 0 || self->_durationSinceLastSuggestion != *(a3 + 5))
      {
        goto LABEL_27;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_suggestionId hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_confidence;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSMutableArray *)self->_suggestions hash];
  if ((*&self->_has & 8) != 0)
  {
    v7 = 2654435761 * self->_reposponceTime;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v7 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v8 = 2654435761 * self->_durationSinceLastSuggestion;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x29EDCA608];
  if (*(a3 + 48))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 4))
  {
    [(AWDCoreRoutineMagicMomentsSuggestionInstance *)self setSuggestionId:?];
  }

  if ((*(a3 + 48) & 2) != 0)
  {
    self->_confidence = *(a3 + 4);
    *&self->_has |= 2u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(a3 + 5);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDCoreRoutineMagicMomentsSuggestionInstance *)self addSuggestions:*(*(&v12 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *(a3 + 48);
  if ((v10 & 8) != 0)
  {
    self->_reposponceTime = *(a3 + 6);
    *&self->_has |= 8u;
    v10 = *(a3 + 48);
  }

  if ((v10 & 4) != 0)
  {
    self->_durationSinceLastSuggestion = *(a3 + 5);
    *&self->_has |= 4u;
  }

  v11 = *MEMORY[0x29EDCA608];
}

@end