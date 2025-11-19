@interface PCPMapsViewedPlace
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPMapsViewedPlace

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPMapsViewedPlace;
  v4 = [(PCPMapsViewedPlace *)&v8 description];
  v5 = [(PCPMapsViewedPlace *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_usageTimeCFAbsolute];
    [v3 setObject:v4 forKey:@"usageTimeCFAbsolute"];
  }

  destinationLocation = self->_destinationLocation;
  if (destinationLocation)
  {
    v6 = [(PCPLocation *)destinationLocation dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"destinationLocation"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    usageTimeCFAbsolute = self->_usageTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_destinationLocation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = *&self->_usageTimeCFAbsolute;
    *(v4 + 24) |= 1u;
  }

  if (self->_destinationLocation)
  {
    v5 = v4;
    [v4 setDestinationLocation:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_usageTimeCFAbsolute;
    *(v5 + 24) |= 1u;
  }

  v7 = [(PCPLocation *)self->_destinationLocation copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 24);
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_usageTimeCFAbsolute != *(v4 + 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  destinationLocation = self->_destinationLocation;
  if (destinationLocation | *(v4 + 2))
  {
    v7 = [(PCPLocation *)destinationLocation isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
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
    v6 = (usageTimeCFAbsolute - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v4 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabs(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  return [(PCPLocation *)self->_destinationLocation hash]^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    self->_usageTimeCFAbsolute = v4[1];
    *&self->_has |= 1u;
  }

  destinationLocation = self->_destinationLocation;
  v7 = *(v5 + 2);
  if (destinationLocation)
  {
    if (v7)
    {
      [(PCPLocation *)destinationLocation mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PCPMapsViewedPlace *)self setDestinationLocation:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end