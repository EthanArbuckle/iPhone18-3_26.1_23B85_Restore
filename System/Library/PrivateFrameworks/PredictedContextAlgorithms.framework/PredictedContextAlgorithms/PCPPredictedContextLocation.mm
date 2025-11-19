@interface PCPPredictedContextLocation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPPredictedContextLocation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPPredictedContextLocation;
  v4 = [(PCPPredictedContextLocation *)&v8 description];
  v5 = [(PCPPredictedContextLocation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  predictedContext = self->_predictedContext;
  if (predictedContext)
  {
    v5 = [(PCPPredictedContext *)predictedContext dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"predictedContext"];
  }

  locationOfInterest = self->_locationOfInterest;
  if (locationOfInterest)
  {
    v7 = [(PCPLocationOfInterest *)locationOfInterest dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"locationOfInterest"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_predictedContext)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_locationOfInterest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_predictedContext)
  {
    [v4 setPredictedContext:?];
    v4 = v5;
  }

  if (self->_locationOfInterest)
  {
    [v5 setLocationOfInterest:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PCPPredictedContext *)self->_predictedContext copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(PCPLocationOfInterest *)self->_locationOfInterest copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((predictedContext = self->_predictedContext, !(predictedContext | v4[2])) || -[PCPPredictedContext isEqual:](predictedContext, "isEqual:")))
  {
    locationOfInterest = self->_locationOfInterest;
    if (locationOfInterest | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  predictedContext = self->_predictedContext;
  v6 = v4[2];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  locationOfInterest = self->_locationOfInterest;
  v8 = v4[1];
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