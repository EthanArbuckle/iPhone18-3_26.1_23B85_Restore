@interface PCPParkedCar
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPParkedCar

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPParkedCar;
  v4 = [(PCPParkedCar *)&v8 description];
  v5 = [(PCPParkedCar *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  location = self->_location;
  if (location)
  {
    v7 = [(PCPLocation *)location dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"location"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_parkTimeCFAbsolute];
    [v4 setObject:v8 forKey:@"parkTimeCFAbsolute"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_location)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    parkTimeCFAbsolute = self->_parkTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v5;
  }

  if (self->_location)
  {
    [v5 setLocation:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_parkTimeCFAbsolute;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(PCPLocation *)self->_location copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_parkTimeCFAbsolute;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 2))
  {
    if (![(NSData *)identifier isEqual:?])
    {
      goto LABEL_10;
    }
  }

  location = self->_location;
  if (location | *(v4 + 3))
  {
    if (![(PCPLocation *)location isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_parkTimeCFAbsolute == *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 2))
  {
    [(PCPParkedCar *)self setIdentifier:?];
    v4 = v7;
  }

  location = self->_location;
  v6 = *(v4 + 3);
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

  v4 = v7;
LABEL_9:
  if (v4[4])
  {
    self->_parkTimeCFAbsolute = v4[1];
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8]();
}

@end