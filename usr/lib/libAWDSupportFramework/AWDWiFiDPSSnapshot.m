@interface AWDWiFiDPSSnapshot
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
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  txCompletionSnapshotBE = self->_txCompletionSnapshotBE;
  if (txCompletionSnapshotBE)
  {
    [v3 setObject:-[AWDWiFiDPSPerACTxCompletionSnapshot dictionaryRepresentation](txCompletionSnapshotBE forKey:{"dictionaryRepresentation"), @"txCompletionSnapshotBE"}];
  }

  txCompletionSnapshotBK = self->_txCompletionSnapshotBK;
  if (txCompletionSnapshotBK)
  {
    [v3 setObject:-[AWDWiFiDPSPerACTxCompletionSnapshot dictionaryRepresentation](txCompletionSnapshotBK forKey:{"dictionaryRepresentation"), @"txCompletionSnapshotBK"}];
  }

  txCompletionSnapshotVO = self->_txCompletionSnapshotVO;
  if (txCompletionSnapshotVO)
  {
    [v3 setObject:-[AWDWiFiDPSPerACTxCompletionSnapshot dictionaryRepresentation](txCompletionSnapshotVO forKey:{"dictionaryRepresentation"), @"txCompletionSnapshotVO"}];
  }

  txCompletionSnapshotVI = self->_txCompletionSnapshotVI;
  if (txCompletionSnapshotVI)
  {
    [v3 setObject:-[AWDWiFiDPSPerACTxCompletionSnapshot dictionaryRepresentation](txCompletionSnapshotVI forKey:{"dictionaryRepresentation"), @"txCompletionSnapshotVI"}];
  }

  btSnapshot = self->_btSnapshot;
  if (btSnapshot)
  {
    [v3 setObject:-[AWDWiFiDPSBTSnapshot dictionaryRepresentation](btSnapshot forKey:{"dictionaryRepresentation"), @"btSnapshot"}];
  }

  awdlSnapshot = self->_awdlSnapshot;
  if (awdlSnapshot)
  {
    [v3 setObject:-[AWDWiFiDPSAWDLSnapshot dictionaryRepresentation](awdlSnapshot forKey:{"dictionaryRepresentation"), @"awdlSnapshot"}];
  }

  rc1Snapshot = self->_rc1Snapshot;
  if (rc1Snapshot)
  {
    [v3 setObject:-[AWDWiFiUsageSnapshot dictionaryRepresentation](rc1Snapshot forKey:{"dictionaryRepresentation"), @"rc1Snapshot"}];
  }

  rc2Snapshot = self->_rc2Snapshot;
  if (rc2Snapshot)
  {
    [v3 setObject:-[AWDWiFiUsageSnapshot dictionaryRepresentation](rc2Snapshot forKey:{"dictionaryRepresentation"), @"rc2Snapshot"}];
  }

  lteSnapshot = self->_lteSnapshot;
  if (lteSnapshot)
  {
    [v3 setObject:-[AWDWiFiUsageSnapshot dictionaryRepresentation](lteSnapshot forKey:{"dictionaryRepresentation"), @"lteSnapshot"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (self->_txCompletionSnapshotBE)
  {
    [a3 setTxCompletionSnapshotBE:?];
  }

  if (self->_txCompletionSnapshotBK)
  {
    [a3 setTxCompletionSnapshotBK:?];
  }

  if (self->_txCompletionSnapshotVO)
  {
    [a3 setTxCompletionSnapshotVO:?];
  }

  if (self->_txCompletionSnapshotVI)
  {
    [a3 setTxCompletionSnapshotVI:?];
  }

  if (self->_btSnapshot)
  {
    [a3 setBtSnapshot:?];
  }

  if (self->_awdlSnapshot)
  {
    [a3 setAwdlSnapshot:?];
  }

  if (self->_rc1Snapshot)
  {
    [a3 setRc1Snapshot:?];
  }

  if (self->_rc2Snapshot)
  {
    [a3 setRc2Snapshot:?];
  }

  if (self->_lteSnapshot)
  {

    [a3 setLteSnapshot:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  v5[6] = [(AWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotBE copyWithZone:a3];
  v5[7] = [(AWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotBK copyWithZone:a3];

  v5[9] = [(AWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotVO copyWithZone:a3];
  v5[8] = [(AWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotVI copyWithZone:a3];

  v5[2] = [(AWDWiFiDPSBTSnapshot *)self->_btSnapshot copyWithZone:a3];
  v5[1] = [(AWDWiFiDPSAWDLSnapshot *)self->_awdlSnapshot copyWithZone:a3];

  v5[4] = [(AWDWiFiUsageSnapshot *)self->_rc1Snapshot copyWithZone:a3];
  v5[5] = [(AWDWiFiUsageSnapshot *)self->_rc2Snapshot copyWithZone:a3];

  v5[3] = [(AWDWiFiUsageSnapshot *)self->_lteSnapshot copyWithZone:a3];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    txCompletionSnapshotBE = self->_txCompletionSnapshotBE;
    if (!(txCompletionSnapshotBE | *(a3 + 6)) || (v5 = [(AWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotBE isEqual:?]) != 0)
    {
      txCompletionSnapshotBK = self->_txCompletionSnapshotBK;
      if (!(txCompletionSnapshotBK | *(a3 + 7)) || (v5 = [(AWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotBK isEqual:?]) != 0)
      {
        txCompletionSnapshotVO = self->_txCompletionSnapshotVO;
        if (!(txCompletionSnapshotVO | *(a3 + 9)) || (v5 = [(AWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotVO isEqual:?]) != 0)
        {
          txCompletionSnapshotVI = self->_txCompletionSnapshotVI;
          if (!(txCompletionSnapshotVI | *(a3 + 8)) || (v5 = [(AWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotVI isEqual:?]) != 0)
          {
            btSnapshot = self->_btSnapshot;
            if (!(btSnapshot | *(a3 + 2)) || (v5 = [(AWDWiFiDPSBTSnapshot *)btSnapshot isEqual:?]) != 0)
            {
              awdlSnapshot = self->_awdlSnapshot;
              if (!(awdlSnapshot | *(a3 + 1)) || (v5 = [(AWDWiFiDPSAWDLSnapshot *)awdlSnapshot isEqual:?]) != 0)
              {
                rc1Snapshot = self->_rc1Snapshot;
                if (!(rc1Snapshot | *(a3 + 4)) || (v5 = [(AWDWiFiUsageSnapshot *)rc1Snapshot isEqual:?]) != 0)
                {
                  rc2Snapshot = self->_rc2Snapshot;
                  if (!(rc2Snapshot | *(a3 + 5)) || (v5 = [(AWDWiFiUsageSnapshot *)rc2Snapshot isEqual:?]) != 0)
                  {
                    lteSnapshot = self->_lteSnapshot;
                    if (lteSnapshot | *(a3 + 3))
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

- (void)mergeFrom:(id)a3
{
  txCompletionSnapshotBE = self->_txCompletionSnapshotBE;
  v6 = *(a3 + 6);
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
  v8 = *(a3 + 7);
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
  v10 = *(a3 + 9);
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
  v12 = *(a3 + 8);
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
  v14 = *(a3 + 2);
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
  v16 = *(a3 + 1);
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
  v18 = *(a3 + 4);
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
  v20 = *(a3 + 5);
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
  v22 = *(a3 + 3);
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