@interface PCPWorkout
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSessionLocationType:(id)a3;
- (int)StringAsSwimmingLocationType:(id)a3;
- (int)sessionLocationType;
- (int)swimmingLocationType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSessionLocationType:(BOOL)a3;
- (void)setHasStartTimeCFAbsolute:(BOOL)a3;
- (void)setHasSwimmingLocationType:(BOOL)a3;
- (void)setHasWorkoutActivityType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPWorkout

- (void)setHasWorkoutActivityType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasStartTimeCFAbsolute:(BOOL)a3
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

- (int)sessionLocationType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_sessionLocationType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasSessionLocationType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsSessionLocationType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SessionLocationType_Unknown"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Indoor"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Outdoor"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)swimmingLocationType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_swimmingLocationType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSwimmingLocationType:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsSwimmingLocationType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Pool"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"OpenWater"])
  {
    v4 = 2;
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
  v8.super_class = PCPWorkout;
  v4 = [(PCPWorkout *)&v8 description];
  v5 = [(PCPWorkout *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_workoutActivityType];
    [v3 setObject:v13 forKey:@"workoutActivityType"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startTimeCFAbsolute];
  [v3 setObject:v14 forKey:@"startTimeCFAbsolute"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endTimeCFAbsolute];
    [v3 setObject:v5 forKey:@"endTimeCFAbsolute"];
  }

LABEL_5:
  hkObjectUUID = self->_hkObjectUUID;
  if (hkObjectUUID)
  {
    [v3 setObject:hkObjectUUID forKey:@"hkObjectUUID"];
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  if (sourceBundleIdentifier)
  {
    [v3 setObject:sourceBundleIdentifier forKey:@"sourceBundleIdentifier"];
  }

  workoutStartLocation = self->_workoutStartLocation;
  if (workoutStartLocation)
  {
    v9 = [(PCPLocation *)workoutStartLocation dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"workoutStartLocation"];
  }

  v10 = self->_has;
  if ((v10 & 8) != 0)
  {
    v11 = self->_sessionLocationType - 1;
    if (v11 >= 3)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_sessionLocationType];
    }

    else
    {
      v12 = off_1E83B8500[v11];
    }

    [v3 setObject:v12 forKey:@"sessionLocationType"];

    v10 = self->_has;
  }

  if ((v10 & 0x10) != 0)
  {
    swimmingLocationType = self->_swimmingLocationType;
    if (swimmingLocationType >= 3)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_swimmingLocationType];
    }

    else
    {
      v16 = off_1E83B8518[swimmingLocationType];
    }

    [v3 setObject:v16 forKey:@"swimmingLocationType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    workoutActivityType = self->_workoutActivityType;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  startTimeCFAbsolute = self->_startTimeCFAbsolute;
  PBDataWriterWriteDoubleField();
  if (*&self->_has)
  {
LABEL_4:
    endTimeCFAbsolute = self->_endTimeCFAbsolute;
    PBDataWriterWriteDoubleField();
  }

LABEL_5:
  if (self->_hkObjectUUID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_sourceBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_workoutStartLocation)
  {
    PBDataWriterWriteSubmessage();
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    sessionLocationType = self->_sessionLocationType;
    PBDataWriterWriteInt32Field();
    v6 = self->_has;
  }

  if ((v6 & 0x10) != 0)
  {
    swimmingLocationType = self->_swimmingLocationType;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[3] = self->_workoutActivityType;
    *(v4 + 72) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[2] = *&self->_startTimeCFAbsolute;
  *(v4 + 72) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    v4[1] = *&self->_endTimeCFAbsolute;
    *(v4 + 72) |= 1u;
  }

LABEL_5:
  v7 = v4;
  if (self->_hkObjectUUID)
  {
    [v4 setHkObjectUUID:?];
    v4 = v7;
  }

  if (self->_sourceBundleIdentifier)
  {
    [v7 setSourceBundleIdentifier:?];
    v4 = v7;
  }

  if (self->_workoutStartLocation)
  {
    [v7 setWorkoutStartLocation:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    *(v4 + 10) = self->_sessionLocationType;
    *(v4 + 72) |= 8u;
    v6 = self->_has;
  }

  if ((v6 & 0x10) != 0)
  {
    *(v4 + 14) = self->_swimmingLocationType;
    *(v4 + 72) |= 0x10u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_workoutActivityType;
    *(v5 + 72) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_startTimeCFAbsolute;
  *(v5 + 72) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 8) = self->_endTimeCFAbsolute;
    *(v5 + 72) |= 1u;
  }

LABEL_5:
  v8 = [(NSData *)self->_hkObjectUUID copyWithZone:a3];
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;

  v10 = [(NSString *)self->_sourceBundleIdentifier copyWithZone:a3];
  v11 = *(v6 + 48);
  *(v6 + 48) = v10;

  v12 = [(PCPLocation *)self->_workoutStartLocation copyWithZone:a3];
  v13 = *(v6 + 64);
  *(v6 + 64) = v12;

  v14 = self->_has;
  if ((v14 & 8) != 0)
  {
    *(v6 + 40) = self->_sessionLocationType;
    *(v6 + 72) |= 8u;
    v14 = self->_has;
  }

  if ((v14 & 0x10) != 0)
  {
    *(v6 + 56) = self->_swimmingLocationType;
    *(v6 + 72) |= 0x10u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = *(v4 + 72);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 72) & 4) == 0 || self->_workoutActivityType != *(v4 + 3))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 72) & 4) != 0)
  {
LABEL_32:
    v9 = 0;
    goto LABEL_33;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 72) & 2) == 0 || self->_startTimeCFAbsolute != *(v4 + 2))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 72) & 2) != 0)
  {
    goto LABEL_32;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_endTimeCFAbsolute != *(v4 + 1))
    {
      goto LABEL_32;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_32;
  }

  hkObjectUUID = self->_hkObjectUUID;
  if (hkObjectUUID | *(v4 + 4) && ![(NSData *)hkObjectUUID isEqual:?])
  {
    goto LABEL_32;
  }

  sourceBundleIdentifier = self->_sourceBundleIdentifier;
  if (sourceBundleIdentifier | *(v4 + 6))
  {
    if (![(NSString *)sourceBundleIdentifier isEqual:?])
    {
      goto LABEL_32;
    }
  }

  workoutStartLocation = self->_workoutStartLocation;
  if (workoutStartLocation | *(v4 + 8))
  {
    if (![(PCPLocation *)workoutStartLocation isEqual:?])
    {
      goto LABEL_32;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 72) & 8) == 0 || self->_sessionLocationType != *(v4 + 10))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 72) & 8) != 0)
  {
    goto LABEL_32;
  }

  v9 = (*(v4 + 72) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 72) & 0x10) == 0 || self->_swimmingLocationType != *(v4 + 14))
    {
      goto LABEL_32;
    }

    v9 = 1;
  }

