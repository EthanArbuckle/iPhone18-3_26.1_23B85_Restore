@interface PCPVisit
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasExitTimeCFAbsolute:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPVisit

- (void)setHasExitTimeCFAbsolute:(BOOL)a3
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
  v8.super_class = PCPVisit;
  v4 = [(PCPVisit *)&v8 description];
  v5 = [(PCPVisit *)self dictionaryRepresentation];
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

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_entryTimeCFAbsolute];
    [v4 setObject:v9 forKey:@"entryTimeCFAbsolute"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_exitTimeCFAbsolute];
    [v4 setObject:v10 forKey:@"exitTimeCFAbsolute"];
  }

  loiIdentifier = self->_loiIdentifier;
  if (loiIdentifier)
  {
    [v4 setObject:loiIdentifier forKey:@"loiIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_location)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    entryTimeCFAbsolute = self->_entryTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    exitTimeCFAbsolute = self->_exitTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_loiIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v6;
  }

  if (self->_location)
  {
    [v6 setLocation:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_entryTimeCFAbsolute;
    *(v4 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 2) = *&self->_exitTimeCFAbsolute;
    *(v4 + 48) |= 2u;
  }

  if (self->_loiIdentifier)
  {
    [v6 setLoiIdentifier:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(PCPLocation *)self->_location copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_entryTimeCFAbsolute;
    *(v5 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_exitTimeCFAbsolute;
    *(v5 + 48) |= 2u;
  }

  v11 = [(NSData *)self->_loiIdentifier copyWithZone:a3];
  v12 = *(v5 + 40);
  *(v5 + 40) = v11;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 3))
  {
    if (![(NSData *)identifier isEqual:?])
    {
      goto LABEL_18;
    }
  }

  location = self->_location;
  if (location | *(v4 + 4))
  {
    if (![(PCPLocation *)location isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v7 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_entryTimeCFAbsolute != *(v4 + 1))
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
    if ((*(v4 + 48) & 2) == 0 || self->_exitTimeCFAbsolute != *(v4 + 2))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_18;
  }

  loiIdentifier = self->_loiIdentifier;
  if (loiIdentifier | *(v4 + 5))
  {
    v9 = [(NSData *)loiIdentifier isEqual:?];
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
  v3 = [(NSData *)self->_identifier hash];
  v4 = [(PCPLocation *)self->_location hash];
  if (*&self->_has)
  {
    entryTimeCFAbsolute = self->_entryTimeCFAbsolute;
    if (entryTimeCFAbsolute < 0.0)
    {
      entryTimeCFAbsolute = -entryTimeCFAbsolute;
    }

    *v5.i64 = floor(entryTimeCFAbsolute + 0.5);
    v9 = (entryTimeCFAbsolute - *v5.i64) * 1.84467441e19;
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
    exitTimeCFAbsolute = self->_exitTimeCFAbsolute;
    if (exitTimeCFAbsolute < 0.0)
    {
      exitTimeCFAbsolute = -exitTimeCFAbsolute;
    }

    *v5.i64 = floor(exitTimeCFAbsolute + 0.5);
    v13 = (exitTimeCFAbsolute - *v5.i64) * 1.84467441e19;
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

  return v4 ^ v3 ^ v7 ^ v11 ^ [(NSData *)self->_loiIdentifier hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 3))
  {
    [(PCPVisit *)self setIdentifier:?];
    v4 = v8;
  }

  location = self->_location;
  v6 = *(v4 + 4);
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

    [(PCPVisit *)self setLocation:?];
  }

  v4 = v8;
LABEL_9:
  v7 = *(v4 + 48);
  if (v7)
  {
    self->_entryTimeCFAbsolute = v4[1];
    *&self->_has |= 1u;
    v7 = *(v4 + 48);
  }

  if ((v7 & 2) != 0)
  {
    self->_exitTimeCFAbsolute = v4[2];
    *&self->_has |= 2u;
  }

  if (*(v4 + 5))
  {
    [(PCPVisit *)self setLoiIdentifier:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end