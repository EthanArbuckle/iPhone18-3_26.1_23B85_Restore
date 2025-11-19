@interface AWDLibnetcoreMPTCPStatsReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMptcpAggregateAttempt:(BOOL)a3;
- (void)setHasMptcpAggregateCellBytes:(BOOL)a3;
- (void)setHasMptcpBackToWiFi:(BOOL)a3;
- (void)setHasMptcpCellDenied:(BOOL)a3;
- (void)setHasMptcpCellProxy:(BOOL)a3;
- (void)setHasMptcpFirstPartyAggregateAttempt:(BOOL)a3;
- (void)setHasMptcpFirstPartyHandoverAttempt:(BOOL)a3;
- (void)setHasMptcpFirstPartyInteractiveAttempt:(BOOL)a3;
- (void)setHasMptcpHandoverAllBytes:(BOOL)a3;
- (void)setHasMptcpHandoverAttempts:(BOOL)a3;
- (void)setHasMptcpHandoverCellBytes:(BOOL)a3;
- (void)setHasMptcpHandoverCellSubflowFromWiFi:(BOOL)a3;
- (void)setHasMptcpHandoverWiFiSubflowFromCell:(BOOL)a3;
- (void)setHasMptcpHandshakeAggregateSuccess:(BOOL)a3;
- (void)setHasMptcpHandshakeAggregateSuccessFirstParty:(BOOL)a3;
- (void)setHasMptcpHandshakeHandoverSuccessCell:(BOOL)a3;
- (void)setHasMptcpHandshakeHandoverSuccessCellFirstParty:(BOOL)a3;
- (void)setHasMptcpHandshakeHandoverSuccessWiFi:(BOOL)a3;
- (void)setHasMptcpHandshakeHandoverSuccessWiFiFirstParty:(BOOL)a3;
- (void)setHasMptcpHandshakeInteractiveSuccess:(BOOL)a3;
- (void)setHasMptcpHandshakeInteractiveSuccessFirstParty:(BOOL)a3;
- (void)setHasMptcpHeuristicFallback:(BOOL)a3;
- (void)setHasMptcpHeuristicFallbackFirstParty:(BOOL)a3;
- (void)setHasMptcpInteractiveAllBytes:(BOOL)a3;
- (void)setHasMptcpInteractiveAttempt:(BOOL)a3;
- (void)setHasMptcpInteractiveCellBytes:(BOOL)a3;
- (void)setHasMptcpInteractiveCellUsage:(BOOL)a3;
- (void)setHasMptcpTriggeredCell:(BOOL)a3;
- (void)setHasMptcpWiFiProxy:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDLibnetcoreMPTCPStatsReport

- (void)setHasMptcpHandoverAttempts:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasMptcpInteractiveAttempt:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasMptcpAggregateAttempt:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasMptcpFirstPartyHandoverAttempt:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasMptcpFirstPartyInteractiveAttempt:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasMptcpFirstPartyAggregateAttempt:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasMptcpHeuristicFallback:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasMptcpHeuristicFallbackFirstParty:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasMptcpHandshakeHandoverSuccessWiFi:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasMptcpHandshakeHandoverSuccessCell:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasMptcpHandshakeInteractiveSuccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasMptcpHandshakeAggregateSuccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasMptcpHandshakeHandoverSuccessWiFiFirstParty:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasMptcpHandshakeHandoverSuccessCellFirstParty:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasMptcpHandshakeInteractiveSuccessFirstParty:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasMptcpHandshakeAggregateSuccessFirstParty:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasMptcpHandoverCellSubflowFromWiFi:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasMptcpHandoverWiFiSubflowFromCell:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasMptcpInteractiveCellUsage:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xF7FFFFFF | v3);
}

- (void)setHasMptcpHandoverCellBytes:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasMptcpInteractiveCellBytes:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFBFFFFFF | v3);
}

