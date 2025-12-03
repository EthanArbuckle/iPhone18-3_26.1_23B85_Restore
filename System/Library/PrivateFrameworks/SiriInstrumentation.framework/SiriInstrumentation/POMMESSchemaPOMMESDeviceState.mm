@interface POMMESSchemaPOMMESDeviceState
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESDeviceState)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESDeviceState)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsCarPlayEnabled:(BOOL)enabled;
- (void)setHasIsEyesFreeEnabled:(BOOL)enabled;
- (void)setHasIsLockedWithPasscode:(BOOL)passcode;
- (void)setHasIsMultiUserDevice:(BOOL)device;
- (void)setHasIsTextToSpeechEnabled:(BOOL)enabled;
- (void)setHasIsVoiceTriggerEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESDeviceState

- (POMMESSchemaPOMMESDeviceState)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = POMMESSchemaPOMMESDeviceState;
  v5 = [(POMMESSchemaPOMMESDeviceState *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"companionName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(POMMESSchemaPOMMESDeviceState *)v5 setCompanionName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isCarDoNotDisturbModeEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESDeviceState setIsCarDoNotDisturbModeEnabled:](v5, "setIsCarDoNotDisturbModeEnabled:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isCarPlayEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESDeviceState setIsCarPlayEnabled:](v5, "setIsCarPlayEnabled:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isEyesFreeEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESDeviceState setIsEyesFreeEnabled:](v5, "setIsEyesFreeEnabled:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isLockedWithPasscode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESDeviceState setIsLockedWithPasscode:](v5, "setIsLockedWithPasscode:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isMultiUserDevice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESDeviceState setIsMultiUserDevice:](v5, "setIsMultiUserDevice:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"isTextToSpeechEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESDeviceState setIsTextToSpeechEnabled:](v5, "setIsTextToSpeechEnabled:", [v13 BOOLValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"isVoiceTriggerEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESDeviceState setIsVoiceTriggerEnabled:](v5, "setIsVoiceTriggerEnabled:", [v14 BOOLValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESDeviceState)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESDeviceState *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESDeviceState *)self dictionaryRepresentation];
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
  if (self->_companionName)
  {
    companionName = [(POMMESSchemaPOMMESDeviceState *)self companionName];
    v5 = [companionName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"companionName"];
  }

  v6 = *(&self->_isVoiceTriggerEnabled + 1);
  if (v6)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESDeviceState isCarDoNotDisturbModeEnabled](self, "isCarDoNotDisturbModeEnabled")}];
    [dictionary setObject:v9 forKeyedSubscript:@"isCarDoNotDisturbModeEnabled"];

    v6 = *(&self->_isVoiceTriggerEnabled + 1);
    if ((v6 & 2) == 0)
    {
LABEL_5:
      if ((v6 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  else if ((*(&self->_isVoiceTriggerEnabled + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESDeviceState isCarPlayEnabled](self, "isCarPlayEnabled")}];
  [dictionary setObject:v10 forKeyedSubscript:@"isCarPlayEnabled"];

  v6 = *(&self->_isVoiceTriggerEnabled + 1);
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESDeviceState isEyesFreeEnabled](self, "isEyesFreeEnabled")}];
  [dictionary setObject:v11 forKeyedSubscript:@"isEyesFreeEnabled"];

  v6 = *(&self->_isVoiceTriggerEnabled + 1);
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESDeviceState isLockedWithPasscode](self, "isLockedWithPasscode")}];
  [dictionary setObject:v12 forKeyedSubscript:@"isLockedWithPasscode"];

  v6 = *(&self->_isVoiceTriggerEnabled + 1);
  if ((v6 & 0x10) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESDeviceState isMultiUserDevice](self, "isMultiUserDevice")}];
  [dictionary setObject:v13 forKeyedSubscript:@"isMultiUserDevice"];

  v6 = *(&self->_isVoiceTriggerEnabled + 1);
  if ((v6 & 0x20) == 0)
  {
LABEL_9:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_19:
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESDeviceState isTextToSpeechEnabled](self, "isTextToSpeechEnabled")}];
  [dictionary setObject:v14 forKeyedSubscript:@"isTextToSpeechEnabled"];

  if ((*(&self->_isVoiceTriggerEnabled + 1) & 0x40) != 0)
  {
LABEL_10:
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESDeviceState isVoiceTriggerEnabled](self, "isVoiceTriggerEnabled")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isVoiceTriggerEnabled"];
  }

