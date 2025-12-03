@interface AWDCoreRoutineHeroAppEngagementInstance
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasActionType:(BOOL)type;
- (void)setHasUiPlacement:(BOOL)placement;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineHeroAppEngagementInstance

- (void)dealloc
{
  [(AWDCoreRoutineHeroAppEngagementInstance *)self setSuggestionId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineHeroAppEngagementInstance;
  [(AWDCoreRoutineHeroAppEngagementInstance *)&v3 dealloc];
}

- (void)setHasActionType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasUiPlacement:(BOOL)placement
{
  if (placement)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  suggestionId = self->_suggestionId;
  if (suggestionId)
  {
    [dictionary setObject:suggestionId forKey:@"suggestionId"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_actionType), @"actionType"}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_uiPlacement), @"uiPlacement"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 36) |= 1u;
  }

  if (self->_suggestionId)
  {
    [to setSuggestionId:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 4) = self->_actionType;
    *(to + 36) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(to + 8) = self->_uiPlacement;
    *(to + 36) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 36) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_suggestionId copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 36);
    if (has)
    {
      if ((*(equal + 36) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(equal + 36))
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    suggestionId = self->_suggestionId;
    if (suggestionId | *(equal + 3))
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
      if ((*(equal + 36) & 2) == 0 || self->_actionType != *(equal + 4))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 36) & 2) != 0)
    {
      goto LABEL_19;
    }

    LOBYTE(v5) = (*(equal + 36) & 4) == 0;
    if ((has & 4) != 0)
    {
      if ((*(equal + 36) & 4) == 0 || self->_uiPlacement != *(equal + 8))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 36))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 3))
  {
    [(AWDCoreRoutineHeroAppEngagementInstance *)self setSuggestionId:?];
  }

  v5 = *(from + 36);
  if ((v5 & 2) != 0)
  {
    self->_actionType = *(from + 4);
    *&self->_has |= 2u;
    v5 = *(from + 36);
  }

  if ((v5 & 4) != 0)
  {
    self->_uiPlacement = *(from + 8);
    *&self->_has |= 4u;
  }
}

@end