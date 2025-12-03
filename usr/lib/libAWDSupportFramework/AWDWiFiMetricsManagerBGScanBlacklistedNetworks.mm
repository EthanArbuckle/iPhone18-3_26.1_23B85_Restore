@interface AWDWiFiMetricsManagerBGScanBlacklistedNetworks
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBlacklistingHistory:(id)history;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricsManagerBGScanBlacklistedNetworks

- (void)dealloc
{
  [(AWDWiFiMetricsManagerBGScanBlacklistedNetworks *)self setInterfaceName:0];
  [(AWDWiFiMetricsManagerBGScanBlacklistedNetworks *)self setBlacklistingHistorys:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerBGScanBlacklistedNetworks;
  [(AWDWiFiMetricsManagerBGScanBlacklistedNetworks *)&v3 dealloc];
}

- (void)addBlacklistingHistory:(id)history
{
  blacklistingHistorys = self->_blacklistingHistorys;
  if (!blacklistingHistorys)
  {
    blacklistingHistorys = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_blacklistingHistorys = blacklistingHistorys;
  }

  [(NSMutableArray *)blacklistingHistorys addObject:history];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerBGScanBlacklistedNetworks;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerBGScanBlacklistedNetworks description](&v3, sel_description), -[AWDWiFiMetricsManagerBGScanBlacklistedNetworks dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  interfaceName = self->_interfaceName;
  if (interfaceName)
  {
    [dictionary setObject:interfaceName forKey:@"interfaceName"];
  }

  if ([(NSMutableArray *)self->_blacklistingHistorys count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_blacklistingHistorys, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    blacklistingHistorys = self->_blacklistingHistorys;
    v7 = [(NSMutableArray *)blacklistingHistorys countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(blacklistingHistorys);
          }

          [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)blacklistingHistorys countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"blacklistingHistory"];
  }

  v11 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_interfaceName)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  blacklistingHistorys = self->_blacklistingHistorys;
  v6 = [(NSMutableArray *)blacklistingHistorys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(blacklistingHistorys);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)blacklistingHistorys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 32) |= 1u;
  }

  if (self->_interfaceName)
  {
    [to setInterfaceName:?];
  }

  if ([(AWDWiFiMetricsManagerBGScanBlacklistedNetworks *)self blacklistingHistorysCount])
  {
    [to clearBlacklistingHistorys];
    blacklistingHistorysCount = [(AWDWiFiMetricsManagerBGScanBlacklistedNetworks *)self blacklistingHistorysCount];
    if (blacklistingHistorysCount)
    {
      v6 = blacklistingHistorysCount;
      for (i = 0; i != v6; ++i)
      {
        [to addBlacklistingHistory:{-[AWDWiFiMetricsManagerBGScanBlacklistedNetworks blacklistingHistoryAtIndex:](self, "blacklistingHistoryAtIndex:", i)}];
      }
    }
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

  v6[3] = [(NSString *)self->_interfaceName copyWithZone:zone];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  blacklistingHistorys = self->_blacklistingHistorys;
  v8 = [(NSMutableArray *)blacklistingHistorys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(blacklistingHistorys);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) copyWithZone:zone];
        [v6 addBlacklistingHistory:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)blacklistingHistorys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 32);
    if (*&self->_has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_11;
      }
    }

    else if (*(equal + 32))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    interfaceName = self->_interfaceName;
    if (!(interfaceName | *(equal + 3)) || (v5 = [(NSString *)interfaceName isEqual:?]) != 0)
    {
      blacklistingHistorys = self->_blacklistingHistorys;
      if (blacklistingHistorys | *(equal + 2))
      {

        LOBYTE(v5) = [(NSMutableArray *)blacklistingHistorys isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
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

  v4 = [(NSString *)self->_interfaceName hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_blacklistingHistorys hash];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(from + 32))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 3))
  {
    [(AWDWiFiMetricsManagerBGScanBlacklistedNetworks *)self setInterfaceName:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(from + 2);
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

        [(AWDWiFiMetricsManagerBGScanBlacklistedNetworks *)self addBlacklistingHistory:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x29EDCA608];
}

@end