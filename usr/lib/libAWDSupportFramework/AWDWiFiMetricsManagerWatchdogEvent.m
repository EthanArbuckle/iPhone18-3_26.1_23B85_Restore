@interface AWDWiFiMetricsManagerWatchdogEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)backTraceAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAvailable:(BOOL)a3;
- (void)setHasDeviceIdentifierMap:(BOOL)a3;
- (void)setHasEventId:(BOOL)a3;
- (void)setHasFlags:(BOOL)a3;
- (void)setHasLineNumber:(BOOL)a3;
- (void)setHasMinorReason:(BOOL)a3;
- (void)setHasProgramCounter:(BOOL)a3;
- (void)setHasReason:(BOOL)a3;
- (void)setHasRecoveryLatency:(BOOL)a3;
- (void)setHasSubreason:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricsManagerWatchdogEvent

- (void)dealloc
{
  [(AWDWiFiMetricsManagerWatchdogEvent *)self setReasonString:0];
  PBRepeatedUInt64Clear();
  [(AWDWiFiMetricsManagerWatchdogEvent *)self setFileName:0];
  [(AWDWiFiMetricsManagerWatchdogEvent *)self setFunction:0];
  [(AWDWiFiMetricsManagerWatchdogEvent *)self setTrapInfo:0];
  [(AWDWiFiMetricsManagerWatchdogEvent *)self setJoinTimeoutInfo:0];
  [(AWDWiFiMetricsManagerWatchdogEvent *)self setWpsResponseType:0];
  [(AWDWiFiMetricsManagerWatchdogEvent *)self setWpsManufacturerElement:0];
  [(AWDWiFiMetricsManagerWatchdogEvent *)self setWpsModelName:0];
  [(AWDWiFiMetricsManagerWatchdogEvent *)self setWpsModelNumber:0];
  [(AWDWiFiMetricsManagerWatchdogEvent *)self setWpsPrimaryDeviceTypeCategory:0];
  [(AWDWiFiMetricsManagerWatchdogEvent *)self setWpsPrimaryDeviceTypeSubCategory:0];
  [(AWDWiFiMetricsManagerWatchdogEvent *)self setWpsDeviceNameElement:0];
  [(AWDWiFiMetricsManagerWatchdogEvent *)self setWpsDeviceNameData:0];
  [(AWDWiFiMetricsManagerWatchdogEvent *)self setWpsConfigMethods:0];
  [(AWDWiFiMetricsManagerWatchdogEvent *)self setOui:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerWatchdogEvent;
  [(AWDWiFiMetricsManagerWatchdogEvent *)&v3 dealloc];
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

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasVersion:(BOOL)a3
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

- (void)setHasFlags:(BOOL)a3
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

- (void)setHasAvailable:(BOOL)a3
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

- (void)setHasReason:(BOOL)a3
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

- (void)setHasSubreason:(BOOL)a3
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

- (void)setHasDeviceIdentifierMap:(BOOL)a3
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

- (void)setHasEventId:(BOOL)a3
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

- (void)setHasMinorReason:(BOOL)a3
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

- (void)setHasProgramCounter:(BOOL)a3
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

- (unint64_t)backTraceAtIndex:(unint64_t)a3
{
  p_backTraces = &self->_backTraces;
  count = self->_backTraces.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_backTraces->list[a3];
}

- (void)setHasLineNumber:(BOOL)a3
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

- (void)setHasRecoveryLatency:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerWatchdogEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerWatchdogEvent description](&v3, sel_description), -[AWDWiFiMetricsManagerWatchdogEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_version), @"version"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_flags), @"flags"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_available), @"available"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_reason), @"reason"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_subreason), @"subreason"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_deviceIdentifierMap), @"deviceIdentifierMap"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_57:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_eventId), @"eventId"}];
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_minorReason), @"minorReason"}];
  }

