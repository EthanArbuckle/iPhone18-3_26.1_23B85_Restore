@interface AWDCoreRoutineLocationAwarenessStatistics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasTimestamp:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLocationAwarenessStatistics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineLocationAwarenessStatistics description](&v3, sel_description), -[AWDCoreRoutineLocationAwarenessStatistics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_duration), @"duration"}];
  }

  timerFiringCount = self->_timerFiringCount;
  if (timerFiringCount)
  {
    [v3 setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](timerFiringCount forKey:{"dictionaryRepresentation"), @"timerFiringCount"}];
  }

  activeRequestCount = self->_activeRequestCount;
  if (activeRequestCount)
  {
    [v3 setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](activeRequestCount forKey:{"dictionaryRepresentation"), @"activeRequestCount"}];
  }

  validLocationCount = self->_validLocationCount;
  if (validLocationCount)
  {
    [v3 setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](validLocationCount forKey:{"dictionaryRepresentation"), @"validLocationCount"}];
  }

  timerFiringDelayedCount = self->_timerFiringDelayedCount;
  if (timerFiringDelayedCount)
  {
    [v3 setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](timerFiringDelayedCount forKey:{"dictionaryRepresentation"), @"timerFiringDelayedCount"}];
  }

  timerFiringDelayedTotalSeconds = self->_timerFiringDelayedTotalSeconds;
  if (timerFiringDelayedTotalSeconds)
  {
    [v3 setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](timerFiringDelayedTotalSeconds forKey:{"dictionaryRepresentation"), @"timerFiringDelayedTotalSeconds"}];
  }

  timerFiringDelayedMaxSeconds = self->_timerFiringDelayedMaxSeconds;
  if (timerFiringDelayedMaxSeconds)
  {
    [v3 setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](timerFiringDelayedMaxSeconds forKey:{"dictionaryRepresentation"), @"timerFiringDelayedMaxSeconds"}];
  }

  skippedRequestDueToRecentFix = self->_skippedRequestDueToRecentFix;
  if (skippedRequestDueToRecentFix)
  {
    [v3 setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](skippedRequestDueToRecentFix forKey:{"dictionaryRepresentation"), @"skippedRequestDueToRecentFix"}];
  }

  skippedRequestDueToStationary = self->_skippedRequestDueToStationary;
  if (skippedRequestDueToStationary)
  {
    [v3 setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](skippedRequestDueToStationary forKey:{"dictionaryRepresentation"), @"skippedRequestDueToStationary"}];
  }

  activeRequestTimeoutWithCoarseLocation = self->_activeRequestTimeoutWithCoarseLocation;
  if (activeRequestTimeoutWithCoarseLocation)
  {
    [v3 setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](activeRequestTimeoutWithCoarseLocation forKey:{"dictionaryRepresentation"), @"activeRequestTimeoutWithCoarseLocation"}];
  }

  activeRequestTimeoutWithLocationServiceDisabled = self->_activeRequestTimeoutWithLocationServiceDisabled;
  if (activeRequestTimeoutWithLocationServiceDisabled)
  {
    [v3 setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](activeRequestTimeoutWithLocationServiceDisabled forKey:{"dictionaryRepresentation"), @"activeRequestTimeoutWithLocationServiceDisabled"}];
  }

  activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled = self->_activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled;
  if (activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled)
  {
    [v3 setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled forKey:{"dictionaryRepresentation"), @"activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled"}];
  }

  activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff = self->_activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff;
  if (activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff)
  {
    [v3 setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff forKey:{"dictionaryRepresentation"), @"activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff"}];
  }

  activeRequestTimeoutWithOtherReasons = self->_activeRequestTimeoutWithOtherReasons;
  if (activeRequestTimeoutWithOtherReasons)
  {
    [v3 setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](activeRequestTimeoutWithOtherReasons forKey:{"dictionaryRepresentation"), @"activeRequestTimeoutWithOtherReasons"}];
  }

  activeRequestInterrupted = self->_activeRequestInterrupted;
  if (activeRequestInterrupted)
  {
    [v3 setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](activeRequestInterrupted forKey:{"dictionaryRepresentation"), @"activeRequestInterrupted"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 2) = self->_timestamp;
    *(a3 + 136) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(a3 + 1) = self->_duration;
    *(a3 + 136) |= 1u;
  }

  if (self->_timerFiringCount)
  {
    [a3 setTimerFiringCount:?];
  }

  if (self->_activeRequestCount)
  {
    [a3 setActiveRequestCount:?];
  }

  if (self->_validLocationCount)
  {
    [a3 setValidLocationCount:?];
  }

  if (self->_timerFiringDelayedCount)
  {
    [a3 setTimerFiringDelayedCount:?];
  }

  if (self->_timerFiringDelayedTotalSeconds)
  {
    [a3 setTimerFiringDelayedTotalSeconds:?];
  }

  if (self->_timerFiringDelayedMaxSeconds)
  {
    [a3 setTimerFiringDelayedMaxSeconds:?];
  }

  if (self->_skippedRequestDueToRecentFix)
  {
    [a3 setSkippedRequestDueToRecentFix:?];
  }

  if (self->_skippedRequestDueToStationary)
  {
    [a3 setSkippedRequestDueToStationary:?];
  }

  if (self->_activeRequestTimeoutWithCoarseLocation)
  {
    [a3 setActiveRequestTimeoutWithCoarseLocation:?];
  }

  if (self->_activeRequestTimeoutWithLocationServiceDisabled)
  {
    [a3 setActiveRequestTimeoutWithLocationServiceDisabled:?];
  }

  if (self->_activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled)
  {
    [a3 setActiveRequestTimeoutWithLocationServiceEnabledRoutineDisabled:?];
  }

  if (self->_activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff)
  {
    [a3 setActiveRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff:?];
  }

  if (self->_activeRequestTimeoutWithOtherReasons)
  {
    [a3 setActiveRequestTimeoutWithOtherReasons:?];
  }

  if (self->_activeRequestInterrupted)
  {

    [a3 setActiveRequestInterrupted:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  *(v6 + 96) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_timerFiringCount copyWithZone:a3];
  *(v6 + 24) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestCount copyWithZone:a3];

  *(v6 + 128) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_validLocationCount copyWithZone:a3];
  *(v6 + 104) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_timerFiringDelayedCount copyWithZone:a3];

  *(v6 + 120) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_timerFiringDelayedTotalSeconds copyWithZone:a3];
  *(v6 + 112) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_timerFiringDelayedMaxSeconds copyWithZone:a3];

  *(v6 + 80) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_skippedRequestDueToRecentFix copyWithZone:a3];
  *(v6 + 88) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_skippedRequestDueToStationary copyWithZone:a3];

  *(v6 + 40) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestTimeoutWithCoarseLocation copyWithZone:a3];
  *(v6 + 48) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestTimeoutWithLocationServiceDisabled copyWithZone:a3];

  *(v6 + 56) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled copyWithZone:a3];
  *(v6 + 64) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff copyWithZone:a3];

  *(v6 + 72) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestTimeoutWithOtherReasons copyWithZone:a3];
  *(v6 + 32) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_activeRequestInterrupted copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 136);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 136) & 2) == 0 || self->_timestamp != *(a3 + 2))
      {
        goto LABEL_40;
      }
    }

    else if ((*(a3 + 136) & 2) != 0)
    {
LABEL_40:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 136) & 1) == 0 || self->_duration != *(a3 + 1))
      {
        goto LABEL_40;
      }
    }

    else if (*(a3 + 136))
    {
      goto LABEL_40;
    }

    timerFiringCount = self->_timerFiringCount;
    if (!(timerFiringCount | *(a3 + 12)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)timerFiringCount isEqual:?]) != 0)
    {
      activeRequestCount = self->_activeRequestCount;
      if (!(activeRequestCount | *(a3 + 3)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestCount isEqual:?]) != 0)
      {
        validLocationCount = self->_validLocationCount;
        if (!(validLocationCount | *(a3 + 16)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)validLocationCount isEqual:?]) != 0)
        {
          timerFiringDelayedCount = self->_timerFiringDelayedCount;
          if (!(timerFiringDelayedCount | *(a3 + 13)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)timerFiringDelayedCount isEqual:?]) != 0)
          {
            timerFiringDelayedTotalSeconds = self->_timerFiringDelayedTotalSeconds;
            if (!(timerFiringDelayedTotalSeconds | *(a3 + 15)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)timerFiringDelayedTotalSeconds isEqual:?]) != 0)
            {
              timerFiringDelayedMaxSeconds = self->_timerFiringDelayedMaxSeconds;
              if (!(timerFiringDelayedMaxSeconds | *(a3 + 14)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)timerFiringDelayedMaxSeconds isEqual:?]) != 0)
              {
                skippedRequestDueToRecentFix = self->_skippedRequestDueToRecentFix;
                if (!(skippedRequestDueToRecentFix | *(a3 + 10)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)skippedRequestDueToRecentFix isEqual:?]) != 0)
                {
                  skippedRequestDueToStationary = self->_skippedRequestDueToStationary;
                  if (!(skippedRequestDueToStationary | *(a3 + 11)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)skippedRequestDueToStationary isEqual:?]) != 0)
                  {
                    activeRequestTimeoutWithCoarseLocation = self->_activeRequestTimeoutWithCoarseLocation;
                    if (!(activeRequestTimeoutWithCoarseLocation | *(a3 + 5)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestTimeoutWithCoarseLocation isEqual:?]) != 0)
                    {
                      activeRequestTimeoutWithLocationServiceDisabled = self->_activeRequestTimeoutWithLocationServiceDisabled;
                      if (!(activeRequestTimeoutWithLocationServiceDisabled | *(a3 + 6)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestTimeoutWithLocationServiceDisabled isEqual:?]) != 0)
                      {
                        activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled = self->_activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled;
                        if (!(activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled | *(a3 + 7)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled isEqual:?]) != 0)
                        {
                          activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff = self->_activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff;
                          if (!(activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff | *(a3 + 8)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff isEqual:?]) != 0)
                          {
                            activeRequestTimeoutWithOtherReasons = self->_activeRequestTimeoutWithOtherReasons;
                            if (!(activeRequestTimeoutWithOtherReasons | *(a3 + 9)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)activeRequestTimeoutWithOtherReasons isEqual:?]) != 0)
                            {
                              activeRequestInterrupted = self->_activeRequestInterrupted;
                              if (activeRequestInterrupted | *(a3 + 4))
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

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 136);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(a3 + 2);
    *&self->_has |= 2u;
    v5 = *(a3 + 136);
  }

  if (v5)
  {
    self->_duration = *(a3 + 1);
    *&self->_has |= 1u;
  }

  timerFiringCount = self->_timerFiringCount;
  v7 = *(a3 + 12);
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
  v9 = *(a3 + 3);
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
  v11 = *(a3 + 16);
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
  v13 = *(a3 + 13);
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
  v15 = *(a3 + 15);
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
  v17 = *(a3 + 14);
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
  v19 = *(a3 + 10);
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
  v21 = *(a3 + 11);
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
  v23 = *(a3 + 5);
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
  v25 = *(a3 + 6);
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
  v27 = *(a3 + 7);
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
  v29 = *(a3 + 8);
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
  v31 = *(a3 + 9);
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
  v33 = *(a3 + 4);
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