- (void)setHasMptcpAggregateCellBytes:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasMptcpHandoverAllBytes:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasMptcpInteractiveAllBytes:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasMptcpBackToWiFi:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasMptcpCellDenied:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasMptcpCellProxy:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasMptcpWiFiProxy:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xDFFFFFFF | v3);
}

- (void)setHasMptcpTriggeredCell:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xEFFFFFFF | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDLibnetcoreMPTCPStatsReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLibnetcoreMPTCPStatsReport description](&v3, sel_description), -[AWDLibnetcoreMPTCPStatsReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpHandoverAttempts), @"mptcpHandoverAttempts"}];
    has = self->_has;
    if ((*&has & 0x2000000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpInteractiveAttempt), @"mptcpInteractiveAttempt"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpAggregateAttempt), @"mptcpAggregateAttempt"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpFirstPartyHandoverAttempt), @"mptcpFirstPartyHandoverAttempt"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpFirstPartyInteractiveAttempt), @"mptcpFirstPartyInteractiveAttempt"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpFirstPartyAggregateAttempt), @"mptcpFirstPartyAggregateAttempt"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpHeuristicFallback), @"mptcpHeuristicFallback"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpHeuristicFallbackFirstParty), @"mptcpHeuristicFallbackFirstParty"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_10:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpHandshakeHandoverSuccessWiFi), @"mptcpHandshakeHandoverSuccessWiFi"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_11:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpHandshakeHandoverSuccessCell), @"mptcpHandshakeHandoverSuccessCell"}];
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpHandshakeInteractiveSuccess), @"mptcpHandshakeInteractiveSuccess"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpHandshakeAggregateSuccess), @"mptcpHandshakeAggregateSuccess"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_14:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpHandshakeHandoverSuccessWiFiFirstParty), @"mptcpHandshakeHandoverSuccessWiFiFirstParty"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_15:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpHandshakeHandoverSuccessCellFirstParty), @"mptcpHandshakeHandoverSuccessCellFirstParty"}];
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpHandshakeInteractiveSuccessFirstParty), @"mptcpHandshakeInteractiveSuccessFirstParty"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpHandshakeAggregateSuccessFirstParty), @"mptcpHandshakeAggregateSuccessFirstParty"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpHandoverCellSubflowFromWiFi), @"mptcpHandoverCellSubflowFromWiFi"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_19:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpHandoverWiFiSubflowFromCell), @"mptcpHandoverWiFiSubflowFromCell"}];
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpInteractiveCellUsage), @"mptcpInteractiveCellUsage"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_21:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpHandoverCellBytes), @"mptcpHandoverCellBytes"}];
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_22:
    if ((*&has & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpInteractiveCellBytes), @"mptcpInteractiveCellBytes"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_23:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpAggregateCellBytes), @"mptcpAggregateCellBytes"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpHandoverAllBytes), @"mptcpHandoverAllBytes"}];
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_25:
    if ((*&has & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpInteractiveAllBytes), @"mptcpInteractiveAllBytes"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_26:
    if ((*&has & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpAggregateAllBytes), @"mptcpAggregateAllBytes"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_27:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpBackToWiFi), @"mptcpBackToWiFi"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_28:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpCellDenied), @"mptcpCellDenied"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_29:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_61:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpWiFiProxy), @"mptcpWiFiProxy"}];
    if ((*&self->_has & 0x10000000) == 0)
    {
      return v3;
    }

    goto LABEL_31;
  }

