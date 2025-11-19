@interface AWDCoreRoutineLearnedLocationReconciliationVisit
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAlternativeVisits:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDatapointCount:(BOOL)a3;
- (void)setHasDeviceClass:(BOOL)a3;
- (void)setHasDidUnlock:(BOOL)a3;
- (void)setHasNewPlace:(BOOL)a3;
- (void)setHasPercentageTransitions:(BOOL)a3;
- (void)setHasPercentageVisits:(BOOL)a3;
- (void)setHasPlaceAOIPOI:(BOOL)a3;
- (void)setHasPlaceLabelType:(BOOL)a3;
- (void)setHasPlaceType:(BOOL)a3;
- (void)setHasWatchPresent:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineLearnedLocationReconciliationVisit

- (void)dealloc
{
  [(AWDCoreRoutineLearnedLocationReconciliationVisit *)self setAlternativeVisits:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLearnedLocationReconciliationVisit;
  [(AWDCoreRoutineLearnedLocationReconciliationVisit *)&v3 dealloc];
}

- (void)setHasDatapointCount:(BOOL)a3
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

- (void)setHasDeviceClass:(BOOL)a3
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

- (void)setHasWatchPresent:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasDidUnlock:(BOOL)a3
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

- (void)setHasNewPlace:(BOOL)a3
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

- (void)setHasPlaceType:(BOOL)a3
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

- (void)setHasPlaceLabelType:(BOOL)a3
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

- (void)setHasPlaceAOIPOI:(BOOL)a3
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

- (void)setHasPercentageVisits:(BOOL)a3
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

- (void)setHasPercentageTransitions:(BOOL)a3
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

- (void)addAlternativeVisits:(id)a3
{
  alternativeVisits = self->_alternativeVisits;
  if (!alternativeVisits)
  {
    alternativeVisits = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_alternativeVisits = alternativeVisits;
  }

  [(NSMutableArray *)alternativeVisits addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLearnedLocationReconciliationVisit;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineLearnedLocationReconciliationVisit description](&v3, sel_description), -[AWDCoreRoutineLearnedLocationReconciliationVisit dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_datapointCount), @"datapointCount"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_deviceClass), @"deviceClass"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_watchPresent), @"watchPresent"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_didUnlock), @"didUnlock"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_newPlace), @"newPlace"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_placeType), @"placeType"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_placeLabelType), @"placeLabelType"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_placeAOIPOI), @"placeAOIPOI"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_32:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_percentageVisits), @"percentageVisits"}];
  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_percentageTransitions), @"percentageTransitions"}];
  }

LABEL_13:
  if ([(NSMutableArray *)self->_alternativeVisits count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_alternativeVisits, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    alternativeVisits = self->_alternativeVisits;
    v7 = [(NSMutableArray *)alternativeVisits countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(alternativeVisits);
          }

          [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)alternativeVisits countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"alternativeVisits"];
  }

  v11 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  datapointCount = self->_datapointCount;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  deviceClass = self->_deviceClass;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  watchPresent = self->_watchPresent;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  didUnlock = self->_didUnlock;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  newPlace = self->_newPlace;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  placeType = self->_placeType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  placeLabelType = self->_placeLabelType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  placeAOIPOI = self->_placeAOIPOI;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_30:
  percentageVisits = self->_percentageVisits;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    percentageTransitions = self->_percentageTransitions;
    PBDataWriterWriteInt32Field();
  }

LABEL_13:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  alternativeVisits = self->_alternativeVisits;
  v7 = [(NSMutableArray *)alternativeVisits countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(alternativeVisits);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)alternativeVisits countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 26) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 6) = self->_datapointCount;
  *(a3 + 26) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 7) = self->_deviceClass;
  *(a3 + 26) |= 4u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 51) = self->_watchPresent;
  *(a3 + 26) |= 0x400u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a3 + 48) = self->_didUnlock;
  *(a3 + 26) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(a3 + 49) = self->_newPlace;
  *(a3 + 26) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a3 + 11) = self->_placeType;
  *(a3 + 26) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a3 + 10) = self->_placeLabelType;
  *(a3 + 26) |= 0x20u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

LABEL_27:
    *(a3 + 9) = self->_percentageVisits;
    *(a3 + 26) |= 0x10u;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_26:
  *(a3 + 50) = self->_placeAOIPOI;
  *(a3 + 26) |= 0x200u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_27;
  }

LABEL_11:
  if ((has & 8) != 0)
  {
LABEL_12:
    *(a3 + 8) = self->_percentageTransitions;
    *(a3 + 26) |= 8u;
  }

LABEL_13:
  if ([(AWDCoreRoutineLearnedLocationReconciliationVisit *)self alternativeVisitsCount])
  {
    [a3 clearAlternativeVisits];
    v6 = [(AWDCoreRoutineLearnedLocationReconciliationVisit *)self alternativeVisitsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addAlternativeVisits:{-[AWDCoreRoutineLearnedLocationReconciliationVisit alternativeVisitsAtIndex:](self, "alternativeVisitsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 52) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_datapointCount;
  *(v5 + 52) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 28) = self->_deviceClass;
  *(v5 + 52) |= 4u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 51) = self->_watchPresent;
  *(v5 + 52) |= 0x400u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 48) = self->_didUnlock;
  *(v5 + 52) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 49) = self->_newPlace;
  *(v5 + 52) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 44) = self->_placeType;
  *(v5 + 52) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 40) = self->_placeLabelType;
  *(v5 + 52) |= 0x20u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 50) = self->_placeAOIPOI;
  *(v5 + 52) |= 0x200u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_30:
  *(v5 + 36) = self->_percentageVisits;
  *(v5 + 52) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_12:
    *(v5 + 32) = self->_percentageTransitions;
    *(v5 + 52) |= 8u;
  }

