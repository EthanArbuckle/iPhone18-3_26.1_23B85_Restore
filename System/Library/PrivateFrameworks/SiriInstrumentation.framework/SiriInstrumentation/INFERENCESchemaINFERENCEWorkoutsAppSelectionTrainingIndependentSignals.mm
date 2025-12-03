@interface INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDeviceMotionState:(BOOL)state;
- (void)setHasIsDeviceLockStatus:(BOOL)status;
- (void)setHasIsIndoorWorkout:(BOOL)workout;
- (void)setHasIsMobileDataOn:(BOOL)on;
- (void)setHasIsWifiOn:(BOOL)on;
- (void)setHasWorkoutType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals

- (INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals;
  v5 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"commonIndependent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCECommonAppIndependentSignals alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)v5 setCommonIndependent:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals setNowPlayingState:](v5, "setNowPlayingState:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"deviceMotionState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals setDeviceMotionState:](v5, "setDeviceMotionState:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isDeviceLockStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals setIsDeviceLockStatus:](v5, "setIsDeviceLockStatus:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isMobileDataOn"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals setIsMobileDataOn:](v5, "setIsMobileDataOn:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isWifiOn"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals setIsWifiOn:](v5, "setIsWifiOn:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"workoutType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals setWorkoutType:](v5, "setWorkoutType:", [v13 intValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"isIndoorWorkout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals setIsIndoorWorkout:](v5, "setIsIndoorWorkout:", [v14 BOOLValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self dictionaryRepresentation];
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
  if (self->_commonIndependent)
  {
    commonIndependent = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self commonIndependent];
    dictionaryRepresentation = [commonIndependent dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"commonIndependent"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"commonIndependent"];
    }
  }

  v7 = *(&self->_isIndoorWorkout + 1);
  if ((v7 & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals deviceMotionState](self, "deviceMotionState")}];
    [dictionary setObject:v10 forKeyedSubscript:@"deviceMotionState"];

    v7 = *(&self->_isIndoorWorkout + 1);
    if ((v7 & 4) == 0)
    {
LABEL_8:
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((*(&self->_isIndoorWorkout + 1) & 4) == 0)
  {
    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals isDeviceLockStatus](self, "isDeviceLockStatus")}];
  [dictionary setObject:v11 forKeyedSubscript:@"isDeviceLockStatus"];

  v7 = *(&self->_isIndoorWorkout + 1);
  if ((v7 & 0x40) == 0)
  {
LABEL_9:
    if ((v7 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals isIndoorWorkout](self, "isIndoorWorkout")}];
  [dictionary setObject:v12 forKeyedSubscript:@"isIndoorWorkout"];

  v7 = *(&self->_isIndoorWorkout + 1);
  if ((v7 & 8) == 0)
  {
LABEL_10:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals isMobileDataOn](self, "isMobileDataOn")}];
  [dictionary setObject:v13 forKeyedSubscript:@"isMobileDataOn"];

  v7 = *(&self->_isIndoorWorkout + 1);
  if ((v7 & 0x10) == 0)
  {
LABEL_11:
    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals isWifiOn](self, "isWifiOn")}];
  [dictionary setObject:v14 forKeyedSubscript:@"isWifiOn"];

  v7 = *(&self->_isIndoorWorkout + 1);
  if ((v7 & 1) == 0)
  {
LABEL_12:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_22:
  v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals nowPlayingState](self, "nowPlayingState")}];
  [dictionary setObject:v15 forKeyedSubscript:@"nowPlayingState"];

  if ((*(&self->_isIndoorWorkout + 1) & 0x20) != 0)
  {
LABEL_13:
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals workoutType](self, "workoutType")}];
    [dictionary setObject:v8 forKeyedSubscript:@"workoutType"];
  }

