@interface AWDWiFiMetricsManagerBlacklistedNetworkInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBlacklistingRecord:(id)record;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasReserverdInfo:(BOOL)info;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricsManagerBlacklistedNetworkInfo

- (void)dealloc
{
  [(AWDWiFiMetricsManagerBlacklistedNetworkInfo *)self setSsidHash:0];
  [(AWDWiFiMetricsManagerBlacklistedNetworkInfo *)self setBlacklistingRecords:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerBlacklistedNetworkInfo;
  [(AWDWiFiMetricsManagerBlacklistedNetworkInfo *)&v3 dealloc];
}

- (void)setHasReserverdInfo:(BOOL)info
{
  if (info)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addBlacklistingRecord:(id)record
{
  blacklistingRecords = self->_blacklistingRecords;
  if (!blacklistingRecords)
  {
    blacklistingRecords = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_blacklistingRecords = blacklistingRecords;
  }

  [(NSMutableArray *)blacklistingRecords addObject:record];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerBlacklistedNetworkInfo;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerBlacklistedNetworkInfo description](&v3, sel_description), -[AWDWiFiMetricsManagerBlacklistedNetworkInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  ssidHash = self->_ssidHash;
  if (ssidHash)
  {
    [dictionary setObject:ssidHash forKey:@"ssidHash"];
  }

  has = self->_has;
  if (has)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_networkFlags), @"networkFlags"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_reserverdInfo), @"reserverdInfo"}];
  }

  if ([(NSMutableArray *)self->_blacklistingRecords count])
  {
    v7 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_blacklistingRecords, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    blacklistingRecords = self->_blacklistingRecords;
    v9 = [(NSMutableArray *)blacklistingRecords countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(blacklistingRecords);
          }

          [v7 addObject:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v10 = [(NSMutableArray *)blacklistingRecords countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"blacklistingRecord"];
  }

  v13 = *MEMORY[0x29EDCA608];
  return v4;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x29EDCA608];
  if (self->_ssidHash)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    networkFlags = self->_networkFlags;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    reserverdInfo = self->_reserverdInfo;
    PBDataWriterWriteUint32Field();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  blacklistingRecords = self->_blacklistingRecords;
  v8 = [(NSMutableArray *)blacklistingRecords countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(blacklistingRecords);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)blacklistingRecords countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  if (self->_ssidHash)
  {
    [to setSsidHash:?];
  }

  has = self->_has;
  if (has)
  {
    *(to + 4) = self->_networkFlags;
    *(to + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 5) = self->_reserverdInfo;
    *(to + 32) |= 2u;
  }

  if ([(AWDWiFiMetricsManagerBlacklistedNetworkInfo *)self blacklistingRecordsCount])
  {
    [to clearBlacklistingRecords];
    blacklistingRecordsCount = [(AWDWiFiMetricsManagerBlacklistedNetworkInfo *)self blacklistingRecordsCount];
    if (blacklistingRecordsCount)
    {
      v7 = blacklistingRecordsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addBlacklistingRecord:{-[AWDWiFiMetricsManagerBlacklistedNetworkInfo blacklistingRecordAtIndex:](self, "blacklistingRecordAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 24) = [(NSString *)self->_ssidHash copyWithZone:zone];
  has = self->_has;
  if (has)
  {
    *(v5 + 16) = self->_networkFlags;
    *(v5 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 20) = self->_reserverdInfo;
    *(v5 + 32) |= 2u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  blacklistingRecords = self->_blacklistingRecords;
  v8 = [(NSMutableArray *)blacklistingRecords countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(blacklistingRecords);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) copyWithZone:zone];
        [v5 addBlacklistingRecord:v12];
      }

      v9 = [(NSMutableArray *)blacklistingRecords countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x29EDCA608];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    ssidHash = self->_ssidHash;
    if (!(ssidHash | *(equal + 3)) || (v5 = [(NSString *)ssidHash isEqual:?]) != 0)
    {
      v7 = *(equal + 32);
      if (*&self->_has)
      {
        if ((*(equal + 32) & 1) == 0 || self->_networkFlags != *(equal + 4))
        {
          goto LABEL_16;
        }
      }

      else if (*(equal + 32))
      {
LABEL_16:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((*&self->_has & 2) != 0)
      {
        if ((*(equal + 32) & 2) == 0 || self->_reserverdInfo != *(equal + 5))
        {
          goto LABEL_16;
        }
      }

      else if ((*(equal + 32) & 2) != 0)
      {
        goto LABEL_16;
      }

      blacklistingRecords = self->_blacklistingRecords;
      if (blacklistingRecords | *(equal + 1))
      {

        LOBYTE(v5) = [(NSMutableArray *)blacklistingRecords isEqual:?];
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
  v3 = [(NSString *)self->_ssidHash hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_networkFlags;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(NSMutableArray *)self->_blacklistingRecords hash];
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_reserverdInfo;
  return v4 ^ v3 ^ v5 ^ [(NSMutableArray *)self->_blacklistingRecords hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x29EDCA608];
  if (*(from + 3))
  {
    [(AWDWiFiMetricsManagerBlacklistedNetworkInfo *)self setSsidHash:?];
  }

  v5 = *(from + 32);
  if (v5)
  {
    self->_networkFlags = *(from + 4);
    *&self->_has |= 1u;
    v5 = *(from + 32);
  }

  if ((v5 & 2) != 0)
  {
    self->_reserverdInfo = *(from + 5);
    *&self->_has |= 2u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(from + 1);
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

        [(AWDWiFiMetricsManagerBlacklistedNetworkInfo *)self addBlacklistingRecord:*(*(&v12 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x29EDCA608];
}

@end