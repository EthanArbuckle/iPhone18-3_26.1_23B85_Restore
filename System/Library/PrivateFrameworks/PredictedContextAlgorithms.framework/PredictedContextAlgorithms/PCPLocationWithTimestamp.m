@interface PCPLocationWithTimestamp
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPLocationWithTimestamp

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPLocationWithTimestamp;
  v4 = [(PCPLocationWithTimestamp *)&v8 description];
  v5 = [(PCPLocationWithTimestamp *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  location = self->_location;
  if (location)
  {
    v5 = [(PCPLocation *)location dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"location"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeCFAbsolute];
    [v3 setObject:v6 forKey:@"timeCFAbsolute"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_location)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    timeCFAbsolute = self->_timeCFAbsolute;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_location)
  {
    v5 = v4;
    [v4 setLocation:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_timeCFAbsolute;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PCPLocation *)self->_location copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_timeCFAbsolute;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  location = self->_location;
  if (location | *(v4 + 2))
  {
    if (![(PCPLocation *)location isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_timeCFAbsolute == *(v4 + 1))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(PCPLocation *)self->_location hash];
  if (*&self->_has)
  {
    timeCFAbsolute = self->_timeCFAbsolute;
    if (timeCFAbsolute < 0.0)
    {
      timeCFAbsolute = -timeCFAbsolute;
    }

    *v4.i64 = floor(timeCFAbsolute + 0.5);
    v8 = (timeCFAbsolute - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  location = self->_location;
  v6 = *(v4 + 2);
  if (location)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(PCPLocation *)location mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(PCPLocationWithTimestamp *)self setLocation:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 24))
  {
    self->_timeCFAbsolute = *(v4 + 1);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8]();
}

@end