LABEL_14:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(INFERENCESchemaINFERENCECommonAppIndependentSignals *)self->_commonIndependent hash];
  if (*(&self->_isIndoorWorkout + 1))
  {
    v4 = 2654435761 * self->_nowPlayingState;
    if ((*(&self->_isIndoorWorkout + 1) & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_deviceMotionState;
      if ((*(&self->_isIndoorWorkout + 1) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(&self->_isIndoorWorkout + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*(&self->_isIndoorWorkout + 1) & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_isDeviceLockStatus;
    if ((*(&self->_isIndoorWorkout + 1) & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v6 = 0;
  if ((*(&self->_isIndoorWorkout + 1) & 8) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_isMobileDataOn;
    if ((*(&self->_isIndoorWorkout + 1) & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = 0;
  if ((*(&self->_isIndoorWorkout + 1) & 0x10) != 0)
  {
LABEL_6:
    v8 = 2654435761 * self->_isWifiOn;
    if ((*(&self->_isIndoorWorkout + 1) & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v9 = 0;
    if ((*(&self->_isIndoorWorkout + 1) & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_13:
  v8 = 0;
  if ((*(&self->_isIndoorWorkout + 1) & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v9 = 2654435761 * self->_workoutType;
  if ((*(&self->_isIndoorWorkout + 1) & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v10 = 2654435761 * self->_isIndoorWorkout;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  commonIndependent = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self commonIndependent];
  commonIndependent2 = [equalCopy commonIndependent];
  v7 = commonIndependent2;
  if ((commonIndependent != 0) == (commonIndependent2 == 0))
  {

    goto LABEL_36;
  }

  commonIndependent3 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self commonIndependent];
  if (commonIndependent3)
  {
    v9 = commonIndependent3;
    commonIndependent4 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self commonIndependent];
    commonIndependent5 = [equalCopy commonIndependent];
    v12 = [commonIndependent4 isEqual:commonIndependent5];

    if (!v12)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v13 = *(&self->_isIndoorWorkout + 1);
  v14 = equalCopy[33];
  if ((v13 & 1) != (v14 & 1))
  {
LABEL_36:
    v28 = 0;
    goto LABEL_37;
  }

  if (v13)
  {
    nowPlayingState = self->_nowPlayingState;
    if (nowPlayingState != [equalCopy nowPlayingState])
    {
      goto LABEL_36;
    }

    v13 = *(&self->_isIndoorWorkout + 1);
    v14 = equalCopy[33];
  }

  v16 = (v13 >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_36;
  }

  if (v16)
  {
    deviceMotionState = self->_deviceMotionState;
    if (deviceMotionState != [equalCopy deviceMotionState])
    {
      goto LABEL_36;
    }

    v13 = *(&self->_isIndoorWorkout + 1);
    v14 = equalCopy[33];
  }

  v18 = (v13 >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_36;
  }

  if (v18)
  {
    isDeviceLockStatus = self->_isDeviceLockStatus;
    if (isDeviceLockStatus != [equalCopy isDeviceLockStatus])
    {
      goto LABEL_36;
    }

    v13 = *(&self->_isIndoorWorkout + 1);
    v14 = equalCopy[33];
  }

  v20 = (v13 >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_36;
  }

  if (v20)
  {
    isMobileDataOn = self->_isMobileDataOn;
    if (isMobileDataOn != [equalCopy isMobileDataOn])
    {
      goto LABEL_36;
    }

    v13 = *(&self->_isIndoorWorkout + 1);
    v14 = equalCopy[33];
  }

  v22 = (v13 >> 4) & 1;
  if (v22 != ((v14 >> 4) & 1))
  {
    goto LABEL_36;
  }

  if (v22)
  {
    isWifiOn = self->_isWifiOn;
    if (isWifiOn != [equalCopy isWifiOn])
    {
      goto LABEL_36;
    }

    v13 = *(&self->_isIndoorWorkout + 1);
    v14 = equalCopy[33];
  }

  v24 = (v13 >> 5) & 1;
  if (v24 != ((v14 >> 5) & 1))
  {
    goto LABEL_36;
  }

  if (v24)
  {
    workoutType = self->_workoutType;
    if (workoutType == [equalCopy workoutType])
    {
      v13 = *(&self->_isIndoorWorkout + 1);
      v14 = equalCopy[33];
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
    isIndoorWorkout = self->_isIndoorWorkout;
    if (isIndoorWorkout != [equalCopy isIndoorWorkout])
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
  commonIndependent = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self commonIndependent];

  if (commonIndependent)
  {
    commonIndependent2 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self commonIndependent];
    PBDataWriterWriteSubmessage();
  }

  v6 = *(&self->_isIndoorWorkout + 1);
  if (v6)
  {
    PBDataWriterWriteInt32Field();
    v6 = *(&self->_isIndoorWorkout + 1);
  }

  v7 = toCopy;
  if ((v6 & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
    v6 = *(&self->_isIndoorWorkout + 1);
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteBOOLField();
  v7 = toCopy;
  v6 = *(&self->_isIndoorWorkout + 1);
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  PBDataWriterWriteBOOLField();
  v7 = toCopy;
  v6 = *(&self->_isIndoorWorkout + 1);
  if ((v6 & 0x10) == 0)
  {
LABEL_9:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteBOOLField();
  v7 = toCopy;
  v6 = *(&self->_isIndoorWorkout + 1);
  if ((v6 & 0x20) == 0)
  {
LABEL_10:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  PBDataWriterWriteInt32Field();
  v7 = toCopy;
  if ((*(&self->_isIndoorWorkout + 1) & 0x40) != 0)
  {
LABEL_11:
    PBDataWriterWriteBOOLField();
    v7 = toCopy;
  }

LABEL_12:
}

- (void)setHasIsIndoorWorkout:(BOOL)workout
{
  if (workout)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isIndoorWorkout + 1) = *(&self->_isIndoorWorkout + 1) & 0xBF | v3;
}

- (void)setHasWorkoutType:(BOOL)type
{
  if (type)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isIndoorWorkout + 1) = *(&self->_isIndoorWorkout + 1) & 0xDF | v3;
}

- (void)setHasIsWifiOn:(BOOL)on
{
  if (on)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isIndoorWorkout + 1) = *(&self->_isIndoorWorkout + 1) & 0xEF | v3;
}

- (void)setHasIsMobileDataOn:(BOOL)on
{
  if (on)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isIndoorWorkout + 1) = *(&self->_isIndoorWorkout + 1) & 0xF7 | v3;
}

- (void)setHasIsDeviceLockStatus:(BOOL)status
{
  if (status)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isIndoorWorkout + 1) = *(&self->_isIndoorWorkout + 1) & 0xFB | v3;
}

- (void)setHasDeviceMotionState:(BOOL)state
{
  if (state)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isIndoorWorkout + 1) = *(&self->_isIndoorWorkout + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self commonIndependent:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self deleteCommonIndependent];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end