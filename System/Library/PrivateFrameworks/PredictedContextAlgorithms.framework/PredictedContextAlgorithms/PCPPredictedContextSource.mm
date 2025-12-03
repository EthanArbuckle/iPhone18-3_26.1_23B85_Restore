@interface PCPPredictedContextSource
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPredictedContextSource:(id)source;
- (int)predictedContextSource;
- (unint64_t)hash;
- (void)clearOneofValuesForPredictedContextSource;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setCalendarEvent:(id)event;
- (void)setHealthKitWorkout:(id)workout;
- (void)setHomekitHome:(id)home;
- (void)setMapsActiveNavigation:(id)navigation;
- (void)setMapsViewedPlace:(id)place;
- (void)setParkedCar:(id)car;
- (void)setPropagatedLocation:(id)location;
- (void)writeTo:(id)to;
@end

@implementation PCPPredictedContextSource

- (void)setMapsViewedPlace:(id)place
{
  placeCopy = place;
  [(PCPPredictedContextSource *)self clearOneofValuesForPredictedContextSource];
  *&self->_has |= 1u;
  self->_predictedContextSource = 1;
  mapsViewedPlace = self->_mapsViewedPlace;
  self->_mapsViewedPlace = placeCopy;
}

- (void)setMapsActiveNavigation:(id)navigation
{
  navigationCopy = navigation;
  [(PCPPredictedContextSource *)self clearOneofValuesForPredictedContextSource];
  *&self->_has |= 1u;
  self->_predictedContextSource = 2;
  mapsActiveNavigation = self->_mapsActiveNavigation;
  self->_mapsActiveNavigation = navigationCopy;
}

- (void)setCalendarEvent:(id)event
{
  eventCopy = event;
  [(PCPPredictedContextSource *)self clearOneofValuesForPredictedContextSource];
  *&self->_has |= 1u;
  self->_predictedContextSource = 3;
  calendarEvent = self->_calendarEvent;
  self->_calendarEvent = eventCopy;
}

- (void)setHomekitHome:(id)home
{
  homeCopy = home;
  [(PCPPredictedContextSource *)self clearOneofValuesForPredictedContextSource];
  *&self->_has |= 1u;
  self->_predictedContextSource = 4;
  homekitHome = self->_homekitHome;
  self->_homekitHome = homeCopy;
}

- (void)setHealthKitWorkout:(id)workout
{
  workoutCopy = workout;
  [(PCPPredictedContextSource *)self clearOneofValuesForPredictedContextSource];
  *&self->_has |= 1u;
  self->_predictedContextSource = 5;
  healthKitWorkout = self->_healthKitWorkout;
  self->_healthKitWorkout = workoutCopy;
}

- (void)setParkedCar:(id)car
{
  carCopy = car;
  [(PCPPredictedContextSource *)self clearOneofValuesForPredictedContextSource];
  *&self->_has |= 1u;
  self->_predictedContextSource = 6;
  parkedCar = self->_parkedCar;
  self->_parkedCar = carCopy;
}

- (void)setPropagatedLocation:(id)location
{
  locationCopy = location;
  [(PCPPredictedContextSource *)self clearOneofValuesForPredictedContextSource];
  *&self->_has |= 1u;
  self->_predictedContextSource = 7;
  propagatedLocation = self->_propagatedLocation;
  self->_propagatedLocation = locationCopy;
}

