@interface AWDWiFiMetricsManagerBlacklistedNetworkInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBlacklistingRecord:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasReserverdInfo:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasReserverdInfo:(BOOL)a3
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

- (void)addBlacklistingRecord:(id)a3
{
  blacklistingRecords = self->_blacklistingRecords;
  if (!blacklistingRecords)
  {
    blacklistingRecords = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_blacklistingRecords = blacklistingRecords;
  }

  [(NSMutableArray *)blacklistingRecords addObject:a3];
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
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  v4 = v3;
  ssidHash = self->_ssidHash;
  if (ssidHash)
  {
    [v3 setObject:ssidHash forKey:@"ssidHash"];
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

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (self->_ssidHash)
  {
    [a3 setSsidHash:?];
  }

  has = self->_has;
  if (has)
  {
    *(a3 + 4) = self->_networkFlags;
    *(a3 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(a3 + 5) = self->_reserverdInfo;
    *(a3 + 32) |= 2u;
  }

  if ([(AWDWiFiMetricsManagerBlacklistedNetworkInfo *)self blacklistingRecordsCount])
  {
    [a3 clearBlacklistingRecords];
    v6 = [(AWDWiFiMetricsManagerBlacklistedNetworkInfo *)self blacklistingRecordsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addBlacklistingRecord:{-[AWDWiFiMetricsManagerBlacklistedNetworkInfo blacklistingRecordAtIndex:](self, "blacklistingRecordAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  *(v5 + 24) = [(NSString *)self->_ssidHash copyWithZone:a3];
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

        v12 = [*(*(&v15 + 1) + 8 * i) copyWithZone:a3];
        [v5 addBlacklistingRecord:v12];
      }

      v9 = [(NSMutableArray *)blacklistingRecords countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x29EDCA608];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    ssidHash = self->_ssidHash;
    if (!(ssidHash | *(a3 + 3)) || (v5 = [(NSString *)ssidHash isEqual:?]) != 0)
    {
      v7 = *(a3 + 32);
      if (*&self->_has)
      {
        if ((*(a3 + 32) & 1) == 0 || self->_networkFlags != *(a3 + 4))
        {
          goto LABEL_16;
        }
      }

      else if (*(a3 + 32))
      {
LABEL_16:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((*&self->_has & 2) != 0)
      {
        if ((*(a3 + 32) & 2) == 0 || self->_reserverdInfo != *(a3 + 5))
        {
          goto LABEL_16;
        }
      }

      else if ((*(a3 + 32) & 2) != 0)
      {
        goto LABEL_16;
      }

      blacklistingRecords = self->_blacklistingRecords;
      if (blacklistingRecords | *(a3 + 1))
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

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x29EDCA608];
  if (*(a3 + 3))
  {
    [(AWDWiFiMetricsManagerBlacklistedNetworkInfo *)self setSsidHash:?];
  }

  v5 = *(a3 + 32);
  if (v5)
  {
    self->_networkFlags = *(a3 + 4);
    *&self->_has |= 1u;
    v5 = *(a3 + 32);
  }

  if ((v5 & 2) != 0)
  {
    self->_reserverdInfo = *(a3 + 5);
    *&self->_has |= 2u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(a3 + 1);
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