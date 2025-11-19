@interface PeopleSuggesterPhotoFeatures
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsScreenShot:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PeopleSuggesterPhotoFeatures

- (void)setHasIsScreenShot:(BOOL)a3
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
  v8.super_class = PeopleSuggesterPhotoFeatures;
  v4 = [(PeopleSuggesterPhotoFeatures *)&v8 description];
  v5 = [(PeopleSuggesterPhotoFeatures *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFavorited];
    [v3 setObject:v5 forKey:@"isFavorited"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isScreenShot];
    [v3 setObject:v6 forKey:@"isScreenShot"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    isFavorited = self->_isFavorited;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    isScreenShot = self->_isScreenShot;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[8] = self->_isFavorited;
    v4[12] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[9] = self->_isScreenShot;
    v4[12] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  if ((*&self->_has & 1) == 0)
  {
    if ((v4[12] & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if ((v4[12] & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = v4[8];
  if (self->_isFavorited)
  {
    if ((v4[8] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v4[8])
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = (v4[12] & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((v4[12] & 2) != 0)
    {
      if (self->_isScreenShot)
      {
        if (v4[9])
        {
          goto LABEL_18;
        }
      }

      else if (!v4[9])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[12];
  if (v5)
  {
    self->_isFavorited = v4[8];
    *&self->_has |= 1u;
    v5 = v4[12];
  }

  if ((v5 & 2) != 0)
  {
    self->_isScreenShot = v4[9];
    *&self->_has |= 2u;
  }
}

@end