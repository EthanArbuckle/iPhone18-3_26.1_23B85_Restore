@interface AWDPairedSyncSyncReport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDefaultByteCount:(BOOL)count;
- (void)setHasIsAutomated:(BOOL)automated;
- (void)setHasRecordCount:(BOOL)count;
- (void)setHasSawADropout:(BOOL)dropout;
- (void)setHasSyncByteCount:(BOOL)count;
- (void)setHasSyncErrorCode:(BOOL)code;
- (void)setHasSyncType:(BOOL)type;
- (void)setHasTimeoutCount:(BOOL)count;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasUrgentByteCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation AWDPairedSyncSyncReport

- (void)dealloc
{
  [(AWDPairedSyncSyncReport *)self setGizmoBuild:0];
  [(AWDPairedSyncSyncReport *)self setGizmoHardware:0];
  [(AWDPairedSyncSyncReport *)self setActivityName:0];
  v3.receiver = self;
  v3.super_class = AWDPairedSyncSyncReport;
  [(AWDPairedSyncSyncReport *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasIsAutomated:(BOOL)automated
{
  if (automated)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasSyncErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasTimeoutCount:(BOOL)count
{
  if (count)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasSyncType:(BOOL)type
{
  if (type)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasRecordCount:(BOOL)count
{
  if (count)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasSyncByteCount:(BOOL)count
{
  if (count)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasDefaultByteCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasUrgentByteCount:(BOOL)count
{
  if (count)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasSawADropout:(BOOL)dropout
{
  if (dropout)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDPairedSyncSyncReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPairedSyncSyncReport description](&v3, sel_description), -[AWDPairedSyncSyncReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 0x200) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isAutomated), @"isAutomated"}];
  }

  gizmoBuild = self->_gizmoBuild;
  if (gizmoBuild)
  {
    [dictionary setObject:gizmoBuild forKey:@"gizmoBuild"];
  }

  gizmoHardware = self->_gizmoHardware;
  if (gizmoHardware)
  {
    [dictionary setObject:gizmoHardware forKey:@"gizmoHardware"];
  }

  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_syncDuration), @"syncDuration"}];
  }

  activityName = self->_activityName;
  if (activityName)
  {
    [dictionary setObject:activityName forKey:@"activityName"];
  }

  v8 = self->_has;
  if ((v8 & 0x20) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_syncErrorCode), @"syncErrorCode"}];
    v8 = self->_has;
    if ((v8 & 0x80) == 0)
    {
LABEL_15:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_15;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_timeoutCount), @"timeoutCount"}];
  v8 = self->_has;
  if ((v8 & 0x40) == 0)
  {
LABEL_16:
    if ((v8 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_syncType), @"syncType"}];
  v8 = self->_has;
  if ((v8 & 8) == 0)
  {
LABEL_17:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_recordCount), @"recordCount"}];
  v8 = self->_has;
  if ((v8 & 0x10) == 0)
  {
LABEL_18:
    if ((v8 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

LABEL_27:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_syncByteCount), @"syncByteCount"}];
  v8 = self->_has;
  if ((v8 & 4) == 0)
  {
LABEL_19:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_20;
    }

LABEL_29:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_urgentByteCount), @"urgentByteCount"}];
    if ((*&self->_has & 0x400) == 0)
    {
      return dictionary;
    }

    goto LABEL_21;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_defaultByteCount), @"defaultByteCount"}];
  v8 = self->_has;
  if ((v8 & 0x100) != 0)
  {
    goto LABEL_29;
  }

