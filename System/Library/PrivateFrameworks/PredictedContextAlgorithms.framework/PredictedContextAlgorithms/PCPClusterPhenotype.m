@interface PCPClusterPhenotype
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDayOfWeekSin:(BOOL)a3;
- (void)setHasIsWeekend:(BOOL)a3;
- (void)setHasLatLongCircularStd:(BOOL)a3;
- (void)setHasNormalizedDuration:(BOOL)a3;
- (void)setHasTimeOfDayCircularStd:(BOOL)a3;
- (void)setHasTimeOfDayCos:(BOOL)a3;
- (void)setHasTimeOfDaySin:(BOOL)a3;
- (void)setHasWeekOfYear:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPClusterPhenotype

- (void)setHasDayOfWeekSin:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasNormalizedDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTimeOfDayCos:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasTimeOfDaySin:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasWeekOfYear:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsWeekend:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasTimeOfDayCircularStd:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasLatLongCircularStd:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPClusterPhenotype;
  v4 = [(PCPClusterPhenotype *)&v8 description];
  v5 = [(PCPClusterPhenotype *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  activityType = self->_activityType;
  if (activityType)
  {
    [v3 setObject:activityType forKey:@"activityType"];
  }

  placeName = self->_placeName;
  if (placeName)
  {
    [v4 setObject:placeName forKey:@"placeName"];
  }

  placeType = self->_placeType;
  if (placeType)
  {
    [v4 setObject:placeType forKey:@"placeType"];
  }

  placeLocation = self->_placeLocation;
  if (placeLocation)
  {
    v9 = [(PCPLocation *)placeLocation dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"placeLocation"];
  }

  has = self->_has;
  if (has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dayOfWeekCos];
    [v4 setObject:v13 forKey:@"dayOfWeekCos"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_11;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dayOfWeekSin];
  [v4 setObject:v14 forKey:@"dayOfWeekSin"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:self->_normalizedDuration];
  [v4 setObject:v15 forKey:@"normalizedDuration"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeOfDayCos];
  [v4 setObject:v16 forKey:@"timeOfDayCos"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  v17 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeOfDaySin];
  [v4 setObject:v17 forKey:@"timeOfDaySin"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_15:
    if ((has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_weekOfYear];
  [v4 setObject:v18 forKey:@"weekOfYear"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_16:
    if ((has & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_isWeekend];
  [v4 setObject:v19 forKey:@"isWeekend"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_17:
    if ((has & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_29:
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeOfDayCircularStd];
  [v4 setObject:v20 forKey:@"timeOfDayCircularStd"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_18:
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_latLongCircularStd];
    [v4 setObject:v11 forKey:@"latLongCircularStd"];
  }

LABEL_19:

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v15 = v4;
  if (self->_activityType)
  {
    PBDataWriterWriteStringField();
    v4 = v15;
  }

  if (self->_placeName)
  {
    PBDataWriterWriteStringField();
    v4 = v15;
  }

  if (self->_placeType)
  {
    PBDataWriterWriteStringField();
    v4 = v15;
  }

  if (self->_placeLocation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v15;
  }

  has = self->_has;
  if (has)
  {
    dayOfWeekCos = self->_dayOfWeekCos;
    PBDataWriterWriteDoubleField();
    v4 = v15;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_11;
  }

  dayOfWeekSin = self->_dayOfWeekSin;
  PBDataWriterWriteDoubleField();
  v4 = v15;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  normalizedDuration = self->_normalizedDuration;
  PBDataWriterWriteDoubleField();
  v4 = v15;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  timeOfDayCos = self->_timeOfDayCos;
  PBDataWriterWriteDoubleField();
  v4 = v15;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  timeOfDaySin = self->_timeOfDaySin;
  PBDataWriterWriteDoubleField();
  v4 = v15;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_15:
    if ((has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  weekOfYear = self->_weekOfYear;
  PBDataWriterWriteUint32Field();
  v4 = v15;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_16:
    if ((has & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  isWeekend = self->_isWeekend;
  PBDataWriterWriteBOOLField();
  v4 = v15;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_17:
    if ((has & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_29:
  timeOfDayCircularStd = self->_timeOfDayCircularStd;
  PBDataWriterWriteDoubleField();
  v4 = v15;
  if ((*&self->_has & 4) != 0)
  {
LABEL_18:
    latLongCircularStd = self->_latLongCircularStd;
    PBDataWriterWriteDoubleField();
    v4 = v15;
  }

LABEL_19:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_activityType)
  {
    [v4 setActivityType:?];
    v4 = v6;
  }

  if (self->_placeName)
  {
    [v6 setPlaceName:?];
    v4 = v6;
  }

  if (self->_placeType)
  {
    [v6 setPlaceType:?];
    v4 = v6;
  }

  if (self->_placeLocation)
  {
    [v6 setPlaceLocation:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_dayOfWeekCos;
    *(v4 + 52) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_11;
  }

  *(v4 + 2) = *&self->_dayOfWeekSin;
  *(v4 + 52) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 4) = *&self->_normalizedDuration;
  *(v4 + 52) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v4 + 6) = *&self->_timeOfDayCos;
  *(v4 + 52) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v4 + 7) = *&self->_timeOfDaySin;
  *(v4 + 52) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_15:
    if ((has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v4 + 24) = self->_weekOfYear;
  *(v4 + 52) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_16:
    if ((has & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v4 + 100) = self->_isWeekend;
  *(v4 + 52) |= 0x100u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_17:
    if ((has & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_29:
  *(v4 + 5) = *&self->_timeOfDayCircularStd;
  *(v4 + 52) |= 0x10u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_18:
    *(v4 + 3) = *&self->_latLongCircularStd;
    *(v4 + 52) |= 4u;
  }

LABEL_19:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_activityType copyWithZone:a3];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  v8 = [(NSString *)self->_placeName copyWithZone:a3];
  v9 = *(v5 + 80);
  *(v5 + 80) = v8;

  v10 = [(NSString *)self->_placeType copyWithZone:a3];
  v11 = *(v5 + 88);
  *(v5 + 88) = v10;

  v12 = [(PCPLocation *)self->_placeLocation copyWithZone:a3];
  v13 = *(v5 + 72);
  *(v5 + 72) = v12;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_dayOfWeekCos;
    *(v5 + 104) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_dayOfWeekSin;
  *(v5 + 104) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v5 + 32) = self->_normalizedDuration;
  *(v5 + 104) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v5 + 48) = self->_timeOfDayCos;
  *(v5 + 104) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 56) = self->_timeOfDaySin;
  *(v5 + 104) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 96) = self->_weekOfYear;
  *(v5 + 104) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    *(v5 + 40) = self->_timeOfDayCircularStd;
    *(v5 + 104) |= 0x10u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_10;
  }

LABEL_18:
  *(v5 + 100) = self->_isWeekend;
  *(v5 + 104) |= 0x100u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((has & 4) != 0)
  {
LABEL_10:
    *(v5 + 24) = self->_latLongCircularStd;
    *(v5 + 104) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  activityType = self->_activityType;
  if (activityType | *(v4 + 8))
  {
    if (![(NSString *)activityType isEqual:?])
    {
      goto LABEL_58;
    }
  }

  placeName = self->_placeName;
  if (placeName | *(v4 + 10))
  {
    if (![(NSString *)placeName isEqual:?])
    {
      goto LABEL_58;
    }
  }

  placeType = self->_placeType;
  if (placeType | *(v4 + 11))
  {
    if (![(NSString *)placeType isEqual:?])
    {
      goto LABEL_58;
    }
  }

  placeLocation = self->_placeLocation;
  if (placeLocation | *(v4 + 9))
  {
    if (![(PCPLocation *)placeLocation isEqual:?])
    {
      goto LABEL_58;
    }
  }

  has = self->_has;
  v10 = *(v4 + 52);
  if (has)
  {
    if ((v10 & 1) == 0 || self->_dayOfWeekCos != *(v4 + 1))
    {
      goto LABEL_58;
    }
  }

  else if (v10)
  {
    goto LABEL_58;
  }

  if ((has & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_dayOfWeekSin != *(v4 + 2))
    {
      goto LABEL_58;
    }
  }

  else if ((v10 & 2) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 8) != 0)
  {
    if ((v10 & 8) == 0 || self->_normalizedDuration != *(v4 + 4))
    {
      goto LABEL_58;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x20) != 0)
  {
    if ((v10 & 0x20) == 0 || self->_timeOfDayCos != *(v4 + 6))
    {
      goto LABEL_58;
    }
  }

  else if ((v10 & 0x20) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x40) != 0)
  {
    if ((v10 & 0x40) == 0 || self->_timeOfDaySin != *(v4 + 7))
    {
      goto LABEL_58;
    }
  }

  else if ((v10 & 0x40) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0 || self->_weekOfYear != *(v4 + 24))
    {
      goto LABEL_58;
    }
  }

  else if ((v10 & 0x80) != 0)
  {
    goto LABEL_58;
  }

  if ((*&self->_has & 0x100) == 0)
  {
    if ((*(v4 + 52) & 0x100) == 0)
    {
      goto LABEL_42;
    }

LABEL_58:
    v12 = 0;
    goto LABEL_59;
  }

  if ((*(v4 + 52) & 0x100) == 0)
  {
    goto LABEL_58;
  }

  v11 = *(v4 + 100);
  if (self->_isWeekend)
  {
    if ((*(v4 + 100) & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  else if (*(v4 + 100))
  {
    goto LABEL_58;
  }

LABEL_42:
  if ((has & 0x10) != 0)
  {
    if ((v10 & 0x10) == 0 || self->_timeOfDayCircularStd != *(v4 + 5))
    {
      goto LABEL_58;
    }
  }

  else if ((v10 & 0x10) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_latLongCircularStd != *(v4 + 3))
    {
      goto LABEL_58;
    }

    v12 = 1;
  }

  else
  {
    v12 = (v10 & 4) == 0;
  }

LABEL_59:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_activityType hash];
  v4 = [(NSString *)self->_placeName hash];
  v5 = [(NSString *)self->_placeType hash];
  v6 = [(PCPLocation *)self->_placeLocation hash];
  has = self->_has;
  if (has)
  {
    dayOfWeekCos = self->_dayOfWeekCos;
    if (dayOfWeekCos < 0.0)
    {
      dayOfWeekCos = -dayOfWeekCos;
    }

    *v7.i64 = floor(dayOfWeekCos + 0.5);
    v12 = (dayOfWeekCos - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v7 = vbslq_s8(vnegq_f64(v13), v8, v7);
    v10 = 2654435761u * *v7.i64;
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

  if ((has & 2) != 0)
  {
    dayOfWeekSin = self->_dayOfWeekSin;
    if (dayOfWeekSin < 0.0)
    {
      dayOfWeekSin = -dayOfWeekSin;
    }

    *v7.i64 = floor(dayOfWeekSin + 0.5);
    v16 = (dayOfWeekSin - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v7 = vbslq_s8(vnegq_f64(v17), v8, v7);
    v14 = 2654435761u * *v7.i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((has & 8) != 0)
  {
    normalizedDuration = self->_normalizedDuration;
    if (normalizedDuration < 0.0)
    {
      normalizedDuration = -normalizedDuration;
    }

    *v7.i64 = floor(normalizedDuration + 0.5);
    v20 = (normalizedDuration - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v7 = vbslq_s8(vnegq_f64(v21), v8, v7);
    v18 = 2654435761u * *v7.i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  if ((has & 0x20) != 0)
  {
    timeOfDayCos = self->_timeOfDayCos;
    if (timeOfDayCos < 0.0)
    {
      timeOfDayCos = -timeOfDayCos;
    }

    *v7.i64 = floor(timeOfDayCos + 0.5);
    v24 = (timeOfDayCos - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v7 = vbslq_s8(vnegq_f64(v25), v8, v7);
    v22 = 2654435761u * *v7.i64;
    if (v24 >= 0.0)
    {
      if (v24 > 0.0)
      {
        v22 += v24;
      }
    }

    else
    {
      v22 -= fabs(v24);
    }
  }

  else
  {
    v22 = 0;
  }

  if ((has & 0x40) != 0)
  {
    timeOfDaySin = self->_timeOfDaySin;
    if (timeOfDaySin < 0.0)
    {
      timeOfDaySin = -timeOfDaySin;
    }

    *v7.i64 = floor(timeOfDaySin + 0.5);
    v28 = (timeOfDaySin - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v7 = vbslq_s8(vnegq_f64(v29), v8, v7);
    v26 = 2654435761u * *v7.i64;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v26 += v28;
      }
    }

    else
    {
      v26 -= fabs(v28);
    }
  }

  else
  {
    v26 = 0;
  }

  if ((has & 0x80) == 0)
  {
    v30 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_43;
    }

LABEL_49:
    v31 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_44;
    }

LABEL_50:
    v35 = 0;
    goto LABEL_51;
  }

  v30 = 2654435761 * self->_weekOfYear;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_49;
  }

LABEL_43:
  v31 = 2654435761 * self->_isWeekend;
  if ((has & 0x10) == 0)
  {
    goto LABEL_50;
  }

LABEL_44:
  timeOfDayCircularStd = self->_timeOfDayCircularStd;
  if (timeOfDayCircularStd < 0.0)
  {
    timeOfDayCircularStd = -timeOfDayCircularStd;
  }

  *v7.i64 = floor(timeOfDayCircularStd + 0.5);
  v33 = (timeOfDayCircularStd - *v7.i64) * 1.84467441e19;
  *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
  v34.f64[0] = NAN;
  v34.f64[1] = NAN;
  v7 = vbslq_s8(vnegq_f64(v34), v8, v7);
  v35 = 2654435761u * *v7.i64;
  if (v33 >= 0.0)
  {
    if (v33 > 0.0)
    {
      v35 += v33;
    }
  }

  else
  {
    v35 -= fabs(v33);
  }

LABEL_51:
  if ((has & 4) != 0)
  {
    latLongCircularStd = self->_latLongCircularStd;
    if (latLongCircularStd < 0.0)
    {
      latLongCircularStd = -latLongCircularStd;
    }

    *v7.i64 = floor(latLongCircularStd + 0.5);
    v38 = (latLongCircularStd - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    v36 = 2654435761u * *vbslq_s8(vnegq_f64(v39), v8, v7).i64;
    if (v38 >= 0.0)
    {
      if (v38 > 0.0)
      {
        v36 += v38;
      }
    }

    else
    {
      v36 -= fabs(v38);
    }
  }

  else
  {
    v36 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v10 ^ v14 ^ v18 ^ v22 ^ v26 ^ v30 ^ v31 ^ v35 ^ v36;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (*(v4 + 8))
  {
    [(PCPClusterPhenotype *)self setActivityType:?];
    v4 = v8;
  }

  if (*(v4 + 10))
  {
    [(PCPClusterPhenotype *)self setPlaceName:?];
    v4 = v8;
  }

  if (*(v4 + 11))
  {
    [(PCPClusterPhenotype *)self setPlaceType:?];
    v4 = v8;
  }

  placeLocation = self->_placeLocation;
  v6 = *(v4 + 9);
  if (placeLocation)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    [(PCPLocation *)placeLocation mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    [(PCPClusterPhenotype *)self setPlaceLocation:?];
  }

  v4 = v8;
LABEL_13:
  v7 = *(v4 + 52);
  if (v7)
  {
    self->_dayOfWeekCos = *(v4 + 1);
    *&self->_has |= 1u;
    v7 = *(v4 + 52);
    if ((v7 & 2) == 0)
    {
LABEL_15:
      if ((v7 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_15;
  }

  self->_dayOfWeekSin = *(v4 + 2);
  *&self->_has |= 2u;
  v7 = *(v4 + 52);
  if ((v7 & 8) == 0)
  {
LABEL_16:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_normalizedDuration = *(v4 + 4);
  *&self->_has |= 8u;
  v7 = *(v4 + 52);
  if ((v7 & 0x20) == 0)
  {
LABEL_17:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_timeOfDayCos = *(v4 + 6);
  *&self->_has |= 0x20u;
  v7 = *(v4 + 52);
  if ((v7 & 0x40) == 0)
  {
LABEL_18:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_timeOfDaySin = *(v4 + 7);
  *&self->_has |= 0x40u;
  v7 = *(v4 + 52);
  if ((v7 & 0x80) == 0)
  {
LABEL_19:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_weekOfYear = *(v4 + 24);
  *&self->_has |= 0x80u;
  v7 = *(v4 + 52);
  if ((v7 & 0x100) == 0)
  {
LABEL_20:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_isWeekend = *(v4 + 100);
  *&self->_has |= 0x100u;
  v7 = *(v4 + 52);
  if ((v7 & 0x10) == 0)
  {
LABEL_21:
    if ((v7 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_33:
  self->_timeOfDayCircularStd = *(v4 + 5);
  *&self->_has |= 0x10u;
  if ((*(v4 + 52) & 4) != 0)
  {
LABEL_22:
    self->_latLongCircularStd = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_23:

  MEMORY[0x1EEE66BB8]();
}

@end