@interface AWDPowerAudioMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)audioVolumeLevelDurationAtIndex:(unint64_t)index;
- (unsigned)audioVolumeLevelDurationSpeakerAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAudioHeadsetDuration:(BOOL)duration;
- (void)setHasAudioHeadsetPowerMicroWatt:(BOOL)watt;
- (void)setHasAudioSpeakerDuration:(BOOL)duration;
- (void)setHasAudioSpeakerPowerMicroWatt:(BOOL)watt;
- (void)writeTo:(id)to;
@end

@implementation AWDPowerAudioMetrics

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDPowerAudioMetrics;
  [(AWDPowerAudioMetrics *)&v3 dealloc];
}

- (void)setHasAudioSpeakerPowerMicroWatt:(BOOL)watt
{
  if (watt)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasAudioHeadsetPowerMicroWatt:(BOOL)watt
{
  if (watt)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAudioSpeakerDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasAudioHeadsetDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (unsigned)audioVolumeLevelDurationAtIndex:(unint64_t)index
{
  p_audioVolumeLevelDurations = &self->_audioVolumeLevelDurations;
  count = self->_audioVolumeLevelDurations.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_audioVolumeLevelDurations->list[index];
}

- (unsigned)audioVolumeLevelDurationSpeakerAtIndex:(unint64_t)index
{
  p_audioVolumeLevelDurationSpeakers = &self->_audioVolumeLevelDurationSpeakers;
  count = self->_audioVolumeLevelDurationSpeakers.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_audioVolumeLevelDurationSpeakers->list[index];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDPowerAudioMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPowerAudioMetrics description](&v3, sel_description), -[AWDPowerAudioMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_audioSpeakerPowerMicroWatt), @"audioSpeakerPowerMicroWatt"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_audioSpeakerDuration), @"audioSpeakerDuration"}];
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_audioHeadsetPowerMicroWatt), @"audioHeadsetPowerMicroWatt"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_6:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_audioHeadsetDuration), @"audioHeadsetDuration"}];
  }

LABEL_7:
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"audioVolumeLevelDuration"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"audioVolumeLevelDurationSpeaker"];
  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  audioSpeakerPowerMicroWatt = self->_audioSpeakerPowerMicroWatt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  audioHeadsetPowerMicroWatt = self->_audioHeadsetPowerMicroWatt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  audioSpeakerDuration = self->_audioSpeakerDuration;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    audioHeadsetDuration = self->_audioHeadsetDuration;
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
  if (self->_audioVolumeLevelDurations.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_audioVolumeLevelDurations.list[v6];
      PBDataWriterWriteUint32Field();
      ++v6;
    }

    while (v6 < self->_audioVolumeLevelDurations.count);
  }

  p_audioVolumeLevelDurationSpeakers = &self->_audioVolumeLevelDurationSpeakers;
  if (p_audioVolumeLevelDurationSpeakers->count)
  {
    v9 = 0;
    do
    {
      v10 = p_audioVolumeLevelDurationSpeakers->list[v9];
      PBDataWriterWriteUint32Field();
      ++v9;
    }

    while (v9 < p_audioVolumeLevelDurationSpeakers->count);
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 7) = self->_timestamp;
    *(to + 80) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(to + 19) = self->_audioSpeakerPowerMicroWatt;
  *(to + 80) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    *(to + 18) = self->_audioSpeakerDuration;
    *(to + 80) |= 8u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_18:
  *(to + 17) = self->_audioHeadsetPowerMicroWatt;
  *(to + 80) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_6:
    *(to + 16) = self->_audioHeadsetDuration;
    *(to + 80) |= 2u;
  }

