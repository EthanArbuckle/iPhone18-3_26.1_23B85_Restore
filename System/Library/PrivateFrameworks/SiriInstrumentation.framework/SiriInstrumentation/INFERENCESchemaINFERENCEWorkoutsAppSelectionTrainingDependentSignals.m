@interface INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsIndoorWorkout:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals

- (INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals;
  v5 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"commonDependent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCECommonAppDependentSignals alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)v5 setCommonDependent:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"workoutType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals setWorkoutType:](v5, "setWorkoutType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isIndoorWorkout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals setIsIndoorWorkout:](v5, "setIsIndoorWorkout:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self dictionaryRepresentation];
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
  if (self->_commonDependent)
  {
    v4 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self commonDependent];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"commonDependent"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"commonDependent"];
    }
  }

  v7 = *(&self->_isIndoorWorkout + 1);
  if ((v7 & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals isIndoorWorkout](self, "isIndoorWorkout")}];
    [v3 setObject:v8 forKeyedSubscript:@"isIndoorWorkout"];

    v7 = *(&self->_isIndoorWorkout + 1);
  }

  if (v7)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals workoutType](self, "workoutType")}];
    [v3 setObject:v9 forKeyedSubscript:@"workoutType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(INFERENCESchemaINFERENCECommonAppDependentSignals *)self->_commonDependent hash];
  if (*(&self->_isIndoorWorkout + 1))
  {
    v4 = 2654435761 * self->_workoutType;
    if ((*(&self->_isIndoorWorkout + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*(&self->_isIndoorWorkout + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_isIndoorWorkout;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self commonDependent];
  v6 = [v4 commonDependent];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_16;
  }

  v8 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self commonDependent];
  if (v8)
  {
    v9 = v8;
    v10 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self commonDependent];
    v11 = [v4 commonDependent];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v13 = *(&self->_isIndoorWorkout + 1);
  v14 = v4[21];
  if ((v13 & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (v13)
  {
    workoutType = self->_workoutType;
    if (workoutType == [v4 workoutType])
    {
      v13 = *(&self->_isIndoorWorkout + 1);
      v14 = v4[21];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (v13 >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    isIndoorWorkout = self->_isIndoorWorkout;
    if (isIndoorWorkout != [v4 isIndoorWorkout])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self commonDependent];

  if (v4)
  {
    v5 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self commonDependent];
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
    PBDataWriterWriteBOOLField();
    v7 = v8;
  }
}

- (void)setHasIsIndoorWorkout:(BOOL)a3
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
  v9.super_class = INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self commonDependent:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self deleteCommonDependent];
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