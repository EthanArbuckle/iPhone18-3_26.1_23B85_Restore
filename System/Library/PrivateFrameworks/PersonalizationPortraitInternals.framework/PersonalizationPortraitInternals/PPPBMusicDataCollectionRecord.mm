@interface PPPBMusicDataCollectionRecord
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAlgorithm:(BOOL)algorithm;
- (void)setHasMediaType:(BOOL)type;
- (void)setHasSecondsFromUnixEpoch:(BOOL)epoch;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PPPBMusicDataCollectionRecord

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 68) & 0x10) != 0)
  {
    self->_type = *(fromCopy + 16);
    *&self->_has |= 0x10u;
  }

  v7 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(PPPBMusicDataCollectionRecord *)self setLabel:?];
    fromCopy = v7;
  }

  v5 = *(fromCopy + 68);
  if ((v5 & 2) != 0)
  {
    self->_secondsFromUnixEpoch = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 68);
  }

  if (v5)
  {
    self->_quantizedScore = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 7))
  {
    [(PPPBMusicDataCollectionRecord *)self setSourceBundleId:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 5))
  {
    [(PPPBMusicDataCollectionRecord *)self setMediaId:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 68);
  if ((v6 & 8) != 0)
  {
    self->_mediaType = *(fromCopy + 12);
    *&self->_has |= 8u;
    v6 = *(fromCopy + 68);
  }

  if ((v6 & 4) != 0)
  {
    self->_algorithm = *(fromCopy + 6);
    *&self->_has |= 4u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_label hash];
  if ((*&self->_has & 2) != 0)
  {
    secondsFromUnixEpoch = self->_secondsFromUnixEpoch;
    if (secondsFromUnixEpoch < 0.0)
    {
      secondsFromUnixEpoch = -secondsFromUnixEpoch;
    }

    *v5.i64 = floor(secondsFromUnixEpoch + 0.5);
    v9 = (secondsFromUnixEpoch - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v10), v6, v5);
    v7 = 2654435761u * *v5.i64;
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

  if (*&self->_has)
  {
    quantizedScore = self->_quantizedScore;
    if (quantizedScore < 0.0)
    {
      quantizedScore = -quantizedScore;
    }

    *v5.i64 = floor(quantizedScore + 0.5);
    v13 = (quantizedScore - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v6, v5).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = [(NSString *)self->_sourceBundleId hash];
  v16 = [(NSString *)self->_mediaId hash];
  if ((*&self->_has & 8) != 0)
  {
    v17 = 2654435761 * self->_mediaType;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    v18 = 0;
    return v4 ^ v3 ^ v7 ^ v11 ^ v15 ^ v16 ^ v17 ^ v18;
  }

  v17 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  v18 = 2654435761 * self->_algorithm;
  return v4 ^ v3 ^ v7 ^ v11 ^ v15 ^ v16 ^ v17 ^ v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  has = self->_has;
  v6 = *(equalCopy + 68);
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 68) & 0x10) == 0 || self->_type != *(equalCopy + 16))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 68) & 0x10) != 0)
  {
    goto LABEL_33;
  }

  label = self->_label;
  if (label | *(equalCopy + 4))
  {
    if (![(NSString *)label isEqual:?])
    {
LABEL_33:
      v10 = 0;
      goto LABEL_34;
    }

    has = self->_has;
    v6 = *(equalCopy + 68);
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_secondsFromUnixEpoch != *(equalCopy + 2))
    {
      goto LABEL_33;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_33;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_quantizedScore != *(equalCopy + 1))
    {
      goto LABEL_33;
    }
  }

  else if (v6)
  {
    goto LABEL_33;
  }

  sourceBundleId = self->_sourceBundleId;
  if (sourceBundleId | *(equalCopy + 7) && ![(NSString *)sourceBundleId isEqual:?])
  {
    goto LABEL_33;
  }

  mediaId = self->_mediaId;
  if (mediaId | *(equalCopy + 5))
  {
    if (![(NSString *)mediaId isEqual:?])
    {
      goto LABEL_33;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 68) & 8) == 0 || self->_mediaType != *(equalCopy + 12))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 68) & 8) != 0)
  {
    goto LABEL_33;
  }

  v10 = (*(equalCopy + 68) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 68) & 4) == 0 || self->_algorithm != *(equalCopy + 6))
    {
      goto LABEL_33;
    }

    v10 = 1;
  }