LABEL_20:
  if ((v8 & 0x400) != 0)
  {
LABEL_21:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_sawADropout), @"sawADropout"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 0x200) != 0)
  {
    isAutomated = self->_isAutomated;
    PBDataWriterWriteBOOLField();
  }

  if (self->_gizmoBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_gizmoHardware)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    syncDuration = self->_syncDuration;
    PBDataWriterWriteUint64Field();
  }

  if (self->_activityName)
  {
    PBDataWriterWriteStringField();
  }

  v8 = self->_has;
  if ((v8 & 0x20) != 0)
  {
    syncErrorCode = self->_syncErrorCode;
    PBDataWriterWriteUint32Field();
    v8 = self->_has;
    if ((v8 & 0x80) == 0)
    {
LABEL_15:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_15;
  }

  timeoutCount = self->_timeoutCount;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((v8 & 0x40) == 0)
  {
LABEL_16:
    if ((v8 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  syncType = self->_syncType;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((v8 & 8) == 0)
  {
LABEL_17:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_25:
  recordCount = self->_recordCount;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((v8 & 0x10) == 0)
  {
LABEL_18:
    if ((v8 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_26:
  syncByteCount = self->_syncByteCount;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((v8 & 4) == 0)
  {
LABEL_19:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_20;
    }

LABEL_28:
    urgentByteCount = self->_urgentByteCount;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x400) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

LABEL_27:
  defaultByteCount = self->_defaultByteCount;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((v8 & 0x100) != 0)
  {
    goto LABEL_28;
  }

LABEL_20:
  if ((v8 & 0x400) == 0)
  {
    return;
  }

LABEL_29:
  sawADropout = self->_sawADropout;

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_timestamp;
    *(to + 42) |= 2u;
    has = self->_has;
  }

  if ((has & 0x200) != 0)
  {
    *(to + 80) = self->_isAutomated;
    *(to + 42) |= 0x200u;
  }

  if (self->_gizmoBuild)
  {
    [to setGizmoBuild:?];
  }

  if (self->_gizmoHardware)
  {
    [to setGizmoHardware:?];
  }

  if (*&self->_has)
  {
    *(to + 1) = self->_syncDuration;
    *(to + 42) |= 1u;
  }

  if (self->_activityName)
  {
    [to setActivityName:?];
  }

  v6 = self->_has;
  if ((v6 & 0x20) != 0)
  {
    *(to + 16) = self->_syncErrorCode;
    *(to + 42) |= 0x20u;
    v6 = self->_has;
    if ((v6 & 0x80) == 0)
    {
LABEL_15:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_15;
  }

  *(to + 18) = self->_timeoutCount;
  *(to + 42) |= 0x80u;
  v6 = self->_has;
  if ((v6 & 0x40) == 0)
  {
LABEL_16:
    if ((v6 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 17) = self->_syncType;
  *(to + 42) |= 0x40u;
  v6 = self->_has;
  if ((v6 & 8) == 0)
  {
LABEL_17:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 14) = self->_recordCount;
  *(to + 42) |= 8u;
  v6 = self->_has;
  if ((v6 & 0x10) == 0)
  {
LABEL_18:
    if ((v6 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 15) = self->_syncByteCount;
  *(to + 42) |= 0x10u;
  v6 = self->_has;
  if ((v6 & 4) == 0)
  {
LABEL_19:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(to + 8) = self->_defaultByteCount;
  *(to + 42) |= 4u;
  v6 = self->_has;
  if ((v6 & 0x100) == 0)
  {
LABEL_20:
    if ((v6 & 0x400) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_29:
  *(to + 19) = self->_urgentByteCount;
  *(to + 42) |= 0x100u;
  if ((*&self->_has & 0x400) == 0)
  {
    return;
  }

LABEL_21:
  *(to + 81) = self->_sawADropout;
  *(to + 42) |= 0x400u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 84) |= 2u;
    has = self->_has;
  }

  if ((has & 0x200) != 0)
  {
    *(v5 + 80) = self->_isAutomated;
    *(v5 + 84) |= 0x200u;
  }

  *(v6 + 40) = [(NSString *)self->_gizmoBuild copyWithZone:zone];
  *(v6 + 48) = [(NSString *)self->_gizmoHardware copyWithZone:zone];
  if (*&self->_has)
  {
    *(v6 + 8) = self->_syncDuration;
    *(v6 + 84) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_activityName copyWithZone:zone];
  v8 = self->_has;
  if ((v8 & 0x20) != 0)
  {
    *(v6 + 64) = self->_syncErrorCode;
    *(v6 + 84) |= 0x20u;
    v8 = self->_has;
    if ((v8 & 0x80) == 0)
    {
LABEL_9:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_9;
  }

  *(v6 + 72) = self->_timeoutCount;
  *(v6 + 84) |= 0x80u;
  v8 = self->_has;
  if ((v8 & 0x40) == 0)
  {
LABEL_10:
    if ((v8 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v6 + 68) = self->_syncType;
  *(v6 + 84) |= 0x40u;
  v8 = self->_has;
  if ((v8 & 8) == 0)
  {
LABEL_11:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v6 + 56) = self->_recordCount;
  *(v6 + 84) |= 8u;
  v8 = self->_has;
  if ((v8 & 0x10) == 0)
  {
LABEL_12:
    if ((v8 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v6 + 60) = self->_syncByteCount;
  *(v6 + 84) |= 0x10u;
  v8 = self->_has;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_14;
    }

LABEL_23:
    *(v6 + 76) = self->_urgentByteCount;
    *(v6 + 84) |= 0x100u;
    if ((*&self->_has & 0x400) == 0)
    {
      return v6;
    }

    goto LABEL_15;
  }

LABEL_22:
  *(v6 + 32) = self->_defaultByteCount;
  *(v6 + 84) |= 4u;
  v8 = self->_has;
  if ((v8 & 0x100) != 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  if ((v8 & 0x400) != 0)
  {
LABEL_15:
    *(v6 + 81) = self->_sawADropout;
    *(v6 + 84) |= 0x400u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 42);
    if ((*&self->_has & 2) != 0)
    {
      if ((v6 & 2) == 0 || self->_timestamp != *(equal + 2))
      {
        goto LABEL_17;
      }
    }

    else if ((v6 & 2) != 0)
    {
      goto LABEL_17;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(equal + 42) & 0x200) == 0)
      {
        goto LABEL_17;
      }

      v11 = *(equal + 80);
      if (self->_isAutomated)
      {
        if ((*(equal + 80) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (*(equal + 80))
      {
        goto LABEL_17;
      }
    }

    else if ((*(equal + 42) & 0x200) != 0)
    {
      goto LABEL_17;
    }

    gizmoBuild = self->_gizmoBuild;
    if (!(gizmoBuild | *(equal + 5)) || (v5 = [(NSString *)gizmoBuild isEqual:?]) != 0)
    {
      gizmoHardware = self->_gizmoHardware;
      if (!(gizmoHardware | *(equal + 6)) || (v5 = [(NSString *)gizmoHardware isEqual:?]) != 0)
      {
        has = self->_has;
        v10 = *(equal + 42);
        if (has)
        {
          if ((v10 & 1) == 0 || self->_syncDuration != *(equal + 1))
          {
            goto LABEL_17;
          }
        }

        else if (v10)
        {
          goto LABEL_17;
        }

        activityName = self->_activityName;
        if (activityName | *(equal + 3))
        {
          v5 = [(NSString *)activityName isEqual:?];
          if (!v5)
          {
            return v5;
          }

          has = self->_has;
        }

        v13 = *(equal + 42);
        if ((has & 0x20) != 0)
        {
          if ((v13 & 0x20) == 0 || self->_syncErrorCode != *(equal + 16))
          {
            goto LABEL_17;
          }
        }

        else if ((v13 & 0x20) != 0)
        {
          goto LABEL_17;
        }

        if ((has & 0x80) != 0)
        {
          if ((v13 & 0x80) == 0 || self->_timeoutCount != *(equal + 18))
          {
            goto LABEL_17;
          }
        }

        else if ((v13 & 0x80) != 0)
        {
          goto LABEL_17;
        }

        if ((has & 0x40) != 0)
        {
          if ((v13 & 0x40) == 0 || self->_syncType != *(equal + 17))
          {
            goto LABEL_17;
          }
        }

        else if ((v13 & 0x40) != 0)
        {
          goto LABEL_17;
        }

        if ((has & 8) != 0)
        {
          if ((v13 & 8) == 0 || self->_recordCount != *(equal + 14))
          {
            goto LABEL_17;
          }
        }

        else if ((v13 & 8) != 0)
        {
          goto LABEL_17;
        }

        if ((has & 0x10) != 0)
        {
          if ((v13 & 0x10) == 0 || self->_syncByteCount != *(equal + 15))
          {
            goto LABEL_17;
          }
        }

        else if ((v13 & 0x10) != 0)
        {
          goto LABEL_17;
        }

        if ((has & 4) != 0)
        {
          if ((v13 & 4) == 0 || self->_defaultByteCount != *(equal + 8))
          {
            goto LABEL_17;
          }
        }

        else if ((v13 & 4) != 0)
        {
          goto LABEL_17;
        }

        if ((has & 0x100) != 0)
        {
          if ((*(equal + 42) & 0x100) == 0 || self->_urgentByteCount != *(equal + 19))
          {
            goto LABEL_17;
          }
        }

        else if ((*(equal + 42) & 0x100) != 0)
        {
          goto LABEL_17;
        }

        LOBYTE(v5) = (v13 & 0x400) == 0;
        if ((has & 0x400) == 0)
        {
          return v5;
        }

        if ((*(equal + 42) & 0x400) == 0)
        {
          goto LABEL_17;
        }

        if (self->_sawADropout)
        {
          if (*(equal + 81))
          {
            goto LABEL_70;
          }
        }

        else if (!*(equal + 81))
        {
LABEL_70:
          LOBYTE(v5) = 1;
          return v5;
        }

LABEL_17:
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_isAutomated;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_gizmoBuild hash];
  v6 = [(NSString *)self->_gizmoHardware hash];
  if (*&self->_has)
  {
    v7 = 2654435761u * self->_syncDuration;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_activityName hash];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v10 = 2654435761 * self->_syncErrorCode;
    if ((has & 0x80) != 0)
    {
LABEL_11:
      v11 = 2654435761 * self->_timeoutCount;
      if ((has & 0x40) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v10 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_11;
    }
  }

  v11 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_12:
    v12 = 2654435761 * self->_syncType;
    if ((has & 8) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = 0;
  if ((has & 8) != 0)
  {
LABEL_13:
    v13 = 2654435761 * self->_recordCount;
    if ((has & 0x10) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_14:
    v14 = 2654435761 * self->_syncByteCount;
    if ((has & 4) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = 0;
  if ((has & 4) != 0)
  {
LABEL_15:
    v15 = 2654435761 * self->_defaultByteCount;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_16;
    }

LABEL_24:
    v16 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_17;
    }

LABEL_25:
    v17 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
  }

LABEL_23:
  v15 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  v16 = 2654435761 * self->_urgentByteCount;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  v17 = 2654435761 * self->_sawADropout;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 42);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(from + 2);
    *&self->_has |= 2u;
    v5 = *(from + 42);
  }

  if ((v5 & 0x200) != 0)
  {
    self->_isAutomated = *(from + 80);
    *&self->_has |= 0x200u;
  }

  if (*(from + 5))
  {
    [(AWDPairedSyncSyncReport *)self setGizmoBuild:?];
  }

  if (*(from + 6))
  {
    [(AWDPairedSyncSyncReport *)self setGizmoHardware:?];
  }

  if (*(from + 42))
  {
    self->_syncDuration = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 3))
  {
    [(AWDPairedSyncSyncReport *)self setActivityName:?];
  }

  v6 = *(from + 42);
  if ((v6 & 0x20) != 0)
  {
    self->_syncErrorCode = *(from + 16);
    *&self->_has |= 0x20u;
    v6 = *(from + 42);
    if ((v6 & 0x80) == 0)
    {
LABEL_15:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_15;
  }

  self->_timeoutCount = *(from + 18);
  *&self->_has |= 0x80u;
  v6 = *(from + 42);
  if ((v6 & 0x40) == 0)
  {
LABEL_16:
    if ((v6 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_syncType = *(from + 17);
  *&self->_has |= 0x40u;
  v6 = *(from + 42);
  if ((v6 & 8) == 0)
  {
LABEL_17:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_recordCount = *(from + 14);
  *&self->_has |= 8u;
  v6 = *(from + 42);
  if ((v6 & 0x10) == 0)
  {
LABEL_18:
    if ((v6 & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_syncByteCount = *(from + 15);
  *&self->_has |= 0x10u;
  v6 = *(from + 42);
  if ((v6 & 4) == 0)
  {
LABEL_19:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_defaultByteCount = *(from + 8);
  *&self->_has |= 4u;
  v6 = *(from + 42);
  if ((v6 & 0x100) == 0)
  {
LABEL_20:
    if ((v6 & 0x400) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_29:
  self->_urgentByteCount = *(from + 19);
  *&self->_has |= 0x100u;
  if ((*(from + 42) & 0x400) == 0)
  {
    return;
  }

LABEL_21:
  self->_sawADropout = *(from + 81);
  *&self->_has |= 0x400u;
}

@end