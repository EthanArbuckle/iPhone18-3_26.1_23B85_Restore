@interface AWDWRMStreamingReport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInstValues:(id)values;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasCounter:(BOOL)counter;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasDurationLPM:(BOOL)m;
- (void)setHasDurationOffline:(BOOL)offline;
- (void)setHasIsEnd:(BOOL)end;
- (void)setHasLPM:(BOOL)m;
- (void)setHasNumStall:(BOOL)stall;
- (void)setHasOffline:(BOOL)offline;
- (void)setHasOnline:(BOOL)online;
- (void)setHasSamplePeriods:(BOOL)periods;
- (void)writeTo:(id)to;
@end

@implementation AWDWRMStreamingReport

- (void)dealloc
{
  [(AWDWRMStreamingReport *)self setInstValues:0];
  v3.receiver = self;
  v3.super_class = AWDWRMStreamingReport;
  [(AWDWRMStreamingReport *)&v3 dealloc];
}

- (void)setHasSamplePeriods:(BOOL)periods
{
  if (periods)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasIsEnd:(BOOL)end
{
  if (end)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasNumStall:(BOOL)stall
{
  if (stall)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasLPM:(BOOL)m
{
  if (m)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasOnline:(BOOL)online
{
  if (online)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasOffline:(BOOL)offline
{
  if (offline)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasDurationLPM:(BOOL)m
{
  if (m)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasDurationOffline:(BOOL)offline
{
  if (offline)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)addInstValues:(id)values
{
  instValues = self->_instValues;
  if (!instValues)
  {
    instValues = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_instValues = instValues;
  }

  [(NSMutableArray *)instValues addObject:values];
}

- (void)setHasCounter:(BOOL)counter
{
  if (counter)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWRMStreamingReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWRMStreamingReport description](&v3, sel_description), -[AWDWRMStreamingReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_samplePeriods), @"sample_periods"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_duration), @"duration"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isEnd), @"isEnd"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numStall), @"num_stall"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_lPM), @"LPM"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_online), @"online"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_offline), @"offline"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_32:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_durationLPM), @"duration_LPM"}];
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_durationOffline), @"duration_offline"}];
  }

LABEL_12:
  if ([(NSMutableArray *)self->_instValues count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_instValues, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    instValues = self->_instValues;
    v7 = [(NSMutableArray *)instValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(instValues);
          }

          [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)instValues countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"inst_values"];
  }

  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_counter), @"counter"}];
  }

  v11 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  samplePeriods = self->_samplePeriods;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  isEnd = self->_isEnd;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  numStall = self->_numStall;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  lPM = self->_lPM;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  online = self->_online;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  offline = self->_offline;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_30:
  durationLPM = self->_durationLPM;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    durationOffline = self->_durationOffline;
    PBDataWriterWriteUint32Field();
  }

LABEL_12:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  instValues = self->_instValues;
  v7 = [(NSMutableArray *)instValues countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(instValues);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)instValues countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  if ((*&self->_has & 2) != 0)
  {
    counter = self->_counter;
    PBDataWriterWriteUint32Field();
  }

  v13 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 26) |= 1u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(to + 11) = self->_samplePeriods;
  *(to + 26) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 5) = self->_duration;
  *(to + 26) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 48) = self->_isEnd;
  *(to + 26) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 10) = self->_numStall;
  *(to + 26) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 49) = self->_lPM;
  *(to + 26) |= 0x100u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 51) = self->_online;
  *(to + 26) |= 0x400u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_27:
    *(to + 6) = self->_durationLPM;
    *(to + 26) |= 8u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_26:
  *(to + 50) = self->_offline;
  *(to + 26) |= 0x200u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_27;
  }

LABEL_10:
  if ((has & 0x10) != 0)
  {
LABEL_11:
    *(to + 7) = self->_durationOffline;
    *(to + 26) |= 0x10u;
  }

LABEL_12:
  if ([(AWDWRMStreamingReport *)self instValuesCount])
  {
    [to clearInstValues];
    instValuesCount = [(AWDWRMStreamingReport *)self instValuesCount];
    if (instValuesCount)
    {
      v7 = instValuesCount;
      for (i = 0; i != v7; ++i)
      {
        [to addInstValues:{-[AWDWRMStreamingReport instValuesAtIndex:](self, "instValuesAtIndex:", i)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(to + 4) = self->_counter;
    *(to + 26) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 52) |= 1u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 44) = self->_samplePeriods;
  *(v5 + 52) |= 0x40u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 20) = self->_duration;
  *(v5 + 52) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 48) = self->_isEnd;
  *(v5 + 52) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 40) = self->_numStall;
  *(v5 + 52) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 49) = self->_lPM;
  *(v5 + 52) |= 0x100u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 51) = self->_online;
  *(v5 + 52) |= 0x400u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 50) = self->_offline;
  *(v5 + 52) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_30:
  *(v5 + 24) = self->_durationLPM;
  *(v5 + 52) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_11:
    *(v5 + 28) = self->_durationOffline;
    *(v5 + 52) |= 0x10u;
  }

