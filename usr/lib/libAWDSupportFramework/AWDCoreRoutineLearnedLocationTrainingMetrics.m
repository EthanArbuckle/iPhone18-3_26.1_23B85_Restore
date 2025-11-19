@interface AWDCoreRoutineLearnedLocationTrainingMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPlaces:(id)a3;
- (void)addVisits:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasLatency:(BOOL)a3;
- (void)setHasLocationsProcessed:(BOOL)a3;
- (void)setHasMaxIntervalBetweenLocations:(BOOL)a3;
- (void)setHasPlaceCountDevice:(BOOL)a3;
- (void)setHasPlaceCountTotal:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTrainedVisits:(BOOL)a3;
- (void)setHasVisitCountDevice:(BOOL)a3;
- (void)setHasVisitCountTotal:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineLearnedLocationTrainingMetrics

- (void)dealloc
{
  [(AWDCoreRoutineLearnedLocationTrainingMetrics *)self setVisits:0];
  [(AWDCoreRoutineLearnedLocationTrainingMetrics *)self setPlaces:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLearnedLocationTrainingMetrics;
  [(AWDCoreRoutineLearnedLocationTrainingMetrics *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasTrainedVisits:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasLatency:(BOOL)a3
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

- (void)setHasLocationsProcessed:(BOOL)a3
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

- (void)setHasMaxIntervalBetweenLocations:(BOOL)a3
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

- (void)addVisits:(id)a3
{
  visits = self->_visits;
  if (!visits)
  {
    visits = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_visits = visits;
  }

  [(NSMutableArray *)visits addObject:a3];
}

- (void)addPlaces:(id)a3
{
  places = self->_places;
  if (!places)
  {
    places = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_places = places;
  }

  [(NSMutableArray *)places addObject:a3];
}

- (void)setHasVisitCountDevice:(BOOL)a3
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

- (void)setHasVisitCountTotal:(BOOL)a3
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

- (void)setHasPlaceCountDevice:(BOOL)a3
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

- (void)setHasPlaceCountTotal:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLearnedLocationTrainingMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineLearnedLocationTrainingMetrics description](&v3, sel_description), -[AWDCoreRoutineLearnedLocationTrainingMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_trainedVisits), @"trainedVisits"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_intervalSinceLastAttempt), @"intervalSinceLastAttempt"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_latency), @"latency"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_36:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_locationsProcessed), @"locationsProcessed"}];
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_maxIntervalBetweenLocations), @"maxIntervalBetweenLocations"}];
  }