LABEL_34:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x10) != 0)
  {
    *(v5 + 64) = self->_type;
    *(v5 + 68) |= 0x10u;
  }

  v7 = [(NSString *)self->_label copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_secondsFromUnixEpoch;
    *(v6 + 68) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 8) = self->_quantizedScore;
    *(v6 + 68) |= 1u;
  }

  v10 = [(NSString *)self->_sourceBundleId copyWithZone:zone];
  v11 = *(v6 + 56);
  *(v6 + 56) = v10;

  v12 = [(NSString *)self->_mediaId copyWithZone:zone];
  v13 = *(v6 + 40);
  *(v6 + 40) = v12;

  v14 = self->_has;
  if ((v14 & 8) != 0)
  {
    *(v6 + 48) = self->_mediaType;
    *(v6 + 68) |= 8u;
    v14 = self->_has;
  }

  if ((v14 & 4) != 0)
  {
    *(v6 + 24) = self->_algorithm;
    *(v6 + 68) |= 4u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x10) != 0)
  {
    toCopy[16] = self->_type;
    *(toCopy + 68) |= 0x10u;
  }

  v7 = toCopy;
  if (self->_label)
  {
    [toCopy setLabel:?];
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_secondsFromUnixEpoch;
    *(toCopy + 68) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_quantizedScore;
    *(toCopy + 68) |= 1u;
  }

  if (self->_sourceBundleId)
  {
    [v7 setSourceBundleId:?];
    toCopy = v7;
  }

  if (self->_mediaId)
  {
    [v7 setMediaId:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    toCopy[12] = self->_mediaType;
    *(toCopy + 68) |= 8u;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    toCopy[6] = self->_algorithm;
    *(toCopy + 68) |= 4u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x10) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  if (self->_label)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    secondsFromUnixEpoch = self->_secondsFromUnixEpoch;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if (has)
  {
    quantizedScore = self->_quantizedScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_sourceBundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_mediaId)
  {
    PBDataWriterWriteStringField();
  }

  v8 = self->_has;
  if ((v8 & 8) != 0)
  {
    mediaType = self->_mediaType;
    PBDataWriterWriteInt32Field();
    v8 = self->_has;
  }

  if ((v8 & 4) != 0)
  {
    algorithm = self->_algorithm;
    PBDataWriterWriteInt32Field();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 0x10) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_type];
    [dictionary setObject:v4 forKey:@"type"];
  }

  label = self->_label;
  if (label)
  {
    [dictionary setObject:label forKey:@"label"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_secondsFromUnixEpoch];
    [dictionary setObject:v7 forKey:@"secondsFromUnixEpoch"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_quantizedScore];
    [dictionary setObject:v8 forKey:@"quantizedScore"];
  }

  sourceBundleId = self->_sourceBundleId;
  if (sourceBundleId)
  {
    [dictionary setObject:sourceBundleId forKey:@"sourceBundleId"];
  }

  mediaId = self->_mediaId;
  if (mediaId)
  {
    [dictionary setObject:mediaId forKey:@"mediaId"];
  }

  v11 = self->_has;
  if ((v11 & 8) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:self->_mediaType];
    [dictionary setObject:v12 forKey:@"mediaType"];

    v11 = self->_has;
  }

  if ((v11 & 4) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInt:self->_algorithm];
    [dictionary setObject:v13 forKey:@"algorithm"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPPBMusicDataCollectionRecord;
  v4 = [(PPPBMusicDataCollectionRecord *)&v8 description];
  dictionaryRepresentation = [(PPPBMusicDataCollectionRecord *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasAlgorithm:(BOOL)algorithm
{
  if (algorithm)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMediaType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSecondsFromUnixEpoch:(BOOL)epoch
{
  if (epoch)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)type
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

+ (id)options
{
  if (options_once_4901 != -1)
  {
    dispatch_once(&options_once_4901, &__block_literal_global_4902);
  }

  v3 = options_sOptions_4903;

  return v3;
}

void __40__PPPBMusicDataCollectionRecord_options__block_invoke()
{
  v0 = options_sOptions_4903;
  options_sOptions_4903 = &unk_284785F00;
}

@end