LABEL_33:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761u * self->_workoutActivityType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  startTimeCFAbsolute = self->_startTimeCFAbsolute;
  if (startTimeCFAbsolute < 0.0)
  {
    startTimeCFAbsolute = -startTimeCFAbsolute;
  }

  *v2.i64 = floor(startTimeCFAbsolute + 0.5);
  v7 = (startTimeCFAbsolute - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
  v9 = 2654435761u * *v2.i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_9:
  if (*&self->_has)
  {
    endTimeCFAbsolute = self->_endTimeCFAbsolute;
    if (endTimeCFAbsolute < 0.0)
    {
      endTimeCFAbsolute = -endTimeCFAbsolute;
    }

    *v2.i64 = floor(endTimeCFAbsolute + 0.5);
    v12 = (endTimeCFAbsolute - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v3, v2).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = [(NSData *)self->_hkObjectUUID hash];
  v15 = [(NSString *)self->_sourceBundleIdentifier hash];
  v16 = [(PCPLocation *)self->_workoutStartLocation hash];
  if ((*&self->_has & 8) != 0)
  {
    v17 = 2654435761 * self->_sessionLocationType;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_21;
    }

LABEL_23:
    v18 = 0;
    return v9 ^ v5 ^ v10 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
  }

  v17 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  v18 = 2654435761 * self->_swimmingLocationType;
  return v9 ^ v5 ^ v10 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 72);
  if ((v6 & 4) != 0)
  {
    self->_workoutActivityType = *(v4 + 3);
    *&self->_has |= 4u;
    v6 = *(v4 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 72) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_startTimeCFAbsolute = *(v4 + 2);
  *&self->_has |= 2u;
  if (*(v4 + 72))
  {
LABEL_4:
    self->_endTimeCFAbsolute = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  v10 = v4;
  if (*(v4 + 4))
  {
    [(PCPWorkout *)self setHkObjectUUID:?];
    v5 = v10;
  }

  if (*(v5 + 6))
  {
    [(PCPWorkout *)self setSourceBundleIdentifier:?];
    v5 = v10;
  }

  workoutStartLocation = self->_workoutStartLocation;
  v8 = *(v5 + 8);
  if (workoutStartLocation)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    [(PCPLocation *)workoutStartLocation mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    [(PCPWorkout *)self setWorkoutStartLocation:?];
  }

  v5 = v10;
LABEL_18:
  v9 = *(v5 + 72);
  if ((v9 & 8) != 0)
  {
    self->_sessionLocationType = *(v5 + 10);
    *&self->_has |= 8u;
    v9 = *(v5 + 72);
  }

  if ((v9 & 0x10) != 0)
  {
    self->_swimmingLocationType = *(v5 + 14);
    *&self->_has |= 0x10u;
  }

  MEMORY[0x1EEE66BB8]();
}

@end