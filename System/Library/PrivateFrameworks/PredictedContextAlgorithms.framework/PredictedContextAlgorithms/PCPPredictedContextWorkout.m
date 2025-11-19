@interface PCPPredictedContextWorkout
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsWorkoutLocationType:(id)a3;
- (int)workoutLocationType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasWorkoutLocationType:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasWorkoutLocationType:(BOOL)a3
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

- (int)StringAsWorkoutLocationType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Indoor"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Outdoor"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Pool"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"OpenWater"])
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
  v5 = [(PCPPredictedContextWorkout *)self dictionaryRepresentation];
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

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_workoutActivityType];
    [v3 setObject:v6 forKey:@"workoutActivityType"];
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  if (sourceBundleIdentifier)
  {
    [v3 setObject:sourceBundleIdentifier forKey:@"sourceBundleIdentifier"];
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

    [v3 setObject:v9 forKey:@"workoutLocationType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_predictedContext)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (*&self->_has)
  {
    workoutActivityType = self->_workoutActivityType;
    PBDataWriterWriteUint64Field();
    v4 = v7;
  }

  if (self->_sourceBundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    workoutLocationType = self->_workoutLocationType;
    PBDataWriterWriteInt32Field();
    v4 = v7;
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

  if (*&self->_has)
  {
    *(v4 + 1) = self->_workoutActivityType;
    *(v4 + 36) |= 1u;
  }

  if (self->_sourceBundleIdentifier)
  {
    [v5 setSourceBundleIdentifier:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 8) = self->_workoutLocationType;
    *(v4 + 36) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PCPPredictedContext *)self->_predictedContext copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_workoutActivityType;
    *(v5 + 36) |= 1u;
  }

  v8 = [(NSString *)self->_sourceBundleIdentifier copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 32) = self->_workoutLocationType;
    *(v5 + 36) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  predictedContext = self->_predictedContext;
  if (predictedContext | *(v4 + 2))
  {
    if (![(PCPPredictedContext *)predictedContext isEqual:?])
    {
      goto LABEL_16;
    }
  }

  has = self->_has;
  v7 = *(v4 + 36);
  if (has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_workoutActivityType != *(v4 + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_16;
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  if (sourceBundleIdentifier | *(v4 + 3))
  {
    if (![(NSString *)sourceBundleIdentifier isEqual:?])
    {
LABEL_16:
      v9 = 0;
      goto LABEL_17;
    }

    has = self->_has;
    v7 = *(v4 + 36);
  }

  v9 = (v7 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_workoutLocationType != *(v4 + 8))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  predictedContext = self->_predictedContext;
  v6 = *(v4 + 2);
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (*(v4 + 36))
  {
    self->_workoutActivityType = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(PCPPredictedContextWorkout *)self setSourceBundleIdentifier:?];
    v4 = v7;
  }

  if ((*(v4 + 36) & 2) != 0)
  {
    self->_workoutLocationType = *(v4 + 8);
    *&self->_has |= 2u;
  }

  MEMORY[0x1EEE66BB8]();
}

@end