- (int)predictedContextSource
{
  if (*&self->_has)
  {
    return self->_predictedContextSource;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsPredictedContextSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([sourceCopy isEqualToString:@"mapsViewedPlace"])
  {
    v4 = 1;
  }

  else if ([sourceCopy isEqualToString:@"mapsActiveNavigation"])
  {
    v4 = 2;
  }

  else if ([sourceCopy isEqualToString:@"calendarEvent"])
  {
    v4 = 3;
  }

  else if ([sourceCopy isEqualToString:@"homekitHome"])
  {
    v4 = 4;
  }

  else if ([sourceCopy isEqualToString:@"healthKitWorkout"])
  {
    v4 = 5;
  }

  else if ([sourceCopy isEqualToString:@"parkedCar"])
  {
    v4 = 6;
  }

  else if ([sourceCopy isEqualToString:@"propagatedLocation"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForPredictedContextSource
{
  *&self->_has &= ~1u;
  self->_predictedContextSource = 0;
  mapsViewedPlace = self->_mapsViewedPlace;
  self->_mapsViewedPlace = 0;

  mapsActiveNavigation = self->_mapsActiveNavigation;
  self->_mapsActiveNavigation = 0;

  calendarEvent = self->_calendarEvent;
  self->_calendarEvent = 0;

  homekitHome = self->_homekitHome;
  self->_homekitHome = 0;

  healthKitWorkout = self->_healthKitWorkout;
  self->_healthKitWorkout = 0;

  parkedCar = self->_parkedCar;
  self->_parkedCar = 0;

  propagatedLocation = self->_propagatedLocation;
  self->_propagatedLocation = 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPPredictedContextSource;
  v4 = [(PCPPredictedContextSource *)&v8 description];
  dictionaryRepresentation = [(PCPPredictedContextSource *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  mapsViewedPlace = self->_mapsViewedPlace;
  if (mapsViewedPlace)
  {
    dictionaryRepresentation = [(PCPMapsViewedPlace *)mapsViewedPlace dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"mapsViewedPlace"];
  }

  mapsActiveNavigation = self->_mapsActiveNavigation;
  if (mapsActiveNavigation)
  {
    dictionaryRepresentation2 = [(PCPMapsActiveNavigation *)mapsActiveNavigation dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"mapsActiveNavigation"];
  }

  calendarEvent = self->_calendarEvent;
  if (calendarEvent)
  {
    dictionaryRepresentation3 = [(PCPCalendarEvent *)calendarEvent dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"calendarEvent"];
  }

  homekitHome = self->_homekitHome;
  if (homekitHome)
  {
    dictionaryRepresentation4 = [(PCPHomeKitHome *)homekitHome dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"homekitHome"];
  }

  healthKitWorkout = self->_healthKitWorkout;
  if (healthKitWorkout)
  {
    dictionaryRepresentation5 = [(PCPHealthKitWorkout *)healthKitWorkout dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"healthKitWorkout"];
  }

  parkedCar = self->_parkedCar;
  if (parkedCar)
  {
    dictionaryRepresentation6 = [(PCPParkedCar *)parkedCar dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"parkedCar"];
  }

  propagatedLocation = self->_propagatedLocation;
  if (propagatedLocation)
  {
    dictionaryRepresentation7 = [(PCPLocationWithTimestamp *)propagatedLocation dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"propagatedLocation"];
  }

  if (*&self->_has)
  {
    predictedContextSource = self->_predictedContextSource;
    if (predictedContextSource >= 8)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_predictedContextSource];
    }

    else
    {
      v19 = off_1E83B8608[predictedContextSource];
    }

    [dictionary setObject:v19 forKey:@"predictedContextSource"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_mapsViewedPlace)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_mapsActiveNavigation)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_calendarEvent)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_homekitHome)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_healthKitWorkout)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_parkedCar)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_propagatedLocation)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[14] = self->_predictedContextSource;
    *(toCopy + 72) |= 1u;
  }

  v5 = toCopy;
  if (self->_mapsViewedPlace)
  {
    [toCopy setMapsViewedPlace:?];
    toCopy = v5;
  }

  if (self->_mapsActiveNavigation)
  {
    [v5 setMapsActiveNavigation:?];
    toCopy = v5;
  }

  if (self->_calendarEvent)
  {
    [v5 setCalendarEvent:?];
    toCopy = v5;
  }

  if (self->_homekitHome)
  {
    [v5 setHomekitHome:?];
    toCopy = v5;
  }

  if (self->_healthKitWorkout)
  {
    [v5 setHealthKitWorkout:?];
    toCopy = v5;
  }

  if (self->_parkedCar)
  {
    [v5 setParkedCar:?];
    toCopy = v5;
  }

  if (self->_propagatedLocation)
  {
    [v5 setPropagatedLocation:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 56) = self->_predictedContextSource;
    *(v5 + 72) |= 1u;
  }

  v7 = [(PCPMapsViewedPlace *)self->_mapsViewedPlace copyWithZone:zone];
  v8 = v6[5];
  v6[5] = v7;

  v9 = [(PCPMapsActiveNavigation *)self->_mapsActiveNavigation copyWithZone:zone];
  v10 = v6[4];
  v6[4] = v9;

  v11 = [(PCPCalendarEvent *)self->_calendarEvent copyWithZone:zone];
  v12 = v6[1];
  v6[1] = v11;

  v13 = [(PCPHomeKitHome *)self->_homekitHome copyWithZone:zone];
  v14 = v6[3];
  v6[3] = v13;

  v15 = [(PCPHealthKitWorkout *)self->_healthKitWorkout copyWithZone:zone];
  v16 = v6[2];
  v6[2] = v15;

  v17 = [(PCPParkedCar *)self->_parkedCar copyWithZone:zone];
  v18 = v6[6];
  v6[6] = v17;

  v19 = [(PCPLocationWithTimestamp *)self->_propagatedLocation copyWithZone:zone];
  v20 = v6[8];
  v6[8] = v19;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = *(equalCopy + 72);
  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_predictedContextSource != *(equalCopy + 14))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 72))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  mapsViewedPlace = self->_mapsViewedPlace;
  if (mapsViewedPlace | *(equalCopy + 5) && ![(PCPMapsViewedPlace *)mapsViewedPlace isEqual:?])
  {
    goto LABEL_21;
  }

  mapsActiveNavigation = self->_mapsActiveNavigation;
  if (mapsActiveNavigation | *(equalCopy + 4))
  {
    if (![(PCPMapsActiveNavigation *)mapsActiveNavigation isEqual:?])
    {
      goto LABEL_21;
    }
  }

  calendarEvent = self->_calendarEvent;
  if (calendarEvent | *(equalCopy + 1))
  {
    if (![(PCPCalendarEvent *)calendarEvent isEqual:?])
    {
      goto LABEL_21;
    }
  }

  homekitHome = self->_homekitHome;
  if (homekitHome | *(equalCopy + 3))
  {
    if (![(PCPHomeKitHome *)homekitHome isEqual:?])
    {
      goto LABEL_21;
    }
  }

  healthKitWorkout = self->_healthKitWorkout;
  if (healthKitWorkout | *(equalCopy + 2))
  {
    if (![(PCPHealthKitWorkout *)healthKitWorkout isEqual:?])
    {
      goto LABEL_21;
    }
  }

  parkedCar = self->_parkedCar;
  if (parkedCar | *(equalCopy + 6))
  {
    if (![(PCPParkedCar *)parkedCar isEqual:?])
    {
      goto LABEL_21;
    }
  }

  propagatedLocation = self->_propagatedLocation;
  if (propagatedLocation | *(equalCopy + 8))
  {
    v13 = [(PCPLocationWithTimestamp *)propagatedLocation isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_22:

  return v13;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_predictedContextSource;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(PCPMapsViewedPlace *)self->_mapsViewedPlace hash]^ v3;
  v5 = [(PCPMapsActiveNavigation *)self->_mapsActiveNavigation hash];
  v6 = v4 ^ v5 ^ [(PCPCalendarEvent *)self->_calendarEvent hash];
  v7 = [(PCPHomeKitHome *)self->_homekitHome hash];
  v8 = v7 ^ [(PCPHealthKitWorkout *)self->_healthKitWorkout hash];
  v9 = v6 ^ v8 ^ [(PCPParkedCar *)self->_parkedCar hash];
  return v9 ^ [(PCPLocationWithTimestamp *)self->_propagatedLocation hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 72))
  {
    self->_predictedContextSource = *(fromCopy + 14);
    *&self->_has |= 1u;
  }

  mapsViewedPlace = self->_mapsViewedPlace;
  v7 = v5[5];
  v20 = v5;
  if (mapsViewedPlace)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(PCPMapsViewedPlace *)mapsViewedPlace mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(PCPPredictedContextSource *)self setMapsViewedPlace:?];
  }

  v5 = v20;
