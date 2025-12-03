@interface AWDCoreRoutineLocationAwarenessStatistics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineLocationAwarenessStatistics

- (void)dealloc
{
  [(AWDCoreRoutineLocationAwarenessStatistics *)self setTimerFiringCount:0];
  [(AWDCoreRoutineLocationAwarenessStatistics *)self setActiveRequestCount:0];
  [(AWDCoreRoutineLocationAwarenessStatistics *)self setValidLocationCount:0];
  [(AWDCoreRoutineLocationAwarenessStatistics *)self setTimerFiringDelayedCount:0];
  [(AWDCoreRoutineLocationAwarenessStatistics *)self setTimerFiringDelayedTotalSeconds:0];
  [(AWDCoreRoutineLocationAwarenessStatistics *)self setTimerFiringDelayedMaxSeconds:0];
  [(AWDCoreRoutineLocationAwarenessStatistics *)self setSkippedRequestDueToRecentFix:0];
  [(AWDCoreRoutineLocationAwarenessStatistics *)self setSkippedRequestDueToStationary:0];
  [(AWDCoreRoutineLocationAwarenessStatistics *)self setActiveRequestTimeoutWithCoarseLocation:0];
  [(AWDCoreRoutineLocationAwarenessStatistics *)self setActiveRequestTimeoutWithLocationServiceDisabled:0];
  [(AWDCoreRoutineLocationAwarenessStatistics *)self setActiveRequestTimeoutWithLocationServiceEnabledRoutineDisabled:0];
  [(AWDCoreRoutineLocationAwarenessStatistics *)self setActiveRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff:0];
  [(AWDCoreRoutineLocationAwarenessStatistics *)self setActiveRequestTimeoutWithOtherReasons:0];
  [(AWDCoreRoutineLocationAwarenessStatistics *)self setActiveRequestInterrupted:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLocationAwarenessStatistics;
  [(AWDCoreRoutineLocationAwarenessStatistics *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLocationAwarenessStatistics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineLocationAwarenessStatistics description](&v3, sel_description), -[AWDCoreRoutineLocationAwarenessStatistics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_duration), @"duration"}];
  }

  timerFiringCount = self->_timerFiringCount;
  if (timerFiringCount)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](timerFiringCount forKey:{"dictionaryRepresentation"), @"timerFiringCount"}];
  }

  activeRequestCount = self->_activeRequestCount;
  if (activeRequestCount)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](activeRequestCount forKey:{"dictionaryRepresentation"), @"activeRequestCount"}];
  }

  validLocationCount = self->_validLocationCount;
  if (validLocationCount)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](validLocationCount forKey:{"dictionaryRepresentation"), @"validLocationCount"}];
  }

  timerFiringDelayedCount = self->_timerFiringDelayedCount;
  if (timerFiringDelayedCount)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](timerFiringDelayedCount forKey:{"dictionaryRepresentation"), @"timerFiringDelayedCount"}];
  }

  timerFiringDelayedTotalSeconds = self->_timerFiringDelayedTotalSeconds;
  if (timerFiringDelayedTotalSeconds)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](timerFiringDelayedTotalSeconds forKey:{"dictionaryRepresentation"), @"timerFiringDelayedTotalSeconds"}];
  }

  timerFiringDelayedMaxSeconds = self->_timerFiringDelayedMaxSeconds;
  if (timerFiringDelayedMaxSeconds)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](timerFiringDelayedMaxSeconds forKey:{"dictionaryRepresentation"), @"timerFiringDelayedMaxSeconds"}];
  }

  skippedRequestDueToRecentFix = self->_skippedRequestDueToRecentFix;
  if (skippedRequestDueToRecentFix)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](skippedRequestDueToRecentFix forKey:{"dictionaryRepresentation"), @"skippedRequestDueToRecentFix"}];
  }

  skippedRequestDueToStationary = self->_skippedRequestDueToStationary;
  if (skippedRequestDueToStationary)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](skippedRequestDueToStationary forKey:{"dictionaryRepresentation"), @"skippedRequestDueToStationary"}];
  }

  activeRequestTimeoutWithCoarseLocation = self->_activeRequestTimeoutWithCoarseLocation;
  if (activeRequestTimeoutWithCoarseLocation)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](activeRequestTimeoutWithCoarseLocation forKey:{"dictionaryRepresentation"), @"activeRequestTimeoutWithCoarseLocation"}];
  }

  activeRequestTimeoutWithLocationServiceDisabled = self->_activeRequestTimeoutWithLocationServiceDisabled;
  if (activeRequestTimeoutWithLocationServiceDisabled)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](activeRequestTimeoutWithLocationServiceDisabled forKey:{"dictionaryRepresentation"), @"activeRequestTimeoutWithLocationServiceDisabled"}];
  }

  activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled = self->_activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled;
  if (activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled forKey:{"dictionaryRepresentation"), @"activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled"}];
  }

  activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff = self->_activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff;
  if (activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff forKey:{"dictionaryRepresentation"), @"activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff"}];
  }

  activeRequestTimeoutWithOtherReasons = self->_activeRequestTimeoutWithOtherReasons;
  if (activeRequestTimeoutWithOtherReasons)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](activeRequestTimeoutWithOtherReasons forKey:{"dictionaryRepresentation"), @"activeRequestTimeoutWithOtherReasons"}];
  }

  activeRequestInterrupted = self->_activeRequestInterrupted;
  if (activeRequestInterrupted)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](activeRequestInterrupted forKey:{"dictionaryRepresentation"), @"activeRequestInterrupted"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if (has)
  {
    duration = self->_duration;
    PBDataWriterWriteUint64Field();
  }

  if (self->_timerFiringCount)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_activeRequestCount)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_validLocationCount)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_timerFiringDelayedCount)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_timerFiringDelayedTotalSeconds)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_timerFiringDelayedMaxSeconds)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_skippedRequestDueToRecentFix)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_skippedRequestDueToStationary)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_activeRequestTimeoutWithCoarseLocation)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_activeRequestTimeoutWithLocationServiceDisabled)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_activeRequestTimeoutWithOtherReasons)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_activeRequestInterrupted)
  {

    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_timestamp;
    *(to + 136) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(to + 1) = self->_duration;
    *(to + 136) |= 1u;
  }

  if (self->_timerFiringCount)
  {
    [to setTimerFiringCount:?];
  }

  if (self->_activeRequestCount)
  {
    [to setActiveRequestCount:?];
  }

  if (self->_validLocationCount)
  {
    [to setValidLocationCount:?];
  }

  if (self->_timerFiringDelayedCount)
  {
    [to setTimerFiringDelayedCount:?];
  }

  if (self->_timerFiringDelayedTotalSeconds)
  {
    [to setTimerFiringDelayedTotalSeconds:?];
  }

  if (self->_timerFiringDelayedMaxSeconds)
  {
    [to setTimerFiringDelayedMaxSeconds:?];
  }

  if (self->_skippedRequestDueToRecentFix)
  {
    [to setSkippedRequestDueToRecentFix:?];
  }

  if (self->_skippedRequestDueToStationary)
  {
    [to setSkippedRequestDueToStationary:?];
  }

  if (self->_activeRequestTimeoutWithCoarseLocation)
  {
    [to setActiveRequestTimeoutWithCoarseLocation:?];
  }

  if (self->_activeRequestTimeoutWithLocationServiceDisabled)
  {
    [to setActiveRequestTimeoutWithLocationServiceDisabled:?];
  }

  if (self->_activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled)
  {
    [to setActiveRequestTimeoutWithLocationServiceEnabledRoutineDisabled:?];
  }

  if (self->_activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff)
  {
    [to setActiveRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff:?];
  }

  if (self->_activeRequestTimeoutWithOtherReasons)
  {
    [to setActiveRequestTimeoutWithOtherReasons:?];
  }

  if (self->_activeRequestInterrupted)
  {

    [to setActiveRequestInterrupted:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 136) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_duration;
    *(v5 + 136) |= 1u;
  }

  *(v6 + 96) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_timerFiringCount copyWithZone:zone];
  *(v6 + 24) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestCount copyWithZone:zone];

  *(v6 + 128) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_validLocationCount copyWithZone:zone];
  *(v6 + 104) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_timerFiringDelayedCount copyWithZone:zone];

  *(v6 + 120) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_timerFiringDelayedTotalSeconds copyWithZone:zone];
  *(v6 + 112) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_timerFiringDelayedMaxSeconds copyWithZone:zone];

  *(v6 + 80) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_skippedRequestDueToRecentFix copyWithZone:zone];
  *(v6 + 88) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_skippedRequestDueToStationary copyWithZone:zone];

  *(v6 + 40) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestTimeoutWithCoarseLocation copyWithZone:zone];
  *(v6 + 48) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestTimeoutWithLocationServiceDisabled copyWithZone:zone];

  *(v6 + 56) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled copyWithZone:zone];
  *(v6 + 64) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff copyWithZone:zone];

  *(v6 + 72) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestTimeoutWithOtherReasons copyWithZone:zone];
  *(v6 + 32) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestInterrupted copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 136);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 136) & 2) == 0 || self->_timestamp != *(equal + 2))
      {
        goto LABEL_40;
      }
    }

    else if ((*(equal + 136) & 2) != 0)
    {
LABEL_40:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(equal + 136) & 1) == 0 || self->_duration != *(equal + 1))
      {
        goto LABEL_40;
      }
    }

    else if (*(equal + 136))
    {
      goto LABEL_40;
    }

    timerFiringCount = self->_timerFiringCount;
    if (!(timerFiringCount | *(equal + 12)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)timerFiringCount isEqual:?]) != 0)
    {
      activeRequestCount = self->_activeRequestCount;
      if (!(activeRequestCount | *(equal + 3)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestCount isEqual:?]) != 0)
      {
        validLocationCount = self->_validLocationCount;
        if (!(validLocationCount | *(equal + 16)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)validLocationCount isEqual:?]) != 0)
        {
          timerFiringDelayedCount = self->_timerFiringDelayedCount;
          if (!(timerFiringDelayedCount | *(equal + 13)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)timerFiringDelayedCount isEqual:?]) != 0)
          {
            timerFiringDelayedTotalSeconds = self->_timerFiringDelayedTotalSeconds;
            if (!(timerFiringDelayedTotalSeconds | *(equal + 15)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)timerFiringDelayedTotalSeconds isEqual:?]) != 0)
            {
              timerFiringDelayedMaxSeconds = self->_timerFiringDelayedMaxSeconds;
              if (!(timerFiringDelayedMaxSeconds | *(equal + 14)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)timerFiringDelayedMaxSeconds isEqual:?]) != 0)
              {
                skippedRequestDueToRecentFix = self->_skippedRequestDueToRecentFix;
                if (!(skippedRequestDueToRecentFix | *(equal + 10)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)skippedRequestDueToRecentFix isEqual:?]) != 0)
                {
                  skippedRequestDueToStationary = self->_skippedRequestDueToStationary;
                  if (!(skippedRequestDueToStationary | *(equal + 11)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)skippedRequestDueToStationary isEqual:?]) != 0)
                  {
                    activeRequestTimeoutWithCoarseLocation = self->_activeRequestTimeoutWithCoarseLocation;
                    if (!(activeRequestTimeoutWithCoarseLocation | *(equal + 5)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestTimeoutWithCoarseLocation isEqual:?]) != 0)
                    {
                      activeRequestTimeoutWithLocationServiceDisabled = self->_activeRequestTimeoutWithLocationServiceDisabled;
                      if (!(activeRequestTimeoutWithLocationServiceDisabled | *(equal + 6)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestTimeoutWithLocationServiceDisabled isEqual:?]) != 0)
                      {
                        activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled = self->_activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled;
                        if (!(activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled | *(equal + 7)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled isEqual:?]) != 0)
                        {
                          activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff = self->_activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff;
                          if (!(activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff | *(equal + 8)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff isEqual:?]) != 0)
                          {
                            activeRequestTimeoutWithOtherReasons = self->_activeRequestTimeoutWithOtherReasons;
                            if (!(activeRequestTimeoutWithOtherReasons | *(equal + 9)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestTimeoutWithOtherReasons isEqual:?]) != 0)
                            {
                              activeRequestInterrupted = self->_activeRequestInterrupted;
                              if (activeRequestInterrupted | *(equal + 4))
                              {

                                LOBYTE(v5) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestInterrupted isEqual:?];
                              }

                              else
                              {
                                LOBYTE(v5) = 1;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761u * self->_duration;
LABEL_6:
  v5 = v4 ^ v3 ^ [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_timerFiringCount hash];
  v6 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestCount hash];
  v7 = v5 ^ v6 ^ [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_validLocationCount hash];
  v8 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_timerFiringDelayedCount hash];
  v9 = v8 ^ [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_timerFiringDelayedTotalSeconds hash];
  v10 = v7 ^ v9 ^ [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_timerFiringDelayedMaxSeconds hash];
  v11 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_skippedRequestDueToRecentFix hash];
  v12 = v11 ^ [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_skippedRequestDueToStationary hash];
  v13 = v12 ^ [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestTimeoutWithCoarseLocation hash];
  v14 = v10 ^ v13 ^ [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestTimeoutWithLocationServiceDisabled hash];
  v15 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled hash];
  v16 = v15 ^ [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff hash];
  v17 = v16 ^ [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestTimeoutWithOtherReasons hash];
  return v14 ^ v17 ^ [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestInterrupted hash];
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 136);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(from + 2);
    *&self->_has |= 2u;
    v5 = *(from + 136);
  }

  if (v5)
  {
    self->_duration = *(from + 1);
    *&self->_has |= 1u;
  }

  timerFiringCount = self->_timerFiringCount;
  v7 = *(from + 12);
  if (timerFiringCount)
  {
    if (v7)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)timerFiringCount mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(AWDCoreRoutineLocationAwarenessStatistics *)self setTimerFiringCount:?];
  }

  activeRequestCount = self->_activeRequestCount;
  v9 = *(from + 3);
  if (activeRequestCount)
  {
    if (v9)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestCount mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(AWDCoreRoutineLocationAwarenessStatistics *)self setActiveRequestCount:?];
  }

  validLocationCount = self->_validLocationCount;
  v11 = *(from + 16);
  if (validLocationCount)
  {
    if (v11)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)validLocationCount mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(AWDCoreRoutineLocationAwarenessStatistics *)self setValidLocationCount:?];
  }

  timerFiringDelayedCount = self->_timerFiringDelayedCount;
  v13 = *(from + 13);
  if (timerFiringDelayedCount)
  {
    if (v13)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)timerFiringDelayedCount mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(AWDCoreRoutineLocationAwarenessStatistics *)self setTimerFiringDelayedCount:?];
  }

  timerFiringDelayedTotalSeconds = self->_timerFiringDelayedTotalSeconds;
  v15 = *(from + 15);
  if (timerFiringDelayedTotalSeconds)
  {
    if (v15)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)timerFiringDelayedTotalSeconds mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(AWDCoreRoutineLocationAwarenessStatistics *)self setTimerFiringDelayedTotalSeconds:?];
  }

  timerFiringDelayedMaxSeconds = self->_timerFiringDelayedMaxSeconds;
  v17 = *(from + 14);
  if (timerFiringDelayedMaxSeconds)
  {
    if (v17)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)timerFiringDelayedMaxSeconds mergeFrom:?];
    }
  }

  else if (v17)
  {
    [(AWDCoreRoutineLocationAwarenessStatistics *)self setTimerFiringDelayedMaxSeconds:?];
  }

  skippedRequestDueToRecentFix = self->_skippedRequestDueToRecentFix;
  v19 = *(from + 10);
  if (skippedRequestDueToRecentFix)
  {
    if (v19)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)skippedRequestDueToRecentFix mergeFrom:?];
    }
  }

  else if (v19)
  {
    [(AWDCoreRoutineLocationAwarenessStatistics *)self setSkippedRequestDueToRecentFix:?];
  }

  skippedRequestDueToStationary = self->_skippedRequestDueToStationary;
  v21 = *(from + 11);
  if (skippedRequestDueToStationary)
  {
    if (v21)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)skippedRequestDueToStationary mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(AWDCoreRoutineLocationAwarenessStatistics *)self setSkippedRequestDueToStationary:?];
  }

  activeRequestTimeoutWithCoarseLocation = self->_activeRequestTimeoutWithCoarseLocation;
  v23 = *(from + 5);
  if (activeRequestTimeoutWithCoarseLocation)
  {
    if (v23)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestTimeoutWithCoarseLocation mergeFrom:?];
    }
  }

  else if (v23)
  {
    [(AWDCoreRoutineLocationAwarenessStatistics *)self setActiveRequestTimeoutWithCoarseLocation:?];
  }

  activeRequestTimeoutWithLocationServiceDisabled = self->_activeRequestTimeoutWithLocationServiceDisabled;
  v25 = *(from + 6);
  if (activeRequestTimeoutWithLocationServiceDisabled)
  {
    if (v25)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestTimeoutWithLocationServiceDisabled mergeFrom:?];
    }
  }

  else if (v25)
  {
    [(AWDCoreRoutineLocationAwarenessStatistics *)self setActiveRequestTimeoutWithLocationServiceDisabled:?];
  }

  activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled = self->_activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled;
  v27 = *(from + 7);
  if (activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled)
  {
    if (v27)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled mergeFrom:?];
    }
  }

  else if (v27)
  {
    [(AWDCoreRoutineLocationAwarenessStatistics *)self setActiveRequestTimeoutWithLocationServiceEnabledRoutineDisabled:?];
  }

  activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff = self->_activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff;
  v29 = *(from + 8);
  if (activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff)
  {
    if (v29)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff mergeFrom:?];
    }
  }

  else if (v29)
  {
    [(AWDCoreRoutineLocationAwarenessStatistics *)self setActiveRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff:?];
  }

  activeRequestTimeoutWithOtherReasons = self->_activeRequestTimeoutWithOtherReasons;
  v31 = *(from + 9);
  if (activeRequestTimeoutWithOtherReasons)
  {
    if (v31)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestTimeoutWithOtherReasons mergeFrom:?];
    }
  }

  else if (v31)
  {
    [(AWDCoreRoutineLocationAwarenessStatistics *)self setActiveRequestTimeoutWithOtherReasons:?];
  }

  activeRequestInterrupted = self->_activeRequestInterrupted;
  v33 = *(from + 4);
  if (activeRequestInterrupted)
  {
    if (v33)
    {

      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestInterrupted mergeFrom:?];
    }
  }

  else if (v33)
  {

    [(AWDCoreRoutineLocationAwarenessStatistics *)self setActiveRequestInterrupted:?];
  }
}

@end