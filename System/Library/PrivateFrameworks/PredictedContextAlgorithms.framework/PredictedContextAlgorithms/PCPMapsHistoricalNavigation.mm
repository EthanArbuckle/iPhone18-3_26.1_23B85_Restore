@interface PCPMapsHistoricalNavigation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PCPMapsHistoricalNavigation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPMapsHistoricalNavigation;
  v4 = [(PCPMapsHistoricalNavigation *)&v8 description];
  dictionaryRepresentation = [(PCPMapsHistoricalNavigation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_usageTimeCFAbsolute];
    [dictionary setObject:v4 forKey:@"usageTimeCFAbsolute"];
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

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    usageTimeCFAbsolute = self->_usageTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_originLocation)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_destinationLocation)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = *&self->_usageTimeCFAbsolute;
    *(toCopy + 32) |= 1u;
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
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_usageTimeCFAbsolute;
    *(v5 + 32) |= 1u;
  }

  v7 = [(PCPLocation *)self->_originLocation copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(PCPLocation *)self->_destinationLocation copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_usageTimeCFAbsolute != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  originLocation = self->_originLocation;
  if (originLocation | *(equalCopy + 3) && ![(PCPLocation *)originLocation isEqual:?])
  {
    goto LABEL_11;
  }

  destinationLocation = self->_destinationLocation;
  if (destinationLocation | *(equalCopy + 2))
  {
    v8 = [(PCPLocation *)destinationLocation isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    usageTimeCFAbsolute = self->_usageTimeCFAbsolute;
    if (usageTimeCFAbsolute < 0.0)
    {
      usageTimeCFAbsolute = -usageTimeCFAbsolute;
    }

    *v2.i64 = floor(usageTimeCFAbsolute + 0.5);
    v7 = (usageTimeCFAbsolute - *v2.i64) * 1.84467441e19;
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

  v9 = [(PCPLocation *)self->_originLocation hash]^ v5;
  return v9 ^ [(PCPLocation *)self->_destinationLocation hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[4])
  {
    self->_usageTimeCFAbsolute = fromCopy[1];
    *&self->_has |= 1u;
  }

  originLocation = self->_originLocation;
  v7 = *(v5 + 3);
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

    [(PCPMapsHistoricalNavigation *)self setOriginLocation:?];
  }

  v5 = v10;
LABEL_9:
  destinationLocation = self->_destinationLocation;
  v9 = *(v5 + 2);
  if (destinationLocation)
  {
    if (v9)
    {
      [(PCPLocation *)destinationLocation mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(PCPMapsHistoricalNavigation *)self setDestinationLocation:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end