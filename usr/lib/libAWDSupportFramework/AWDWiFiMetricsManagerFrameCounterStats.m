@interface AWDWiFiMetricsManagerFrameCounterStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  rxControl = self->_rxControl;
  if (rxControl)
  {
    [v3 setObject:-[AWDControlFrames dictionaryRepresentation](rxControl forKey:{"dictionaryRepresentation"), @"rxControl"}];
  }

  txControl = self->_txControl;
  if (txControl)
  {
    [v3 setObject:-[AWDControlFrames dictionaryRepresentation](txControl forKey:{"dictionaryRepresentation"), @"txControl"}];
  }

  rxData = self->_rxData;
  if (rxData)
  {
    [v3 setObject:-[AWDDataFrames dictionaryRepresentation](rxData forKey:{"dictionaryRepresentation"), @"rxData"}];
  }

  txData = self->_txData;
  if (txData)
  {
    [v3 setObject:-[AWDDataFrames dictionaryRepresentation](txData forKey:{"dictionaryRepresentation"), @"txData"}];
  }

  rxManagement = self->_rxManagement;
  if (rxManagement)
  {
    [v3 setObject:-[AWDManagementFrames dictionaryRepresentation](rxManagement forKey:{"dictionaryRepresentation"), @"rxManagement"}];
  }

  txManagement = self->_txManagement;
  if (txManagement)
  {
    [v3 setObject:-[AWDManagementFrames dictionaryRepresentation](txManagement forKey:{"dictionaryRepresentation"), @"txManagement"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 64) |= 1u;
  }

  if (self->_rxControl)
  {
    [a3 setRxControl:?];
  }

  if (self->_txControl)
  {
    [a3 setTxControl:?];
  }

  if (self->_rxData)
  {
    [a3 setRxData:?];
  }

  if (self->_txData)
  {
    [a3 setTxData:?];
  }

  if (self->_rxManagement)
  {
    [a3 setRxManagement:?];
  }

  if (self->_txManagement)
  {

    [a3 setTxManagement:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 64) |= 1u;
  }

  *(v6 + 16) = [(AWDControlFrames *)self->_rxControl copyWithZone:a3];
  *(v6 + 40) = [(AWDControlFrames *)self->_txControl copyWithZone:a3];

  *(v6 + 24) = [(AWDDataFrames *)self->_rxData copyWithZone:a3];
  *(v6 + 48) = [(AWDDataFrames *)self->_txData copyWithZone:a3];

  *(v6 + 32) = [(AWDManagementFrames *)self->_rxManagement copyWithZone:a3];
  *(v6 + 56) = [(AWDManagementFrames *)self->_txManagement copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 64);
    if (*&self->_has)
    {
      if ((*(a3 + 64) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(a3 + 64))
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    rxControl = self->_rxControl;
    if (!(rxControl | *(a3 + 2)) || (v5 = [(AWDControlFrames *)rxControl isEqual:?]) != 0)
    {
      txControl = self->_txControl;
      if (!(txControl | *(a3 + 5)) || (v5 = [(AWDControlFrames *)txControl isEqual:?]) != 0)
      {
        rxData = self->_rxData;
        if (!(rxData | *(a3 + 3)) || (v5 = [(AWDDataFrames *)rxData isEqual:?]) != 0)
        {
          txData = self->_txData;
          if (!(txData | *(a3 + 6)) || (v5 = [(AWDDataFrames *)txData isEqual:?]) != 0)
          {
            rxManagement = self->_rxManagement;
            if (!(rxManagement | *(a3 + 4)) || (v5 = [(AWDManagementFrames *)rxManagement isEqual:?]) != 0)
            {
              txManagement = self->_txManagement;
              if (txManagement | *(a3 + 7))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 64))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  rxControl = self->_rxControl;
  v6 = *(a3 + 2);
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
  v8 = *(a3 + 5);
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
  v10 = *(a3 + 3);
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
  v12 = *(a3 + 6);
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
  v14 = *(a3 + 4);
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
  v16 = *(a3 + 7);
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