@interface AWDCoreRoutineLearnedRouteInstance
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)majorGapLengthAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addLocationTypeHistogram:(id)histogram;
- (void)addRoadClassHistogram:(id)histogram;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasFailureReason:(BOOL)reason;
- (void)setHasLatitudeTruncated:(BOOL)truncated;
- (void)setHasLength:(BOOL)length;
- (void)setHasLongitudeTruncated:(BOOL)truncated;
- (void)setHasNumberOfFilteredLocations:(BOOL)locations;
- (void)setHasNumberOfInputLocations:(BOOL)locations;
- (void)setHasRecoveryTime:(BOOL)time;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineLearnedRouteInstance

- (void)dealloc
{
  [(AWDCoreRoutineLearnedRouteInstance *)self setRoadClassHistograms:0];
  [(AWDCoreRoutineLearnedRouteInstance *)self setLocationTypeHistograms:0];
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLearnedRouteInstance;
  [(AWDCoreRoutineLearnedRouteInstance *)&v3 dealloc];
}

- (void)setHasNumberOfInputLocations:(BOOL)locations
{
  if (locations)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasNumberOfFilteredLocations:(BOOL)locations
{
  if (locations)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasLength:(BOOL)length
{
  if (length)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasRecoveryTime:(BOOL)time
{
  if (time)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasFailureReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasLatitudeTruncated:(BOOL)truncated
{
  if (truncated)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasLongitudeTruncated:(BOOL)truncated
{
  if (truncated)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addRoadClassHistogram:(id)histogram
{
  roadClassHistograms = self->_roadClassHistograms;
  if (!roadClassHistograms)
  {
    roadClassHistograms = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_roadClassHistograms = roadClassHistograms;
  }

  [(NSMutableArray *)roadClassHistograms addObject:histogram];
}

- (void)addLocationTypeHistogram:(id)histogram
{
  locationTypeHistograms = self->_locationTypeHistograms;
  if (!locationTypeHistograms)
  {
    locationTypeHistograms = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_locationTypeHistograms = locationTypeHistograms;
  }

  [(NSMutableArray *)locationTypeHistograms addObject:histogram];
}

- (int)majorGapLengthAtIndex:(unint64_t)index
{
  p_majorGapLengths = &self->_majorGapLengths;
  count = self->_majorGapLengths.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_majorGapLengths->list[index];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLearnedRouteInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineLearnedRouteInstance description](&v3, sel_description), -[AWDCoreRoutineLearnedRouteInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_numberOfInputLocations), @"numberOfInputLocations"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_numberOfFilteredLocations), @"numberOfFilteredLocations"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_length), @"length"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_recoveryTime), @"recoveryTime"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_failureReason), @"failureReason"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_35:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_latitudeTruncated), @"latitudeTruncated"}];
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_longitudeTruncated), @"longitudeTruncated"}];
  }

LABEL_10:
  if ([(NSMutableArray *)self->_roadClassHistograms count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_roadClassHistograms, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    roadClassHistograms = self->_roadClassHistograms;
    v7 = [(NSMutableArray *)roadClassHistograms countByEnumeratingWithState:&v23 objects:v28 count:16];
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
            objc_enumerationMutation(roadClassHistograms);
          }

          [v5 addObject:{objc_msgSend(*(*(&v23 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)roadClassHistograms countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"roadClassHistogram"];
  }

  if ([(NSMutableArray *)self->_locationTypeHistograms count])
  {
    v11 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_locationTypeHistograms, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    locationTypeHistograms = self->_locationTypeHistograms;
    v13 = [(NSMutableArray *)locationTypeHistograms countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(locationTypeHistograms);
          }

          [v11 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v14 = [(NSMutableArray *)locationTypeHistograms countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"locationTypeHistogram"];
  }

  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"majorGapLength"];
  v17 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v39 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  numberOfInputLocations = self->_numberOfInputLocations;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  numberOfFilteredLocations = self->_numberOfFilteredLocations;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  length = self->_length;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  recoveryTime = self->_recoveryTime;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  failureReason = self->_failureReason;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_34:
  latitudeTruncated = self->_latitudeTruncated;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    longitudeTruncated = self->_longitudeTruncated;
    PBDataWriterWriteInt32Field();
  }

LABEL_10:
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  roadClassHistograms = self->_roadClassHistograms;
  v7 = [(NSMutableArray *)roadClassHistograms countByEnumeratingWithState:&v33 objects:v38 count:16];
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
          objc_enumerationMutation(roadClassHistograms);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)roadClassHistograms countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v8);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  locationTypeHistograms = self->_locationTypeHistograms;
  v13 = [(NSMutableArray *)locationTypeHistograms countByEnumeratingWithState:&v29 objects:v37 count:16];
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
          objc_enumerationMutation(locationTypeHistograms);
        }

        v17 = *(*(&v29 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)locationTypeHistograms countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v14);
  }

  p_majorGapLengths = &self->_majorGapLengths;
  if (p_majorGapLengths->count)
  {
    v19 = 0;
    do
    {
      v20 = p_majorGapLengths->list[v19];
      PBDataWriterWriteInt32Field();
      ++v19;
    }

    while (v19 < p_majorGapLengths->count);
  }

  v21 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 4) = self->_timestamp;
    *(to + 88) |= 1u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(to + 18) = self->_numberOfInputLocations;
  *(to + 88) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 17) = self->_numberOfFilteredLocations;
  *(to + 88) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 12) = self->_length;
  *(to + 88) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 19) = self->_recoveryTime;
  *(to + 88) |= 0x80u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_29:
    *(to + 11) = self->_latitudeTruncated;
    *(to + 88) |= 4u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_28:
  *(to + 10) = self->_failureReason;
  *(to + 88) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_29;
  }

