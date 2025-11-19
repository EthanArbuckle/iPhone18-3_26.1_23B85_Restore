@interface AWDCFNetworkStreamTaskTiming
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasConnectStart:(BOOL)a3;
- (void)setHasConnected:(BOOL)a3;
- (void)setHasConnectionInit:(BOOL)a3;
- (void)setHasDomainLookupEnd:(BOOL)a3;
- (void)setHasDomainLookupStart:(BOOL)a3;
- (void)setHasFirstRead:(BOOL)a3;
- (void)setHasFirstWrite:(BOOL)a3;
- (void)setHasIsCellular:(BOOL)a3;
- (void)setHasResumeStart:(BOOL)a3;
- (void)setHasSecureConnectionStart:(BOOL)a3;
- (void)setHasTaskCreationStart:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCFNetworkStreamTaskTiming

- (void)dealloc
{
  [(AWDCFNetworkStreamTaskTiming *)self setProcname:0];
  v3.receiver = self;
  v3.super_class = AWDCFNetworkStreamTaskTiming;
  [(AWDCFNetworkStreamTaskTiming *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasTaskCreationStart:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasResumeStart:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasConnectionInit:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasDomainLookupStart:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasDomainLookupEnd:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasConnectStart:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasSecureConnectionStart:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasConnected:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasFirstWrite:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasFirstRead:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasIsCellular:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCFNetworkStreamTaskTiming;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCFNetworkStreamTaskTiming description](&v3, sel_description), -[AWDCFNetworkStreamTaskTiming dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_taskCreationStart), @"taskCreationStart"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resumeStart), @"resumeStart"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectionInit), @"connectionInit"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_domainLookupStart), @"domainLookupStart"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_domainLookupEnd), @"domainLookupEnd"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectStart), @"connectStart"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_secureConnectionStart), @"secureConnectionStart"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectEnd), @"connectEnd"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connected), @"connected"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_firstWrite), @"firstWrite"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_firstRead), @"firstRead"}];
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_14:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_isCellular), @"isCellular"}];
  }

LABEL_15:
  procname = self->_procname;
  if (procname)
  {
    [v3 setObject:procname forKey:@"procname"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  taskCreationStart = self->_taskCreationStart;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  resumeStart = self->_resumeStart;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  connectionInit = self->_connectionInit;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  domainLookupStart = self->_domainLookupStart;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  domainLookupEnd = self->_domainLookupEnd;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  connectStart = self->_connectStart;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  secureConnectionStart = self->_secureConnectionStart;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  connectEnd = self->_connectEnd;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  connected = self->_connected;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  firstWrite = self->_firstWrite;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_30:
  firstRead = self->_firstRead;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_14:
    isCellular = self->_isCellular;
    PBDataWriterWriteInt64Field();
  }

LABEL_15:
  if (self->_procname)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    *(a3 + 13) = self->_timestamp;
    *(a3 + 60) |= 0x1000u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 12) = self->_taskCreationStart;
  *(a3 + 60) |= 0x800u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 10) = self->_resumeStart;
  *(a3 + 60) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(a3 + 4) = self->_connectionInit;
  *(a3 + 60) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(a3 + 6) = self->_domainLookupStart;
  *(a3 + 60) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(a3 + 5) = self->_domainLookupEnd;
  *(a3 + 60) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(a3 + 2) = self->_connectStart;
  *(a3 + 60) |= 2u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a3 + 11) = self->_secureConnectionStart;
  *(a3 + 60) |= 0x400u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a3 + 1) = self->_connectEnd;
  *(a3 + 60) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(a3 + 3) = self->_connected;
  *(a3 + 60) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(a3 + 8) = self->_firstWrite;
  *(a3 + 60) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_28:
  *(a3 + 7) = self->_firstRead;
  *(a3 + 60) |= 0x40u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_14:
    *(a3 + 9) = self->_isCellular;
    *(a3 + 60) |= 0x100u;
  }

LABEL_15:
  procname = self->_procname;
  if (procname)
  {
    [a3 setProcname:procname];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    *(v5 + 104) = self->_timestamp;
    *(v5 + 120) |= 0x1000u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 96) = self->_taskCreationStart;
  *(v5 + 120) |= 0x800u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 80) = self->_resumeStart;
  *(v5 + 120) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 32) = self->_connectionInit;
  *(v5 + 120) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 48) = self->_domainLookupStart;
  *(v5 + 120) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 40) = self->_domainLookupEnd;
  *(v5 + 120) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 16) = self->_connectStart;
  *(v5 + 120) |= 2u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 88) = self->_secureConnectionStart;
  *(v5 + 120) |= 0x400u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 8) = self->_connectEnd;
  *(v5 + 120) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 24) = self->_connected;
  *(v5 + 120) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

