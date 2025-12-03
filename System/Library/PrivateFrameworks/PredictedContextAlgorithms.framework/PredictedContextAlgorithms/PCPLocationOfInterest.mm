@interface PCPLocationOfInterest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPlaceType:(id)type;
- (int)placeType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPlaceType:(BOOL)type;
- (void)setHasVisitFrequency:(BOOL)frequency;
- (void)writeTo:(id)to;
@end

@implementation PCPLocationOfInterest

- (int)placeType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_placeType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPlaceType:(BOOL)type
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

- (int)StringAsPlaceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Home"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Work"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"School"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Gym"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasVisitFrequency:(BOOL)frequency
{
  if (frequency)
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
  v8.super_class = PCPLocationOfInterest;
  v4 = [(PCPLocationOfInterest *)&v8 description];
  dictionaryRepresentation = [(PCPLocationOfInterest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  loiIdentifier = self->_loiIdentifier;
  if (loiIdentifier)
  {
    [dictionary setObject:loiIdentifier forKey:@"loiIdentifier"];
  }

  location = self->_location;
  if (location)
  {
    dictionaryRepresentation = [(PCPLocation *)location dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"location"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    placeType = self->_placeType;
    if (placeType >= 5)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_placeType];
    }

    else
    {
      v10 = off_1E83B8128[placeType];
    }

    [v4 setObject:v10 forKey:@"placeType"];

    has = self->_has;
  }

  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lastVisitTimeCFAbsolute];
    [v4 setObject:v11 forKey:@"lastVisitTimeCFAbsolute"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_visitFrequency];
    [v4 setObject:v12 forKey:@"visitFrequency"];
  }

  placeMapItem = self->_placeMapItem;
  if (placeMapItem)
  {
    dictionaryRepresentation2 = [(PCPMapItem *)placeMapItem dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"placeMapItem"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_loiIdentifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v9;
  }

  if (self->_location)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    placeType = self->_placeType;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  lastVisitTimeCFAbsolute = self->_lastVisitTimeCFAbsolute;
  PBDataWriterWriteDoubleField();
  toCopy = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    visitFrequency = self->_visitFrequency;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
  }

LABEL_9:
  if (self->_placeMapItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_loiIdentifier)
  {
    [toCopy setLoiIdentifier:?];
    toCopy = v6;
  }

  if (self->_location)
  {
    [v6 setLocation:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 12) = self->_placeType;
    *(toCopy + 52) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 1) = *&self->_lastVisitTimeCFAbsolute;
  *(toCopy + 52) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    *(toCopy + 2) = *&self->_visitFrequency;
    *(toCopy + 52) |= 2u;
  }

LABEL_9:
  if (self->_placeMapItem)
  {
    [v6 setPlaceMapItem:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_loiIdentifier copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(PCPLocation *)self->_location copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 8) = self->_lastVisitTimeCFAbsolute;
    *(v5 + 52) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 48) = self->_placeType;
  *(v5 + 52) |= 4u;
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_visitFrequency;
    *(v5 + 52) |= 2u;
  }

LABEL_5:
  v11 = [(PCPMapItem *)self->_placeMapItem copyWithZone:zone];
  v12 = *(v5 + 40);
  *(v5 + 40) = v11;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  loiIdentifier = self->_loiIdentifier;
  if (loiIdentifier | *(equalCopy + 4))
  {
    if (![(NSData *)loiIdentifier isEqual:?])
    {
      goto LABEL_23;
    }
  }

  location = self->_location;
  if (location | *(equalCopy + 3))
  {
    if (![(PCPLocation *)location isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v7 = *(equalCopy + 52);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 52) & 4) == 0 || self->_placeType != *(equalCopy + 12))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 52) & 4) != 0)
  {
LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_lastVisitTimeCFAbsolute != *(equalCopy + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_visitFrequency != *(equalCopy + 2))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
    goto LABEL_23;
  }

  placeMapItem = self->_placeMapItem;
  if (placeMapItem | *(equalCopy + 5))
  {
    v9 = [(PCPMapItem *)placeMapItem isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_24:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_loiIdentifier hash];
  v4 = [(PCPLocation *)self->_location hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_placeType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  lastVisitTimeCFAbsolute = self->_lastVisitTimeCFAbsolute;
  if (lastVisitTimeCFAbsolute < 0.0)
  {
    lastVisitTimeCFAbsolute = -lastVisitTimeCFAbsolute;
  }

  *v5.i64 = floor(lastVisitTimeCFAbsolute + 0.5);
  v9 = (lastVisitTimeCFAbsolute - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v5 = vbslq_s8(vnegq_f64(v10), v6, v5);
  v11 = 2654435761u * *v5.i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_9:
  if ((*&self->_has & 2) != 0)
  {
    visitFrequency = self->_visitFrequency;
    if (visitFrequency < 0.0)
    {
      visitFrequency = -visitFrequency;
    }

    *v5.i64 = floor(visitFrequency + 0.5);
    v14 = (visitFrequency - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v6, v5).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ v12 ^ [(PCPMapItem *)self->_placeMapItem hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v10 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(PCPLocationOfInterest *)self setLoiIdentifier:?];
    fromCopy = v10;
  }

  location = self->_location;
  v6 = *(fromCopy + 3);
  if (location)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(PCPLocation *)location mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(PCPLocationOfInterest *)self setLocation:?];
  }

  fromCopy = v10;
LABEL_9:
  v7 = *(fromCopy + 52);
  if ((v7 & 4) != 0)
  {
    self->_placeType = *(fromCopy + 12);
    *&self->_has |= 4u;
    v7 = *(fromCopy + 52);
    if ((v7 & 1) == 0)
    {
LABEL_11:
      if ((v7 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*(fromCopy + 52) & 1) == 0)
  {
    goto LABEL_11;
  }

  self->_lastVisitTimeCFAbsolute = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 52) & 2) != 0)
  {
LABEL_12:
    self->_visitFrequency = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_13:
  placeMapItem = self->_placeMapItem;
  v9 = *(fromCopy + 5);
  if (placeMapItem)
  {
    if (v9)
    {
      [(PCPMapItem *)placeMapItem mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(PCPLocationOfInterest *)self setPlaceMapItem:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end