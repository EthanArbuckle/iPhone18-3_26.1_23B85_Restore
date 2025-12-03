@interface UWLLiveActivityEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCause:(id)cause;
- (int)StringAsContractOrTimed:(id)timed;
- (int)cause;
- (int)contractOrTimed;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCause:(BOOL)cause;
- (void)setHasContractOrTimed:(BOOL)timed;
- (void)setHasExpectedStartTimeEpochMillis:(BOOL)millis;
- (void)setHasMillisecondsSinceEvent:(BOOL)event;
- (void)writeTo:(id)to;
@end

@implementation UWLLiveActivityEvent

- (void)setHasMillisecondsSinceEvent:(BOOL)event
{
  if (event)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)cause
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_cause;
  }

  else
  {
    return 1;
  }
}

- (void)setHasCause:(BOOL)cause
{
  if (cause)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsCause:(id)cause
{
  causeCopy = cause;
  if ([causeCopy isEqualToString:@"Tune_In"])
  {
    v4 = 1;
  }

  else if ([causeCopy isEqualToString:@"Event_End"])
  {
    v4 = 2;
  }

  else if ([causeCopy isEqualToString:@"Event_Start"])
  {
    v4 = 3;
  }

  else if ([causeCopy isEqualToString:@"Tune_Out"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasExpectedStartTimeEpochMillis:(BOOL)millis
{
  if (millis)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)contractOrTimed
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_contractOrTimed;
  }

  else
  {
    return 0;
  }
}

- (void)setHasContractOrTimed:(BOOL)timed
{
  if (timed)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsContractOrTimed:(id)timed
{
  timedCopy = timed;
  if ([timedCopy isEqualToString:@"Not_Specified_Implied_Legacy_Contract"])
  {
    v4 = 0;
  }

  else if ([timedCopy isEqualToString:@"Contract"])
  {
    v4 = 1;
  }

  else if ([timedCopy isEqualToString:@"Timed"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = UWLLiveActivityEvent;
  v3 = [(UWLLiveActivityEvent *)&v7 description];
  dictionaryRepresentation = [(UWLLiveActivityEvent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundle_id"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v6 = [NSNumber numberWithLongLong:self->_millisecondsSinceEvent];
    [v4 setObject:v6 forKey:@"milliseconds_since_event"];
  }

  profileId = self->_profileId;
  if (profileId)
  {
    [v4 setObject:profileId forKey:@"profile_id"];
  }

  channel = self->_channel;
  if (channel)
  {
    dictionaryRepresentation = [(UWLLiveActivityEventChannel *)channel dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"channel"];
  }

  content = self->_content;
  if (content)
  {
    dictionaryRepresentation2 = [(UWLLiveActivityEventContent *)content dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"content"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v13 = self->_cause - 1;
    if (v13 >= 4)
    {
      v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_cause];
    }

    else
    {
      v14 = *(&off_100044DD8 + v13);
    }

    [v4 setObject:v14 forKey:@"cause"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_13:
      if ((has & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

  v15 = [NSNumber numberWithLongLong:self->_expectedStartTimeEpochMillis];
  [v4 setObject:v15 forKey:@"expected_start_time_epoch_millis"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_21:
  v16 = [NSNumber numberWithLongLong:self->_cleanupTimeEpochMillis];
  [v4 setObject:v16 forKey:@"cleanup_time_epoch_millis"];

  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  contractOrTimed = self->_contractOrTimed;
  if (contractOrTimed >= 3)
  {
    v18 = [NSString stringWithFormat:@"(unknown: %i)", self->_contractOrTimed];
  }

  else
  {
    v18 = *(&off_100044DF8 + contractOrTimed);
  }

  [v4 setObject:v18 forKey:@"contract_or_timed"];

LABEL_26:
  passThrough = self->_passThrough;
  if (passThrough)
  {
    [v4 setObject:passThrough forKey:@"pass_through"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v11 = toCopy;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if ((*&self->_has & 4) != 0)
  {
    millisecondsSinceEvent = self->_millisecondsSinceEvent;
    PBDataWriterWriteInt64Field();
    toCopy = v11;
  }

  if (self->_profileId)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_channel)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v11;
  }

  if (self->_content)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v11;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    cause = self->_cause;
    PBDataWriterWriteInt32Field();
    toCopy = v11;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_13:
      if ((has & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

  expectedStartTimeEpochMillis = self->_expectedStartTimeEpochMillis;
  PBDataWriterWriteInt64Field();
  toCopy = v11;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_23:
  cleanupTimeEpochMillis = self->_cleanupTimeEpochMillis;
  PBDataWriterWriteInt64Field();
  toCopy = v11;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_15:
    contractOrTimed = self->_contractOrTimed;
    PBDataWriterWriteInt32Field();
    toCopy = v11;
  }

LABEL_16:
  if (self->_passThrough)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_bundleId)
  {
    [toCopy setBundleId:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 3) = self->_millisecondsSinceEvent;
    *(toCopy + 88) |= 4u;
  }

  if (self->_profileId)
  {
    [v6 setProfileId:?];
    toCopy = v6;
  }

  if (self->_channel)
  {
    [v6 setChannel:?];
    toCopy = v6;
  }

  if (self->_content)
  {
    [v6 setContent:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(toCopy + 10) = self->_cause;
    *(toCopy + 88) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_13:
      if ((has & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

  *(toCopy + 2) = self->_expectedStartTimeEpochMillis;
  *(toCopy + 88) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_14:
    if ((has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_23:
  *(toCopy + 1) = self->_cleanupTimeEpochMillis;
  *(toCopy + 88) |= 1u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_15:
    *(toCopy + 16) = self->_contractOrTimed;
    *(toCopy + 88) |= 0x10u;
  }

LABEL_16:
  if (self->_passThrough)
  {
    [v6 setPassThrough:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  if ((*&self->_has & 4) != 0)
  {
    v5[3] = self->_millisecondsSinceEvent;
    *(v5 + 88) |= 4u;
  }

  v8 = [(NSString *)self->_profileId copyWithZone:zone];
  v9 = v5[10];
  v5[10] = v8;

  v10 = [(UWLLiveActivityEventChannel *)self->_channel copyWithZone:zone];
  v11 = v5[6];
  v5[6] = v10;

  v12 = [(UWLLiveActivityEventContent *)self->_content copyWithZone:zone];
  v13 = v5[7];
  v5[7] = v12;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 10) = self->_cause;
    *(v5 + 88) |= 8u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      v5[1] = self->_cleanupTimeEpochMillis;
      *(v5 + 88) |= 1u;
      if ((*&self->_has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v5[2] = self->_expectedStartTimeEpochMillis;
  *(v5 + 88) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 0x10) != 0)
  {
LABEL_7:
    *(v5 + 16) = self->_contractOrTimed;
    *(v5 + 88) |= 0x10u;
  }

LABEL_8:
  v15 = [(NSString *)self->_passThrough copyWithZone:zone];
  v16 = v5[9];
  v5[9] = v15;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  bundleId = self->_bundleId;
  if (bundleId | *(equalCopy + 4))
  {
    if (![(NSString *)bundleId isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v6 = *(equalCopy + 88);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 88) & 4) == 0 || self->_millisecondsSinceEvent != *(equalCopy + 3))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 88) & 4) != 0)
  {
LABEL_37:
    v12 = 0;
    goto LABEL_38;
  }

  profileId = self->_profileId;
  if (profileId | *(equalCopy + 10) && ![(NSString *)profileId isEqual:?])
  {
    goto LABEL_37;
  }

  channel = self->_channel;
  if (channel | *(equalCopy + 6))
  {
    if (![(UWLLiveActivityEventChannel *)channel isEqual:?])
    {
      goto LABEL_37;
    }
  }

  content = self->_content;
  if (content | *(equalCopy + 7))
  {
    if (![(UWLLiveActivityEventContent *)content isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v10 = *(equalCopy + 88);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 88) & 8) == 0 || self->_cause != *(equalCopy + 10))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 88) & 8) != 0)
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 88) & 2) == 0 || self->_expectedStartTimeEpochMillis != *(equalCopy + 2))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 88) & 2) != 0)
  {
    goto LABEL_37;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 88) & 1) == 0 || self->_cleanupTimeEpochMillis != *(equalCopy + 1))
    {
      goto LABEL_37;
    }
  }

  else if (*(equalCopy + 88))
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 88) & 0x10) == 0 || self->_contractOrTimed != *(equalCopy + 16))
    {
      goto LABEL_37;
    }
  }

  else if ((*(equalCopy + 88) & 0x10) != 0)
  {
    goto LABEL_37;
  }

  passThrough = self->_passThrough;
  if (passThrough | *(equalCopy + 9))
  {
    v12 = [(NSString *)passThrough isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_38:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761 * self->_millisecondsSinceEvent;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_profileId hash];
  v6 = [(UWLLiveActivityEventChannel *)self->_channel hash];
  v7 = [(UWLLiveActivityEventContent *)self->_content hash];
  if ((*&self->_has & 8) != 0)
  {
    v8 = 2654435761 * self->_cause;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v9 = 2654435761 * self->_expectedStartTimeEpochMillis;
      if (*&self->_has)
      {
        goto LABEL_7;
      }

LABEL_11:
      v10 = 0;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v11 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSString *)self->_passThrough hash];
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v9 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v10 = 2654435761 * self->_cleanupTimeEpochMillis;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v11 = 2654435761 * self->_contractOrTimed;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSString *)self->_passThrough hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v10 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(UWLLiveActivityEvent *)self setBundleId:?];
    fromCopy = v10;
  }

  if ((*(fromCopy + 88) & 4) != 0)
  {
    self->_millisecondsSinceEvent = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 10))
  {
    [(UWLLiveActivityEvent *)self setProfileId:?];
    fromCopy = v10;
  }

  channel = self->_channel;
  v6 = *(fromCopy + 6);
  if (channel)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    [(UWLLiveActivityEventChannel *)channel mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    [(UWLLiveActivityEvent *)self setChannel:?];
  }

  fromCopy = v10;
