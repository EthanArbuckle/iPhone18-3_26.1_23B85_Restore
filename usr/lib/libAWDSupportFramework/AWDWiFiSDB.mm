@interface AWDWiFiSDB
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSliceStats:(id)stats;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasRealTimeSessionStateResultingInSubmission:(BOOL)submission;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiSDB

- (void)dealloc
{
  [(AWDWiFiSDB *)self setSliceStats:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiSDB;
  [(AWDWiFiSDB *)&v3 dealloc];
}

- (void)addSliceStats:(id)stats
{
  sliceStats = self->_sliceStats;
  if (!sliceStats)
  {
    sliceStats = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_sliceStats = sliceStats;
  }

  [(NSMutableArray *)sliceStats addObject:stats];
}

- (void)setHasRealTimeSessionStateResultingInSubmission:(BOOL)submission
{
  if (submission)
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
  v3.super_class = AWDWiFiSDB;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiSDB description](&v3, sel_description), -[AWDWiFiSDB dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  if ([(NSMutableArray *)self->_sliceStats count])
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_sliceStats, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    sliceStats = self->_sliceStats;
    v6 = [(NSMutableArray *)sliceStats countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(sliceStats);
          }

          [v4 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)sliceStats countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"sliceStats"];
  }

  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_realTimeSessionStateResultingInSubmission), @"realTimeSessionStateResultingInSubmission"}];
  }

  v10 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  sliceStats = self->_sliceStats;
  v6 = [(NSMutableArray *)sliceStats countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(sliceStats);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)sliceStats countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ((*&self->_has & 2) != 0)
  {
    realTimeSessionStateResultingInSubmission = self->_realTimeSessionStateResultingInSubmission;
    PBDataWriterWriteUint32Field();
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 32) |= 1u;
  }

  if ([(AWDWiFiSDB *)self sliceStatsCount])
  {
    [to clearSliceStats];
    sliceStatsCount = [(AWDWiFiSDB *)self sliceStatsCount];
    if (sliceStatsCount)
    {
      v6 = sliceStatsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addSliceStats:{-[AWDWiFiSDB sliceStatsAtIndex:](self, "sliceStatsAtIndex:", i)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(to + 4) = self->_realTimeSessionStateResultingInSubmission;
    *(to + 32) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 32) |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  sliceStats = self->_sliceStats;
  v8 = [(NSMutableArray *)sliceStats countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(sliceStats);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) copyWithZone:zone];
        [v6 addSliceStats:v12];
      }

      v9 = [(NSMutableArray *)sliceStats countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_realTimeSessionStateResultingInSubmission;
    *(v6 + 32) |= 2u;
  }

  v13 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 32);
    if (has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_14;
      }
    }

    else if (*(equal + 32))
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    sliceStats = self->_sliceStats;
    if (sliceStats | *(equal + 3))
    {
      v5 = [(NSMutableArray *)sliceStats isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    LOBYTE(v5) = (*(equal + 32) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(equal + 32) & 2) == 0 || self->_realTimeSessionStateResultingInSubmission != *(equal + 4))
      {
        goto LABEL_14;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_sliceStats hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_realTimeSessionStateResultingInSubmission;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(from + 32))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(from + 3);
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

        [(AWDWiFiSDB *)self addSliceStats:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if ((*(from + 32) & 2) != 0)
  {
    self->_realTimeSessionStateResultingInSubmission = *(from + 4);
    *&self->_has |= 2u;
  }

  v10 = *MEMORY[0x29EDCA608];
}

@end