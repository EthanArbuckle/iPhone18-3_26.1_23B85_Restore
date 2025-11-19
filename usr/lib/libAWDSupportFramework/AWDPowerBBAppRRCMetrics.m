@interface AWDPowerBBAppRRCMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAppConnStats:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasNumRRCConnections:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDPowerBBAppRRCMetrics

- (void)dealloc
{
  [(AWDPowerBBAppRRCMetrics *)self setAppConnStats:0];
  v3.receiver = self;
  v3.super_class = AWDPowerBBAppRRCMetrics;
  [(AWDPowerBBAppRRCMetrics *)&v3 dealloc];
}

- (void)addAppConnStats:(id)a3
{
  appConnStats = self->_appConnStats;
  if (!appConnStats)
  {
    appConnStats = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_appConnStats = appConnStats;
  }

  [(NSMutableArray *)appConnStats addObject:a3];
}

- (void)setHasNumRRCConnections:(BOOL)a3
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
  v3.super_class = AWDPowerBBAppRRCMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPowerBBAppRRCMetrics description](&v3, sel_description), -[AWDPowerBBAppRRCMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  if ([(NSMutableArray *)self->_appConnStats count])
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_appConnStats, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    appConnStats = self->_appConnStats;
    v6 = [(NSMutableArray *)appConnStats countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(appConnStats);
          }

          [v4 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)appConnStats countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"appConnStats"];
  }

  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numRRCConnections), @"numRRCConnections"}];
  }

  v10 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
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
  appConnStats = self->_appConnStats;
  v6 = [(NSMutableArray *)appConnStats countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(appConnStats);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)appConnStats countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ((*&self->_has & 2) != 0)
  {
    numRRCConnections = self->_numRRCConnections;
    PBDataWriterWriteUint32Field();
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 28) |= 1u;
  }

  if ([(AWDPowerBBAppRRCMetrics *)self appConnStatsCount])
  {
    [a3 clearAppConnStats];
    v5 = [(AWDPowerBBAppRRCMetrics *)self appConnStatsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addAppConnStats:{-[AWDPowerBBAppRRCMetrics appConnStatsAtIndex:](self, "appConnStatsAtIndex:", i)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 6) = self->_numRRCConnections;
    *(a3 + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 28) |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  appConnStats = self->_appConnStats;
  v8 = [(NSMutableArray *)appConnStats countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(appConnStats);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) copyWithZone:a3];
        [v6 addAppConnStats:v12];
      }

      v9 = [(NSMutableArray *)appConnStats countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_numRRCConnections;
    *(v6 + 28) |= 2u;
  }

  v13 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 28);
    if (has)
    {
      if ((*(a3 + 28) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_14;
      }
    }

    else if (*(a3 + 28))
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    appConnStats = self->_appConnStats;
    if (appConnStats | *(a3 + 2))
    {
      v5 = [(NSMutableArray *)appConnStats isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    LOBYTE(v5) = (*(a3 + 28) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(a3 + 28) & 2) == 0 || self->_numRRCConnections != *(a3 + 6))
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

  v4 = [(NSMutableArray *)self->_appConnStats hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_numRRCConnections;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(a3 + 28))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

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

        [(AWDPowerBBAppRRCMetrics *)self addAppConnStats:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if ((*(a3 + 28) & 2) != 0)
  {
    self->_numRRCConnections = *(a3 + 6);
    *&self->_has |= 2u;
  }

  v10 = *MEMORY[0x29EDCA608];
}

@end