@interface AWDCoreRoutineHeroAppImpressionInstance
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasUiPlacement:(BOOL)placement;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineHeroAppImpressionInstance

- (void)dealloc
{
  [(AWDCoreRoutineHeroAppImpressionInstance *)self setSuggestionId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineHeroAppImpressionInstance;
  [(AWDCoreRoutineHeroAppImpressionInstance *)&v3 dealloc];
}

- (void)setHasUiPlacement:(BOOL)placement
{
  if (placement)
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
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineHeroAppImpressionInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineHeroAppImpressionInstance description](&v3, sel_description), -[AWDCoreRoutineHeroAppImpressionInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  if ((*&self->_has & 2) != 0)
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

  if ((*&self->_has & 2) != 0)
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
    *(to + 28) |= 1u;
  }

  if (self->_suggestionId)
  {
    [to setSuggestionId:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(to + 6) = self->_uiPlacement;
    *(to + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 28) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_suggestionId copyWithZone:zone];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_uiPlacement;
    *(v6 + 28) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 28);
    if (has)
    {
      if ((*(equal + 28) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_14;
      }
    }

    else if (*(equal + 28))
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    suggestionId = self->_suggestionId;
    if (suggestionId | *(equal + 2))
    {
      v5 = [(NSString *)suggestionId isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    LOBYTE(v5) = (*(equal + 28) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(equal + 28) & 2) == 0 || self->_uiPlacement != *(equal + 6))
      {
        goto LABEL_14;
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
    v5 = 2654435761 * self->_uiPlacement;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 28))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 2))
  {
    [(AWDCoreRoutineHeroAppImpressionInstance *)self setSuggestionId:?];
  }

  if ((*(from + 28) & 2) != 0)
  {
    self->_uiPlacement = *(from + 6);
    *&self->_has |= 2u;
  }
}

@end