LABEL_8:
  if ([(NSMutableArray *)self->_visits count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_visits, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    visits = self->_visits;
    v7 = [(NSMutableArray *)visits countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(visits);
          }

          [v5 addObject:{objc_msgSend(*(*(&v24 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)visits countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"visits"];
  }

  if ([(NSMutableArray *)self->_places count])
  {
    v11 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_places, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    places = self->_places;
    v13 = [(NSMutableArray *)places countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(places);
          }

          [v11 addObject:{objc_msgSend(*(*(&v20 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v14 = [(NSMutableArray *)places countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"places"];
  }

  v17 = self->_has;
  if ((v17 & 0x80) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_visitCountDevice), @"visitCountDevice"}];
    v17 = self->_has;
    if ((v17 & 0x100) == 0)
    {
LABEL_28:
      if ((v17 & 0x20) == 0)
      {
        goto LABEL_29;
      }

LABEL_40:
      [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_placeCountDevice), @"placeCountDevice"}];
      if ((*&self->_has & 0x40) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_28;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_visitCountTotal), @"visitCountTotal"}];
  v17 = self->_has;
  if ((v17 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_29:
  if ((v17 & 0x40) != 0)
  {
LABEL_30:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_placeCountTotal), @"placeCountTotal"}];
  }

LABEL_31:
  v18 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v39 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if ((has & 8) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  trainedVisits = self->_trainedVisits;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  intervalSinceLastAttempt = self->_intervalSinceLastAttempt;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  latency = self->_latency;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_32:
  locationsProcessed = self->_locationsProcessed;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    maxIntervalBetweenLocations = self->_maxIntervalBetweenLocations;
    PBDataWriterWriteUint64Field();
  }

LABEL_8:
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  visits = self->_visits;
  v7 = [(NSMutableArray *)visits countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(visits);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)visits countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  places = self->_places;
  v13 = [(NSMutableArray *)places countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(places);
        }

        v17 = *(*(&v29 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)places countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v14);
  }

  v18 = self->_has;
  if ((v18 & 0x80) != 0)
  {
    visitCountDevice = self->_visitCountDevice;
    PBDataWriterWriteUint32Field();
    v18 = self->_has;
    if ((v18 & 0x100) == 0)
    {
LABEL_24:
      if ((v18 & 0x20) == 0)
      {
        goto LABEL_25;
      }

LABEL_36:
      placeCountDevice = self->_placeCountDevice;
      PBDataWriterWriteUint32Field();
      if ((*&self->_has & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_24;
  }

  visitCountTotal = self->_visitCountTotal;
  PBDataWriterWriteUint32Field();
  v18 = self->_has;
  if ((v18 & 0x20) != 0)
  {
    goto LABEL_36;
  }

LABEL_25:
  if ((v18 & 0x40) != 0)
  {
LABEL_26:
    placeCountTotal = self->_placeCountTotal;
    PBDataWriterWriteUint32Field();
  }

LABEL_27:
  v20 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(a3 + 4) = self->_timestamp;
    *(a3 + 42) |= 8u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 80) = self->_trainedVisits;
  *(a3 + 42) |= 0x200u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a3 + 1) = self->_intervalSinceLastAttempt;
  *(a3 + 42) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_26:
    *(a3 + 10) = self->_locationsProcessed;
    *(a3 + 42) |= 0x10u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_25:
  *(a3 + 2) = self->_latency;
  *(a3 + 42) |= 2u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  if ((has & 4) != 0)
  {
LABEL_7:
    *(a3 + 3) = self->_maxIntervalBetweenLocations;
    *(a3 + 42) |= 4u;
  }

LABEL_8:
  if ([(AWDCoreRoutineLearnedLocationTrainingMetrics *)self visitsCount])
  {
    [a3 clearVisits];
    v6 = [(AWDCoreRoutineLearnedLocationTrainingMetrics *)self visitsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addVisits:{-[AWDCoreRoutineLearnedLocationTrainingMetrics visitsAtIndex:](self, "visitsAtIndex:", i)}];
      }
    }
  }

  if ([(AWDCoreRoutineLearnedLocationTrainingMetrics *)self placesCount])
  {
    [a3 clearPlaces];
    v9 = [(AWDCoreRoutineLearnedLocationTrainingMetrics *)self placesCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [a3 addPlaces:{-[AWDCoreRoutineLearnedLocationTrainingMetrics placesAtIndex:](self, "placesAtIndex:", j)}];
      }
    }
  }

  v12 = self->_has;
  if ((v12 & 0x80) != 0)
  {
    *(a3 + 16) = self->_visitCountDevice;
    *(a3 + 42) |= 0x80u;
    v12 = self->_has;
    if ((v12 & 0x100) == 0)
    {
LABEL_18:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_30;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_18;
  }

  *(a3 + 17) = self->_visitCountTotal;
  *(a3 + 42) |= 0x100u;
  v12 = self->_has;
  if ((v12 & 0x20) == 0)
  {
LABEL_19:
    if ((v12 & 0x40) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

LABEL_30:
  *(a3 + 11) = self->_placeCountDevice;
  *(a3 + 42) |= 0x20u;
  if ((*&self->_has & 0x40) == 0)
  {
    return;
  }

LABEL_20:
  *(a3 + 12) = self->_placeCountTotal;
  *(a3 + 42) |= 0x40u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v33 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_timestamp;
    *(v5 + 84) |= 8u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 80) = self->_trainedVisits;
  *(v5 + 84) |= 0x200u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 8) = self->_intervalSinceLastAttempt;
  *(v5 + 84) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v5 + 16) = self->_latency;
  *(v5 + 84) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_32:
  *(v5 + 40) = self->_locationsProcessed;
  *(v5 + 84) |= 0x10u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    *(v5 + 24) = self->_maxIntervalBetweenLocations;
    *(v5 + 84) |= 4u;
  }

