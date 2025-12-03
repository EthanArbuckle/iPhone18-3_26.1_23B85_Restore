@interface PCPPredictedContextDateInterval
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PCPPredictedContextDateInterval

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPPredictedContextDateInterval;
  v4 = [(PCPPredictedContextDateInterval *)&v8 description];
  dictionaryRepresentation = [(PCPPredictedContextDateInterval *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  startDate = self->_startDate;
  if (startDate)
  {
    dictionaryRepresentation = [(PCPPredictedContextDate *)startDate dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"startDate"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    dictionaryRepresentation2 = [(PCPPredictedContextDate *)endDate dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"endDate"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_startDate)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_endDate)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_startDate)
  {
    [toCopy setStartDate:?];
    toCopy = v5;
  }

  if (self->_endDate)
  {
    [v5 setEndDate:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PCPPredictedContextDate *)self->_startDate copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(PCPPredictedContextDate *)self->_endDate copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((startDate = self->_startDate, !(startDate | equalCopy[2])) || -[PCPPredictedContextDate isEqual:](startDate, "isEqual:")))
  {
    endDate = self->_endDate;
    if (endDate | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  startDate = self->_startDate;
  v6 = fromCopy[2];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  endDate = self->_endDate;
  v8 = fromCopy[1];
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