LABEL_11:
  reasonString = self->_reasonString;
  if (reasonString)
  {
    [v3 setObject:reasonString forKey:@"reasonString"];
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_programCounter), @"programCounter"}];
    v6 = self->_has;
  }

  if (v6)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_linkRegister), @"linkRegister"}];
  }

  [v3 setObject:PBRepeatedUInt64NSArray() forKey:@"backTrace"];
  fileName = self->_fileName;
  if (fileName)
  {
    [v3 setObject:fileName forKey:@"fileName"];
  }

  function = self->_function;
  if (function)
  {
    [v3 setObject:function forKey:@"function"];
  }

  if ((*&self->_has & 0x80) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_lineNumber), @"lineNumber"}];
  }

  trapInfo = self->_trapInfo;
  if (trapInfo)
  {
    [v3 setObject:-[AWDWiFiMetricExtendedTrapInfo dictionaryRepresentation](trapInfo forKey:{"dictionaryRepresentation"), @"trapInfo"}];
  }

  joinTimeoutInfo = self->_joinTimeoutInfo;
  if (joinTimeoutInfo)
  {
    [v3 setObject:-[AWDWiFiMetricJoinTimeout dictionaryRepresentation](joinTimeoutInfo forKey:{"dictionaryRepresentation"), @"joinTimeoutInfo"}];
  }

  wpsResponseType = self->_wpsResponseType;
  if (wpsResponseType)
  {
    [v3 setObject:wpsResponseType forKey:@"wpsResponseType"];
  }

  wpsManufacturerElement = self->_wpsManufacturerElement;
  if (wpsManufacturerElement)
  {
    [v3 setObject:wpsManufacturerElement forKey:@"wpsManufacturerElement"];
  }

  wpsModelName = self->_wpsModelName;
  if (wpsModelName)
  {
    [v3 setObject:wpsModelName forKey:@"wpsModelName"];
  }

  wpsModelNumber = self->_wpsModelNumber;
  if (wpsModelNumber)
  {
    [v3 setObject:wpsModelNumber forKey:@"wpsModelNumber"];
  }

  wpsPrimaryDeviceTypeCategory = self->_wpsPrimaryDeviceTypeCategory;
  if (wpsPrimaryDeviceTypeCategory)
  {
    [v3 setObject:wpsPrimaryDeviceTypeCategory forKey:@"wpsPrimaryDeviceTypeCategory"];
  }

  wpsPrimaryDeviceTypeSubCategory = self->_wpsPrimaryDeviceTypeSubCategory;
  if (wpsPrimaryDeviceTypeSubCategory)
  {
    [v3 setObject:wpsPrimaryDeviceTypeSubCategory forKey:@"wpsPrimaryDeviceTypeSubCategory"];
  }

  wpsDeviceNameElement = self->_wpsDeviceNameElement;
  if (wpsDeviceNameElement)
  {
    [v3 setObject:wpsDeviceNameElement forKey:@"wpsDeviceNameElement"];
  }

  wpsDeviceNameData = self->_wpsDeviceNameData;
  if (wpsDeviceNameData)
  {
    [v3 setObject:wpsDeviceNameData forKey:@"wpsDeviceNameData"];
  }

  wpsConfigMethods = self->_wpsConfigMethods;
  if (wpsConfigMethods)
  {
    [v3 setObject:wpsConfigMethods forKey:@"wpsConfigMethods"];
  }

  if ((*&self->_has & 0x400) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_recoveryLatency), @"recoveryLatency"}];
  }

  oui = self->_oui;
  if (oui)
  {
    [v3 setObject:oui forKey:@"oui"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  version = self->_version;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  flags = self->_flags;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_57:
  available = self->_available;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  reason = self->_reason;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_59:
  subreason = self->_subreason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_60:
  deviceIdentifierMap = self->_deviceIdentifierMap;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_61:
  eventId = self->_eventId;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    minorReason = self->_minorReason;
    PBDataWriterWriteUint32Field();
  }

LABEL_11:
  if (self->_reasonString)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    programCounter = self->_programCounter;
    PBDataWriterWriteUint64Field();
    v6 = self->_has;
  }

  if (v6)
  {
    linkRegister = self->_linkRegister;
    PBDataWriterWriteUint64Field();
  }

  if (self->_backTraces.count)
  {
    v9 = 0;
    do
    {
      v10 = self->_backTraces.list[v9];
      PBDataWriterWriteUint64Field();
      ++v9;
    }

    while (v9 < self->_backTraces.count);
  }

  if (self->_fileName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_function)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x80) != 0)
  {
    lineNumber = self->_lineNumber;
    PBDataWriterWriteUint32Field();
  }

  if (self->_trapInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_joinTimeoutInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_wpsResponseType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsManufacturerElement)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsModelName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsModelNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsPrimaryDeviceTypeCategory)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsPrimaryDeviceTypeSubCategory)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsDeviceNameElement)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsDeviceNameData)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_wpsConfigMethods)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x400) != 0)
  {
    recoveryLatency = self->_recoveryLatency;
    PBDataWriterWriteUint32Field();
  }

  if (self->_oui)
  {

    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 6) = self->_timestamp;
    *(a3 + 116) |= 4u;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_57;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 38) = self->_version;
  *(a3 + 116) |= 0x1000u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(a3 + 20) = self->_flags;
  *(a3 + 116) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a3 + 14) = self->_available;
  *(a3 + 116) |= 8u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a3 + 30) = self->_reason;
  *(a3 + 116) |= 0x200u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(a3 + 35) = self->_subreason;
  *(a3 + 116) |= 0x800u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(a3 + 15) = self->_deviceIdentifierMap;
  *(a3 + 116) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_62:
  *(a3 + 16) = self->_eventId;
  *(a3 + 116) |= 0x20u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    *(a3 + 27) = self->_minorReason;
    *(a3 + 116) |= 0x100u;
  }