LABEL_8:
  if ((has & 0x10) != 0)
  {
LABEL_9:
    *(to + 16) = self->_longitudeTruncated;
    *(to + 88) |= 0x10u;
  }

LABEL_10:
  if ([(AWDCoreRoutineLearnedRouteInstance *)self roadClassHistogramsCount])
  {
    [to clearRoadClassHistograms];
    roadClassHistogramsCount = [(AWDCoreRoutineLearnedRouteInstance *)self roadClassHistogramsCount];
    if (roadClassHistogramsCount)
    {
      v7 = roadClassHistogramsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addRoadClassHistogram:{-[AWDCoreRoutineLearnedRouteInstance roadClassHistogramAtIndex:](self, "roadClassHistogramAtIndex:", i)}];
      }
    }
  }

  if ([(AWDCoreRoutineLearnedRouteInstance *)self locationTypeHistogramsCount])
  {
    [to clearLocationTypeHistograms];
    locationTypeHistogramsCount = [(AWDCoreRoutineLearnedRouteInstance *)self locationTypeHistogramsCount];
    if (locationTypeHistogramsCount)
    {
      v10 = locationTypeHistogramsCount;
      for (j = 0; j != v10; ++j)
      {
        [to addLocationTypeHistogram:{-[AWDCoreRoutineLearnedRouteInstance locationTypeHistogramAtIndex:](self, "locationTypeHistogramAtIndex:", j)}];
      }
    }
  }

  if ([(AWDCoreRoutineLearnedRouteInstance *)self majorGapLengthsCount])
  {
    [to clearMajorGapLengths];
    majorGapLengthsCount = [(AWDCoreRoutineLearnedRouteInstance *)self majorGapLengthsCount];
    if (majorGapLengthsCount)
    {
      v13 = majorGapLengthsCount;
      for (k = 0; k != v13; ++k)
      {
        [to addMajorGapLength:{-[AWDCoreRoutineLearnedRouteInstance majorGapLengthAtIndex:](self, "majorGapLengthAtIndex:", k)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v32 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 32) = self->_timestamp;
    *(v5 + 88) |= 1u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 72) = self->_numberOfInputLocations;
  *(v5 + 88) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 68) = self->_numberOfFilteredLocations;
  *(v5 + 88) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 48) = self->_length;
  *(v5 + 88) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 76) = self->_recoveryTime;
  *(v5 + 88) |= 0x80u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 40) = self->_failureReason;
  *(v5 + 88) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_31:
  *(v5 + 44) = self->_latitudeTruncated;
  *(v5 + 88) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    *(v5 + 64) = self->_longitudeTruncated;
    *(v5 + 88) |= 0x10u;
  }

