@interface PCPPredictedContextWorkout
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsWorkoutLocationType:(id)type;
- (int)workoutLocationType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasWorkoutLocationType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PCPPredictedContextWorkout

- (int)workoutLocationType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_workoutLocationType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasWorkoutLocationType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsWorkoutLocationType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Indoor"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Outdoor"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Pool"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"OpenWater"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPPredictedContextWorkout;
  v4 = [(PCPPredictedContextWorkout *)&v8 description];
  dictionaryRepresentation = [(PCPPredictedContextWorkout *)self dictionaryRepresentation];
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

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_workoutActivityType];
    [dictionary setObject:v6 forKey:@"workoutActivityType"];
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  if (sourceBundleIdentifier)
  {
    [dictionary setObject:sourceBundleIdentifier forKey:@"sourceBundleIdentifier"];
  }

  if ((*&self->_has & 2) != 0)
  {
    workoutLocationType = self->_workoutLocationType;
    if (workoutLocationType >= 5)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_workoutLocationType];
    }

    else
    {
      v9 = off_1E83B84D8[workoutLocationType];
    }

    [dictionary setObject:v9 forKey:@"workoutLocationType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_predictedContext)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    workoutActivityType = self->_workoutActivityType;
    PBDataWriterWriteUint64Field();
    toCopy = v7;
  }

  if (self->_sourceBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    workoutLocationType = self->_workoutLocationType;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
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

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_workoutActivityType;
    *(toCopy + 36) |= 1u;
  }

  if (self->_sourceBundleIdentifier)
  {
    [v5 setSourceBundleIdentifier:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 8) = self->_workoutLocationType;
    *(toCopy + 36) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PCPPredictedContext *)self->_predictedContext copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_workoutActivityType;
    *(v5 + 36) |= 1u;
  }

  v8 = [(NSString *)self->_sourceBundleIdentifier copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 32) = self->_workoutLocationType;
    *(v5 + 36) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  predictedContext = self->_predictedContext;
  if (predictedContext | *(equalCopy + 2))
  {
    if (![(PCPPredictedContext *)predictedContext isEqual:?])
    {
      goto LABEL_16;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 36);
  if (has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_workoutActivityType != *(equalCopy + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_16;
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  if (sourceBundleIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)sourceBundleIdentifier isEqual:?])
    {
LABEL_16:
      v9 = 0;
      goto LABEL_17;
    }

    has = self->_has;
    v7 = *(equalCopy + 36);
  }

  v9 = (v7 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_workoutLocationType != *(equalCopy + 8))
    {
      goto LABEL_16;
    }

    v9 = 1;
  }

LABEL_17:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(PCPPredictedContext *)self->_predictedContext hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_workoutActivityType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_sourceBundleIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_workoutLocationType;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  predictedContext = self->_predictedContext;
  v6 = *(fromCopy + 2);
  v7 = fromCopy;
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

    [(PCPPredictedContextWorkout *)self setPredictedContext:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 36))
  {
    self->_workoutActivityType = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(PCPPredictedContextWorkout *)self setSourceBundleIdentifier:?];
    fromCopy = v7;
  }

  if ((*(fromCopy + 36) & 2) != 0)
  {
    self->_workoutLocationType = *(fromCopy + 8);
    *&self->_has |= 2u;
  }

  MEMORY[0x1EEE66BB8]();
}

@end