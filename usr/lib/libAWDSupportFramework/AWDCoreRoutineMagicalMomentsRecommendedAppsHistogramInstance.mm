@interface AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstance
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasRank:(BOOL)rank;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstance

- (void)dealloc
{
  [(AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstance *)self setBundleId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstance;
  [(AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstance *)&v3 dealloc];
}

- (void)setHasRank:(BOOL)rank
{
  if (rank)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [dictionary setObject:bundleId forKey:@"bundleId"];
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

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if (self->_bundleId)
  {
    [to setBundleId:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 5) = self->_rank;
    *(to + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(to + 4) = self->_confidence;
    *(to + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 8) = [(NSString *)self->_bundleId copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    bundleId = self->_bundleId;
    if (!(bundleId | *(equal + 1)) || (v5 = [(NSString *)bundleId isEqual:?]) != 0)
    {
      if ((*&self->_has & 2) != 0)
      {
        if ((*(equal + 24) & 2) == 0 || self->_rank != *(equal + 5))
        {
          goto LABEL_13;
        }
      }

      else if ((*(equal + 24) & 2) != 0)
      {
LABEL_13:
        LOBYTE(v5) = 0;
        return v5;
      }

      LOBYTE(v5) = (*(equal + 24) & 1) == 0;
      if (*&self->_has)
      {
        if ((*(equal + 24) & 1) == 0 || self->_confidence != *(equal + 4))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(AWDCoreRoutineMagicalMomentsRecommendedAppsHistogramInstance *)self setBundleId:?];
  }

  v5 = *(from + 24);
  if ((v5 & 2) != 0)
  {
    self->_rank = *(from + 5);
    *&self->_has |= 2u;
    v5 = *(from + 24);
  }

  if (v5)
  {
    self->_confidence = *(from + 4);
    *&self->_has |= 1u;
  }
}

@end