LABEL_13:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  alternativeVisits = self->_alternativeVisits;
  v9 = [(NSMutableArray *)alternativeVisits countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(alternativeVisits);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:a3];
        [v6 addAlternativeVisits:v13];
      }

      v10 = [(NSMutableArray *)alternativeVisits countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x29EDCA608];
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
  v7 = *(a3 + 26);
  if (has)
  {
    if ((v7 & 1) == 0 || self->_timestamp != *(a3 + 1))
    {
      goto LABEL_71;
    }
  }

  else if (v7)
  {
    goto LABEL_71;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_datapointCount != *(a3 + 6))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_deviceClass != *(a3 + 7))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_71;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(a3 + 26) & 0x400) == 0)
    {
      goto LABEL_71;
    }

    v8 = *(a3 + 51);
    if (self->_watchPresent)
    {
      if ((*(a3 + 51) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    else if (*(a3 + 51))
    {
      goto LABEL_71;
    }
  }

  else if ((*(a3 + 26) & 0x400) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_71;
    }

    v9 = *(a3 + 48);
    if (self->_didUnlock)
    {
      if ((*(a3 + 48) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    else if (*(a3 + 48))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_71;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(a3 + 26) & 0x100) == 0)
    {
      goto LABEL_71;
    }

    v10 = *(a3 + 49);
    if (self->_newPlace)
    {
      if ((*(a3 + 49) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    else if (*(a3 + 49))
    {
      goto LABEL_71;
    }
  }

  else if ((*(a3 + 26) & 0x100) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_placeType != *(a3 + 11))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_placeLabelType != *(a3 + 10))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_71;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(a3 + 26) & 0x200) != 0)
    {
      v11 = *(a3 + 50);
      if (self->_placeAOIPOI)
      {
        if ((*(a3 + 50) & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else if (*(a3 + 50))
      {
        goto LABEL_71;
      }

      goto LABEL_53;
    }

LABEL_71:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 26) & 0x200) != 0)
  {
    goto LABEL_71;
  }

LABEL_53:
  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_percentageVisits != *(a3 + 9))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_percentageTransitions != *(a3 + 8))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_71;
  }

  alternativeVisits = self->_alternativeVisits;
  if (alternativeVisits | *(a3 + 2))
  {

    LOBYTE(v5) = [(NSMutableArray *)alternativeVisits isEqual:?];
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v7 = 2654435761u * self->_timestamp;
    if ((has & 2) != 0)
    {
LABEL_3:
      v8 = 2654435761 * self->_datapointCount;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v9 = 2654435761 * self->_deviceClass;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_5:
    v10 = 2654435761 * self->_watchPresent;
    if ((has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_6:
    v11 = 2654435761 * self->_didUnlock;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_7:
    v12 = 2654435761 * self->_newPlace;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v13 = 2654435761 * self->_placeType;
    if ((has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v13 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_9:
    v14 = 2654435761 * self->_placeLabelType;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v14 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_10:
    v15 = 2654435761 * self->_placeAOIPOI;
    if ((has & 0x10) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v16 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v17 = 0;
    return v8 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ [(NSMutableArray *)self->_alternativeVisits hash:v3];
  }

LABEL_21:
  v15 = 0;
  if ((has & 0x10) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v16 = 2654435761 * self->_percentageVisits;
  if ((has & 8) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v17 = 2654435761 * self->_percentageTransitions;
  return v8 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ [(NSMutableArray *)self->_alternativeVisits hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(a3 + 26);
  if (v4)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v4 = *(a3 + 26);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_datapointCount = *(a3 + 6);
  *&self->_has |= 2u;
  v4 = *(a3 + 26);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_deviceClass = *(a3 + 7);
  *&self->_has |= 4u;
  v4 = *(a3 + 26);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_watchPresent = *(a3 + 51);
  *&self->_has |= 0x400u;
  v4 = *(a3 + 26);
  if ((v4 & 0x80) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_didUnlock = *(a3 + 48);
  *&self->_has |= 0x80u;
  v4 = *(a3 + 26);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_newPlace = *(a3 + 49);
  *&self->_has |= 0x100u;
  v4 = *(a3 + 26);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_placeType = *(a3 + 11);
  *&self->_has |= 0x40u;
  v4 = *(a3 + 26);
  if ((v4 & 0x20) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_placeLabelType = *(a3 + 10);
  *&self->_has |= 0x20u;
  v4 = *(a3 + 26);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_placeAOIPOI = *(a3 + 50);
  *&self->_has |= 0x200u;
  v4 = *(a3 + 26);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_30:
  self->_percentageVisits = *(a3 + 9);
  *&self->_has |= 0x10u;
  if ((*(a3 + 26) & 8) != 0)
  {
LABEL_12:
    self->_percentageTransitions = *(a3 + 8);
    *&self->_has |= 8u;
  }

LABEL_13:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(a3 + 2);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDCoreRoutineLearnedLocationReconciliationVisit *)self addAlternativeVisits:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x29EDCA608];
}

@end