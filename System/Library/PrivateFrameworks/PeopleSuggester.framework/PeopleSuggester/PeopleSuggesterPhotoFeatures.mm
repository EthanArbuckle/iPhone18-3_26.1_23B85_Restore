@interface PeopleSuggesterPhotoFeatures
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsScreenShot:(BOOL)shot;
- (void)writeTo:(id)to;
@end

@implementation PeopleSuggesterPhotoFeatures

- (void)setHasIsScreenShot:(BOOL)shot
{
  if (shot)
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
  v8.super_class = PeopleSuggesterPhotoFeatures;
  v4 = [(PeopleSuggesterPhotoFeatures *)&v8 description];
  dictionaryRepresentation = [(PeopleSuggesterPhotoFeatures *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFavorited];
    [dictionary setObject:v5 forKey:@"isFavorited"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isScreenShot];
    [dictionary setObject:v6 forKey:@"isScreenShot"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v8 = toCopy;
  if (has)
  {
    isFavorited = self->_isFavorited;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    isScreenShot = self->_isScreenShot;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[8] = self->_isFavorited;
    toCopy[12] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[9] = self->_isScreenShot;
    toCopy[12] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 8) = self->_isFavorited;
    *(result + 12) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 9) = self->_isScreenShot;
    *(result + 12) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  if ((*&self->_has & 1) == 0)
  {
    if ((equalCopy[12] & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if ((equalCopy[12] & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = equalCopy[8];
  if (self->_isFavorited)
  {
    if ((equalCopy[8] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (equalCopy[8])
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = (equalCopy[12] & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[12] & 2) != 0)
    {
      if (self->_isScreenShot)
      {
        if (equalCopy[9])
        {
          goto LABEL_18;
        }
      }

      else if (!equalCopy[9])
      {
LABEL_18:
        v5 = 1;
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_isFavorited;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_isScreenShot;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[12];
  if (v5)
  {
    self->_isFavorited = fromCopy[8];
    *&self->_has |= 1u;
    v5 = fromCopy[12];
  }

  if ((v5 & 2) != 0)
  {
    self->_isScreenShot = fromCopy[9];
    *&self->_has |= 2u;
  }
}

@end