LABEL_8:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  visits = self->_visits;
  v9 = [(NSMutableArray *)visits countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(visits);
        }

        v13 = [*(*(&v27 + 1) + 8 * i) copyWithZone:a3];
        [v6 addVisits:v13];
      }

      v10 = [(NSMutableArray *)visits countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  places = self->_places;
  v15 = [(NSMutableArray *)places countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(places);
        }

        v19 = [*(*(&v23 + 1) + 8 * j) copyWithZone:a3];
        [v6 addPlaces:v19];
      }

      v16 = [(NSMutableArray *)places countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  v20 = self->_has;
  if ((v20 & 0x80) != 0)
  {
    *(v6 + 64) = self->_visitCountDevice;
    *(v6 + 84) |= 0x80u;
    v20 = self->_has;
    if ((v20 & 0x100) == 0)
    {
LABEL_24:
      if ((v20 & 0x20) == 0)
      {
        goto LABEL_25;
      }

LABEL_36:
      *(v6 + 44) = self->_placeCountDevice;
      *(v6 + 84) |= 0x20u;
      if ((*&self->_has & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_24;
  }

  *(v6 + 68) = self->_visitCountTotal;
  *(v6 + 84) |= 0x100u;
  v20 = self->_has;
  if ((v20 & 0x20) != 0)
  {
    goto LABEL_36;
  }

LABEL_25:
  if ((v20 & 0x40) != 0)
  {
LABEL_26:
    *(v6 + 48) = self->_placeCountTotal;
    *(v6 + 84) |= 0x40u;
  }

LABEL_27:
  v21 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(a3 + 42);
  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_timestamp != *(a3 + 4))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_58;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(a3 + 42) & 0x200) != 0)
    {
      v8 = *(a3 + 80);
      if (self->_trainedVisits)
      {
        if ((*(a3 + 80) & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      else if (*(a3 + 80))
      {
        goto LABEL_58;
      }

      goto LABEL_9;
    }

LABEL_58:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 42) & 0x200) != 0)
  {
    goto LABEL_58;
  }

LABEL_9:
  if (has)
  {
    if ((v7 & 1) == 0 || self->_intervalSinceLastAttempt != *(a3 + 1))
    {
      goto LABEL_58;
    }
  }

  else if (v7)
  {
    goto LABEL_58;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_latency != *(a3 + 2))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_locationsProcessed != *(a3 + 10))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_58;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_maxIntervalBetweenLocations != *(a3 + 3))
    {
      goto LABEL_58;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_58;
  }

  visits = self->_visits;
  if (!(visits | *(a3 + 9)) || (v5 = [(NSMutableArray *)visits isEqual:?]) != 0)
  {
    places = self->_places;
    if (!(places | *(a3 + 7)) || (v5 = [(NSMutableArray *)places isEqual:?]) != 0)
    {
      v11 = self->_has;
      v12 = *(a3 + 42);
      if ((v11 & 0x80) != 0)
      {
        if ((v12 & 0x80) == 0 || self->_visitCountDevice != *(a3 + 16))
        {
          goto LABEL_58;
        }
      }

      else if ((v12 & 0x80) != 0)
      {
        goto LABEL_58;
      }

      if ((*&self->_has & 0x100) != 0)
      {
        if ((*(a3 + 42) & 0x100) == 0 || self->_visitCountTotal != *(a3 + 17))
        {
          goto LABEL_58;
        }
      }

      else if ((*(a3 + 42) & 0x100) != 0)
      {
        goto LABEL_58;
      }

      if ((v11 & 0x20) != 0)
      {
        if ((v12 & 0x20) == 0 || self->_placeCountDevice != *(a3 + 11))
        {
          goto LABEL_58;
        }
      }

      else if ((v12 & 0x20) != 0)
      {
        goto LABEL_58;
      }

      LOBYTE(v5) = (v12 & 0x40) == 0;
      if ((v11 & 0x40) != 0)
      {
        if ((v12 & 0x40) == 0 || self->_placeCountTotal != *(a3 + 12))
        {
          goto LABEL_58;
        }

        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_trainedVisits;
      if (has)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if (has)
  {
LABEL_4:
    v6 = 2654435761u * self->_intervalSinceLastAttempt;
    if ((has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v6 = 0;
  if ((has & 2) != 0)
  {
LABEL_5:
    v7 = 2654435761u * self->_latency;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v7 = 0;
  if ((has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v8 = 2654435761 * self->_locationsProcessed;
  if ((has & 4) != 0)
  {
LABEL_7:
    v9 = 2654435761u * self->_maxIntervalBetweenLocations;
    goto LABEL_14;
  }

LABEL_13:
  v9 = 0;
LABEL_14:
  v10 = [(NSMutableArray *)self->_visits hash];
  v11 = [(NSMutableArray *)self->_places hash];
  v12 = self->_has;
  if ((v12 & 0x80) != 0)
  {
    v13 = 2654435761 * self->_visitCountDevice;
    if ((*&self->_has & 0x100) != 0)
    {
LABEL_16:
      v14 = 2654435761 * self->_visitCountTotal;
      if ((v12 & 0x20) != 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      v15 = 0;
      if ((v12 & 0x40) != 0)
      {
        goto LABEL_18;
      }

LABEL_22:
      v16 = 0;
      return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16;
    }
  }

  else
  {
    v13 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_16;
    }
  }

  v14 = 0;
  if ((v12 & 0x20) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v15 = 2654435761 * self->_placeCountDevice;
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  v16 = 2654435761 * self->_placeCountTotal;
  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v28 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 42);
  if ((v5 & 8) != 0)
  {
    self->_timestamp = *(a3 + 4);
    *&self->_has |= 8u;
    v5 = *(a3 + 42);
    if ((v5 & 0x200) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((*(a3 + 42) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  self->_trainedVisits = *(a3 + 80);
  *&self->_has |= 0x200u;
  v5 = *(a3 + 42);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_intervalSinceLastAttempt = *(a3 + 1);
  *&self->_has |= 1u;
  v5 = *(a3 + 42);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_latency = *(a3 + 2);
  *&self->_has |= 2u;
  v5 = *(a3 + 42);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_32:
  self->_locationsProcessed = *(a3 + 10);
  *&self->_has |= 0x10u;
  if ((*(a3 + 42) & 4) != 0)
  {
LABEL_7:
    self->_maxIntervalBetweenLocations = *(a3 + 3);
    *&self->_has |= 4u;
  }

LABEL_8:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = *(a3 + 9);
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AWDCoreRoutineLearnedLocationTrainingMetrics *)self addVisits:*(*(&v22 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = *(a3 + 7);
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(AWDCoreRoutineLearnedLocationTrainingMetrics *)self addPlaces:*(*(&v18 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v16 = *(a3 + 42);
  if ((v16 & 0x80) != 0)
  {
    self->_visitCountDevice = *(a3 + 16);
    *&self->_has |= 0x80u;
    v16 = *(a3 + 42);
    if ((v16 & 0x100) == 0)
    {
LABEL_24:
      if ((v16 & 0x20) == 0)
      {
        goto LABEL_25;
      }

LABEL_36:
      self->_placeCountDevice = *(a3 + 11);
      *&self->_has |= 0x20u;
      if ((*(a3 + 42) & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((*(a3 + 42) & 0x100) == 0)
  {
    goto LABEL_24;
  }

  self->_visitCountTotal = *(a3 + 17);
  *&self->_has |= 0x100u;
  v16 = *(a3 + 42);
  if ((v16 & 0x20) != 0)
  {
    goto LABEL_36;
  }

LABEL_25:
  if ((v16 & 0x40) != 0)
  {
LABEL_26:
    self->_placeCountTotal = *(a3 + 12);
    *&self->_has |= 0x40u;
  }

LABEL_27:
  v17 = *MEMORY[0x29EDCA608];
}

@end