LABEL_12:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  instValues = self->_instValues;
  v9 = [(NSMutableArray *)instValues countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(instValues);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:zone];
        [v6 addInstValues:v13];
      }

      v10 = [(NSMutableArray *)instValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_counter;
    *(v6 + 52) |= 2u;
  }

  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(equal + 26);
  if (has)
  {
    if ((v7 & 1) == 0 || self->_timestamp != *(equal + 1))
    {
      goto LABEL_71;
    }
  }

  else if (v7)
  {
    goto LABEL_71;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_samplePeriods != *(equal + 11))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_duration != *(equal + 5))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_71;
    }

    v8 = *(equal + 48);
    if (self->_isEnd)
    {
      if ((*(equal + 48) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    else if (*(equal + 48))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_numStall != *(equal + 10))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_71;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equal + 26) & 0x100) == 0)
    {
      goto LABEL_71;
    }

    v9 = *(equal + 49);
    if (self->_lPM)
    {
      if ((*(equal + 49) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    else if (*(equal + 49))
    {
      goto LABEL_71;
    }
  }

  else if ((*(equal + 26) & 0x100) != 0)
  {
    goto LABEL_71;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equal + 26) & 0x400) == 0)
    {
      goto LABEL_71;
    }

    v10 = *(equal + 51);
    if (self->_online)
    {
      if ((*(equal + 51) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    else if (*(equal + 51))
    {
      goto LABEL_71;
    }
  }

  else if ((*(equal + 26) & 0x400) != 0)
  {
    goto LABEL_71;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equal + 26) & 0x200) != 0)
    {
      v11 = *(equal + 50);
      if (self->_offline)
      {
        if ((*(equal + 50) & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else if (*(equal + 50))
      {
        goto LABEL_71;
      }

      goto LABEL_34;
    }

LABEL_71:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(equal + 26) & 0x200) != 0)
  {
    goto LABEL_71;
  }

LABEL_34:
  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_durationLPM != *(equal + 6))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_71;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_durationOffline != *(equal + 7))
    {
      goto LABEL_71;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_71;
  }

  instValues = self->_instValues;
  if (instValues | *(equal + 4))
  {
    v5 = [(NSMutableArray *)instValues isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  v13 = *(equal + 26);
  LOBYTE(v5) = (v13 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v13 & 2) == 0 || self->_counter != *(equal + 4))
    {
      goto LABEL_71;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v16 = 2654435761u * self->_timestamp;
    if ((has & 0x40) != 0)
    {
LABEL_3:
      v15 = 2654435761 * self->_samplePeriods;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v14 = 2654435761 * self->_duration;
    if ((has & 0x80) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v14 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_5:
    v4 = 2654435761 * self->_isEnd;
    if ((has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_6:
    v5 = 2654435761 * self->_numStall;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_7:
    v6 = 2654435761 * self->_lPM;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_8:
    v7 = 2654435761 * self->_online;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_9:
    v8 = 2654435761 * self->_offline;
    if ((has & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v9 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_19:
  v8 = 0;
  if ((has & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v9 = 2654435761 * self->_durationLPM;
  if ((has & 0x10) != 0)
  {
LABEL_11:
    v10 = 2654435761 * self->_durationOffline;
    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
LABEL_22:
  v11 = [(NSMutableArray *)self->_instValues hash];
  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761 * self->_counter;
  }

  else
  {
    v12 = 0;
  }

  return v15 ^ v16 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v11;
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = *(from + 26);
  if (v5)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v5 = *(from + 26);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self->_samplePeriods = *(from + 11);
  *&self->_has |= 0x40u;
  v5 = *(from + 26);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_duration = *(from + 5);
  *&self->_has |= 4u;
  v5 = *(from + 26);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_isEnd = *(from + 48);
  *&self->_has |= 0x80u;
  v5 = *(from + 26);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_numStall = *(from + 10);
  *&self->_has |= 0x20u;
  v5 = *(from + 26);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_lPM = *(from + 49);
  *&self->_has |= 0x100u;
  v5 = *(from + 26);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_online = *(from + 51);
  *&self->_has |= 0x400u;
  v5 = *(from + 26);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_offline = *(from + 50);
  *&self->_has |= 0x200u;
  v5 = *(from + 26);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_30:
  self->_durationLPM = *(from + 6);
  *&self->_has |= 8u;
  if ((*(from + 26) & 0x10) != 0)
  {
LABEL_11:
    self->_durationOffline = *(from + 7);
    *&self->_has |= 0x10u;
  }

LABEL_12:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(from + 4);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AWDWRMStreamingReport *)self addInstValues:*(*(&v12 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if ((*(from + 26) & 2) != 0)
  {
    self->_counter = *(from + 4);
    *&self->_has |= 2u;
  }

  v11 = *MEMORY[0x29EDCA608];
}

@end