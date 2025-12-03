@interface WiFiAnalyticsAWDWiFiDPSSnapshot
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WiFiAnalyticsAWDWiFiDPSSnapshot

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWiFiDPSSnapshot;
  v4 = [(WiFiAnalyticsAWDWiFiDPSSnapshot *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiDPSSnapshot *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  txCompletionSnapshotBE = self->_txCompletionSnapshotBE;
  if (txCompletionSnapshotBE)
  {
    dictionaryRepresentation = [(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotBE dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"txCompletionSnapshotBE"];
  }

  txCompletionSnapshotBK = self->_txCompletionSnapshotBK;
  if (txCompletionSnapshotBK)
  {
    dictionaryRepresentation2 = [(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotBK dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"txCompletionSnapshotBK"];
  }

  txCompletionSnapshotVO = self->_txCompletionSnapshotVO;
  if (txCompletionSnapshotVO)
  {
    dictionaryRepresentation3 = [(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotVO dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"txCompletionSnapshotVO"];
  }

  txCompletionSnapshotVI = self->_txCompletionSnapshotVI;
  if (txCompletionSnapshotVI)
  {
    dictionaryRepresentation4 = [(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotVI dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"txCompletionSnapshotVI"];
  }

  btSnapshot = self->_btSnapshot;
  if (btSnapshot)
  {
    dictionaryRepresentation5 = [(WiFiAnalyticsAWDWiFiDPSBTSnapshot *)btSnapshot dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"btSnapshot"];
  }

  awdlSnapshot = self->_awdlSnapshot;
  if (awdlSnapshot)
  {
    dictionaryRepresentation6 = [(WiFiAnalyticsAWDWiFiDPSAWDLSnapshot *)awdlSnapshot dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"awdlSnapshot"];
  }

  rc1Snapshot = self->_rc1Snapshot;
  if (rc1Snapshot)
  {
    dictionaryRepresentation7 = [(WiFiAnalyticsAWDWiFiUsageSnapshot *)rc1Snapshot dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"rc1Snapshot"];
  }

  rc2Snapshot = self->_rc2Snapshot;
  if (rc2Snapshot)
  {
    dictionaryRepresentation8 = [(WiFiAnalyticsAWDWiFiUsageSnapshot *)rc2Snapshot dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"rc2Snapshot"];
  }

  lteSnapshot = self->_lteSnapshot;
  if (lteSnapshot)
  {
    dictionaryRepresentation9 = [(WiFiAnalyticsAWDWiFiUsageSnapshot *)lteSnapshot dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation9 forKey:@"lteSnapshot"];
  }

  nanSnapshot = self->_nanSnapshot;
  if (nanSnapshot)
  {
    dictionaryRepresentation10 = [(WiFiAnalyticsAWDWiFiDPSNANSnapshot *)nanSnapshot dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation10 forKey:@"nanSnapshot"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_txCompletionSnapshotBE)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_txCompletionSnapshotBK)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_txCompletionSnapshotVO)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_txCompletionSnapshotVI)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_btSnapshot)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_awdlSnapshot)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_rc1Snapshot)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_rc2Snapshot)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_lteSnapshot)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_nanSnapshot)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_txCompletionSnapshotBE)
  {
    [toCopy setTxCompletionSnapshotBE:?];
    toCopy = v5;
  }

  if (self->_txCompletionSnapshotBK)
  {
    [v5 setTxCompletionSnapshotBK:?];
    toCopy = v5;
  }

  if (self->_txCompletionSnapshotVO)
  {
    [v5 setTxCompletionSnapshotVO:?];
    toCopy = v5;
  }

  if (self->_txCompletionSnapshotVI)
  {
    [v5 setTxCompletionSnapshotVI:?];
    toCopy = v5;
  }

  if (self->_btSnapshot)
  {
    [v5 setBtSnapshot:?];
    toCopy = v5;
  }

  if (self->_awdlSnapshot)
  {
    [v5 setAwdlSnapshot:?];
    toCopy = v5;
  }

  if (self->_rc1Snapshot)
  {
    [v5 setRc1Snapshot:?];
    toCopy = v5;
  }

  if (self->_rc2Snapshot)
  {
    [v5 setRc2Snapshot:?];
    toCopy = v5;
  }

  if (self->_lteSnapshot)
  {
    [v5 setLteSnapshot:?];
    toCopy = v5;
  }

  if (self->_nanSnapshot)
  {
    [v5 setNanSnapshot:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotBE copyWithZone:zone];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotBK copyWithZone:zone];
  v9 = v5[8];
  v5[8] = v8;

  v10 = [(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotVO copyWithZone:zone];
  v11 = v5[10];
  v5[10] = v10;

  v12 = [(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotVI copyWithZone:zone];
  v13 = v5[9];
  v5[9] = v12;

  v14 = [(WiFiAnalyticsAWDWiFiDPSBTSnapshot *)self->_btSnapshot copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  v16 = [(WiFiAnalyticsAWDWiFiDPSAWDLSnapshot *)self->_awdlSnapshot copyWithZone:zone];
  v17 = v5[1];
  v5[1] = v16;

  v18 = [(WiFiAnalyticsAWDWiFiUsageSnapshot *)self->_rc1Snapshot copyWithZone:zone];
  v19 = v5[5];
  v5[5] = v18;

  v20 = [(WiFiAnalyticsAWDWiFiUsageSnapshot *)self->_rc2Snapshot copyWithZone:zone];
  v21 = v5[6];
  v5[6] = v20;

  v22 = [(WiFiAnalyticsAWDWiFiUsageSnapshot *)self->_lteSnapshot copyWithZone:zone];
  v23 = v5[3];
  v5[3] = v22;

  v24 = [(WiFiAnalyticsAWDWiFiDPSNANSnapshot *)self->_nanSnapshot copyWithZone:zone];
  v25 = v5[4];
  v5[4] = v24;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  txCompletionSnapshotBE = self->_txCompletionSnapshotBE;
  if (txCompletionSnapshotBE | equalCopy[7])
  {
    if (![(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotBE isEqual:?])
    {
      goto LABEL_22;
    }
  }

  txCompletionSnapshotBK = self->_txCompletionSnapshotBK;
  if (txCompletionSnapshotBK | equalCopy[8] && ![(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotBK isEqual:?])
  {
    goto LABEL_22;
  }

  if (((txCompletionSnapshotVO = self->_txCompletionSnapshotVO, !(txCompletionSnapshotVO | equalCopy[10])) || [(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotVO isEqual:?]) && ((txCompletionSnapshotVI = self->_txCompletionSnapshotVI, !(txCompletionSnapshotVI | equalCopy[9])) || [(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotVI isEqual:?]) && ((btSnapshot = self->_btSnapshot, !(btSnapshot | equalCopy[2])) || [(WiFiAnalyticsAWDWiFiDPSBTSnapshot *)btSnapshot isEqual:?]) && ((awdlSnapshot = self->_awdlSnapshot, !(awdlSnapshot | equalCopy[1])) || [(WiFiAnalyticsAWDWiFiDPSAWDLSnapshot *)awdlSnapshot isEqual:?]) && ((rc1Snapshot = self->_rc1Snapshot, !(rc1Snapshot | equalCopy[5])) || [(WiFiAnalyticsAWDWiFiUsageSnapshot *)rc1Snapshot isEqual:?]) && ((rc2Snapshot = self->_rc2Snapshot, !(rc2Snapshot | equalCopy[6])) || [(WiFiAnalyticsAWDWiFiUsageSnapshot *)rc2Snapshot isEqual:?]) && ((lteSnapshot = self->_lteSnapshot, !(lteSnapshot | equalCopy[3])) || [(WiFiAnalyticsAWDWiFiUsageSnapshot *)lteSnapshot isEqual:?]))
  {
    nanSnapshot = self->_nanSnapshot;
    if (nanSnapshot | equalCopy[4])
    {
      v15 = [(WiFiAnalyticsAWDWiFiDPSNANSnapshot *)nanSnapshot isEqual:?];
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
LABEL_22:
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotBE hash];
  v4 = [(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotBK hash]^ v3;
  v5 = [(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotVO hash];
  v6 = v4 ^ v5 ^ [(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)self->_txCompletionSnapshotVI hash];
  v7 = [(WiFiAnalyticsAWDWiFiDPSBTSnapshot *)self->_btSnapshot hash];
  v8 = v7 ^ [(WiFiAnalyticsAWDWiFiDPSAWDLSnapshot *)self->_awdlSnapshot hash];
  v9 = v6 ^ v8 ^ [(WiFiAnalyticsAWDWiFiUsageSnapshot *)self->_rc1Snapshot hash];
  v10 = [(WiFiAnalyticsAWDWiFiUsageSnapshot *)self->_rc2Snapshot hash];
  v11 = v10 ^ [(WiFiAnalyticsAWDWiFiUsageSnapshot *)self->_lteSnapshot hash];
  return v9 ^ v11 ^ [(WiFiAnalyticsAWDWiFiDPSNANSnapshot *)self->_nanSnapshot hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  txCompletionSnapshotBE = self->_txCompletionSnapshotBE;
  v25 = fromCopy;
  v6 = fromCopy[7];
  if (txCompletionSnapshotBE)
  {
    if (v6)
    {
      [(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotBE mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(WiFiAnalyticsAWDWiFiDPSSnapshot *)self setTxCompletionSnapshotBE:?];
  }

  txCompletionSnapshotBK = self->_txCompletionSnapshotBK;
  v8 = v25[8];
  if (txCompletionSnapshotBK)
  {
    if (v8)
    {
      [(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotBK mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(WiFiAnalyticsAWDWiFiDPSSnapshot *)self setTxCompletionSnapshotBK:?];
  }

  txCompletionSnapshotVO = self->_txCompletionSnapshotVO;
  v10 = v25[10];
  if (txCompletionSnapshotVO)
  {
    if (v10)
    {
      [(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotVO mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(WiFiAnalyticsAWDWiFiDPSSnapshot *)self setTxCompletionSnapshotVO:?];
  }

  txCompletionSnapshotVI = self->_txCompletionSnapshotVI;
  v12 = v25[9];
  if (txCompletionSnapshotVI)
  {
    if (v12)
    {
      [(WiFiAnalyticsAWDWiFiDPSPerACTxCompletionSnapshot *)txCompletionSnapshotVI mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(WiFiAnalyticsAWDWiFiDPSSnapshot *)self setTxCompletionSnapshotVI:?];
  }

  btSnapshot = self->_btSnapshot;
  v14 = v25[2];
  if (btSnapshot)
  {
    if (v14)
    {
      [(WiFiAnalyticsAWDWiFiDPSBTSnapshot *)btSnapshot mergeFrom:?];
    }
  }

  else if (v14)
  {
    [(WiFiAnalyticsAWDWiFiDPSSnapshot *)self setBtSnapshot:?];
  }

  awdlSnapshot = self->_awdlSnapshot;
  v16 = v25[1];
  if (awdlSnapshot)
  {
    if (v16)
    {
      [(WiFiAnalyticsAWDWiFiDPSAWDLSnapshot *)awdlSnapshot mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(WiFiAnalyticsAWDWiFiDPSSnapshot *)self setAwdlSnapshot:?];
  }

  rc1Snapshot = self->_rc1Snapshot;
  v18 = v25[5];
  if (rc1Snapshot)
  {
    if (v18)
    {
      [(WiFiAnalyticsAWDWiFiUsageSnapshot *)rc1Snapshot mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(WiFiAnalyticsAWDWiFiDPSSnapshot *)self setRc1Snapshot:?];
  }

  rc2Snapshot = self->_rc2Snapshot;
  v20 = v25[6];
  if (rc2Snapshot)
  {
    if (v20)
    {
      [(WiFiAnalyticsAWDWiFiUsageSnapshot *)rc2Snapshot mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(WiFiAnalyticsAWDWiFiDPSSnapshot *)self setRc2Snapshot:?];
  }

  lteSnapshot = self->_lteSnapshot;
  v22 = v25[3];
  if (lteSnapshot)
  {
    if (v22)
    {
      [(WiFiAnalyticsAWDWiFiUsageSnapshot *)lteSnapshot mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(WiFiAnalyticsAWDWiFiDPSSnapshot *)self setLteSnapshot:?];
  }

  nanSnapshot = self->_nanSnapshot;
  v24 = v25[4];
  if (nanSnapshot)
  {
    if (v24)
    {
      [(WiFiAnalyticsAWDWiFiDPSNANSnapshot *)nanSnapshot mergeFrom:?];
    }
  }

  else if (v24)
  {
    [(WiFiAnalyticsAWDWiFiDPSSnapshot *)self setNanSnapshot:?];
  }
}

@end