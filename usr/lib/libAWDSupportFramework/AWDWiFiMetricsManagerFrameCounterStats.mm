@interface AWDWiFiMetricsManagerFrameCounterStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricsManagerFrameCounterStats

- (void)dealloc
{
  [(AWDWiFiMetricsManagerFrameCounterStats *)self setRxControl:0];
  [(AWDWiFiMetricsManagerFrameCounterStats *)self setTxControl:0];
  [(AWDWiFiMetricsManagerFrameCounterStats *)self setRxData:0];
  [(AWDWiFiMetricsManagerFrameCounterStats *)self setTxData:0];
  [(AWDWiFiMetricsManagerFrameCounterStats *)self setRxManagement:0];
  [(AWDWiFiMetricsManagerFrameCounterStats *)self setTxManagement:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerFrameCounterStats;
  [(AWDWiFiMetricsManagerFrameCounterStats *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerFrameCounterStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerFrameCounterStats description](&v3, sel_description), -[AWDWiFiMetricsManagerFrameCounterStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  rxControl = self->_rxControl;
  if (rxControl)
  {
    [dictionary setObject:-[AWDControlFrames dictionaryRepresentation](rxControl forKey:{"dictionaryRepresentation"), @"rxControl"}];
  }

  txControl = self->_txControl;
  if (txControl)
  {
    [dictionary setObject:-[AWDControlFrames dictionaryRepresentation](txControl forKey:{"dictionaryRepresentation"), @"txControl"}];
  }

  rxData = self->_rxData;
  if (rxData)
  {
    [dictionary setObject:-[AWDDataFrames dictionaryRepresentation](rxData forKey:{"dictionaryRepresentation"), @"rxData"}];
  }

  txData = self->_txData;
  if (txData)
  {
    [dictionary setObject:-[AWDDataFrames dictionaryRepresentation](txData forKey:{"dictionaryRepresentation"), @"txData"}];
  }

  rxManagement = self->_rxManagement;
  if (rxManagement)
  {
    [dictionary setObject:-[AWDManagementFrames dictionaryRepresentation](rxManagement forKey:{"dictionaryRepresentation"), @"rxManagement"}];
  }

  txManagement = self->_txManagement;
  if (txManagement)
  {
    [dictionary setObject:-[AWDManagementFrames dictionaryRepresentation](txManagement forKey:{"dictionaryRepresentation"), @"txManagement"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_rxControl)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_txControl)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_rxData)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_txData)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_rxManagement)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_txManagement)
  {

    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 64) |= 1u;
  }

  if (self->_rxControl)
  {
    [to setRxControl:?];
  }

  if (self->_txControl)
  {
    [to setTxControl:?];
  }

  if (self->_rxData)
  {
    [to setRxData:?];
  }

  if (self->_txData)
  {
    [to setTxData:?];
  }

  if (self->_rxManagement)
  {
    [to setRxManagement:?];
  }

  if (self->_txManagement)
  {

    [to setTxManagement:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 64) |= 1u;
  }

  *(v6 + 16) = [(AWDControlFrames *)self->_rxControl copyWithZone:zone];
  *(v6 + 40) = [(AWDControlFrames *)self->_txControl copyWithZone:zone];

  *(v6 + 24) = [(AWDDataFrames *)self->_rxData copyWithZone:zone];
  *(v6 + 48) = [(AWDDataFrames *)self->_txData copyWithZone:zone];

  *(v6 + 32) = [(AWDManagementFrames *)self->_rxManagement copyWithZone:zone];
  *(v6 + 56) = [(AWDManagementFrames *)self->_txManagement copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 64);
    if (*&self->_has)
    {
      if ((*(equal + 64) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(equal + 64))
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    rxControl = self->_rxControl;
    if (!(rxControl | *(equal + 2)) || (v5 = [(AWDControlFrames *)rxControl isEqual:?]) != 0)
    {
      txControl = self->_txControl;
      if (!(txControl | *(equal + 5)) || (v5 = [(AWDControlFrames *)txControl isEqual:?]) != 0)
      {
        rxData = self->_rxData;
        if (!(rxData | *(equal + 3)) || (v5 = [(AWDDataFrames *)rxData isEqual:?]) != 0)
        {
          txData = self->_txData;
          if (!(txData | *(equal + 6)) || (v5 = [(AWDDataFrames *)txData isEqual:?]) != 0)
          {
            rxManagement = self->_rxManagement;
            if (!(rxManagement | *(equal + 4)) || (v5 = [(AWDManagementFrames *)rxManagement isEqual:?]) != 0)
            {
              txManagement = self->_txManagement;
              if (txManagement | *(equal + 7))
              {

                LOBYTE(v5) = [(AWDManagementFrames *)txManagement isEqual:?];
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

  v4 = [(AWDControlFrames *)self->_rxControl hash]^ v3;
  v5 = [(AWDControlFrames *)self->_txControl hash];
  v6 = v4 ^ v5 ^ [(AWDDataFrames *)self->_rxData hash];
  v7 = [(AWDDataFrames *)self->_txData hash];
  v8 = v7 ^ [(AWDManagementFrames *)self->_rxManagement hash];
  return v6 ^ v8 ^ [(AWDManagementFrames *)self->_txManagement hash];
}

- (void)mergeFrom:(id)from
{
  if (*(from + 64))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  rxControl = self->_rxControl;
  v6 = *(from + 2);
  if (rxControl)
  {
    if (v6)
    {
      [(AWDControlFrames *)rxControl mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(AWDWiFiMetricsManagerFrameCounterStats *)self setRxControl:?];
  }

  txControl = self->_txControl;
  v8 = *(from + 5);
  if (txControl)
  {
    if (v8)
    {
      [(AWDControlFrames *)txControl mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(AWDWiFiMetricsManagerFrameCounterStats *)self setTxControl:?];
  }

  rxData = self->_rxData;
  v10 = *(from + 3);
  if (rxData)
  {
    if (v10)
    {
      [(AWDDataFrames *)rxData mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(AWDWiFiMetricsManagerFrameCounterStats *)self setRxData:?];
  }

  txData = self->_txData;
  v12 = *(from + 6);
  if (txData)
  {
    if (v12)
    {
      [(AWDDataFrames *)txData mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(AWDWiFiMetricsManagerFrameCounterStats *)self setTxData:?];
  }

  rxManagement = self->_rxManagement;
  v14 = *(from + 4);
  if (rxManagement)
  {
    if (v14)
    {
      [(AWDManagementFrames *)rxManagement mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(AWDWiFiMetricsManagerFrameCounterStats *)self setRxManagement:?];
  }

  txManagement = self->_txManagement;
  v16 = *(from + 7);
  if (txManagement)
  {
    if (v16)
    {

      [(AWDManagementFrames *)txManagement mergeFrom:?];
    }
  }

  else if (v16)
  {

    [(AWDWiFiMetricsManagerFrameCounterStats *)self setTxManagement:?];
  }
}

@end