LABEL_11:
  if (self->_reasonString)
  {
    [a3 setReasonString:?];
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    *(a3 + 5) = self->_programCounter;
    *(a3 + 116) |= 2u;
    v6 = self->_has;
  }

  if (v6)
  {
    *(a3 + 4) = self->_linkRegister;
    *(a3 + 116) |= 1u;
  }

  if ([(AWDWiFiMetricsManagerWatchdogEvent *)self backTracesCount])
  {
    [a3 clearBackTraces];
    v7 = [(AWDWiFiMetricsManagerWatchdogEvent *)self backTracesCount];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        [a3 addBackTrace:{-[AWDWiFiMetricsManagerWatchdogEvent backTraceAtIndex:](self, "backTraceAtIndex:", i)}];
      }
    }
  }

  if (self->_fileName)
  {
    [a3 setFileName:?];
  }

  if (self->_function)
  {
    [a3 setFunction:?];
  }

  if ((*&self->_has & 0x80) != 0)
  {
    *(a3 + 26) = self->_lineNumber;
    *(a3 + 116) |= 0x80u;
  }

  if (self->_trapInfo)
  {
    [a3 setTrapInfo:?];
  }

  if (self->_joinTimeoutInfo)
  {
    [a3 setJoinTimeoutInfo:?];
  }

  if (self->_wpsResponseType)
  {
    [a3 setWpsResponseType:?];
  }

  if (self->_wpsManufacturerElement)
  {
    [a3 setWpsManufacturerElement:?];
  }

  if (self->_wpsModelName)
  {
    [a3 setWpsModelName:?];
  }

  if (self->_wpsModelNumber)
  {
    [a3 setWpsModelNumber:?];
  }

  if (self->_wpsPrimaryDeviceTypeCategory)
  {
    [a3 setWpsPrimaryDeviceTypeCategory:?];
  }

  if (self->_wpsPrimaryDeviceTypeSubCategory)
  {
    [a3 setWpsPrimaryDeviceTypeSubCategory:?];
  }

  if (self->_wpsDeviceNameElement)
  {
    [a3 setWpsDeviceNameElement:?];
  }

  if (self->_wpsDeviceNameData)
  {
    [a3 setWpsDeviceNameData:?];
  }

  if (self->_wpsConfigMethods)
  {
    [a3 setWpsConfigMethods:?];
  }

  if ((*&self->_has & 0x400) != 0)
  {
    *(a3 + 34) = self->_recoveryLatency;
    *(a3 + 116) |= 0x400u;
  }

  if (self->_oui)
  {

    [a3 setOui:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 48) = self->_timestamp;
    *(v5 + 232) |= 4u;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 152) = self->_version;
  *(v5 + 232) |= 0x1000u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 80) = self->_flags;
  *(v5 + 232) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 56) = self->_available;
  *(v5 + 232) |= 8u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 120) = self->_reason;
  *(v5 + 232) |= 0x200u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 140) = self->_subreason;
  *(v5 + 232) |= 0x800u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 60) = self->_deviceIdentifierMap;
  *(v5 + 232) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_27:
  *(v5 + 64) = self->_eventId;
  *(v5 + 232) |= 0x20u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    *(v5 + 108) = self->_minorReason;
    *(v5 + 232) |= 0x100u;
  }

