@interface AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstance
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasRank:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstance

- (void)dealloc
{
  [(AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstance *)self setBundleId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstance;
  [(AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstance *)&v3 dealloc];
}

- (void)setHasRank:(BOOL)a3
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
  v3.super_class = AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstance description](&v3, sel_description), -[AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = v3;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundleId"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_rank), @"rank"}];
    has = self->_has;
  }

  if (has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_confidence), @"confidence"}];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    rank = self->_rank;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    confidence = self->_confidence;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (self->_bundleId)
  {
    [a3 setBundleId:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 5) = self->_rank;
    *(a3 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(a3 + 4) = self->_confidence;
    *(a3 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 8) = [(NSString *)self->_bundleId copyWithZone:a3];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 20) = self->_rank;
    *(v5 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_confidence;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    bundleId = self->_bundleId;
    if (!(bundleId | *(a3 + 1)) || (v5 = [(NSString *)bundleId isEqual:?]) != 0)
    {
      if ((*&self->_has & 2) != 0)
      {
        if ((*(a3 + 24) & 2) == 0 || self->_rank != *(a3 + 5))
        {
          goto LABEL_13;
        }
      }

      else if ((*(a3 + 24) & 2) != 0)
      {
LABEL_13:
        LOBYTE(v5) = 0;
        return v5;
      }

      LOBYTE(v5) = (*(a3 + 24) & 1) == 0;
      if (*&self->_has)
      {
        if ((*(a3 + 24) & 1) == 0 || self->_confidence != *(a3 + 4))
        {
          goto LABEL_13;
        }

        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_rank;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_confidence;
  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstance *)self setBundleId:?];
  }

  v5 = *(a3 + 24);
  if ((v5 & 2) != 0)
  {
    self->_rank = *(a3 + 5);
    *&self->_has |= 2u;
    v5 = *(a3 + 24);
  }

  if (v5)
  {
    self->_confidence = *(a3 + 4);
    *&self->_has |= 1u;
  }
}

@end