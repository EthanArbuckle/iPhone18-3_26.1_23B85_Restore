@interface AWDCoreRoutineMagicalMomentsIndividualMoment
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasExpertType:(BOOL)a3;
- (void)setHasModelType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineMagicalMomentsIndividualMoment

- (void)dealloc
{
  [(AWDCoreRoutineMagicalMomentsIndividualMoment *)self setSuggestionId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMagicalMomentsIndividualMoment;
  [(AWDCoreRoutineMagicalMomentsIndividualMoment *)&v3 dealloc];
}

- (void)setHasModelType:(BOOL)a3
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

- (void)setHasExpertType:(BOOL)a3
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
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMagicalMomentsIndividualMoment;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineMagicalMomentsIndividualMoment description](&v3, sel_description), -[AWDCoreRoutineMagicalMomentsIndividualMoment dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
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

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_modelType), @"modelType"}];
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_expertType), @"expertType"}];
  }

LABEL_5:
  suggestionId = self->_suggestionId;
  if (suggestionId)
  {
    [v3 setObject:suggestionId forKey:@"suggestionId"];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 32) |= 1u;
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

  *(a3 + 5) = self->_modelType;
  *(a3 + 32) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(a3 + 4) = self->_expertType;
    *(a3 + 32) |= 2u;
  }

LABEL_5:
  suggestionId = self->_suggestionId;
  if (suggestionId)
  {
    [a3 setSuggestionId:suggestionId];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v6[3] = [(NSString *)self->_suggestionId copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 32);
    if (*&self->_has)
    {
      if ((*(a3 + 32) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(a3 + 32))
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 32) & 4) == 0 || self->_modelType != *(a3 + 5))
      {
        goto LABEL_19;
      }
    }

    else if ((*(a3 + 32) & 4) != 0)
    {
      goto LABEL_19;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 32) & 2) == 0 || self->_expertType != *(a3 + 4))
      {
        goto LABEL_19;
      }
    }

    else if ((*(a3 + 32) & 2) != 0)
    {
      goto LABEL_19;
    }

    suggestionId = self->_suggestionId;
    if (suggestionId | *(a3 + 3))
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

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 32);
  if (v3)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v3 = *(a3 + 32);
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

  else if ((*(a3 + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_modelType = *(a3 + 5);
  *&self->_has |= 4u;
  if ((*(a3 + 32) & 2) != 0)
  {
LABEL_4:
    self->_expertType = *(a3 + 4);
    *&self->_has |= 2u;
  }

LABEL_5:
  if (*(a3 + 3))
  {
    [(AWDCoreRoutineMagicalMomentsIndividualMoment *)self setSuggestionId:?];
  }
}

@end