LABEL_13:
  content = self->_content;
  v8 = *(fromCopy + 7);
  if (content)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    [(UWLLiveActivityEventContent *)content mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    [(UWLLiveActivityEvent *)self setContent:?];
  }

  fromCopy = v10;
LABEL_19:
  v9 = *(fromCopy + 88);
  if ((v9 & 8) != 0)
  {
    self->_cause = *(fromCopy + 10);
    *&self->_has |= 8u;
    v9 = *(fromCopy + 88);
    if ((v9 & 2) == 0)
    {
LABEL_21:
      if ((v9 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }
  }

  else if ((*(fromCopy + 88) & 2) == 0)
  {
    goto LABEL_21;
  }

  self->_expectedStartTimeEpochMillis = *(fromCopy + 2);
  *&self->_has |= 2u;
  v9 = *(fromCopy + 88);
  if ((v9 & 1) == 0)
  {
LABEL_22:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_31:
  self->_cleanupTimeEpochMillis = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 88) & 0x10) != 0)
  {
LABEL_23:
    self->_contractOrTimed = *(fromCopy + 16);
    *&self->_has |= 0x10u;
  }

LABEL_24:
  if (*(fromCopy + 9))
  {
    [(UWLLiveActivityEvent *)self setPassThrough:?];
  }

  _objc_release_x1();
}

@end