LABEL_11:

  *(v6 + 128) = [(NSString *)self->_reasonString copyWithZone:a3];
  v8 = self->_has;
  if ((v8 & 2) != 0)
  {
    *(v6 + 40) = self->_programCounter;
    *(v6 + 232) |= 2u;
    v8 = self->_has;
  }

  if (v8)
  {
    *(v6 + 32) = self->_linkRegister;
    *(v6 + 232) |= 1u;
  }

  PBRepeatedUInt64Copy();

  *(v6 + 72) = [(NSString *)self->_fileName copyWithZone:a3];
  *(v6 + 88) = [(NSString *)self->_function copyWithZone:a3];
  if ((*&self->_has & 0x80) != 0)
  {
    *(v6 + 104) = self->_lineNumber;
    *(v6 + 232) |= 0x80u;
  }

  *(v6 + 144) = [(AWDWiFiMetricExtendedTrapInfo *)self->_trapInfo copyWithZone:a3];
  *(v6 + 96) = [(AWDWiFiMetricJoinTimeout *)self->_joinTimeoutInfo copyWithZone:a3];

  *(v6 + 224) = [(NSString *)self->_wpsResponseType copyWithZone:a3];
  *(v6 + 184) = [(NSString *)self->_wpsManufacturerElement copyWithZone:a3];

  *(v6 + 192) = [(NSString *)self->_wpsModelName copyWithZone:a3];
  *(v6 + 200) = [(NSString *)self->_wpsModelNumber copyWithZone:a3];

  *(v6 + 208) = [(NSString *)self->_wpsPrimaryDeviceTypeCategory copyWithZone:a3];
  *(v6 + 216) = [(NSString *)self->_wpsPrimaryDeviceTypeSubCategory copyWithZone:a3];

  *(v6 + 176) = [(NSString *)self->_wpsDeviceNameElement copyWithZone:a3];
  *(v6 + 168) = [(NSString *)self->_wpsDeviceNameData copyWithZone:a3];

  *(v6 + 160) = [(NSString *)self->_wpsConfigMethods copyWithZone:a3];
  if ((*&self->_has & 0x400) != 0)
  {
    *(v6 + 136) = self->_recoveryLatency;
    *(v6 + 232) |= 0x400u;
  }

  *(v6 + 112) = [(NSData *)self->_oui copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  IsEqual = [a3 isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    has = self->_has;
    v7 = *(a3 + 116);
    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_timestamp != *(a3 + 6))
      {
        goto LABEL_99;
      }
    }

    else if ((v7 & 4) != 0)
    {
LABEL_99:
      LOBYTE(IsEqual) = 0;
      return IsEqual;
    }

    if ((*&self->_has & 0x1000) != 0)
    {
      if ((*(a3 + 116) & 0x1000) == 0 || self->_version != *(a3 + 38))
      {
        goto LABEL_99;
      }
    }

    else if ((*(a3 + 116) & 0x1000) != 0)
    {
      goto LABEL_99;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_flags != *(a3 + 20))
      {
        goto LABEL_99;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_99;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_available != *(a3 + 14))
      {
        goto LABEL_99;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_99;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(a3 + 116) & 0x200) == 0 || self->_reason != *(a3 + 30))
      {
        goto LABEL_99;
      }
    }

    else if ((*(a3 + 116) & 0x200) != 0)
    {
      goto LABEL_99;
    }

    if ((*&self->_has & 0x800) != 0)
    {
      if ((*(a3 + 116) & 0x800) == 0 || self->_subreason != *(a3 + 35))
      {
        goto LABEL_99;
      }
    }

    else if ((*(a3 + 116) & 0x800) != 0)
    {
      goto LABEL_99;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_deviceIdentifierMap != *(a3 + 15))
      {
        goto LABEL_99;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_99;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_eventId != *(a3 + 16))
      {
        goto LABEL_99;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_99;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(a3 + 116) & 0x100) == 0 || self->_minorReason != *(a3 + 27))
      {
        goto LABEL_99;
      }
    }

    else if ((*(a3 + 116) & 0x100) != 0)
    {
      goto LABEL_99;
    }

    reasonString = self->_reasonString;
    if (reasonString | *(a3 + 16))
    {
      IsEqual = [(NSString *)reasonString isEqual:?];
      if (!IsEqual)
      {
        return IsEqual;
      }

      has = self->_has;
    }

    v9 = *(a3 + 116);
    if ((has & 2) != 0)
    {
      if ((v9 & 2) == 0 || self->_programCounter != *(a3 + 5))
      {
        goto LABEL_99;
      }
    }

    else if ((v9 & 2) != 0)
    {
      goto LABEL_99;
    }

    if (has)
    {
      if ((v9 & 1) == 0 || self->_linkRegister != *(a3 + 4))
      {
        goto LABEL_99;
      }
    }

    else if (v9)
    {
      goto LABEL_99;
    }

    IsEqual = PBRepeatedUInt64IsEqual();
    if (IsEqual)
    {
      fileName = self->_fileName;
      if (!(fileName | *(a3 + 9)) || (IsEqual = [(NSString *)fileName isEqual:?]) != 0)
      {
        function = self->_function;
        if (!(function | *(a3 + 11)) || (IsEqual = [(NSString *)function isEqual:?]) != 0)
        {
          v12 = *(a3 + 116);
          if ((*&self->_has & 0x80) != 0)
          {
            if ((v12 & 0x80) == 0 || self->_lineNumber != *(a3 + 26))
            {
              goto LABEL_99;
            }
          }

          else if ((v12 & 0x80) != 0)
          {
            goto LABEL_99;
          }

          trapInfo = self->_trapInfo;
          if (!(trapInfo | *(a3 + 18)) || (IsEqual = [(AWDWiFiMetricExtendedTrapInfo *)trapInfo isEqual:?]) != 0)
          {
            joinTimeoutInfo = self->_joinTimeoutInfo;
            if (!(joinTimeoutInfo | *(a3 + 12)) || (IsEqual = [(AWDWiFiMetricJoinTimeout *)joinTimeoutInfo isEqual:?]) != 0)
            {
              wpsResponseType = self->_wpsResponseType;
              if (!(wpsResponseType | *(a3 + 28)) || (IsEqual = [(NSString *)wpsResponseType isEqual:?]) != 0)
              {
                wpsManufacturerElement = self->_wpsManufacturerElement;
                if (!(wpsManufacturerElement | *(a3 + 23)) || (IsEqual = [(NSString *)wpsManufacturerElement isEqual:?]) != 0)
                {
                  wpsModelName = self->_wpsModelName;
                  if (!(wpsModelName | *(a3 + 24)) || (IsEqual = [(NSString *)wpsModelName isEqual:?]) != 0)
                  {
                    wpsModelNumber = self->_wpsModelNumber;
                    if (!(wpsModelNumber | *(a3 + 25)) || (IsEqual = [(NSString *)wpsModelNumber isEqual:?]) != 0)
                    {
                      wpsPrimaryDeviceTypeCategory = self->_wpsPrimaryDeviceTypeCategory;
                      if (!(wpsPrimaryDeviceTypeCategory | *(a3 + 26)) || (IsEqual = [(NSString *)wpsPrimaryDeviceTypeCategory isEqual:?]) != 0)
                      {
                        wpsPrimaryDeviceTypeSubCategory = self->_wpsPrimaryDeviceTypeSubCategory;
                        if (!(wpsPrimaryDeviceTypeSubCategory | *(a3 + 27)) || (IsEqual = [(NSString *)wpsPrimaryDeviceTypeSubCategory isEqual:?]) != 0)
                        {
                          wpsDeviceNameElement = self->_wpsDeviceNameElement;
                          if (!(wpsDeviceNameElement | *(a3 + 22)) || (IsEqual = [(NSString *)wpsDeviceNameElement isEqual:?]) != 0)
                          {
                            wpsDeviceNameData = self->_wpsDeviceNameData;
                            if (!(wpsDeviceNameData | *(a3 + 21)) || (IsEqual = [(NSString *)wpsDeviceNameData isEqual:?]) != 0)
                            {
                              wpsConfigMethods = self->_wpsConfigMethods;
                              if (!(wpsConfigMethods | *(a3 + 20)) || (IsEqual = [(NSString *)wpsConfigMethods isEqual:?]) != 0)
                              {
                                v24 = *(a3 + 116);
                                if ((*&self->_has & 0x400) != 0)
                                {
                                  if ((*(a3 + 116) & 0x400) == 0 || self->_recoveryLatency != *(a3 + 34))
                                  {
                                    goto LABEL_99;
                                  }
                                }

                                else if ((*(a3 + 116) & 0x400) != 0)
                                {
                                  goto LABEL_99;
                                }

                                oui = self->_oui;
                                if (oui | *(a3 + 14))
                                {

                                  LOBYTE(IsEqual) = [(NSData *)oui isEqual:?];
                                }

                                else
                                {
                                  LOBYTE(IsEqual) = 1;
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
            }
          }
        }
      }
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    v33 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x1000) != 0)
    {
LABEL_3:
      v32 = 2654435761 * self->_version;
      if ((has & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v33 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_3;
    }
  }

  v32 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_4:
    v31 = 2654435761 * self->_flags;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v31 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v30 = 2654435761 * self->_available;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v30 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_6:
    v29 = 2654435761 * self->_reason;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v29 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_7:
    v28 = 2654435761 * self->_subreason;
    if ((has & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v28 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_8:
    v27 = 2654435761 * self->_deviceIdentifierMap;
    if ((has & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v26 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_17:
  v27 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v26 = 2654435761 * self->_eventId;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v25 = 2654435761 * self->_minorReason;
    goto LABEL_20;
  }

LABEL_19:
  v25 = 0;
LABEL_20:
  v24 = [(NSString *)self->_reasonString hash];
  v4 = self->_has;
  if ((v4 & 2) != 0)
  {
    v23 = 2654435761u * self->_programCounter;
    if (v4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v23 = 0;
    if (v4)
    {
LABEL_22:
      v22 = 2654435761u * self->_linkRegister;
      goto LABEL_25;
    }
  }

  v22 = 0;
LABEL_25:
  v21 = PBRepeatedUInt64Hash();
  v20 = [(NSString *)self->_fileName hash];
  v19 = [(NSString *)self->_function hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v18 = 2654435761 * self->_lineNumber;
  }

  else
  {
    v18 = 0;
  }

  v17 = [(AWDWiFiMetricExtendedTrapInfo *)self->_trapInfo hash];
  v16 = [(AWDWiFiMetricJoinTimeout *)self->_joinTimeoutInfo hash];
  v5 = [(NSString *)self->_wpsResponseType hash];
  v6 = [(NSString *)self->_wpsManufacturerElement hash];
  v7 = [(NSString *)self->_wpsModelName hash];
  v8 = [(NSString *)self->_wpsModelNumber hash];
  v9 = [(NSString *)self->_wpsPrimaryDeviceTypeCategory hash];
  v10 = [(NSString *)self->_wpsPrimaryDeviceTypeSubCategory hash];
  v11 = [(NSString *)self->_wpsDeviceNameElement hash];
  v12 = [(NSString *)self->_wpsDeviceNameData hash];
  v13 = [(NSString *)self->_wpsConfigMethods hash];
  if ((*&self->_has & 0x400) != 0)
  {
    v14 = 2654435761 * self->_recoveryLatency;
  }

  else
  {
    v14 = 0;
  }

  return v32 ^ v33 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v23 ^ v22 ^ v21 ^ v24 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ [(NSData *)self->_oui hash];
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 116);
  if ((v5 & 4) != 0)
  {
    self->_timestamp = *(a3 + 6);
    *&self->_has |= 4u;
    v5 = *(a3 + 116);
    if ((v5 & 0x1000) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((*(a3 + 116) & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  self->_version = *(a3 + 38);
  *&self->_has |= 0x1000u;
  v5 = *(a3 + 116);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_flags = *(a3 + 20);
  *&self->_has |= 0x40u;
  v5 = *(a3 + 116);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_available = *(a3 + 14);
  *&self->_has |= 8u;
  v5 = *(a3 + 116);
  if ((v5 & 0x200) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_reason = *(a3 + 30);
  *&self->_has |= 0x200u;
  v5 = *(a3 + 116);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_subreason = *(a3 + 35);
  *&self->_has |= 0x800u;
  v5 = *(a3 + 116);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_deviceIdentifierMap = *(a3 + 15);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 116);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_36:
  self->_eventId = *(a3 + 16);
  *&self->_has |= 0x20u;
  if ((*(a3 + 116) & 0x100) != 0)
  {
LABEL_10:
    self->_minorReason = *(a3 + 27);
    *&self->_has |= 0x100u;
  }

LABEL_11:
  if (*(a3 + 16))
  {
    [(AWDWiFiMetricsManagerWatchdogEvent *)self setReasonString:?];
  }

  v6 = *(a3 + 116);
  if ((v6 & 2) != 0)
  {
    self->_programCounter = *(a3 + 5);
    *&self->_has |= 2u;
    v6 = *(a3 + 116);
  }

  if (v6)
  {
    self->_linkRegister = *(a3 + 4);
    *&self->_has |= 1u;
  }

  v7 = [a3 backTracesCount];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      -[AWDWiFiMetricsManagerWatchdogEvent addBackTrace:](self, "addBackTrace:", [a3 backTraceAtIndex:i]);
    }
  }

  if (*(a3 + 9))
  {
    [(AWDWiFiMetricsManagerWatchdogEvent *)self setFileName:?];
  }

  if (*(a3 + 11))
  {
    [(AWDWiFiMetricsManagerWatchdogEvent *)self setFunction:?];
  }

  if ((*(a3 + 116) & 0x80) != 0)
  {
    self->_lineNumber = *(a3 + 26);
    *&self->_has |= 0x80u;
  }

  trapInfo = self->_trapInfo;
  v11 = *(a3 + 18);
  if (trapInfo)
  {
    if (v11)
    {
      [(AWDWiFiMetricExtendedTrapInfo *)trapInfo mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(AWDWiFiMetricsManagerWatchdogEvent *)self setTrapInfo:?];
  }

  joinTimeoutInfo = self->_joinTimeoutInfo;
  v13 = *(a3 + 12);
  if (joinTimeoutInfo)
  {
    if (v13)
    {
      [(AWDWiFiMetricJoinTimeout *)joinTimeoutInfo mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(AWDWiFiMetricsManagerWatchdogEvent *)self setJoinTimeoutInfo:?];
  }

  if (*(a3 + 28))
  {
    [(AWDWiFiMetricsManagerWatchdogEvent *)self setWpsResponseType:?];
  }

  if (*(a3 + 23))
  {
    [(AWDWiFiMetricsManagerWatchdogEvent *)self setWpsManufacturerElement:?];
  }

  if (*(a3 + 24))
  {
    [(AWDWiFiMetricsManagerWatchdogEvent *)self setWpsModelName:?];
  }

  if (*(a3 + 25))
  {
    [(AWDWiFiMetricsManagerWatchdogEvent *)self setWpsModelNumber:?];
  }

  if (*(a3 + 26))
  {
    [(AWDWiFiMetricsManagerWatchdogEvent *)self setWpsPrimaryDeviceTypeCategory:?];
  }

  if (*(a3 + 27))
  {
    [(AWDWiFiMetricsManagerWatchdogEvent *)self setWpsPrimaryDeviceTypeSubCategory:?];
  }

  if (*(a3 + 22))
  {
    [(AWDWiFiMetricsManagerWatchdogEvent *)self setWpsDeviceNameElement:?];
  }

  if (*(a3 + 21))
  {
    [(AWDWiFiMetricsManagerWatchdogEvent *)self setWpsDeviceNameData:?];
  }

  if (*(a3 + 20))
  {
    [(AWDWiFiMetricsManagerWatchdogEvent *)self setWpsConfigMethods:?];
  }

  if ((*(a3 + 116) & 0x400) != 0)
  {
    self->_recoveryLatency = *(a3 + 34);
    *&self->_has |= 0x400u;
  }

  if (*(a3 + 14))
  {

    [(AWDWiFiMetricsManagerWatchdogEvent *)self setOui:?];
  }
}

@end