LABEL_27:
    *(v5 + 56) = self->_firstRead;
    *(v5 + 120) |= 0x40u;
    if ((*&self->_has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_26:
  *(v5 + 64) = self->_firstWrite;
  *(v5 + 120) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  if ((has & 0x100) != 0)
  {
LABEL_14:
    *(v5 + 72) = self->_isCellular;
    *(v5 + 120) |= 0x100u;
  }

LABEL_15:

  v6[14] = [(NSString *)self->_procname copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 60);
    if ((has & 0x1000) != 0)
    {
      if ((*(a3 + 60) & 0x1000) == 0 || self->_timestamp != *(a3 + 13))
      {
        goto LABEL_69;
      }
    }

    else if ((*(a3 + 60) & 0x1000) != 0)
    {
LABEL_69:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(a3 + 60) & 0x800) == 0 || self->_taskCreationStart != *(a3 + 12))
      {
        goto LABEL_69;
      }
    }

    else if ((*(a3 + 60) & 0x800) != 0)
    {
      goto LABEL_69;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(a3 + 60) & 0x200) == 0 || self->_resumeStart != *(a3 + 10))
      {
        goto LABEL_69;
      }
    }

    else if ((*(a3 + 60) & 0x200) != 0)
    {
      goto LABEL_69;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_connectionInit != *(a3 + 4))
      {
        goto LABEL_69;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_69;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_domainLookupStart != *(a3 + 6))
      {
        goto LABEL_69;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_69;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_domainLookupEnd != *(a3 + 5))
      {
        goto LABEL_69;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_69;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_connectStart != *(a3 + 2))
      {
        goto LABEL_69;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_69;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(a3 + 60) & 0x400) == 0 || self->_secureConnectionStart != *(a3 + 11))
      {
        goto LABEL_69;
      }
    }

    else if ((*(a3 + 60) & 0x400) != 0)
    {
      goto LABEL_69;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_connectEnd != *(a3 + 1))
      {
        goto LABEL_69;
      }
    }

    else if (v7)
    {
      goto LABEL_69;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_connected != *(a3 + 3))
      {
        goto LABEL_69;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_69;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_firstWrite != *(a3 + 8))
      {
        goto LABEL_69;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_69;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_firstRead != *(a3 + 7))
      {
        goto LABEL_69;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_69;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(a3 + 60) & 0x100) == 0 || self->_isCellular != *(a3 + 9))
      {
        goto LABEL_69;
      }
    }

    else if ((*(a3 + 60) & 0x100) != 0)
    {
      goto LABEL_69;
    }

    procname = self->_procname;
    if (procname | *(a3 + 14))
    {

      LOBYTE(v5) = [(NSString *)procname isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x1000) != 0)
  {
    v7 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x800) != 0)
    {
LABEL_3:
      v8 = 2654435761u * self->_taskCreationStart;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_4:
    v9 = 2654435761u * self->_resumeStart;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v10 = 2654435761u * self->_connectionInit;
    if ((has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_6:
    v11 = 2654435761u * self->_domainLookupStart;
    if ((has & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_7:
    v12 = 2654435761u * self->_domainLookupEnd;
    if ((has & 2) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = 0;
  if ((has & 2) != 0)
  {
LABEL_8:
    v13 = 2654435761u * self->_connectStart;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_9:
    v14 = 2654435761u * self->_secureConnectionStart;
    if (has)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = 0;
  if (has)
  {
LABEL_10:
    v15 = 2654435761u * self->_connectEnd;
    if ((has & 4) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v15 = 0;
  if ((has & 4) != 0)
  {
LABEL_11:
    v16 = 2654435761u * self->_connected;
    if ((has & 0x80) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_12:
    v17 = 2654435761u * self->_firstWrite;
    if ((has & 0x40) != 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v18 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_14;
    }

LABEL_27:
    v19 = 0;
    return v8 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ [(NSString *)self->_procname hash:v3];
  }

LABEL_25:
  v17 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v18 = 2654435761u * self->_firstRead;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_27;
  }

LABEL_14:
  v19 = 2654435761 * self->_isCellular;
  return v8 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ [(NSString *)self->_procname hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 60);
  if ((v3 & 0x1000) != 0)
  {
    self->_timestamp = *(a3 + 13);
    *&self->_has |= 0x1000u;
    v3 = *(a3 + 60);
    if ((v3 & 0x800) == 0)
    {
LABEL_3:
      if ((v3 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*(a3 + 60) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  self->_taskCreationStart = *(a3 + 12);
  *&self->_has |= 0x800u;
  v3 = *(a3 + 60);
  if ((v3 & 0x200) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_resumeStart = *(a3 + 10);
  *&self->_has |= 0x200u;
  v3 = *(a3 + 60);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_connectionInit = *(a3 + 4);
  *&self->_has |= 8u;
  v3 = *(a3 + 60);
  if ((v3 & 0x20) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_domainLookupStart = *(a3 + 6);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 60);
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_domainLookupEnd = *(a3 + 5);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 60);
  if ((v3 & 2) == 0)
  {
LABEL_8:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_connectStart = *(a3 + 2);
  *&self->_has |= 2u;
  v3 = *(a3 + 60);
  if ((v3 & 0x400) == 0)
  {
LABEL_9:
    if ((v3 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_secureConnectionStart = *(a3 + 11);
  *&self->_has |= 0x400u;
  v3 = *(a3 + 60);
  if ((v3 & 1) == 0)
  {
LABEL_10:
    if ((v3 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_connectEnd = *(a3 + 1);
  *&self->_has |= 1u;
  v3 = *(a3 + 60);
  if ((v3 & 4) == 0)
  {
LABEL_11:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_connected = *(a3 + 3);
  *&self->_has |= 4u;
  v3 = *(a3 + 60);
  if ((v3 & 0x80) == 0)
  {
LABEL_12:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_firstWrite = *(a3 + 8);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 60);
  if ((v3 & 0x40) == 0)
  {
LABEL_13:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_28:
  self->_firstRead = *(a3 + 7);
  *&self->_has |= 0x40u;
  if ((*(a3 + 60) & 0x100) != 0)
  {
LABEL_14:
    self->_isCellular = *(a3 + 9);
    *&self->_has |= 0x100u;
  }

LABEL_15:
  if (*(a3 + 14))
  {
    [(AWDCFNetworkStreamTaskTiming *)self setProcname:?];
  }
}

@end