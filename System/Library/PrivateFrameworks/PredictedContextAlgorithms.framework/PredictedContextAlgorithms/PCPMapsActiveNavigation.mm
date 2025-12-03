@interface PCPMapsActiveNavigation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasUsageTimeCFAbsolute:(BOOL)absolute;
- (void)writeTo:(id)to;
@end

@implementation PCPMapsActiveNavigation

- (void)setHasUsageTimeCFAbsolute:(BOOL)absolute
{
  if (absolute)
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
  v8.super_class = PCPMapsActiveNavigation;
  v4 = [(PCPMapsActiveNavigation *)&v8 description];
  dictionaryRepresentation = [(PCPMapsActiveNavigation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_travelTime];
    [dictionary setObject:v4 forKey:@"travelTime"];
  }

  originLocation = self->_originLocation;
  if (originLocation)
  {
    dictionaryRepresentation = [(PCPLocation *)originLocation dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"originLocation"];
  }

  destinationLocation = self->_destinationLocation;
  if (destinationLocation)
  {
    dictionaryRepresentation2 = [(PCPLocation *)destinationLocation dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"destinationLocation"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_usageTimeCFAbsolute];
    [dictionary setObject:v9 forKey:@"usageTimeCFAbsolute"];
  }

  loiIdentifier = self->_loiIdentifier;
  if (loiIdentifier)
  {
    [dictionary setObject:loiIdentifier forKey:@"loiIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (*&self->_has)
  {
    travelTime = self->_travelTime;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }

  if (self->_originLocation)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if (self->_destinationLocation)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    usageTimeCFAbsolute = self->_usageTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }

  if (self->_loiIdentifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = *&self->_travelTime;
    *(toCopy + 48) |= 1u;
  }

  v5 = toCopy;
  if (self->_originLocation)
  {
    [toCopy setOriginLocation:?];
    toCopy = v5;
  }

  if (self->_destinationLocation)
  {
    [v5 setDestinationLocation:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[2] = *&self->_usageTimeCFAbsolute;
    *(toCopy + 48) |= 2u;
  }

  if (self->_loiIdentifier)
  {
    [v5 setLoiIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_travelTime;
    *(v5 + 48) |= 1u;
  }

  v7 = [(PCPLocation *)self->_originLocation copyWithZone:zone];
  v8 = *(v6 + 40);
  *(v6 + 40) = v7;

  v9 = [(PCPLocation *)self->_destinationLocation copyWithZone:zone];
  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_usageTimeCFAbsolute;
    *(v6 + 48) |= 2u;
  }

  v11 = [(NSData *)self->_loiIdentifier copyWithZone:zone];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_travelTime != *(equalCopy + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  originLocation = self->_originLocation;
  if (originLocation | *(equalCopy + 5) && ![(PCPLocation *)originLocation isEqual:?])
  {
    goto LABEL_18;
  }

  destinationLocation = self->_destinationLocation;
  if (destinationLocation | *(equalCopy + 3))
  {
    if (![(PCPLocation *)destinationLocation isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v8 = *(equalCopy + 48);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_usageTimeCFAbsolute != *(equalCopy + 2))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_18;
  }

  loiIdentifier = self->_loiIdentifier;
  if (loiIdentifier | *(equalCopy + 4))
  {
    v10 = [(NSData *)loiIdentifier isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_19:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    travelTime = self->_travelTime;
    if (travelTime < 0.0)
    {
      travelTime = -travelTime;
    }

    *v2.i64 = floor(travelTime + 0.5);
    v7 = (travelTime - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(PCPLocation *)self->_originLocation hash];
  v10 = [(PCPLocation *)self->_destinationLocation hash];
  if ((*&self->_has & 2) != 0)
  {
    usageTimeCFAbsolute = self->_usageTimeCFAbsolute;
    if (usageTimeCFAbsolute < 0.0)
    {
      usageTimeCFAbsolute = -usageTimeCFAbsolute;
    }

    *v11.i64 = floor(usageTimeCFAbsolute + 0.5);
    v15 = (usageTimeCFAbsolute - *v11.i64) * 1.84467441e19;
    *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v12, v11).i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  return v9 ^ v5 ^ v10 ^ v13 ^ [(NSData *)self->_loiIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[6])
  {
    self->_travelTime = fromCopy[1];
    *&self->_has |= 1u;
  }

  originLocation = self->_originLocation;
  v7 = *(v5 + 5);
  v10 = v5;
  if (originLocation)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(PCPLocation *)originLocation mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(PCPMapsActiveNavigation *)self setOriginLocation:?];
  }

  v5 = v10;
LABEL_9:
  destinationLocation = self->_destinationLocation;
  v9 = *(v5 + 3);
  if (destinationLocation)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(PCPLocation *)destinationLocation mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(PCPMapsActiveNavigation *)self setDestinationLocation:?];
  }

  v5 = v10;
LABEL_15:
  if ((v5[6] & 2) != 0)
  {
    self->_usageTimeCFAbsolute = v5[2];
    *&self->_has |= 2u;
  }

  if (*(v5 + 4))
  {
    [(PCPMapsActiveNavigation *)self setLoiIdentifier:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end