LABEL_9:
  mapsActiveNavigation = self->_mapsActiveNavigation;
  v9 = v5[4];
  if (mapsActiveNavigation)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(PCPMapsActiveNavigation *)mapsActiveNavigation mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(PCPPredictedContextSource *)self setMapsActiveNavigation:?];
  }

  v5 = v20;
LABEL_15:
  calendarEvent = self->_calendarEvent;
  v11 = v5[1];
  if (calendarEvent)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(PCPCalendarEvent *)calendarEvent mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(PCPPredictedContextSource *)self setCalendarEvent:?];
  }

  v5 = v20;
LABEL_21:
  homekitHome = self->_homekitHome;
  v13 = v5[3];
  if (homekitHome)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(PCPHomeKitHome *)homekitHome mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(PCPPredictedContextSource *)self setHomekitHome:?];
  }

  v5 = v20;
LABEL_27:
  healthKitWorkout = self->_healthKitWorkout;
  v15 = v5[2];
  if (healthKitWorkout)
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(PCPHealthKitWorkout *)healthKitWorkout mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(PCPPredictedContextSource *)self setHealthKitWorkout:?];
  }

  v5 = v20;
LABEL_33:
  parkedCar = self->_parkedCar;
  v17 = v5[6];
  if (parkedCar)
  {
    if (!v17)
    {
      goto LABEL_39;
    }

    [(PCPParkedCar *)parkedCar mergeFrom:?];
  }

  else
  {
    if (!v17)
    {
      goto LABEL_39;
    }

    [(PCPPredictedContextSource *)self setParkedCar:?];
  }

  v5 = v20;
LABEL_39:
  propagatedLocation = self->_propagatedLocation;
  v19 = v5[8];
  if (propagatedLocation)
  {
    if (v19)
    {
      [(PCPLocationWithTimestamp *)propagatedLocation mergeFrom:?];
    }
  }

  else if (v19)
  {
    [(PCPPredictedContextSource *)self setPropagatedLocation:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end