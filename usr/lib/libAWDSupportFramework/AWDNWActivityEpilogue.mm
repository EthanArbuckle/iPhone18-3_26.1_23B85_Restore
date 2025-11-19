@interface AWDNWActivityEpilogue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCompletionReason:(id)a3;
- (int)completionReason;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasCompletionReason:(BOOL)a3;
- (void)setHasFragmentsQuenched:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasUnderlyingErrorCode:(BOOL)a3;
- (void)setHasUnderlyingErrorDomain:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDNWActivityEpilogue

- (void)dealloc
{
  [(AWDNWActivityEpilogue *)self setActivity:0];
  [(AWDNWActivityEpilogue *)self setL2Report:0];
  [(AWDNWActivityEpilogue *)self setDeviceReport:0];
  v3.receiver = self;
  v3.super_class = AWDNWActivityEpilogue;
  [(AWDNWActivityEpilogue *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasFragmentsQuenched:(BOOL)a3
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

- (int)completionReason
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_completionReason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCompletionReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsCompletionReason:(id)a3
{
  if ([a3 isEqualToString:@"NW_ACTIVITY_COMPLETION_REASON_INVALID"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NW_ACTIVITY_COMPLETION_REASON_NONE"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NW_ACTIVITY_COMPLETION_REASON_SUCCESS"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NW_ACTIVITY_COMPLETION_REASON_FAILURE"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"NW_ACTIVITY_COMPLETION_REASON_CANCELLED"])
  {
    return 4;
  }

  return 0;
}

- (void)setHasUnderlyingErrorDomain:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasUnderlyingErrorCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDNWActivityEpilogue;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDNWActivityEpilogue description](&v3, sel_description), -[AWDNWActivityEpilogue dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  activity = self->_activity;
  if (activity)
  {
    [v3 setObject:-[AWDNWActivity dictionaryRepresentation](activity forKey:{"dictionaryRepresentation"), @"activity"}];
  }

  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_durationMsecs), @"durationMsecs"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_fragmentsQuenched), @"fragmentsQuenched"}];
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  completionReason = self->_completionReason;
  if (completionReason >= 5)
  {
    v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_completionReason];
  }

  else
  {
    v7 = off_29EE32788[completionReason];
  }

  [v3 setObject:v7 forKey:@"completionReason"];
LABEL_15:
  l2Report = self->_l2Report;
  if (l2Report)
  {
    [v3 setObject:-[AWDNWL2Report dictionaryRepresentation](l2Report forKey:{"dictionaryRepresentation"), @"l2Report"}];
  }

  deviceReport = self->_deviceReport;
  if (deviceReport)
  {
    [v3 setObject:-[AWDNWDeviceReport dictionaryRepresentation](deviceReport forKey:{"dictionaryRepresentation"), @"deviceReport"}];
  }

  v10 = self->_has;
  if ((v10 & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_underlyingErrorDomain), @"underlyingErrorDomain"}];
    v10 = self->_has;
  }

  if ((v10 & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_underlyingErrorCode), @"underlyingErrorCode"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if ((*&self->_has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_activity)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    durationMsecs = self->_durationMsecs;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  fragmentsQuenched = self->_fragmentsQuenched;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    completionReason = self->_completionReason;
    PBDataWriterWriteInt32Field();
  }

LABEL_9:
  if (self->_l2Report)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_deviceReport)
  {
    PBDataWriterWriteSubmessage();
  }

  v7 = self->_has;
  if ((v7 & 0x20) != 0)
  {
    underlyingErrorDomain = self->_underlyingErrorDomain;
    PBDataWriterWriteInt32Field();
    v7 = self->_has;
  }

  if ((v7 & 0x10) != 0)
  {
    underlyingErrorCode = self->_underlyingErrorCode;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 4) != 0)
  {
    *(a3 + 3) = self->_timestamp;
    *(a3 + 72) |= 4u;
  }

  if (self->_activity)
  {
    [a3 setActivity:?];
  }

  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_durationMsecs;
    *(a3 + 72) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(a3 + 2) = self->_fragmentsQuenched;
  *(a3 + 72) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    *(a3 + 10) = self->_completionReason;
    *(a3 + 72) |= 8u;
  }

LABEL_9:
  if (self->_l2Report)
  {
    [a3 setL2Report:?];
  }

  if (self->_deviceReport)
  {
    [a3 setDeviceReport:?];
  }

  v6 = self->_has;
  if ((v6 & 0x20) != 0)
  {
    *(a3 + 17) = self->_underlyingErrorDomain;
    *(a3 + 72) |= 0x20u;
    v6 = self->_has;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a3 + 16) = self->_underlyingErrorCode;
    *(a3 + 72) |= 0x10u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 72) |= 4u;
  }

  *(v6 + 32) = [(AWDNWActivity *)self->_activity copyWithZone:a3];
  has = self->_has;
  if (has)
  {
    *(v6 + 8) = self->_durationMsecs;
    *(v6 + 72) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 16) = self->_fragmentsQuenched;
  *(v6 + 72) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    *(v6 + 40) = self->_completionReason;
    *(v6 + 72) |= 8u;
  }