LABEL_11:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_companionName hash];
  if (*(&self->_isVoiceTriggerEnabled + 1))
  {
    v4 = 2654435761 * self->_isCarDoNotDisturbModeEnabled;
    if ((*(&self->_isVoiceTriggerEnabled + 1) & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_isCarPlayEnabled;
      if ((*(&self->_isVoiceTriggerEnabled + 1) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(&self->_isVoiceTriggerEnabled + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*(&self->_isVoiceTriggerEnabled + 1) & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_isEyesFreeEnabled;
    if ((*(&self->_isVoiceTriggerEnabled + 1) & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v6 = 0;
  if ((*(&self->_isVoiceTriggerEnabled + 1) & 8) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_isLockedWithPasscode;
    if ((*(&self->_isVoiceTriggerEnabled + 1) & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = 0;
  if ((*(&self->_isVoiceTriggerEnabled + 1) & 0x10) != 0)
  {
LABEL_6:
    v8 = 2654435761 * self->_isMultiUserDevice;
    if ((*(&self->_isVoiceTriggerEnabled + 1) & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v9 = 0;
    if ((*(&self->_isVoiceTriggerEnabled + 1) & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_13:
  v8 = 0;
  if ((*(&self->_isVoiceTriggerEnabled + 1) & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v9 = 2654435761 * self->_isTextToSpeechEnabled;
  if ((*(&self->_isVoiceTriggerEnabled + 1) & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v10 = 2654435761 * self->_isVoiceTriggerEnabled;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  companionName = [(POMMESSchemaPOMMESDeviceState *)self companionName];
  companionName2 = [equalCopy companionName];
  v7 = companionName2;
  if ((companionName != 0) == (companionName2 == 0))
  {

    goto LABEL_36;
  }

  companionName3 = [(POMMESSchemaPOMMESDeviceState *)self companionName];
  if (companionName3)
  {
    v9 = companionName3;
    companionName4 = [(POMMESSchemaPOMMESDeviceState *)self companionName];
    companionName5 = [equalCopy companionName];
    v12 = [companionName4 isEqual:companionName5];

    if (!v12)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v13 = *(&self->_isVoiceTriggerEnabled + 1);
  v14 = equalCopy[23];
  if ((v13 & 1) != (v14 & 1))
  {
LABEL_36:
    v28 = 0;
    goto LABEL_37;
  }

  if (v13)
  {
    isCarDoNotDisturbModeEnabled = self->_isCarDoNotDisturbModeEnabled;
    if (isCarDoNotDisturbModeEnabled != [equalCopy isCarDoNotDisturbModeEnabled])
    {
      goto LABEL_36;
    }

    v13 = *(&self->_isVoiceTriggerEnabled + 1);
    v14 = equalCopy[23];
  }

  v16 = (v13 >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_36;
  }

  if (v16)
  {
    isCarPlayEnabled = self->_isCarPlayEnabled;
    if (isCarPlayEnabled != [equalCopy isCarPlayEnabled])
    {
      goto LABEL_36;
    }

    v13 = *(&self->_isVoiceTriggerEnabled + 1);
    v14 = equalCopy[23];
  }

  v18 = (v13 >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_36;
  }

  if (v18)
  {
    isEyesFreeEnabled = self->_isEyesFreeEnabled;
    if (isEyesFreeEnabled != [equalCopy isEyesFreeEnabled])
    {
      goto LABEL_36;
    }

    v13 = *(&self->_isVoiceTriggerEnabled + 1);
    v14 = equalCopy[23];
  }

  v20 = (v13 >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_36;
  }

  if (v20)
  {
    isLockedWithPasscode = self->_isLockedWithPasscode;
    if (isLockedWithPasscode != [equalCopy isLockedWithPasscode])
    {
      goto LABEL_36;
    }

    v13 = *(&self->_isVoiceTriggerEnabled + 1);
    v14 = equalCopy[23];
  }

  v22 = (v13 >> 4) & 1;
  if (v22 != ((v14 >> 4) & 1))
  {
    goto LABEL_36;
  }

  if (v22)
  {
    isMultiUserDevice = self->_isMultiUserDevice;
    if (isMultiUserDevice != [equalCopy isMultiUserDevice])
    {
      goto LABEL_36;
    }

    v13 = *(&self->_isVoiceTriggerEnabled + 1);
    v14 = equalCopy[23];
  }

  v24 = (v13 >> 5) & 1;
  if (v24 != ((v14 >> 5) & 1))
  {
    goto LABEL_36;
  }

  if (v24)
  {
    isTextToSpeechEnabled = self->_isTextToSpeechEnabled;
    if (isTextToSpeechEnabled == [equalCopy isTextToSpeechEnabled])
    {
      v13 = *(&self->_isVoiceTriggerEnabled + 1);
      v14 = equalCopy[23];
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_32:
  v26 = (v13 >> 6) & 1;
  if (v26 != ((v14 >> 6) & 1))
  {
    goto LABEL_36;
  }

  if (v26)
  {
    isVoiceTriggerEnabled = self->_isVoiceTriggerEnabled;
    if (isVoiceTriggerEnabled != [equalCopy isVoiceTriggerEnabled])
    {
      goto LABEL_36;
    }
  }

  v28 = 1;
LABEL_37:

  return v28;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  companionName = [(POMMESSchemaPOMMESDeviceState *)self companionName];

  if (companionName)
  {
    PBDataWriterWriteStringField();
  }

  v5 = *(&self->_isVoiceTriggerEnabled + 1);
  if (v5)
  {
    PBDataWriterWriteBOOLField();
    v5 = *(&self->_isVoiceTriggerEnabled + 1);
  }

  v6 = toCopy;
  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v6 = toCopy;
    v5 = *(&self->_isVoiceTriggerEnabled + 1);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteBOOLField();
  v6 = toCopy;
  v5 = *(&self->_isVoiceTriggerEnabled + 1);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  PBDataWriterWriteBOOLField();
  v6 = toCopy;
  v5 = *(&self->_isVoiceTriggerEnabled + 1);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteBOOLField();
  v6 = toCopy;
  v5 = *(&self->_isVoiceTriggerEnabled + 1);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  PBDataWriterWriteBOOLField();
  v6 = toCopy;
  if ((*(&self->_isVoiceTriggerEnabled + 1) & 0x40) != 0)
  {
LABEL_11:
    PBDataWriterWriteBOOLField();
    v6 = toCopy;
  }

LABEL_12:
}

- (void)setHasIsVoiceTriggerEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isVoiceTriggerEnabled + 1) = *(&self->_isVoiceTriggerEnabled + 1) & 0xBF | v3;
}

- (void)setHasIsTextToSpeechEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isVoiceTriggerEnabled + 1) = *(&self->_isVoiceTriggerEnabled + 1) & 0xDF | v3;
}

- (void)setHasIsMultiUserDevice:(BOOL)device
{
  if (device)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isVoiceTriggerEnabled + 1) = *(&self->_isVoiceTriggerEnabled + 1) & 0xEF | v3;
}

- (void)setHasIsLockedWithPasscode:(BOOL)passcode
{
  if (passcode)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isVoiceTriggerEnabled + 1) = *(&self->_isVoiceTriggerEnabled + 1) & 0xF7 | v3;
}

- (void)setHasIsEyesFreeEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isVoiceTriggerEnabled + 1) = *(&self->_isVoiceTriggerEnabled + 1) & 0xFB | v3;
}

- (void)setHasIsCarPlayEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isVoiceTriggerEnabled + 1) = *(&self->_isVoiceTriggerEnabled + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end