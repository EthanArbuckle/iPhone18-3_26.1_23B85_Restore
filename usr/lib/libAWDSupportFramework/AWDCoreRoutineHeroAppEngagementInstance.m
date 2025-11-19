@interface AWDCoreRoutineHeroAppEngagementInstance
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasActionType:(BOOL)a3;
- (void)setHasUiPlacement:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineHeroAppEngagementInstance

- (void)dealloc
{
  [(AWDCoreRoutineHeroAppEngagementInstance *)self setSuggestionId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineHeroAppEngagementInstance;
  [(AWDCoreRoutineHeroAppEngagementInstance *)&v3 dealloc];
}

- (void)setHasActionType:(BOOL)a3
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

- (void)setHasUiPlacement:(BOOL)a3
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
  v3.super_class = AWDCoreRoutineHeroAppEngagementInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineHeroAppEngagementInstance description](&v3, sel_description), -[AWDCoreRoutineHeroAppEngagementInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
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

  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_actionType), @"actionType"}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_uiPlacement), @"uiPlacement"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_suggestionId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    actionType = self->_actionType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    uiPlacement = self->_uiPlacement;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 36) |= 1u;
  }

  if (self->_suggestionId)
  {
    [a3 setSuggestionId:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 4) = self->_actionType;
    *(a3 + 36) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(a3 + 8) = self->_uiPlacement;
    *(a3 + 36) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 36) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_suggestionId copyWithZone:a3];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_actionType;
    *(v6 + 36) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 32) = self->_uiPlacement;
    *(v6 + 36) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 36);
    if (has)
    {
      if ((*(a3 + 36) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(a3 + 36))
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    suggestionId = self->_suggestionId;
    if (suggestionId | *(a3 + 3))
    {
      v5 = [(NSString *)suggestionId isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 2) != 0)
    {
      if ((*(a3 + 36) & 2) == 0 || self->_actionType != *(a3 + 4))
      {
        goto LABEL_19;
      }
    }

    else if ((*(a3 + 36) & 2) != 0)
    {
      goto LABEL_19;
    }

    LOBYTE(v5) = (*(a3 + 36) & 4) == 0;
    if ((has & 4) != 0)
    {
      if ((*(a3 + 36) & 4) == 0 || self->_uiPlacement != *(a3 + 8))
      {
        goto LABEL_19;
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
    v5 = 2654435761 * self->_actionType;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_uiPlacement;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 36))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 3))
  {
    [(AWDCoreRoutineHeroAppEngagementInstance *)self setSuggestionId:?];
  }

  v5 = *(a3 + 36);
  if ((v5 & 2) != 0)
  {
    self->_actionType = *(a3 + 4);
    *&self->_has |= 2u;
    v5 = *(a3 + 36);
  }

  if ((v5 & 4) != 0)
  {
    self->_uiPlacement = *(a3 + 8);
    *&self->_has |= 4u;
  }
}

@end