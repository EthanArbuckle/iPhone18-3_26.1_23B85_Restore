@interface PCPPredictedContextDateInterval
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPPredictedContextDateInterval

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPPredictedContextDateInterval;
  v4 = [(PCPPredictedContextDateInterval *)&v8 description];
  v5 = [(PCPPredictedContextDateInterval *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  startDate = self->_startDate;
  if (startDate)
  {
    v5 = [(PCPPredictedContextDate *)startDate dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"startDate"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    v7 = [(PCPPredictedContextDate *)endDate dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"endDate"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_startDate)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_endDate)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_startDate)
  {
    [v4 setStartDate:?];
    v4 = v5;
  }

  if (self->_endDate)
  {
    [v5 setEndDate:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PCPPredictedContextDate *)self->_startDate copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(PCPPredictedContextDate *)self->_endDate copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((startDate = self->_startDate, !(startDate | v4[2])) || -[PCPPredictedContextDate isEqual:](startDate, "isEqual:")))
  {
    endDate = self->_endDate;
    if (endDate | v4[1])
    {
      v7 = [(PCPPredictedContextDate *)endDate isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  startDate = self->_startDate;
  v6 = v4[2];
  v9 = v4;
  if (startDate)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PCPPredictedContextDate *)startDate mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PCPPredictedContextDateInterval *)self setStartDate:?];
  }

  v4 = v9;
LABEL_7:
  endDate = self->_endDate;
  v8 = v4[1];
  if (endDate)
  {
    if (v8)
    {
      [(PCPPredictedContextDate *)endDate mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PCPPredictedContextDateInterval *)self setEndDate:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end