@interface CSDMessagingCallModelState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAddCallAllowed:(BOOL)a3;
- (void)setHasEndAndAnswerAllowed:(BOOL)a3;
- (void)setHasHardPauseAvailable:(BOOL)a3;
- (void)setHasHoldAllowed:(BOOL)a3;
- (void)setHasHoldAndAnswerAllowed:(BOOL)a3;
- (void)setHasMergeable:(BOOL)a3;
- (void)setHasSendToVoicemailAllowed:(BOOL)a3;
- (void)setHasSwappable:(BOOL)a3;
- (void)setHasTakingCallsPrivateAllowed:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingCallModelState

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithUnsignedInt:self->_ambiguityState];
    [v3 setObject:v7 forKey:@"ambiguityState"];

    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v8 = [NSNumber numberWithBool:self->_swappable];
  [v3 setObject:v8 forKey:@"swappable"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = [NSNumber numberWithBool:self->_mergeable];
  [v3 setObject:v9 forKey:@"mergeable"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = [NSNumber numberWithBool:self->_holdAllowed];
  [v3 setObject:v10 forKey:@"holdAllowed"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = [NSNumber numberWithBool:self->_addCallAllowed];
  [v3 setObject:v11 forKey:@"addCallAllowed"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = [NSNumber numberWithBool:self->_takingCallsPrivateAllowed];
  [v3 setObject:v12 forKey:@"takingCallsPrivateAllowed"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = [NSNumber numberWithBool:self->_hardPauseAvailable];
  [v3 setObject:v13 forKey:@"hardPauseAvailable"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = [NSNumber numberWithBool:self->_endAndAnswerAllowed];
  [v3 setObject:v14 forKey:@"endAndAnswerAllowed"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v15 = [NSNumber numberWithBool:self->_holdAndAnswerAllowed];
  [v3 setObject:v15 forKey:@"holdAndAnswerAllowed"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_11:
    v5 = [NSNumber numberWithBool:self->_sendToVoicemailAllowed];
    [v3 setObject:v5 forKey:@"sendToVoicemailAllowed"];
  }

LABEL_12:

  return v3;
}

- (void)setHasSwappable:(BOOL)a3
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

- (void)setHasMergeable:(BOOL)a3
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

- (void)setHasHoldAllowed:(BOOL)a3
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

- (void)setHasAddCallAllowed:(BOOL)a3
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

- (void)setHasTakingCallsPrivateAllowed:(BOOL)a3
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

- (void)setHasHardPauseAvailable:(BOOL)a3
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

- (void)setHasEndAndAnswerAllowed:(BOOL)a3
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

- (void)setHasHoldAndAnswerAllowed:(BOOL)a3
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

- (void)setHasSendToVoicemailAllowed:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingCallModelState;
  v3 = [(CSDMessagingCallModelState *)&v7 description];
  v4 = [(CSDMessagingCallModelState *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  has = self->_has;
  if (has)
  {
    ambiguityState = self->_ambiguityState;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  swappable = self->_swappable;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  mergeable = self->_mergeable;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  holdAllowed = self->_holdAllowed;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  addCallAllowed = self->_addCallAllowed;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  takingCallsPrivateAllowed = self->_takingCallsPrivateAllowed;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  hardPauseAvailable = self->_hardPauseAvailable;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  endAndAnswerAllowed = self->_endAndAnswerAllowed;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  holdAndAnswerAllowed = self->_holdAndAnswerAllowed;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_11:
    sendToVoicemailAllowed = self->_sendToVoicemailAllowed;
    PBDataWriterWriteBOOLField();
  }

LABEL_12:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_ambiguityState;
    *(v4 + 12) |= 1u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 19) = self->_swappable;
  *(v4 + 12) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v4 + 17) = self->_mergeable;
  *(v4 + 12) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v4 + 15) = self->_holdAllowed;
  *(v4 + 12) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v4 + 12) = self->_addCallAllowed;
  *(v4 + 12) |= 2u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v4 + 20) = self->_takingCallsPrivateAllowed;
  *(v4 + 12) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v4 + 14) = self->_hardPauseAvailable;
  *(v4 + 12) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 13) = self->_endAndAnswerAllowed;
  *(v4 + 12) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  *(v4 + 16) = self->_holdAndAnswerAllowed;
  *(v4 + 12) |= 0x20u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_11:
    *(v4 + 18) = self->_sendToVoicemailAllowed;
    *(v4 + 12) |= 0x80u;
  }