LABEL_10:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  roadClassHistograms = self->_roadClassHistograms;
  v9 = [(NSMutableArray *)roadClassHistograms countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(roadClassHistograms);
        }

        v13 = [*(*(&v26 + 1) + 8 * i) copyWithZone:zone];
        [v6 addRoadClassHistogram:v13];
      }

      v10 = [(NSMutableArray *)roadClassHistograms countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  locationTypeHistograms = self->_locationTypeHistograms;
  v15 = [(NSMutableArray *)locationTypeHistograms countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(locationTypeHistograms);
        }

        v19 = [*(*(&v22 + 1) + 8 * j) copyWithZone:zone];
        [v6 addLocationTypeHistogram:v19];
      }

      v16 = [(NSMutableArray *)locationTypeHistograms countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  PBRepeatedInt32Copy();
  v20 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (![equal isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(equal + 88);
  if (*&self->_has)
  {
    if ((*(equal + 88) & 1) == 0 || self->_timestamp != *(equal + 4))
    {
      return 0;
    }
  }

  else if (*(equal + 88))
  {
    return 0;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equal + 88) & 0x40) == 0 || self->_numberOfInputLocations != *(equal + 18))
    {
      return 0;
    }
  }

  else if ((*(equal + 88) & 0x40) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equal + 88) & 0x20) == 0 || self->_numberOfFilteredLocations != *(equal + 17))
    {
      return 0;
    }
  }

  else if ((*(equal + 88) & 0x20) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equal + 88) & 8) == 0 || self->_length != *(equal + 12))
    {
      return 0;
    }
  }

  else if ((*(equal + 88) & 8) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    if ((*(equal + 88) & 0x80) == 0 || self->_recoveryTime != *(equal + 19))
    {
      return 0;
    }
  }

  else if ((*(equal + 88) & 0x80) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equal + 88) & 2) == 0 || self->_failureReason != *(equal + 10))
    {
      return 0;
    }
  }

  else if ((*(equal + 88) & 2) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equal + 88) & 4) == 0 || self->_latitudeTruncated != *(equal + 11))
    {
      return 0;
    }
  }

  else if ((*(equal + 88) & 4) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equal + 88) & 0x10) == 0 || self->_longitudeTruncated != *(equal + 16))
    {
      return 0;
    }
  }

  else if ((*(equal + 88) & 0x10) != 0)
  {
    return 0;
  }

  roadClassHistograms = self->_roadClassHistograms;
  if (roadClassHistograms | *(equal + 10) && ![(NSMutableArray *)roadClassHistograms isEqual:?])
  {
    return 0;
  }

  locationTypeHistograms = self->_locationTypeHistograms;
  if (locationTypeHistograms | *(equal + 7))
  {
    if (![(NSMutableArray *)locationTypeHistograms isEqual:?])
    {
      return 0;
    }
  }

  return PBRepeatedInt32IsEqual();
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x40) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_numberOfInputLocations;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_numberOfFilteredLocations;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_length;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_recoveryTime;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v7 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_failureReason;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v9 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

LABEL_15:
  v8 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v9 = 2654435761 * self->_latitudeTruncated;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v10 = 2654435761 * self->_longitudeTruncated;
LABEL_18:
  v11 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(NSMutableArray *)self->_roadClassHistograms hash];
  v12 = [(NSMutableArray *)self->_locationTypeHistograms hash];
  return v11 ^ v12 ^ PBRepeatedInt32Hash();
}

- (void)mergeFrom:(id)from
{
  v30 = *MEMORY[0x29EDCA608];
  v5 = *(from + 88);
  if (v5)
  {
    self->_timestamp = *(from + 4);
    *&self->_has |= 1u;
    v5 = *(from + 88);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((*(from + 88) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self->_numberOfInputLocations = *(from + 18);
  *&self->_has |= 0x40u;
  v5 = *(from + 88);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_numberOfFilteredLocations = *(from + 17);
  *&self->_has |= 0x20u;
  v5 = *(from + 88);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_length = *(from + 12);
  *&self->_has |= 8u;
  v5 = *(from + 88);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_recoveryTime = *(from + 19);
  *&self->_has |= 0x80u;
  v5 = *(from + 88);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_failureReason = *(from + 10);
  *&self->_has |= 2u;
  v5 = *(from + 88);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_34:
  self->_latitudeTruncated = *(from + 11);
  *&self->_has |= 4u;
  if ((*(from + 88) & 0x10) != 0)
  {
LABEL_9:
    self->_longitudeTruncated = *(from + 16);
    *&self->_has |= 0x10u;
  }

LABEL_10:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = *(from + 10);
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(v6);
        }

        [(AWDCoreRoutineLearnedRouteInstance *)self addRoadClassHistogram:*(*(&v24 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = *(from + 7);
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(AWDCoreRoutineLearnedRouteInstance *)self addLocationTypeHistogram:*(*(&v20 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  majorGapLengthsCount = [from majorGapLengthsCount];
  if (majorGapLengthsCount)
  {
    v17 = majorGapLengthsCount;
    for (k = 0; k != v17; ++k)
    {
      -[AWDCoreRoutineLearnedRouteInstance addMajorGapLength:](self, "addMajorGapLength:", [from majorGapLengthAtIndex:k]);
    }
  }

  v19 = *MEMORY[0x29EDCA608];
}

@end