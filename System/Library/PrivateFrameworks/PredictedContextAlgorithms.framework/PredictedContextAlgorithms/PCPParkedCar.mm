@interface PCPParkedCar
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PCPParkedCar

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPParkedCar;
  v4 = [(PCPParkedCar *)&v8 description];
  dictionaryRepresentation = [(PCPParkedCar *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  location = self->_location;
  if (location)
  {
    dictionaryRepresentation = [(PCPLocation *)location dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"location"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_parkTimeCFAbsolute];
    [v4 setObject:v8 forKey:@"parkTimeCFAbsolute"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_location)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    parkTimeCFAbsolute = self->_parkTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v5;
  }

  if (self->_location)
  {
    [v5 setLocation:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_parkTimeCFAbsolute;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(PCPLocation *)self->_location copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_parkTimeCFAbsolute;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 2))
  {
    if (![(NSData *)identifier isEqual:?])
    {
      goto LABEL_10;
    }
  }

  location = self->_location;
  if (location | *(equalCopy + 3))
  {
    if (![(PCPLocation *)location isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_parkTimeCFAbsolute == *(equalCopy + 1))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_identifier hash];
  v4 = [(PCPLocation *)self->_location hash];
  if (*&self->_has)
  {
    parkTimeCFAbsolute = self->_parkTimeCFAbsolute;
    if (parkTimeCFAbsolute < 0.0)
    {
      parkTimeCFAbsolute = -parkTimeCFAbsolute;
    }

    *v5.i64 = floor(parkTimeCFAbsolute + 0.5);
    v9 = (parkTimeCFAbsolute - *v5.i64) * 1.84467441e19;
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

  return v4 ^ v3 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(PCPParkedCar *)self setIdentifier:?];
    fromCopy = v7;
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

    [(PCPParkedCar *)self setLocation:?];
  }

  fromCopy = v7;
LABEL_9:
  if (fromCopy[4])
  {
    self->_parkTimeCFAbsolute = fromCopy[1];
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8]();
}

@end