LABEL_60:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpCellProxy), @"mptcpCellProxy"}];
  has = self->_has;
  if ((*&has & 0x20000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_30:
  if ((*&has & 0x10000000) != 0)
  {
LABEL_31:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpTriggeredCell), @"mptcpTriggeredCell"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    mptcpHandoverAttempts = self->_mptcpHandoverAttempts;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x2000000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_3;
  }

  mptcpInteractiveAttempt = self->_mptcpInteractiveAttempt;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  mptcpAggregateAttempt = self->_mptcpAggregateAttempt;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  mptcpFirstPartyHandoverAttempt = self->_mptcpFirstPartyHandoverAttempt;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  mptcpFirstPartyInteractiveAttempt = self->_mptcpFirstPartyInteractiveAttempt;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  mptcpFirstPartyAggregateAttempt = self->_mptcpFirstPartyAggregateAttempt;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  mptcpHeuristicFallback = self->_mptcpHeuristicFallback;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  mptcpHeuristicFallbackFirstParty = self->_mptcpHeuristicFallbackFirstParty;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_10:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  mptcpHandshakeHandoverSuccessWiFi = self->_mptcpHandshakeHandoverSuccessWiFi;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_11:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  mptcpHandshakeHandoverSuccessCell = self->_mptcpHandshakeHandoverSuccessCell;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  mptcpHandshakeInteractiveSuccess = self->_mptcpHandshakeInteractiveSuccess;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  mptcpHandshakeAggregateSuccess = self->_mptcpHandshakeAggregateSuccess;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_14:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  mptcpHandshakeHandoverSuccessWiFiFirstParty = self->_mptcpHandshakeHandoverSuccessWiFiFirstParty;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_15:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  mptcpHandshakeHandoverSuccessCellFirstParty = self->_mptcpHandshakeHandoverSuccessCellFirstParty;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  mptcpHandshakeInteractiveSuccessFirstParty = self->_mptcpHandshakeInteractiveSuccessFirstParty;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  mptcpHandshakeAggregateSuccessFirstParty = self->_mptcpHandshakeAggregateSuccessFirstParty;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  mptcpHandoverCellSubflowFromWiFi = self->_mptcpHandoverCellSubflowFromWiFi;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_19:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  mptcpHandoverWiFiSubflowFromCell = self->_mptcpHandoverWiFiSubflowFromCell;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  mptcpInteractiveCellUsage = self->_mptcpInteractiveCellUsage;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_21:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  mptcpHandoverCellBytes = self->_mptcpHandoverCellBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_22:
    if ((*&has & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  mptcpInteractiveCellBytes = self->_mptcpInteractiveCellBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_23:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  mptcpAggregateCellBytes = self->_mptcpAggregateCellBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  mptcpHandoverAllBytes = self->_mptcpHandoverAllBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_25:
    if ((*&has & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  mptcpInteractiveAllBytes = self->_mptcpInteractiveAllBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_26:
    if ((*&has & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  mptcpAggregateAllBytes = self->_mptcpAggregateAllBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_27:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  mptcpBackToWiFi = self->_mptcpBackToWiFi;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_28:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  mptcpCellDenied = self->_mptcpCellDenied;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_29:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    mptcpWiFiProxy = self->_mptcpWiFiProxy;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x10000000) == 0)
    {
      return;
    }

    goto LABEL_61;
  }

LABEL_59:
  mptcpCellProxy = self->_mptcpCellProxy;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  if ((*&has & 0x10000000) == 0)
  {
    return;
  }

LABEL_61:
  mptcpTriggeredCell = self->_mptcpTriggeredCell;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    *(a3 + 11) = self->_mptcpHandoverAttempts;
    *(a3 + 62) |= 0x400u;
    has = self->_has;
    if ((*&has & 0x2000000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 26) = self->_mptcpInteractiveAttempt;
  *(a3 + 62) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(a3 + 2) = self->_mptcpAggregateAttempt;
  *(a3 + 62) |= 2u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(a3 + 8) = self->_mptcpFirstPartyHandoverAttempt;
  *(a3 + 62) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(a3 + 9) = self->_mptcpFirstPartyInteractiveAttempt;
  *(a3 + 62) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(a3 + 7) = self->_mptcpFirstPartyAggregateAttempt;
  *(a3 + 62) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(a3 + 23) = self->_mptcpHeuristicFallback;
  *(a3 + 62) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a3 + 24) = self->_mptcpHeuristicFallbackFirstParty;
  *(a3 + 62) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_10:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(a3 + 19) = self->_mptcpHandshakeHandoverSuccessWiFi;
  *(a3 + 62) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_11:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(a3 + 17) = self->_mptcpHandshakeHandoverSuccessCell;
  *(a3 + 62) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(a3 + 21) = self->_mptcpHandshakeInteractiveSuccess;
  *(a3 + 62) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a3 + 15) = self->_mptcpHandshakeAggregateSuccess;
  *(a3 + 62) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_14:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(a3 + 20) = self->_mptcpHandshakeHandoverSuccessWiFiFirstParty;
  *(a3 + 62) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_15:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(a3 + 18) = self->_mptcpHandshakeHandoverSuccessCellFirstParty;
  *(a3 + 62) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(a3 + 22) = self->_mptcpHandshakeInteractiveSuccessFirstParty;
  *(a3 + 62) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(a3 + 16) = self->_mptcpHandshakeAggregateSuccessFirstParty;
  *(a3 + 62) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(a3 + 13) = self->_mptcpHandoverCellSubflowFromWiFi;
  *(a3 + 62) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_19:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(a3 + 14) = self->_mptcpHandoverWiFiSubflowFromCell;
  *(a3 + 62) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(a3 + 28) = self->_mptcpInteractiveCellUsage;
  *(a3 + 62) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_21:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(a3 + 12) = self->_mptcpHandoverCellBytes;
  *(a3 + 62) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_22:
    if ((*&has & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(a3 + 27) = self->_mptcpInteractiveCellBytes;
  *(a3 + 62) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_23:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(a3 + 3) = self->_mptcpAggregateCellBytes;
  *(a3 + 62) |= 4u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(a3 + 10) = self->_mptcpHandoverAllBytes;
  *(a3 + 62) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_25:
    if ((*&has & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(a3 + 25) = self->_mptcpInteractiveAllBytes;
  *(a3 + 62) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_26:
    if ((*&has & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(a3 + 1) = self->_mptcpAggregateAllBytes;
  *(a3 + 62) |= 1u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_27:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(a3 + 4) = self->_mptcpBackToWiFi;
  *(a3 + 62) |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_28:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a3 + 5) = self->_mptcpCellDenied;
  *(a3 + 62) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_29:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a3 + 6) = self->_mptcpCellProxy;
  *(a3 + 62) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x10000000) == 0)
    {
      return;
    }

LABEL_61:
    *(a3 + 29) = self->_mptcpTriggeredCell;
    *(a3 + 62) |= 0x10000000u;
    return;
  }

LABEL_60:
  *(a3 + 30) = self->_mptcpWiFiProxy;
  *(a3 + 62) |= 0x20000000u;
  if ((*&self->_has & 0x10000000) != 0)
  {
    goto LABEL_61;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    *(result + 11) = self->_mptcpHandoverAttempts;
    *(result + 62) |= 0x400u;
    has = self->_has;
    if ((*&has & 0x2000000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((*&has & 0x2000000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 26) = self->_mptcpInteractiveAttempt;
  *(result + 62) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 2) = self->_mptcpAggregateAttempt;
  *(result + 62) |= 2u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_5:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 8) = self->_mptcpFirstPartyHandoverAttempt;
  *(result + 62) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_6:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 9) = self->_mptcpFirstPartyInteractiveAttempt;
  *(result + 62) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_7:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 7) = self->_mptcpFirstPartyAggregateAttempt;
  *(result + 62) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 23) = self->_mptcpHeuristicFallback;
  *(result + 62) |= 0x400000u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_9:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 24) = self->_mptcpHeuristicFallbackFirstParty;
  *(result + 62) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_10:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(result + 19) = self->_mptcpHandshakeHandoverSuccessWiFi;
  *(result + 62) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_11:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(result + 17) = self->_mptcpHandshakeHandoverSuccessCell;
  *(result + 62) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(result + 21) = self->_mptcpHandshakeInteractiveSuccess;
  *(result + 62) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(result + 15) = self->_mptcpHandshakeAggregateSuccess;
  *(result + 62) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_14:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(result + 20) = self->_mptcpHandshakeHandoverSuccessWiFiFirstParty;
  *(result + 62) |= 0x80000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_15:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(result + 18) = self->_mptcpHandshakeHandoverSuccessCellFirstParty;
  *(result + 62) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(result + 22) = self->_mptcpHandshakeInteractiveSuccessFirstParty;
  *(result + 62) |= 0x200000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(result + 16) = self->_mptcpHandshakeAggregateSuccessFirstParty;
  *(result + 62) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(result + 13) = self->_mptcpHandoverCellSubflowFromWiFi;
  *(result + 62) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_19:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(result + 14) = self->_mptcpHandoverWiFiSubflowFromCell;
  *(result + 62) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(result + 28) = self->_mptcpInteractiveCellUsage;
  *(result + 62) |= 0x8000000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_21:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(result + 12) = self->_mptcpHandoverCellBytes;
  *(result + 62) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_22:
    if ((*&has & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(result + 27) = self->_mptcpInteractiveCellBytes;
  *(result + 62) |= 0x4000000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_23:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(result + 3) = self->_mptcpAggregateCellBytes;
  *(result + 62) |= 4u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(result + 10) = self->_mptcpHandoverAllBytes;
  *(result + 62) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_25:
    if ((*&has & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(result + 25) = self->_mptcpInteractiveAllBytes;
  *(result + 62) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_26:
    if ((*&has & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(result + 1) = self->_mptcpAggregateAllBytes;
  *(result + 62) |= 1u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_27:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(result + 4) = self->_mptcpBackToWiFi;
  *(result + 62) |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_28:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(result + 5) = self->_mptcpCellDenied;
  *(result + 62) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_29:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(result + 6) = self->_mptcpCellProxy;
  *(result + 62) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x10000000) == 0)
    {
      return result;
    }

    goto LABEL_31;
  }

LABEL_61:
  *(result + 30) = self->_mptcpWiFiProxy;
  *(result + 62) |= 0x20000000u;
  if ((*&self->_has & 0x10000000) == 0)
  {
    return result;
  }

LABEL_31:
  *(result + 29) = self->_mptcpTriggeredCell;
  *(result + 62) |= 0x10000000u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 62);
    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_mptcpHandoverAttempts != *(a3 + 11))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
LABEL_151:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 0x2000000) != 0)
    {
      if ((v7 & 0x2000000) == 0 || self->_mptcpInteractiveAttempt != *(a3 + 26))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x2000000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_mptcpAggregateAttempt != *(a3 + 2))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_mptcpFirstPartyHandoverAttempt != *(a3 + 8))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_mptcpFirstPartyInteractiveAttempt != *(a3 + 9))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_mptcpFirstPartyAggregateAttempt != *(a3 + 7))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x400000) != 0)
    {
      if ((v7 & 0x400000) == 0 || self->_mptcpHeuristicFallback != *(a3 + 23))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x400000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x800000) != 0)
    {
      if ((v7 & 0x800000) == 0 || self->_mptcpHeuristicFallbackFirstParty != *(a3 + 24))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x800000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x40000) != 0)
    {
      if ((v7 & 0x40000) == 0 || self->_mptcpHandshakeHandoverSuccessWiFi != *(a3 + 19))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x40000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_mptcpHandshakeHandoverSuccessCell != *(a3 + 17))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x100000) != 0)
    {
      if ((v7 & 0x100000) == 0 || self->_mptcpHandshakeInteractiveSuccess != *(a3 + 21))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x100000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_mptcpHandshakeAggregateSuccess != *(a3 + 15))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x80000) != 0)
    {
      if ((v7 & 0x80000) == 0 || self->_mptcpHandshakeHandoverSuccessWiFiFirstParty != *(a3 + 20))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x80000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v7 & 0x20000) == 0 || self->_mptcpHandshakeHandoverSuccessCellFirstParty != *(a3 + 18))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x20000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x200000) != 0)
    {
      if ((v7 & 0x200000) == 0 || self->_mptcpHandshakeInteractiveSuccessFirstParty != *(a3 + 22))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x200000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_mptcpHandshakeAggregateSuccessFirstParty != *(a3 + 16))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x8000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_mptcpHandoverCellSubflowFromWiFi != *(a3 + 13))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_mptcpHandoverWiFiSubflowFromCell != *(a3 + 14))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x8000000) != 0)
    {
      if ((v7 & 0x8000000) == 0 || self->_mptcpInteractiveCellUsage != *(a3 + 28))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x8000000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_mptcpHandoverCellBytes != *(a3 + 12))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x4000000) != 0)
    {
      if ((v7 & 0x4000000) == 0 || self->_mptcpInteractiveCellBytes != *(a3 + 27))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x4000000) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_mptcpAggregateCellBytes != *(a3 + 3))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_mptcpHandoverAllBytes != *(a3 + 10))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x1000000) != 0)
    {
      if ((v7 & 0x1000000) == 0 || self->_mptcpInteractiveAllBytes != *(a3 + 25))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x1000000) != 0)
    {
      goto LABEL_151;
    }

    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_mptcpAggregateAllBytes != *(a3 + 1))
      {
        goto LABEL_151;
      }
    }

    else if (v7)
    {
      goto LABEL_151;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_mptcpBackToWiFi != *(a3 + 4))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_mptcpCellDenied != *(a3 + 5))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_mptcpCellProxy != *(a3 + 6))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_151;
    }

    if ((*&has & 0x20000000) != 0)
    {
      if ((v7 & 0x20000000) == 0 || self->_mptcpWiFiProxy != *(a3 + 30))
      {
        goto LABEL_151;
      }
    }

    else if ((v7 & 0x20000000) != 0)
    {
      goto LABEL_151;
    }

    LOBYTE(v5) = (v7 & 0x10000000) == 0;
    if ((*&has & 0x10000000) != 0)
    {
      if ((v7 & 0x10000000) == 0 || self->_mptcpTriggeredCell != *(a3 + 29))
      {
        goto LABEL_151;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    v33 = 2654435761u * self->_mptcpHandoverAttempts;
    if ((*&has & 0x2000000) != 0)
    {
LABEL_3:
      v32 = 2654435761u * self->_mptcpInteractiveAttempt;
      if ((*&has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v33 = 0;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v32 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_4:
    v31 = 2654435761u * self->_mptcpAggregateAttempt;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  v31 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_5:
    v3 = 2654435761u * self->_mptcpFirstPartyHandoverAttempt;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  v3 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_6:
    v4 = 2654435761u * self->_mptcpFirstPartyInteractiveAttempt;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  v4 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_7:
    v5 = 2654435761u * self->_mptcpFirstPartyAggregateAttempt;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  v5 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_8:
    v6 = 2654435761u * self->_mptcpHeuristicFallback;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  v6 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_9:
    v7 = 2654435761u * self->_mptcpHeuristicFallbackFirstParty;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  v7 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_10:
    v8 = 2654435761u * self->_mptcpHandshakeHandoverSuccessWiFi;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  v8 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_11:
    v9 = 2654435761u * self->_mptcpHandshakeHandoverSuccessCell;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  v9 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_12:
    v10 = 2654435761u * self->_mptcpHandshakeInteractiveSuccess;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  v10 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_13:
    v11 = 2654435761u * self->_mptcpHandshakeAggregateSuccess;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  v11 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_14:
    v12 = 2654435761u * self->_mptcpHandshakeHandoverSuccessWiFiFirstParty;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  v12 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_15:
    v13 = 2654435761u * self->_mptcpHandshakeHandoverSuccessCellFirstParty;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  v13 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_16:
    v14 = 2654435761u * self->_mptcpHandshakeInteractiveSuccessFirstParty;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  v14 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_17:
    v15 = 2654435761u * self->_mptcpHandshakeAggregateSuccessFirstParty;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  v15 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_18:
    v16 = 2654435761u * self->_mptcpHandoverCellSubflowFromWiFi;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  v16 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_19:
    v17 = 2654435761u * self->_mptcpHandoverWiFiSubflowFromCell;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  v17 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_20:
    v18 = 2654435761u * self->_mptcpInteractiveCellUsage;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  v18 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_21:
    v19 = 2654435761u * self->_mptcpHandoverCellBytes;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  v19 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_22:
    v20 = 2654435761u * self->_mptcpInteractiveCellBytes;
    if ((*&has & 4) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  v20 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_23:
    v21 = 2654435761u * self->_mptcpAggregateCellBytes;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  v21 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_24:
    v22 = 2654435761u * self->_mptcpHandoverAllBytes;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  v22 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_25:
    v23 = 2654435761u * self->_mptcpInteractiveAllBytes;
    if (*&has)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  v23 = 0;
  if (*&has)
  {
LABEL_26:
    v24 = 2654435761u * self->_mptcpAggregateAllBytes;
    if ((*&has & 8) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  v24 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_27:
    v25 = 2654435761u * self->_mptcpBackToWiFi;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  v25 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_28:
    v26 = 2654435761u * self->_mptcpCellDenied;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  v26 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_29:
    v27 = 2654435761u * self->_mptcpCellProxy;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    v28 = 0;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_31;
    }

LABEL_61:
    v29 = 0;
    return v32 ^ v33 ^ v31 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
  }

LABEL_59:
  v27 = 0;
  if ((*&has & 0x20000000) == 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  v28 = 2654435761u * self->_mptcpWiFiProxy;
  if ((*&has & 0x10000000) == 0)
  {
    goto LABEL_61;
  }

LABEL_31:
  v29 = 2654435761u * self->_mptcpTriggeredCell;
  return v32 ^ v33 ^ v31 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 62);
  if ((v3 & 0x400) != 0)
  {
    self->_mptcpHandoverAttempts = *(a3 + 11);
    *&self->_has |= 0x400u;
    v3 = *(a3 + 62);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_3:
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_3;
  }

  self->_mptcpInteractiveAttempt = *(a3 + 26);
  *&self->_has |= 0x2000000u;
  v3 = *(a3 + 62);
  if ((v3 & 2) == 0)
  {
LABEL_4:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_mptcpAggregateAttempt = *(a3 + 2);
  *&self->_has |= 2u;
  v3 = *(a3 + 62);
  if ((v3 & 0x80) == 0)
  {
LABEL_5:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_mptcpFirstPartyHandoverAttempt = *(a3 + 8);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 62);
  if ((v3 & 0x100) == 0)
  {
LABEL_6:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_mptcpFirstPartyInteractiveAttempt = *(a3 + 9);
  *&self->_has |= 0x100u;
  v3 = *(a3 + 62);
  if ((v3 & 0x40) == 0)
  {
LABEL_7:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_mptcpFirstPartyAggregateAttempt = *(a3 + 7);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 62);
  if ((v3 & 0x400000) == 0)
  {
LABEL_8:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_mptcpHeuristicFallback = *(a3 + 23);
  *&self->_has |= 0x400000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x800000) == 0)
  {
LABEL_9:
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_mptcpHeuristicFallbackFirstParty = *(a3 + 24);
  *&self->_has |= 0x800000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x40000) == 0)
  {
LABEL_10:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_mptcpHandshakeHandoverSuccessWiFi = *(a3 + 19);
  *&self->_has |= 0x40000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x10000) == 0)
  {
LABEL_11:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_mptcpHandshakeHandoverSuccessCell = *(a3 + 17);
  *&self->_has |= 0x10000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x100000) == 0)
  {
LABEL_12:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_mptcpHandshakeInteractiveSuccess = *(a3 + 21);
  *&self->_has |= 0x100000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x4000) == 0)
  {
LABEL_13:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_mptcpHandshakeAggregateSuccess = *(a3 + 15);
  *&self->_has |= 0x4000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x80000) == 0)
  {
LABEL_14:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_mptcpHandshakeHandoverSuccessWiFiFirstParty = *(a3 + 20);
  *&self->_has |= 0x80000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x20000) == 0)
  {
LABEL_15:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_mptcpHandshakeHandoverSuccessCellFirstParty = *(a3 + 18);
  *&self->_has |= 0x20000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x200000) == 0)
  {
LABEL_16:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_mptcpHandshakeInteractiveSuccessFirstParty = *(a3 + 22);
  *&self->_has |= 0x200000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x8000) == 0)
  {
LABEL_17:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_mptcpHandshakeAggregateSuccessFirstParty = *(a3 + 16);
  *&self->_has |= 0x8000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x1000) == 0)
  {
LABEL_18:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_mptcpHandoverCellSubflowFromWiFi = *(a3 + 13);
  *&self->_has |= 0x1000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x2000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_mptcpHandoverWiFiSubflowFromCell = *(a3 + 14);
  *&self->_has |= 0x2000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_20:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_mptcpInteractiveCellUsage = *(a3 + 28);
  *&self->_has |= 0x8000000u;
  v3 = *(a3 + 62);
  if ((v3 & 0x800) == 0)
  {
LABEL_21:
    if ((v3 & 0x4000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_mptcpHandoverCellBytes = *(a3 + 12);
  *&self->_has |= 0x800u;
  v3 = *(a3 + 62);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_22:
    if ((v3 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_mptcpInteractiveCellBytes = *(a3 + 27);
  *&self->_has |= 0x4000000u;
  v3 = *(a3 + 62);
  if ((v3 & 4) == 0)
  {
LABEL_23:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_mptcpAggregateCellBytes = *(a3 + 3);
  *&self->_has |= 4u;
  v3 = *(a3 + 62);
  if ((v3 & 0x200) == 0)
  {
LABEL_24:
    if ((v3 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_mptcpHandoverAllBytes = *(a3 + 10);
  *&self->_has |= 0x200u;
  v3 = *(a3 + 62);
  if ((v3 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v3 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_mptcpInteractiveAllBytes = *(a3 + 25);
  *&self->_has |= 0x1000000u;
  v3 = *(a3 + 62);
  if ((v3 & 1) == 0)
  {
LABEL_26:
    if ((v3 & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_mptcpAggregateAllBytes = *(a3 + 1);
  *&self->_has |= 1u;
  v3 = *(a3 + 62);
  if ((v3 & 8) == 0)
  {
LABEL_27:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_mptcpBackToWiFi = *(a3 + 4);
  *&self->_has |= 8u;
  v3 = *(a3 + 62);
  if ((v3 & 0x10) == 0)
  {
LABEL_28:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_mptcpCellDenied = *(a3 + 5);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 62);
  if ((v3 & 0x20) == 0)
  {
LABEL_29:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_mptcpCellProxy = *(a3 + 6);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 62);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_30:
    if ((v3 & 0x10000000) == 0)
    {
      return;
    }

LABEL_61:
    self->_mptcpTriggeredCell = *(a3 + 29);
    *&self->_has |= 0x10000000u;
    return;
  }

LABEL_60:
  self->_mptcpWiFiProxy = *(a3 + 30);
  *&self->_has |= 0x20000000u;
  if ((*(a3 + 62) & 0x10000000) != 0)
  {
    goto LABEL_61;
  }
}

@end