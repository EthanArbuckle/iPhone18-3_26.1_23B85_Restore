@interface CDASchemaCDAScoreBoosters
- (BOOL)isEqual:(id)equal;
- (CDASchemaCDAScoreBoosters)initWithDictionary:(id)dictionary;
- (CDASchemaCDAScoreBoosters)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsTrump:(BOOL)trump;
- (void)setHasRecentAlarmBoost:(BOOL)boost;
- (void)setHasRecentMotionBoost:(BOOL)boost;
- (void)setHasRecentPlaybackBoost:(BOOL)boost;
- (void)setHasRecentRaiseToWakeBoost:(BOOL)boost;
- (void)setHasRecentSiriRequestBoost:(BOOL)boost;
- (void)setHasRecentUnlockBoost:(BOOL)boost;
- (void)setHasTrumpReason:(BOOL)reason;
- (void)writeTo:(id)to;
@end

@implementation CDASchemaCDAScoreBoosters

- (CDASchemaCDAScoreBoosters)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = CDASchemaCDAScoreBoosters;
  v5 = [(CDASchemaCDAScoreBoosters *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"deviceBoost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAScoreBoosters setDeviceBoost:](v5, "setDeviceBoost:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"recentUnlockBoost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAScoreBoosters setRecentUnlockBoost:](v5, "setRecentUnlockBoost:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"recentRaiseToWakeBoost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAScoreBoosters setRecentRaiseToWakeBoost:](v5, "setRecentRaiseToWakeBoost:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:{@"recentSiriRequestBoost", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAScoreBoosters setRecentSiriRequestBoost:](v5, "setRecentSiriRequestBoost:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"recentMotionBoost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAScoreBoosters setRecentMotionBoost:](v5, "setRecentMotionBoost:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"recentPlaybackBoost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAScoreBoosters setRecentPlaybackBoost:](v5, "setRecentPlaybackBoost:", [v11 unsignedIntValue]);
    }

    v19 = v7;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"isTrump"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAScoreBoosters setIsTrump:](v5, "setIsTrump:", [v12 BOOLValue]);
    }

    v13 = v6;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"trumpReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAScoreBoosters setTrumpReason:](v5, "setTrumpReason:", [v14 intValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"recentAlarmBoost"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CDASchemaCDAScoreBoosters setRecentAlarmBoost:](v5, "setRecentAlarmBoost:", [v15 unsignedIntValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (CDASchemaCDAScoreBoosters)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CDASchemaCDAScoreBoosters *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CDASchemaCDAScoreBoosters *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAScoreBoosters deviceBoost](self, "deviceBoost")}];
    [dictionary setObject:v5 forKeyedSubscript:@"deviceBoost"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[CDASchemaCDAScoreBoosters isTrump](self, "isTrump")}];
  [dictionary setObject:v6 forKeyedSubscript:@"isTrump"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAScoreBoosters recentAlarmBoost](self, "recentAlarmBoost")}];
  [dictionary setObject:v7 forKeyedSubscript:@"recentAlarmBoost"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAScoreBoosters recentMotionBoost](self, "recentMotionBoost")}];
  [dictionary setObject:v8 forKeyedSubscript:@"recentMotionBoost"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAScoreBoosters recentPlaybackBoost](self, "recentPlaybackBoost")}];
  [dictionary setObject:v9 forKeyedSubscript:@"recentPlaybackBoost"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAScoreBoosters recentRaiseToWakeBoost](self, "recentRaiseToWakeBoost")}];
  [dictionary setObject:v10 forKeyedSubscript:@"recentRaiseToWakeBoost"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAScoreBoosters recentUnlockBoost](self, "recentUnlockBoost")}];
    [dictionary setObject:v12 forKeyedSubscript:@"recentUnlockBoost"];

    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_23;
    }

LABEL_19:
    v13 = [(CDASchemaCDAScoreBoosters *)self trumpReason]- 1;
    if (v13 > 7)
    {
      v14 = @"CDATRUMPREASON_UNKNOWN";
    }

    else
    {
      v14 = off_1E78D2890[v13];
    }

    [dictionary setObject:v14 forKeyedSubscript:@"trumpReason"];
    goto LABEL_23;
  }

LABEL_17:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CDASchemaCDAScoreBoosters recentSiriRequestBoost](self, "recentSiriRequestBoost")}];
  [dictionary setObject:v11 forKeyedSubscript:@"recentSiriRequestBoost"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((has & 0x80) != 0)
  {
    goto LABEL_19;
  }

LABEL_23:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761 * self->_deviceBoost;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_recentUnlockBoost;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_recentRaiseToWakeBoost;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_recentSiriRequestBoost;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_recentMotionBoost;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_recentPlaybackBoost;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_isTrump;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v10 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

LABEL_17:
  v9 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v10 = 2654435761 * self->_trumpReason;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v11 = 2654435761 * self->_recentAlarmBoost;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  has = self->_has;
  v6 = equalCopy[22];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_38;
  }

  if (*&has)
  {
    deviceBoost = self->_deviceBoost;
    if (deviceBoost != [equalCopy deviceBoost])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[22];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_38;
  }

  if (v8)
  {
    recentUnlockBoost = self->_recentUnlockBoost;
    if (recentUnlockBoost != [equalCopy recentUnlockBoost])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[22];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_38;
  }

  if (v10)
  {
    recentRaiseToWakeBoost = self->_recentRaiseToWakeBoost;
    if (recentRaiseToWakeBoost != [equalCopy recentRaiseToWakeBoost])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[22];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_38;
  }

  if (v12)
  {
    recentSiriRequestBoost = self->_recentSiriRequestBoost;
    if (recentSiriRequestBoost != [equalCopy recentSiriRequestBoost])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[22];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_38;
  }

  if (v14)
  {
    recentMotionBoost = self->_recentMotionBoost;
    if (recentMotionBoost != [equalCopy recentMotionBoost])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[22];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_38;
  }

  if (v16)
  {
    recentPlaybackBoost = self->_recentPlaybackBoost;
    if (recentPlaybackBoost != [equalCopy recentPlaybackBoost])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[22];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_38;
  }

  if (v18)
  {
    isTrump = self->_isTrump;
    if (isTrump != [equalCopy isTrump])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = equalCopy[22];
  }

  v20 = (*&has >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_38;
  }

  if (v20)
  {
    trumpReason = self->_trumpReason;
    if (trumpReason == [equalCopy trumpReason])
    {
      has = self->_has;
      v6 = equalCopy[22];
      goto LABEL_34;
    }

LABEL_38:
    v24 = 0;
    goto LABEL_39;
  }

LABEL_34:
  v22 = (*&has >> 8) & 1;
  if (v22 != ((v6 >> 8) & 1))
  {
    goto LABEL_38;
  }

  if (v22)
  {
    recentAlarmBoost = self->_recentAlarmBoost;
    if (recentAlarmBoost != [equalCopy recentAlarmBoost])
    {
      goto LABEL_38;
    }
  }

  v24 = 1;
LABEL_39:

  return v24;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    PBDataWriterWriteUint32Field();
  }

LABEL_11:
}

- (void)setHasRecentAlarmBoost:(BOOL)boost
{
  if (boost)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasTrumpReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsTrump:(BOOL)trump
{
  if (trump)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasRecentPlaybackBoost:(BOOL)boost
{
  if (boost)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasRecentMotionBoost:(BOOL)boost
{
  if (boost)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasRecentSiriRequestBoost:(BOOL)boost
{
  if (boost)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasRecentRaiseToWakeBoost:(BOOL)boost
{
  if (boost)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasRecentUnlockBoost:(BOOL)boost
{
  if (boost)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end