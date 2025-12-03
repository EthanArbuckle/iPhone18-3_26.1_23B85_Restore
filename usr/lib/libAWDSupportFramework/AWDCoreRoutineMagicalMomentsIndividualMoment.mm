@interface AWDCoreRoutineMagicalMomentsIndividualMoment
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasExpertType:(BOOL)type;
- (void)setHasModelType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineMagicalMomentsIndividualMoment

- (void)dealloc
{
  [(AWDCoreRoutineMagicalMomentsIndividualMoment *)self setSuggestionId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMagicalMomentsIndividualMoment;
  [(AWDCoreRoutineMagicalMomentsIndividualMoment *)&v3 dealloc];
}

- (void)setHasModelType:(BOOL)type
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

- (void)setHasExpertType:(BOOL)type
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMagicalMomentsIndividualMoment;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineMagicalMomentsIndividualMoment description](&v3, sel_description), -[AWDCoreRoutineMagicalMomentsIndividualMoment dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_modelType), @"modelType"}];
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_expertType), @"expertType"}];
  }

LABEL_5:
  suggestionId = self->_suggestionId;
  if (suggestionId)
  {
    [dictionary setObject:suggestionId forKey:@"suggestionId"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  modelType = self->_modelType;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    expertType = self->_expertType;
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  if (self->_suggestionId)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 32) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(to + 5) = self->_modelType;
  *(to + 32) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(to + 4) = self->_expertType;
    *(to + 32) |= 2u;
  }

LABEL_5:
  suggestionId = self->_suggestionId;
  if (suggestionId)
  {
    [to setSuggestionId:suggestionId];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 20) = self->_modelType;
    *(v5 + 32) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_timestamp;
  *(v5 + 32) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_expertType;
    *(v5 + 32) |= 2u;
  }

LABEL_5:

  v6[3] = [(NSString *)self->_suggestionId copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 32);
    if (*&self->_has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(equal + 32))
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 32) & 4) == 0 || self->_modelType != *(equal + 5))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 32) & 4) != 0)
    {
      goto LABEL_19;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 32) & 2) == 0 || self->_expertType != *(equal + 4))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 32) & 2) != 0)
    {
      goto LABEL_19;
    }

    suggestionId = self->_suggestionId;
    if (suggestionId | *(equal + 3))
    {

      LOBYTE(v5) = [(NSString *)suggestionId isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(NSString *)self->_suggestionId hash:v3];
  }

  v6 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_modelType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_expertType;
  return v7 ^ v6 ^ v8 ^ [(NSString *)self->_suggestionId hash:v3];
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 32);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 32);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(from + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_modelType = *(from + 5);
  *&self->_has |= 4u;
  if ((*(from + 32) & 2) != 0)
  {
LABEL_4:
    self->_expertType = *(from + 4);
    *&self->_has |= 2u;
  }

LABEL_5:
  if (*(from + 3))
  {
    [(AWDCoreRoutineMagicalMomentsIndividualMoment *)self setSuggestionId:?];
  }
}

@end