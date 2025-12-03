@interface PCPTransition
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasStopTimeCFAbsolute:(BOOL)absolute;
- (void)writeTo:(id)to;
@end

@implementation PCPTransition

- (void)setHasStopTimeCFAbsolute:(BOOL)absolute
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
  v8.super_class = PCPTransition;
  v4 = [(PCPTransition *)&v8 description];
  dictionaryRepresentation = [(PCPTransition *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  visitIdentifierOrigin = self->_visitIdentifierOrigin;
  if (visitIdentifierOrigin)
  {
    [dictionary setObject:visitIdentifierOrigin forKey:@"visitIdentifierOrigin"];
  }

  visitIdentifierDestination = self->_visitIdentifierDestination;
  if (visitIdentifierDestination)
  {
    [v4 setObject:visitIdentifierDestination forKey:@"visitIdentifierDestination"];
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTimeCFAbsolute];
    [v4 setObject:v8 forKey:@"startTimeCFAbsolute"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_stopTimeCFAbsolute];
    [v4 setObject:v9 forKey:@"stopTimeCFAbsolute"];
  }

  predominantMotionActivity = self->_predominantMotionActivity;
  if (predominantMotionActivity)
  {
    dictionaryRepresentation = [(PCPMotionActivity *)predominantMotionActivity dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"predominantMotionActivity"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_visitIdentifierOrigin)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_visitIdentifierDestination)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    startTimeCFAbsolute = self->_startTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    stopTimeCFAbsolute = self->_stopTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }

  if (self->_predominantMotionActivity)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_visitIdentifierOrigin)
  {
    [toCopy setVisitIdentifierOrigin:?];
    toCopy = v6;
  }

  if (self->_visitIdentifierDestination)
  {
    [v6 setVisitIdentifierDestination:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_startTimeCFAbsolute;
    *(toCopy + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_stopTimeCFAbsolute;
    *(toCopy + 48) |= 2u;
  }

  if (self->_predominantMotionActivity)
  {
    [v6 setPredominantMotionActivity:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_visitIdentifierOrigin copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSData *)self->_visitIdentifierDestination copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_startTimeCFAbsolute;
    *(v5 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_stopTimeCFAbsolute;
    *(v5 + 48) |= 2u;
  }

  v11 = [(PCPMotionActivity *)self->_predominantMotionActivity copyWithZone:zone];
  v12 = *(v5 + 24);
  *(v5 + 24) = v11;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  visitIdentifierOrigin = self->_visitIdentifierOrigin;
  if (visitIdentifierOrigin | *(equalCopy + 5))
  {
    if (![(NSData *)visitIdentifierOrigin isEqual:?])
    {
      goto LABEL_18;
    }
  }

  visitIdentifierDestination = self->_visitIdentifierDestination;
  if (visitIdentifierDestination | *(equalCopy + 4))
  {
    if (![(NSData *)visitIdentifierDestination isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v7 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_startTimeCFAbsolute != *(equalCopy + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_stopTimeCFAbsolute != *(equalCopy + 2))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_18;
  }

  predominantMotionActivity = self->_predominantMotionActivity;
  if (predominantMotionActivity | *(equalCopy + 3))
  {
    v9 = [(PCPMotionActivity *)predominantMotionActivity isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_19:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_visitIdentifierOrigin hash];
  v4 = [(NSData *)self->_visitIdentifierDestination hash];
  if (*&self->_has)
  {
    startTimeCFAbsolute = self->_startTimeCFAbsolute;
    if (startTimeCFAbsolute < 0.0)
    {
      startTimeCFAbsolute = -startTimeCFAbsolute;
    }

    *v5.i64 = floor(startTimeCFAbsolute + 0.5);
    v9 = (startTimeCFAbsolute - *v5.i64) * 1.84467441e19;
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

  if ((*&self->_has & 2) != 0)
  {
    stopTimeCFAbsolute = self->_stopTimeCFAbsolute;
    if (stopTimeCFAbsolute < 0.0)
    {
      stopTimeCFAbsolute = -stopTimeCFAbsolute;
    }

    *v5.i64 = floor(stopTimeCFAbsolute + 0.5);
    v13 = (stopTimeCFAbsolute - *v5.i64) * 1.84467441e19;
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

  return v4 ^ v3 ^ v7 ^ v11 ^ [(PCPMotionActivity *)self->_predominantMotionActivity hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(PCPTransition *)self setVisitIdentifierOrigin:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 4))
  {
    [(PCPTransition *)self setVisitIdentifierDestination:?];
    fromCopy = v8;
  }

  v5 = *(fromCopy + 48);
  if (v5)
  {
    self->_startTimeCFAbsolute = fromCopy[1];
    *&self->_has |= 1u;
    v5 = *(fromCopy + 48);
  }

  if ((v5 & 2) != 0)
  {
    self->_stopTimeCFAbsolute = fromCopy[2];
    *&self->_has |= 2u;
  }

  predominantMotionActivity = self->_predominantMotionActivity;
  v7 = *(fromCopy + 3);
  if (predominantMotionActivity)
  {
    if (v7)
    {
      [(PCPMotionActivity *)predominantMotionActivity mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PCPTransition *)self setPredominantMotionActivity:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end