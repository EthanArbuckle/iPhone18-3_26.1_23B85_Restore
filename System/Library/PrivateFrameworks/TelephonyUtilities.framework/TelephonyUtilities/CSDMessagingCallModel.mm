@interface CSDMessagingCallModel
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSupportsDTMF:(BOOL)f;
- (void)setHasSupportsGrouping:(BOOL)grouping;
- (void)setHasSupportsHolding:(BOOL)holding;
- (void)setHasSupportsSendingToVoicemail:(BOOL)voicemail;
- (void)setHasSupportsUnambiguousMultiPartyState:(BOOL)state;
- (void)setHasSupportsUngrouping:(BOOL)ungrouping;
- (void)writeTo:(id)to;
@end

@implementation CSDMessagingCallModel

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v7 = [NSNumber numberWithBool:self->_supportsHolding];
    [v3 setObject:v7 forKey:@"supportsHolding"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithBool:self->_supportsGrouping];
  [v3 setObject:v8 forKey:@"supportsGrouping"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = [NSNumber numberWithBool:self->_supportsUngrouping];
  [v3 setObject:v9 forKey:@"supportsUngrouping"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = [NSNumber numberWithBool:self->_supportsDTMF];
  [v3 setObject:v10 forKey:@"supportsDTMF"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = [NSNumber numberWithBool:self->_supportsUnambiguousMultiPartyState];
  [v3 setObject:v11 forKey:@"supportsUnambiguousMultiPartyState"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v12 = [NSNumber numberWithBool:self->_supportsAddCall];
  [v3 setObject:v12 forKey:@"supportsAddCall"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_8:
    v5 = [NSNumber numberWithBool:self->_supportsSendingToVoicemail];
    [v3 setObject:v5 forKey:@"supportsSendingToVoicemail"];
  }

LABEL_9:

  return v3;
}

- (void)setHasSupportsHolding:(BOOL)holding
{
  if (holding)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSupportsGrouping:(BOOL)grouping
{
  if (grouping)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSupportsUngrouping:(BOOL)ungrouping
{
  if (ungrouping)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasSupportsDTMF:(BOOL)f
{
  if (f)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSupportsUnambiguousMultiPartyState:(BOOL)state
{
  if (state)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasSupportsSendingToVoicemail:(BOOL)voicemail
{
  if (voicemail)
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
  v7.receiver = self;
  v7.super_class = CSDMessagingCallModel;
  v3 = [(CSDMessagingCallModel *)&v7 description];
  dictionaryRepresentation = [(CSDMessagingCallModel *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    supportsHolding = self->_supportsHolding;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  supportsGrouping = self->_supportsGrouping;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  supportsUngrouping = self->_supportsUngrouping;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  supportsDTMF = self->_supportsDTMF;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  supportsUnambiguousMultiPartyState = self->_supportsUnambiguousMultiPartyState;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  supportsAddCall = self->_supportsAddCall;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_8:
    supportsSendingToVoicemail = self->_supportsSendingToVoicemail;
    PBDataWriterWriteBOOLField();
  }

LABEL_9:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[11] = self->_supportsHolding;
    toCopy[16] |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[10] = self->_supportsGrouping;
  toCopy[16] |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  toCopy[14] = self->_supportsUngrouping;
  toCopy[16] |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  toCopy[9] = self->_supportsDTMF;
  toCopy[16] |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  toCopy[13] = self->_supportsUnambiguousMultiPartyState;
  toCopy[16] |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  toCopy[8] = self->_supportsAddCall;
  toCopy[16] |= 1u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_8:
    toCopy[12] = self->_supportsSendingToVoicemail;
    toCopy[16] |= 0x10u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 11) = self->_supportsHolding;
    *(result + 16) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 10) = self->_supportsGrouping;
  *(result + 16) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 14) = self->_supportsUngrouping;
  *(result + 16) |= 0x40u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 9) = self->_supportsDTMF;
  *(result + 16) |= 2u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 13) = self->_supportsUnambiguousMultiPartyState;
  *(result + 16) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 8) = self->_supportsAddCall;
  *(result + 16) |= 1u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 12) = self->_supportsSendingToVoicemail;
  *(result + 16) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((equalCopy[16] & 8) == 0)
    {
      goto LABEL_56;
    }

    v6 = equalCopy[11];
    if (self->_supportsHolding)
    {
      if ((equalCopy[11] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (equalCopy[11])
    {
      goto LABEL_56;
    }
  }

  else if ((equalCopy[16] & 8) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((equalCopy[16] & 4) == 0)
    {
      goto LABEL_56;
    }

    v7 = equalCopy[10];
    if (self->_supportsGrouping)
    {
      if ((equalCopy[10] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (equalCopy[10])
    {
      goto LABEL_56;
    }
  }

  else if ((equalCopy[16] & 4) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((equalCopy[16] & 0x40) == 0)
    {
      goto LABEL_56;
    }

    v8 = equalCopy[14];
    if (self->_supportsUngrouping)
    {
      if ((equalCopy[14] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (equalCopy[14])
    {
      goto LABEL_56;
    }
  }

  else if ((equalCopy[16] & 0x40) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[16] & 2) == 0)
    {
      goto LABEL_56;
    }

    v9 = equalCopy[9];
    if (self->_supportsDTMF)
    {
      if ((equalCopy[9] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (equalCopy[9])
    {
      goto LABEL_56;
    }
  }

  else if ((equalCopy[16] & 2) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((equalCopy[16] & 0x20) == 0)
    {
      goto LABEL_56;
    }

    v10 = equalCopy[13];
    if (self->_supportsUnambiguousMultiPartyState)
    {
      if ((equalCopy[13] & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else if (equalCopy[13])
    {
      goto LABEL_56;
    }
  }

  else if ((equalCopy[16] & 0x20) != 0)
  {
    goto LABEL_56;
  }

  if ((*&self->_has & 1) == 0)
  {
    if ((equalCopy[16] & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_56:
    v5 = 0;
    goto LABEL_57;
  }

  if ((equalCopy[16] & 1) == 0)
  {
    goto LABEL_56;
  }

  v11 = equalCopy[8];
  if (self->_supportsAddCall)
  {
    if ((equalCopy[8] & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  else if (equalCopy[8])
  {
    goto LABEL_56;
  }

LABEL_14:
  v5 = (equalCopy[16] & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((equalCopy[16] & 0x10) != 0)
    {
      if (self->_supportsSendingToVoicemail)
      {
        if (equalCopy[12])
        {
          goto LABEL_58;
        }
      }

      else if (!equalCopy[12])
      {
LABEL_58:
        v5 = 1;
        goto LABEL_57;
      }
    }

    goto LABEL_56;
  }

LABEL_57:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v2 = 2654435761 * self->_supportsHolding;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_supportsGrouping;
      if ((*&self->_has & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_supportsUngrouping;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_supportsDTMF;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_supportsUnambiguousMultiPartyState;
    if (*&self->_has)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_supportsAddCall;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_supportsSendingToVoicemail;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[16];
  if ((v5 & 8) != 0)
  {
    self->_supportsHolding = fromCopy[11];
    *&self->_has |= 8u;
    v5 = fromCopy[16];
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((fromCopy[16] & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_supportsGrouping = fromCopy[10];
  *&self->_has |= 4u;
  v5 = fromCopy[16];
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_supportsUngrouping = fromCopy[14];
  *&self->_has |= 0x40u;
  v5 = fromCopy[16];
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_supportsDTMF = fromCopy[9];
  *&self->_has |= 2u;
  v5 = fromCopy[16];
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_supportsUnambiguousMultiPartyState = fromCopy[13];
  *&self->_has |= 0x20u;
  v5 = fromCopy[16];
  if (!v5)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  self->_supportsAddCall = fromCopy[8];
  *&self->_has |= 1u;
  if ((fromCopy[16] & 0x10) != 0)
  {
LABEL_8:
    self->_supportsSendingToVoicemail = fromCopy[12];
    *&self->_has |= 0x10u;
  }

LABEL_9:
}

@end