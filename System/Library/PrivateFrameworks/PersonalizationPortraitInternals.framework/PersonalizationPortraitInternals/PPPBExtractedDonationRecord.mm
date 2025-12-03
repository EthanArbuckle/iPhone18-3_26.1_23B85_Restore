@interface PPPBExtractedDonationRecord
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTopicId:(BOOL)id;
- (void)setHasUnixTimestampSec:(BOOL)sec;
- (void)writeTo:(id)to;
@end

@implementation PPPBExtractedDonationRecord

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(PPPBExtractedDonationRecord *)self setSourceBundleId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(PPPBExtractedDonationRecord *)self setAlgorithm:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 56);
  if (v5)
  {
    self->_score = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 56);
  }

  if ((v5 & 2) != 0)
  {
    self->_topicId = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 5))
  {
    [(PPPBExtractedDonationRecord *)self setNamedEntity:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 56) & 4) != 0)
  {
    self->_unixTimestampSec = *(fromCopy + 3);
    *&self->_has |= 4u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sourceBundleId hash];
  v4 = [(NSString *)self->_algorithm hash];
  if (*&self->_has)
  {
    score = self->_score;
    if (score < 0.0)
    {
      score = -score;
    }

    *v5.i64 = floor(score + 0.5);
    v9 = (score - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761u * self->_topicId;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(NSString *)self->_namedEntity hash];
  if ((*&self->_has & 4) != 0)
  {
    v13 = 2654435761u * self->_unixTimestampSec;
  }

  else
  {
    v13 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ v12 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  sourceBundleId = self->_sourceBundleId;
  if (sourceBundleId | *(equalCopy + 6))
  {
    if (![(NSString *)sourceBundleId isEqual:?])
    {
      goto LABEL_23;
    }
  }

  algorithm = self->_algorithm;
  if (algorithm | *(equalCopy + 4))
  {
    if (![(NSString *)algorithm isEqual:?])
    {
      goto LABEL_23;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 56);
  if (has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_score != *(equalCopy + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_topicId != *(equalCopy + 2))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_23;
  }

  namedEntity = self->_namedEntity;
  if (namedEntity | *(equalCopy + 5))
  {
    if (![(NSString *)namedEntity isEqual:?])
    {
LABEL_23:
      v10 = 0;
      goto LABEL_24;
    }

    has = self->_has;
    v8 = *(equalCopy + 56);
  }

  v10 = (v8 & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_unixTimestampSec != *(equalCopy + 3))
    {
      goto LABEL_23;
    }

    v10 = 1;
  }

LABEL_24:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sourceBundleId copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_algorithm copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_score;
    *(v5 + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_topicId;
    *(v5 + 56) |= 2u;
  }

  v11 = [(NSString *)self->_namedEntity copyWithZone:zone];
  v12 = *(v5 + 40);
  *(v5 + 40) = v11;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_unixTimestampSec;
    *(v5 + 56) |= 4u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_sourceBundleId)
  {
    [toCopy setSourceBundleId:?];
    toCopy = v6;
  }

  if (self->_algorithm)
  {
    [v6 setAlgorithm:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_score;
    *(toCopy + 56) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_topicId;
    *(toCopy + 56) |= 2u;
  }

  if (self->_namedEntity)
  {
    [v6 setNamedEntity:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 3) = self->_unixTimestampSec;
    *(toCopy + 56) |= 4u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_sourceBundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if (self->_algorithm)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    score = self->_score;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    topicId = self->_topicId;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
  }

  if (self->_namedEntity)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }

  if ((*&self->_has & 4) != 0)
  {
    unixTimestampSec = self->_unixTimestampSec;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  sourceBundleId = self->_sourceBundleId;
  if (sourceBundleId)
  {
    [dictionary setObject:sourceBundleId forKey:@"sourceBundleId"];
  }

  algorithm = self->_algorithm;
  if (algorithm)
  {
    [v4 setObject:algorithm forKey:@"algorithm"];
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_score];
    [v4 setObject:v8 forKey:@"score"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_topicId];
    [v4 setObject:v9 forKey:@"topicId"];
  }

  namedEntity = self->_namedEntity;
  if (namedEntity)
  {
    [v4 setObject:namedEntity forKey:@"namedEntity"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_unixTimestampSec];
    [v4 setObject:v11 forKey:@"unixTimestampSec"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPPBExtractedDonationRecord;
  v4 = [(PPPBExtractedDonationRecord *)&v8 description];
  dictionaryRepresentation = [(PPPBExtractedDonationRecord *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasUnixTimestampSec:(BOOL)sec
{
  if (sec)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTopicId:(BOOL)id
{
  if (id)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end