@interface INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDeviceMotionState:(BOOL)a3;
- (void)setHasIsDeviceLockStatus:(BOOL)a3;
- (void)setHasIsIndoorWorkout:(BOOL)a3;
- (void)setHasIsMobileDataOn:(BOOL)a3;
- (void)setHasIsWifiOn:(BOOL)a3;
- (void)setHasWorkoutType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals

- (INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals;
  v5 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"commonIndependent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCECommonAppIndependentSignals alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)v5 setCommonIndependent:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"nowPlayingState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals setNowPlayingState:](v5, "setNowPlayingState:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"deviceMotionState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals setDeviceMotionState:](v5, "setDeviceMotionState:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"isDeviceLockStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals setIsDeviceLockStatus:](v5, "setIsDeviceLockStatus:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"isMobileDataOn"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals setIsMobileDataOn:](v5, "setIsMobileDataOn:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"isWifiOn"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals setIsWifiOn:](v5, "setIsWifiOn:", [v12 BOOLValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"workoutType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals setWorkoutType:](v5, "setWorkoutType:", [v13 intValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"isIndoorWorkout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals setIsIndoorWorkout:](v5, "setIsIndoorWorkout:", [v14 BOOLValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_commonIndependent)
  {
    v4 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self commonIndependent];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"commonIndependent"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"commonIndependent"];
    }
  }

  v7 = *(&self->_isIndoorWorkout + 1);
  if ((v7 & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals deviceMotionState](self, "deviceMotionState")}];
    [v3 setObject:v10 forKeyedSubscript:@"deviceMotionState"];

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
  [v3 setObject:v11 forKeyedSubscript:@"isDeviceLockStatus"];

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
  [v3 setObject:v12 forKeyedSubscript:@"isIndoorWorkout"];

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
  [v3 setObject:v13 forKeyedSubscript:@"isMobileDataOn"];

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
  [v3 setObject:v14 forKeyedSubscript:@"isWifiOn"];

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
  [v3 setObject:v15 forKeyedSubscript:@"nowPlayingState"];

  if ((*(&self->_isIndoorWorkout + 1) & 0x20) != 0)
  {
LABEL_13:
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals workoutType](self, "workoutType")}];
    [v3 setObject:v8 forKeyedSubscript:@"workoutType"];
  }

LABEL_14:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  v5 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self commonIndependent];
  v6 = [v4 commonIndependent];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_36;
  }

  v8 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self commonIndependent];
  if (v8)
  {
    v9 = v8;
    v10 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self commonIndependent];
    v11 = [v4 commonIndependent];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v13 = *(&self->_isIndoorWorkout + 1);
  v14 = v4[33];
  if ((v13 & 1) != (v14 & 1))
  {
LABEL_36:
    v28 = 0;
    goto LABEL_37;
  }

  if (v13)
  {
    nowPlayingState = self->_nowPlayingState;
    if (nowPlayingState != [v4 nowPlayingState])
    {
      goto LABEL_36;
    }

    v13 = *(&self->_isIndoorWorkout + 1);
    v14 = v4[33];
  }

  v16 = (v13 >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_36;
  }

  if (v16)
  {
    deviceMotionState = self->_deviceMotionState;
    if (deviceMotionState != [v4 deviceMotionState])
    {
      goto LABEL_36;
    }

    v13 = *(&self->_isIndoorWorkout + 1);
    v14 = v4[33];
  }

  v18 = (v13 >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_36;
  }

  if (v18)
  {
    isDeviceLockStatus = self->_isDeviceLockStatus;
    if (isDeviceLockStatus != [v4 isDeviceLockStatus])
    {
      goto LABEL_36;
    }

    v13 = *(&self->_isIndoorWorkout + 1);
    v14 = v4[33];
  }

  v20 = (v13 >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_36;
  }

  if (v20)
  {
    isMobileDataOn = self->_isMobileDataOn;
    if (isMobileDataOn != [v4 isMobileDataOn])
    {
      goto LABEL_36;
    }

    v13 = *(&self->_isIndoorWorkout + 1);
    v14 = v4[33];
  }

  v22 = (v13 >> 4) & 1;
  if (v22 != ((v14 >> 4) & 1))
  {
    goto LABEL_36;
  }

  if (v22)
  {
    isWifiOn = self->_isWifiOn;
    if (isWifiOn != [v4 isWifiOn])
    {
      goto LABEL_36;
    }

    v13 = *(&self->_isIndoorWorkout + 1);
    v14 = v4[33];
  }

  v24 = (v13 >> 5) & 1;
  if (v24 != ((v14 >> 5) & 1))
  {
    goto LABEL_36;
  }

  if (v24)
  {
    workoutType = self->_workoutType;
    if (workoutType == [v4 workoutType])
    {
      v13 = *(&self->_isIndoorWorkout + 1);
      v14 = v4[33];
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
    if (isIndoorWorkout != [v4 isIndoorWorkout])
    {
      goto LABEL_36;
    }
  }

  v28 = 1;
LABEL_37:

  return v28;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self commonIndependent];

  if (v4)
  {
    v5 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self commonIndependent];
    PBDataWriterWriteSubmessage();
  }

  v6 = *(&self->_isIndoorWorkout + 1);
  if (v6)
  {
    PBDataWriterWriteInt32Field();
    v6 = *(&self->_isIndoorWorkout + 1);
  }

  v7 = v8;
  if ((v6 & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
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
  v7 = v8;
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
  v7 = v8;
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
  v7 = v8;
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
  v7 = v8;
  if ((*(&self->_isIndoorWorkout + 1) & 0x40) != 0)
  {
LABEL_11:
    PBDataWriterWriteBOOLField();
    v7 = v8;
  }

LABEL_12:
}

- (void)setHasIsIndoorWorkout:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isIndoorWorkout + 1) = *(&self->_isIndoorWorkout + 1) & 0xBF | v3;
}

- (void)setHasWorkoutType:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isIndoorWorkout + 1) = *(&self->_isIndoorWorkout + 1) & 0xDF | v3;
}

- (void)setHasIsWifiOn:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isIndoorWorkout + 1) = *(&self->_isIndoorWorkout + 1) & 0xEF | v3;
}

- (void)setHasIsMobileDataOn:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isIndoorWorkout + 1) = *(&self->_isIndoorWorkout + 1) & 0xF7 | v3;
}

- (void)setHasIsDeviceLockStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isIndoorWorkout + 1) = *(&self->_isIndoorWorkout + 1) & 0xFB | v3;
}

- (void)setHasDeviceMotionState:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isIndoorWorkout + 1) = *(&self->_isIndoorWorkout + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingIndependentSignals *)self commonIndependent:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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