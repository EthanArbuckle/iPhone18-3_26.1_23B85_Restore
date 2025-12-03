@interface PCPPredictedContextLocation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PCPPredictedContextLocation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPPredictedContextLocation;
  v4 = [(PCPPredictedContextLocation *)&v8 description];
  dictionaryRepresentation = [(PCPPredictedContextLocation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  predictedContext = self->_predictedContext;
  if (predictedContext)
  {
    dictionaryRepresentation = [(PCPPredictedContext *)predictedContext dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"predictedContext"];
  }

  locationOfInterest = self->_locationOfInterest;
  if (locationOfInterest)
  {
    dictionaryRepresentation2 = [(PCPLocationOfInterest *)locationOfInterest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"locationOfInterest"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_predictedContext)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_locationOfInterest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_predictedContext)
  {
    [toCopy setPredictedContext:?];
    toCopy = v5;
  }

  if (self->_locationOfInterest)
  {
    [v5 setLocationOfInterest:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PCPPredictedContext *)self->_predictedContext copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(PCPLocationOfInterest *)self->_locationOfInterest copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((predictedContext = self->_predictedContext, !(predictedContext | equalCopy[2])) || -[PCPPredictedContext isEqual:](predictedContext, "isEqual:")))
  {
    locationOfInterest = self->_locationOfInterest;
    if (locationOfInterest | equalCopy[1])
    {
      v7 = [(PCPLocationOfInterest *)locationOfInterest isEqual:?];
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
  predictedContext = self->_predictedContext;
  v6 = fromCopy[2];
  v9 = fromCopy;
  if (predictedContext)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PCPPredictedContext *)predictedContext mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PCPPredictedContextLocation *)self setPredictedContext:?];
  }

  fromCopy = v9;
LABEL_7:
  locationOfInterest = self->_locationOfInterest;
  v8 = fromCopy[1];
  if (locationOfInterest)
  {
    if (v8)
    {
      [(PCPLocationOfInterest *)locationOfInterest mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PCPPredictedContextLocation *)self setLocationOfInterest:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end