LABEL_7:

  *(v6 + 56) = [(AWDNWL2Report *)self->_l2Report copyWithZone:a3];
  *(v6 + 48) = [(AWDNWDeviceReport *)self->_deviceReport copyWithZone:a3];
  v8 = self->_has;
  if ((v8 & 0x20) != 0)
  {
    *(v6 + 68) = self->_underlyingErrorDomain;
    *(v6 + 72) |= 0x20u;
    v8 = self->_has;
  }

  if ((v8 & 0x10) != 0)
  {
    *(v6 + 64) = self->_underlyingErrorCode;
    *(v6 + 72) |= 0x10u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 72);
    if ((has & 4) != 0)
    {
      if ((*(a3 + 72) & 4) == 0 || self->_timestamp != *(a3 + 3))
      {
        goto LABEL_38;
      }
    }

    else if ((*(a3 + 72) & 4) != 0)
    {
LABEL_38:
      LOBYTE(v5) = 0;
      return v5;
    }

    activity = self->_activity;
    if (activity | *(a3 + 4))
    {
      v5 = [(AWDNWActivity *)activity isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 72);
    if (has)
    {
      if ((*(a3 + 72) & 1) == 0 || self->_durationMsecs != *(a3 + 1))
      {
        goto LABEL_38;
      }
    }

    else if (*(a3 + 72))
    {
      goto LABEL_38;
    }

    if ((has & 2) != 0)
    {
      if ((*(a3 + 72) & 2) == 0 || self->_fragmentsQuenched != *(a3 + 2))
      {
        goto LABEL_38;
      }
    }

    else if ((*(a3 + 72) & 2) != 0)
    {
      goto LABEL_38;
    }

    if ((has & 8) != 0)
    {
      if ((*(a3 + 72) & 8) == 0 || self->_completionReason != *(a3 + 10))
      {
        goto LABEL_38;
      }
    }

    else if ((*(a3 + 72) & 8) != 0)
    {
      goto LABEL_38;
    }

    l2Report = self->_l2Report;
    if (!(l2Report | *(a3 + 7)) || (v5 = [(AWDNWL2Report *)l2Report isEqual:?]) != 0)
    {
      deviceReport = self->_deviceReport;
      if (!(deviceReport | *(a3 + 6)) || (v5 = [(AWDNWDeviceReport *)deviceReport isEqual:?]) != 0)
      {
        if ((*&self->_has & 0x20) != 0)
        {
          if ((*(a3 + 72) & 0x20) == 0 || self->_underlyingErrorDomain != *(a3 + 17))
          {
            goto LABEL_38;
          }
        }

        else if ((*(a3 + 72) & 0x20) != 0)
        {
          goto LABEL_38;
        }

        LOBYTE(v5) = (*(a3 + 72) & 0x10) == 0;
        if ((*&self->_has & 0x10) != 0)
        {
          if ((*(a3 + 72) & 0x10) == 0 || self->_underlyingErrorCode != *(a3 + 16))
          {
            goto LABEL_38;
          }

          LOBYTE(v5) = 1;
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(AWDNWActivity *)self->_activity hash];
  if ((*&self->_has & 1) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v5 = 2654435761u * self->_durationMsecs;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761u * self->_fragmentsQuenched;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_completionReason;
    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
LABEL_11:
  v8 = [(AWDNWL2Report *)self->_l2Report hash];
  v9 = [(AWDNWDeviceReport *)self->_deviceReport hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v10 = 2654435761 * self->_underlyingErrorDomain;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_13;
    }

LABEL_15:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

  v10 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v11 = 2654435761 * self->_underlyingErrorCode;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 72) & 4) != 0)
  {
    self->_timestamp = *(a3 + 3);
    *&self->_has |= 4u;
  }

  activity = self->_activity;
  v6 = *(a3 + 4);
  if (activity)
  {
    if (v6)
    {
      [(AWDNWActivity *)activity mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(AWDNWActivityEpilogue *)self setActivity:?];
  }

  v7 = *(a3 + 72);
  if (v7)
  {
    self->_durationMsecs = *(a3 + 1);
    *&self->_has |= 1u;
    v7 = *(a3 + 72);
    if ((v7 & 2) == 0)
    {
LABEL_10:
      if ((v7 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a3 + 72) & 2) == 0)
  {
    goto LABEL_10;
  }

  self->_fragmentsQuenched = *(a3 + 2);
  *&self->_has |= 2u;
  if ((*(a3 + 72) & 8) != 0)
  {
LABEL_11:
    self->_completionReason = *(a3 + 10);
    *&self->_has |= 8u;
  }

LABEL_12:
  l2Report = self->_l2Report;
  v9 = *(a3 + 7);
  if (l2Report)
  {
    if (v9)
    {
      [(AWDNWL2Report *)l2Report mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(AWDNWActivityEpilogue *)self setL2Report:?];
  }

  deviceReport = self->_deviceReport;
  v11 = *(a3 + 6);
  if (deviceReport)
  {
    if (v11)
    {
      [(AWDNWDeviceReport *)deviceReport mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(AWDNWActivityEpilogue *)self setDeviceReport:?];
  }

  v12 = *(a3 + 72);
  if ((v12 & 0x20) != 0)
  {
    self->_underlyingErrorDomain = *(a3 + 17);
    *&self->_has |= 0x20u;
    v12 = *(a3 + 72);
  }

  if ((v12 & 0x10) != 0)
  {
    self->_underlyingErrorCode = *(a3 + 16);
    *&self->_has |= 0x10u;
  }
}

@end