LABEL_7:
  if ([(AWDPowerAudioMetrics *)self audioVolumeLevelDurationsCount])
  {
    [to clearAudioVolumeLevelDurations];
    audioVolumeLevelDurationsCount = [(AWDPowerAudioMetrics *)self audioVolumeLevelDurationsCount];
    if (audioVolumeLevelDurationsCount)
    {
      v7 = audioVolumeLevelDurationsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addAudioVolumeLevelDuration:{-[AWDPowerAudioMetrics audioVolumeLevelDurationAtIndex:](self, "audioVolumeLevelDurationAtIndex:", i)}];
      }
    }
  }

  if ([(AWDPowerAudioMetrics *)self audioVolumeLevelDurationSpeakersCount])
  {
    [to clearAudioVolumeLevelDurationSpeakers];
    audioVolumeLevelDurationSpeakersCount = [(AWDPowerAudioMetrics *)self audioVolumeLevelDurationSpeakersCount];
    if (audioVolumeLevelDurationSpeakersCount)
    {
      v10 = audioVolumeLevelDurationSpeakersCount;
      for (j = 0; j != v10; ++j)
      {
        [to addAudioVolumeLevelDurationSpeaker:{-[AWDPowerAudioMetrics audioVolumeLevelDurationSpeakerAtIndex:](self, "audioVolumeLevelDurationSpeakerAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  has = self->_has;
  if (has)
  {
    *(v4 + 56) = self->_timestamp;
    *(v4 + 80) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 76) = self->_audioSpeakerPowerMicroWatt;
  *(v4 + 80) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(v4 + 72) = self->_audioSpeakerDuration;
    *(v4 + 80) |= 8u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_10:
  *(v4 + 68) = self->_audioHeadsetPowerMicroWatt;
  *(v4 + 80) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_6:
    *(v4 + 64) = self->_audioHeadsetDuration;
    *(v4 + 80) |= 2u;
  }

LABEL_7:
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (![equal isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(equal + 80);
  if (*&self->_has)
  {
    if ((*(equal + 80) & 1) == 0 || self->_timestamp != *(equal + 7))
    {
      return 0;
    }
  }

  else if (*(equal + 80))
  {
    return 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equal + 80) & 0x10) == 0 || self->_audioSpeakerPowerMicroWatt != *(equal + 19))
    {
      return 0;
    }
  }

  else if ((*(equal + 80) & 0x10) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equal + 80) & 4) == 0 || self->_audioHeadsetPowerMicroWatt != *(equal + 17))
    {
      return 0;
    }
  }

  else if ((*(equal + 80) & 4) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equal + 80) & 8) == 0 || self->_audioSpeakerDuration != *(equal + 18))
    {
      return 0;
    }
  }

  else if ((*(equal + 80) & 8) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equal + 80) & 2) == 0 || self->_audioHeadsetDuration != *(equal + 16))
    {
      return 0;
    }
  }

  else if ((*(equal + 80) & 2) != 0)
  {
    return 0;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    return 0;
  }

  return PBRepeatedUInt32IsEqual();
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_audioSpeakerPowerMicroWatt;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_audioHeadsetPowerMicroWatt;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_audioSpeakerDuration;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_audioHeadsetDuration;
LABEL_12:
  v7 = v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ PBRepeatedUInt32Hash();
  return v7 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 80);
  if (v5)
  {
    self->_timestamp = *(from + 7);
    *&self->_has |= 1u;
    v5 = *(from + 80);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(from + 80) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_audioSpeakerPowerMicroWatt = *(from + 19);
  *&self->_has |= 0x10u;
  v5 = *(from + 80);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_audioHeadsetPowerMicroWatt = *(from + 17);
  *&self->_has |= 4u;
  v5 = *(from + 80);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  self->_audioSpeakerDuration = *(from + 18);
  *&self->_has |= 8u;
  if ((*(from + 80) & 2) != 0)
  {
LABEL_6:
    self->_audioHeadsetDuration = *(from + 16);
    *&self->_has |= 2u;
  }

LABEL_7:
  audioVolumeLevelDurationsCount = [from audioVolumeLevelDurationsCount];
  if (audioVolumeLevelDurationsCount)
  {
    v7 = audioVolumeLevelDurationsCount;
    for (i = 0; i != v7; ++i)
    {
      -[AWDPowerAudioMetrics addAudioVolumeLevelDuration:](self, "addAudioVolumeLevelDuration:", [from audioVolumeLevelDurationAtIndex:i]);
    }
  }

  audioVolumeLevelDurationSpeakersCount = [from audioVolumeLevelDurationSpeakersCount];
  if (audioVolumeLevelDurationSpeakersCount)
  {
    v10 = audioVolumeLevelDurationSpeakersCount;
    for (j = 0; j != v10; ++j)
    {
      -[AWDPowerAudioMetrics addAudioVolumeLevelDurationSpeaker:](self, "addAudioVolumeLevelDurationSpeaker:", [from audioVolumeLevelDurationSpeakerAtIndex:j]);
    }
  }
}

@end