@interface AWDCoreRoutineLocationAwarenessLocationTimeHistograms
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

@implementation AWDCoreRoutineLocationAwarenessLocationTimeHistograms

- (void)dealloc
{
  [(AWDCoreRoutineLocationAwarenessLocationTimeHistograms *)self setLessThan10mHistogram:0];
  [(AWDCoreRoutineLocationAwarenessLocationTimeHistograms *)self setLessThan20mHistogram:0];
  [(AWDCoreRoutineLocationAwarenessLocationTimeHistograms *)self setLessThan55mHistogram:0];
  [(AWDCoreRoutineLocationAwarenessLocationTimeHistograms *)self setLessThan200mHistogram:0];
  [(AWDCoreRoutineLocationAwarenessLocationTimeHistograms *)self setAnyPositiveHistogram:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLocationAwarenessLocationTimeHistograms;
  [(AWDCoreRoutineLocationAwarenessLocationTimeHistograms *)&v3 dealloc];
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
  v3.super_class = AWDCoreRoutineLocationAwarenessLocationTimeHistograms;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineLocationAwarenessLocationTimeHistograms description](&v3, sel_description), -[AWDCoreRoutineLocationAwarenessLocationTimeHistograms dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  lessThan10mHistogram = self->_lessThan10mHistogram;
  if (lessThan10mHistogram)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](lessThan10mHistogram forKey:{"dictionaryRepresentation"), @"LessThan10mHistogram"}];
  }

  lessThan20mHistogram = self->_lessThan20mHistogram;
  if (lessThan20mHistogram)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](lessThan20mHistogram forKey:{"dictionaryRepresentation"), @"LessThan20mHistogram"}];
  }

  lessThan55mHistogram = self->_lessThan55mHistogram;
  if (lessThan55mHistogram)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](lessThan55mHistogram forKey:{"dictionaryRepresentation"), @"LessThan55mHistogram"}];
  }

  lessThan200mHistogram = self->_lessThan200mHistogram;
  if (lessThan200mHistogram)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](lessThan200mHistogram forKey:{"dictionaryRepresentation"), @"LessThan200mHistogram"}];
  }

  anyPositiveHistogram = self->_anyPositiveHistogram;
  if (anyPositiveHistogram)
  {
    [dictionary setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](anyPositiveHistogram forKey:{"dictionaryRepresentation"), @"AnyPositiveHistogram"}];
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

  if (self->_lessThan10mHistogram)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_lessThan20mHistogram)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_lessThan55mHistogram)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_lessThan200mHistogram)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_anyPositiveHistogram)
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
    *(to + 64) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(to + 1) = self->_duration;
    *(to + 64) |= 1u;
  }

  if (self->_lessThan10mHistogram)
  {
    [to setLessThan10mHistogram:?];
  }

  if (self->_lessThan20mHistogram)
  {
    [to setLessThan20mHistogram:?];
  }

  if (self->_lessThan55mHistogram)
  {
    [to setLessThan55mHistogram:?];
  }

  if (self->_lessThan200mHistogram)
  {
    [to setLessThan200mHistogram:?];
  }

  if (self->_anyPositiveHistogram)
  {

    [to setAnyPositiveHistogram:?];
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
    *(v5 + 64) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_duration;
    *(v5 + 64) |= 1u;
  }

  *(v6 + 32) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_lessThan10mHistogram copyWithZone:zone];
  *(v6 + 48) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_lessThan20mHistogram copyWithZone:zone];

  *(v6 + 56) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_lessThan55mHistogram copyWithZone:zone];
  *(v6 + 40) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_lessThan200mHistogram copyWithZone:zone];

  *(v6 + 24) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_anyPositiveHistogram copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 64);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 64) & 2) == 0 || self->_timestamp != *(equal + 2))
      {
        goto LABEL_22;
      }
    }

    else if ((*(equal + 64) & 2) != 0)
    {
LABEL_22:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(equal + 64) & 1) == 0 || self->_duration != *(equal + 1))
      {
        goto LABEL_22;
      }
    }

    else if (*(equal + 64))
    {
      goto LABEL_22;
    }

    lessThan10mHistogram = self->_lessThan10mHistogram;
    if (!(lessThan10mHistogram | *(equal + 4)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)lessThan10mHistogram isEqual:?]) != 0)
    {
      lessThan20mHistogram = self->_lessThan20mHistogram;
      if (!(lessThan20mHistogram | *(equal + 6)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)lessThan20mHistogram isEqual:?]) != 0)
      {
        lessThan55mHistogram = self->_lessThan55mHistogram;
        if (!(lessThan55mHistogram | *(equal + 7)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)lessThan55mHistogram isEqual:?]) != 0)
        {
          lessThan200mHistogram = self->_lessThan200mHistogram;
          if (!(lessThan200mHistogram | *(equal + 5)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)lessThan200mHistogram isEqual:?]) != 0)
          {
            anyPositiveHistogram = self->_anyPositiveHistogram;
            if (anyPositiveHistogram | *(equal + 3))
            {

              LOBYTE(v5) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)anyPositiveHistogram isEqual:?];
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
  v5 = v4 ^ v3 ^ [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_lessThan10mHistogram hash];
  v6 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_lessThan20mHistogram hash];
  v7 = v5 ^ v6 ^ [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_lessThan55mHistogram hash];
  v8 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_lessThan200mHistogram hash];
  return v7 ^ v8 ^ [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_anyPositiveHistogram hash];
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 64);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(from + 2);
    *&self->_has |= 2u;
    v5 = *(from + 64);
  }

  if (v5)
  {
    self->_duration = *(from + 1);
    *&self->_has |= 1u;
  }

  lessThan10mHistogram = self->_lessThan10mHistogram;
  v7 = *(from + 4);
  if (lessThan10mHistogram)
  {
    if (v7)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)lessThan10mHistogram mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(AWDCoreRoutineLocationAwarenessLocationTimeHistograms *)self setLessThan10mHistogram:?];
  }

  lessThan20mHistogram = self->_lessThan20mHistogram;
  v9 = *(from + 6);
  if (lessThan20mHistogram)
  {
    if (v9)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)lessThan20mHistogram mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(AWDCoreRoutineLocationAwarenessLocationTimeHistograms *)self setLessThan20mHistogram:?];
  }

  lessThan55mHistogram = self->_lessThan55mHistogram;
  v11 = *(from + 7);
  if (lessThan55mHistogram)
  {
    if (v11)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)lessThan55mHistogram mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(AWDCoreRoutineLocationAwarenessLocationTimeHistograms *)self setLessThan55mHistogram:?];
  }

  lessThan200mHistogram = self->_lessThan200mHistogram;
  v13 = *(from + 5);
  if (lessThan200mHistogram)
  {
    if (v13)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)lessThan200mHistogram mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(AWDCoreRoutineLocationAwarenessLocationTimeHistograms *)self setLessThan200mHistogram:?];
  }

  anyPositiveHistogram = self->_anyPositiveHistogram;
  v15 = *(from + 3);
  if (anyPositiveHistogram)
  {
    if (v15)
    {

      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)anyPositiveHistogram mergeFrom:?];
    }
  }

  else if (v15)
  {

    [(AWDCoreRoutineLocationAwarenessLocationTimeHistograms *)self setAnyPositiveHistogram:?];
  }
}

@end