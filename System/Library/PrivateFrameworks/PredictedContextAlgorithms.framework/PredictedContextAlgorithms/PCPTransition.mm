@interface PCPTransition
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasStopTimeCFAbsolute:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPTransition

- (void)setHasStopTimeCFAbsolute:(BOOL)a3
{
  if (a3)
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
  v5 = [(PCPTransition *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  visitIdentifierOrigin = self->_visitIdentifierOrigin;
  if (visitIdentifierOrigin)
  {
    [v3 setObject:visitIdentifierOrigin forKey:@"visitIdentifierOrigin"];
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
    v11 = [(PCPMotionActivity *)predominantMotionActivity dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"predominantMotionActivity"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_visitIdentifierOrigin)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_visitIdentifierDestination)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    startTimeCFAbsolute = self->_startTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    stopTimeCFAbsolute = self->_stopTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_predominantMotionActivity)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_visitIdentifierOrigin)
  {
    [v4 setVisitIdentifierOrigin:?];
    v4 = v6;
  }

  if (self->_visitIdentifierDestination)
  {
    [v6 setVisitIdentifierDestination:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_startTimeCFAbsolute;
    *(v4 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 2) = *&self->_stopTimeCFAbsolute;
    *(v4 + 48) |= 2u;
  }

  if (self->_predominantMotionActivity)
  {
    [v6 setPredominantMotionActivity:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_visitIdentifierOrigin copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSData *)self->_visitIdentifierDestination copyWithZone:a3];
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

  v11 = [(PCPMotionActivity *)self->_predominantMotionActivity copyWithZone:a3];
  v12 = *(v5 + 24);
  *(v5 + 24) = v11;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  visitIdentifierOrigin = self->_visitIdentifierOrigin;
  if (visitIdentifierOrigin | *(v4 + 5))
  {
    if (![(NSData *)visitIdentifierOrigin isEqual:?])
    {
      goto LABEL_18;
    }
  }

  visitIdentifierDestination = self->_visitIdentifierDestination;
  if (visitIdentifierDestination | *(v4 + 4))
  {
    if (![(NSData *)visitIdentifierDestination isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v7 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_startTimeCFAbsolute != *(v4 + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_stopTimeCFAbsolute != *(v4 + 2))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_18;
  }

  predominantMotionActivity = self->_predominantMotionActivity;
  if (predominantMotionActivity | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 5))
  {
    [(PCPTransition *)self setVisitIdentifierOrigin:?];
    v4 = v8;
  }

  if (*(v4 + 4))
  {
    [(PCPTransition *)self setVisitIdentifierDestination:?];
    v4 = v8;
  }

  v5 = *(v4 + 48);
  if (v5)
  {
    self->_startTimeCFAbsolute = v4[1];
    *&self->_has |= 1u;
    v5 = *(v4 + 48);
  }

  if ((v5 & 2) != 0)
  {
    self->_stopTimeCFAbsolute = v4[2];
    *&self->_has |= 2u;
  }

  predominantMotionActivity = self->_predominantMotionActivity;
  v7 = *(v4 + 3);
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