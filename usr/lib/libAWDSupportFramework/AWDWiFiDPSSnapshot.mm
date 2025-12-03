@interface AWDWiFiDPSSnapshot
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

@implementation AWDWiFiDPSSnapshot

- (void)dealloc
{
  [(AWDWiFiDPSSnapshot *)self setTxCompletionSnapshotBE:0];
  [(AWDWiFiDPSSnapshot *)self setTxCompletionSnapshotBK:0];
  [(AWDWiFiDPSSnapshot *)self setTxCompletionSnapshotVO:0];
  [(AWDWiFiDPSSnapshot *)self setTxCompletionSnapshotVI:0];
  [(AWDWiFiDPSSnapshot *)self setBtSnapshot:0];
  [(AWDWiFiDPSSnapshot *)self setAwdlSnapshot:0];
  [(AWDWiFiDPSSnapshot *)self setRc1Snapshot:0];
  [(AWDWiFiDPSSnapshot *)self setRc2Snapshot:0];
  [(AWDWiFiDPSSnapshot *)self setLteSnapshot:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiDPSSnapshot;
  [(AWDWiFiDPSSnapshot *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiDPSSnapshot;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiDPSSnapshot description](&v3, sel_description), -[AWDWiFiDPSSnapshot dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  txCompletionSnapshotBE = self->_txCompletionSnapshotBE;
  if (txCompletionSnapshotBE)
  {
    [dictionary setObject:-[AWDWiFiDPSPerACTxCompletionSnapshot dictionaryRepresentation](txCompletionSnapshotBE forKey:{"dictionaryRepresentation"), @"txCompletionSnapshotBE"}];
  }

  txCompletionSnapshotBK = self->_txCompletionSnapshotBK;
  if (txCompletionSnapshotBK)
  {
    [dictionary setObject:-[AWDWiFiDPSPerACTxCompletionSnapshot dictionaryRepresentation](txCompletionSnapshotBK forKey:{"dictionaryRepresentation"), @"txCompletionSnapshotBK"}];
  }

  txCompletionSnapshotVO = self->_txCompletionSnapshotVO;
  if (txCompletionSnapshotVO)
  {
    [dictionary setObject:-[AWDWiFiDPSPerACTxCompletionSnapshot dictionaryRepresentation](txCompletionSnapshotVO forKey:{"dictionaryRepresentation"), @"txCompletionSnapshotVO"}];
  }

  txCompletionSnapshotVI = self->_txCompletionSnapshotVI;
  if (txCompletionSnapshotVI)
  {
    [dictionary setObject:-[AWDWiFiDPSPerACTxCompletionSnapshot dictionaryRepresentation](txCompletionSnapshotVI forKey:{"dictionaryRepresentation"), @"txCompletionSnapshotVI"}];
  }

  btSnapshot = self->_btSnapshot;
  if (btSnapshot)
  {
    [dictionary setObject:-[AWDWiFiDPSBTSnapshot dictionaryRepresentation](btSnapshot forKey:{"dictionaryRepresentation"), @"btSnapshot"}];
  }

  awdlSnapshot = self->_awdlSnapshot;
  if (awdlSnapshot)
  {
    [dictionary setObject:-[AWDWiFiDPSAWDLSnapshot dictionaryRepresentation](awdlSnapshot forKey:{"dictionaryRepresentation"), @"awdlSnapshot"}];
  }

  rc1Snapshot = self->_rc1Snapshot;
  if (rc1Snapshot)
  {
    [dictionary setObject:-[AWDWiFiUsageSnapshot dictionaryRepresentation](rc1Snapshot forKey:{"dictionaryRepresentation"), @"rc1Snapshot"}];
  }

  rc2Snapshot = self->_rc2Snapshot;
  if (rc2Snapshot)
  {
    [dictionary setObject:-[AWDWiFiUsageSnapshot dictionaryRepresentation](rc2Snapshot forKey:{"dictionaryRepresentation"), @"rc2Snapshot"}];
  }

  lteSnapshot = self->_lteSnapshot;
  if (lteSnapshot)
  {
    [dictionary setObject:-[AWDWiFiUsageSnapshot dictionaryRepresentation](lteSnapshot forKey:{"dictionaryRepresentation"), @"lteSnapshot"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_txCompletionSnapshotBE)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_txCompletionSnapshotBK)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_txCompletionSnapshotVO)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_txCompletionSnapshotVI)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_btSnapshot)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_awdlSnapshot)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_rc1Snapshot)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_rc2Snapshot)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_lteSnapshot)
  {

    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  if (self->_txCompletionSnapshotBE)
  {
    [to setTxCompletionSnapshotBE:?];
  }

  if (self->_txCompletionSnapshotBK)
  {
    [to setTxCompletionSnapshotBK:?];
  }

  if (self->_txCompletionSnapshotVO)
  {
    [to setTxCompletionSnapshotVO:?];
  }

  if (self->_txCompletionSnapshotVI)
  {
    [to setTxCompletionSnapshotVI:?];
  }

  if (self->_btSnapshot)
  {
    [to setBtSnapshot:?];
  }

  if (self->_awdlSnapshot)
  {
    [to setAwdlSnapshot:?];
  }

  if (self->_rc1Snapshot)
  {
    [to setRc1Snapshot:?];
  }

  if (self->_rc2Snapshot)
  {
    [to setRc2Snapshot:?];
  }

  if (self->_lteSnapshot)
  {

    [to setLteSnapshot:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  v5[6] = [(AWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotBE copyWithZone:zone];
  v5[7] = [(AWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotBK copyWithZone:zone];

  v5[9] = [(AWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotVO copyWithZone:zone];
  v5[8] = [(AWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotVI copyWithZone:zone];

  v5[2] = [(AWDWiFiDPSBTSnapshot *)self->_btSnapshot copyWithZone:zone];
  v5[1] = [(AWDWiFiDPSAWDLSnapshot *)self->_awdlSnapshot copyWithZone:zone];

  v5[4] = [(AWDWiFiUsageSnapshot *)self->_rc1Snapshot copyWithZone:zone];
  v5[5] = [(AWDWiFiUsageSnapshot *)self->_rc2Snapshot copyWithZone:zone];

  v5[3] = [(AWDWiFiUsageSnapshot *)self->_lteSnapshot copyWithZone:zone];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    txCompletionSnapshotBE = self->_txCompletionSnapshotBE;
    if (!(txCompletionSnapshotBE | *(equal + 6)) || (v5 = [(AWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotBE isEqual:?]) != 0)
    {
      txCompletionSnapshotBK = self->_txCompletionSnapshotBK;
      if (!(txCompletionSnapshotBK | *(equal + 7)) || (v5 = [(AWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotBK isEqual:?]) != 0)
      {
        txCompletionSnapshotVO = self->_txCompletionSnapshotVO;
        if (!(txCompletionSnapshotVO | *(equal + 9)) || (v5 = [(AWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotVO isEqual:?]) != 0)
        {
          txCompletionSnapshotVI = self->_txCompletionSnapshotVI;
          if (!(txCompletionSnapshotVI | *(equal + 8)) || (v5 = [(AWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotVI isEqual:?]) != 0)
          {
            btSnapshot = self->_btSnapshot;
            if (!(btSnapshot | *(equal + 2)) || (v5 = [(AWDWiFiDPSBTSnapshot *)btSnapshot isEqual:?]) != 0)
            {
              awdlSnapshot = self->_awdlSnapshot;
              if (!(awdlSnapshot | *(equal + 1)) || (v5 = [(AWDWiFiDPSAWDLSnapshot *)awdlSnapshot isEqual:?]) != 0)
              {
                rc1Snapshot = self->_rc1Snapshot;
                if (!(rc1Snapshot | *(equal + 4)) || (v5 = [(AWDWiFiUsageSnapshot *)rc1Snapshot isEqual:?]) != 0)
                {
                  rc2Snapshot = self->_rc2Snapshot;
                  if (!(rc2Snapshot | *(equal + 5)) || (v5 = [(AWDWiFiUsageSnapshot *)rc2Snapshot isEqual:?]) != 0)
                  {
                    lteSnapshot = self->_lteSnapshot;
                    if (lteSnapshot | *(equal + 3))
                    {

                      LOBYTE(v5) = [(AWDWiFiUsageSnapshot *)lteSnapshot isEqual:?];
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
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(AWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotBE hash];
  v4 = [(AWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotBK hash]^ v3;
  v5 = [(AWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotVO hash];
  v6 = v4 ^ v5 ^ [(AWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotVI hash];
  v7 = [(AWDWiFiDPSBTSnapshot *)self->_btSnapshot hash];
  v8 = v7 ^ [(AWDWiFiDPSAWDLSnapshot *)self->_awdlSnapshot hash];
  v9 = v6 ^ v8 ^ [(AWDWiFiUsageSnapshot *)self->_rc1Snapshot hash];
  v10 = [(AWDWiFiUsageSnapshot *)self->_rc2Snapshot hash];
  return v9 ^ v10 ^ [(AWDWiFiUsageSnapshot *)self->_lteSnapshot hash];
}

- (void)mergeFrom:(id)from
{
  txCompletionSnapshotBE = self->_txCompletionSnapshotBE;
  v6 = *(from + 6);
  if (txCompletionSnapshotBE)
  {
    if (v6)
    {
      [(AWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotBE mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(AWDWiFiDPSSnapshot *)self setTxCompletionSnapshotBE:?];
  }

  txCompletionSnapshotBK = self->_txCompletionSnapshotBK;
  v8 = *(from + 7);
  if (txCompletionSnapshotBK)
  {
    if (v8)
    {
      [(AWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotBK mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(AWDWiFiDPSSnapshot *)self setTxCompletionSnapshotBK:?];
  }

  txCompletionSnapshotVO = self->_txCompletionSnapshotVO;
  v10 = *(from + 9);
  if (txCompletionSnapshotVO)
  {
    if (v10)
    {
      [(AWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotVO mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(AWDWiFiDPSSnapshot *)self setTxCompletionSnapshotVO:?];
  }

  txCompletionSnapshotVI = self->_txCompletionSnapshotVI;
  v12 = *(from + 8);
  if (txCompletionSnapshotVI)
  {
    if (v12)
    {
      [(AWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotVI mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(AWDWiFiDPSSnapshot *)self setTxCompletionSnapshotVI:?];
  }

  btSnapshot = self->_btSnapshot;
  v14 = *(from + 2);
  if (btSnapshot)
  {
    if (v14)
    {
      [(AWDWiFiDPSBTSnapshot *)btSnapshot mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(AWDWiFiDPSSnapshot *)self setBtSnapshot:?];
  }

  awdlSnapshot = self->_awdlSnapshot;
  v16 = *(from + 1);
  if (awdlSnapshot)
  {
    if (v16)
    {
      [(AWDWiFiDPSAWDLSnapshot *)awdlSnapshot mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(AWDWiFiDPSSnapshot *)self setAwdlSnapshot:?];
  }

  rc1Snapshot = self->_rc1Snapshot;
  v18 = *(from + 4);
  if (rc1Snapshot)
  {
    if (v18)
    {
      [(AWDWiFiUsageSnapshot *)rc1Snapshot mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(AWDWiFiDPSSnapshot *)self setRc1Snapshot:?];
  }

  rc2Snapshot = self->_rc2Snapshot;
  v20 = *(from + 5);
  if (rc2Snapshot)
  {
    if (v20)
    {
      [(AWDWiFiUsageSnapshot *)rc2Snapshot mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(AWDWiFiDPSSnapshot *)self setRc2Snapshot:?];
  }

  lteSnapshot = self->_lteSnapshot;
  v22 = *(from + 3);
  if (lteSnapshot)
  {
    if (v22)
    {

      [(AWDWiFiUsageSnapshot *)lteSnapshot mergeFrom:?];
    }
  }

  else if (v22)
  {

    [(AWDWiFiDPSSnapshot *)self setLteSnapshot:?];
  }
}

@end