LABEL_12:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_ambiguityState;
    *(result + 12) |= 1u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(result + 19) = self->_swappable;
  *(result + 12) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 17) = self->_mergeable;
  *(result + 12) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 15) = self->_holdAllowed;
  *(result + 12) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 12) = self->_addCallAllowed;
  *(result + 12) |= 2u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 20) = self->_takingCallsPrivateAllowed;
  *(result + 12) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 14) = self->_hardPauseAvailable;
  *(result + 12) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 13) = self->_endAndAnswerAllowed;
  *(result + 12) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(result + 16) = self->_holdAndAnswerAllowed;
  *(result + 12) |= 0x20u;
  if ((*&self->_has & 0x80) == 0)
  {
    return result;
  }

LABEL_11:
  *(result + 18) = self->_sendToVoicemailAllowed;
  *(result + 12) |= 0x80u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_78;
  }

  has = self->_has;
  v6 = *(v4 + 12);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_ambiguityState != *(v4 + 2))
    {
      goto LABEL_78;
    }
  }

  else if (v6)
  {
    goto LABEL_78;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 12) & 0x100) == 0)
    {
      goto LABEL_78;
    }

    v8 = *(v4 + 19);
    if (self->_swappable)
    {
      if ((*(v4 + 19) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else if (*(v4 + 19))
    {
      goto LABEL_78;
    }
  }

  else if ((*(v4 + 12) & 0x100) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_78;
    }

    v9 = *(v4 + 17);
    if (self->_mergeable)
    {
      if ((*(v4 + 17) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else if (*(v4 + 17))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_78;
    }

    v10 = *(v4 + 15);
    if (self->_holdAllowed)
    {
      if ((*(v4 + 15) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else if (*(v4 + 15))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_78;
    }

    v11 = *(v4 + 12);
    if (self->_addCallAllowed)
    {
      if ((*(v4 + 12) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else if (*(v4 + 12))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_78;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 12) & 0x200) == 0)
    {
      goto LABEL_78;
    }

    v12 = *(v4 + 20);
    if (self->_takingCallsPrivateAllowed)
    {
      if ((*(v4 + 20) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else if (*(v4 + 20))
    {
      goto LABEL_78;
    }
  }

  else if ((*(v4 + 12) & 0x200) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_78;
    }

    v13 = *(v4 + 14);
    if (self->_hardPauseAvailable)
    {
      if ((*(v4 + 14) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else if (*(v4 + 14))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_78;
    }

    v14 = *(v4 + 13);
    if (self->_endAndAnswerAllowed)
    {
      if ((*(v4 + 13) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else if (*(v4 + 13))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_78;
    }

    v15 = *(v4 + 16);
    if (self->_holdAndAnswerAllowed)
    {
      if ((*(v4 + 16) & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    else if (*(v4 + 16))
    {
      goto LABEL_78;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_78;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) != 0)
    {
      if (self->_sendToVoicemailAllowed)
      {
        if (*(v4 + 18))
        {
          goto LABEL_80;
        }
      }

      else if (!*(v4 + 18))
      {
LABEL_80:
        v7 = 1;
        goto LABEL_79;
      }
    }

LABEL_78:
    v7 = 0;
    goto LABEL_79;
  }

  v7 = (v6 & 0x80) == 0;
LABEL_79:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761 * self->_ambiguityState;
    if ((*&self->_has & 0x100) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_swappable;
      if ((has & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_mergeable;
    if ((has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_holdAllowed;
    if ((has & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = 0;
  if ((has & 2) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_addCallAllowed;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_takingCallsPrivateAllowed;
    if ((has & 8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  if ((has & 8) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_hardPauseAvailable;
    if ((has & 4) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = 0;
  if ((has & 4) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_endAndAnswerAllowed;
    if ((has & 0x20) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

LABEL_19:
  v10 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v11 = 2654435761 * self->_holdAndAnswerAllowed;
  if ((has & 0x80) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v12 = 2654435761 * self->_sendToVoicemailAllowed;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 12);
  if (v5)
  {
    self->_ambiguityState = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 12);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(v4 + 12) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  self->_swappable = *(v4 + 19);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 12);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_mergeable = *(v4 + 17);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 12);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_holdAllowed = *(v4 + 15);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 12);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_addCallAllowed = *(v4 + 12);
  *&self->_has |= 2u;
  v5 = *(v4 + 12);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_takingCallsPrivateAllowed = *(v4 + 20);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 12);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_hardPauseAvailable = *(v4 + 14);
  *&self->_has |= 8u;
  v5 = *(v4 + 12);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_endAndAnswerAllowed = *(v4 + 13);
  *&self->_has |= 4u;
  v5 = *(v4 + 12);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  self->_holdAndAnswerAllowed = *(v4 + 16);
  *&self->_has |= 0x20u;
  if ((*(v4 + 12) & 0x80) != 0)
  {
LABEL_11:
    self->_sendToVoicemailAllowed = *(v4 + 18);
    *&self->_has |= 0x80u;
  }

LABEL_12:
}

@end