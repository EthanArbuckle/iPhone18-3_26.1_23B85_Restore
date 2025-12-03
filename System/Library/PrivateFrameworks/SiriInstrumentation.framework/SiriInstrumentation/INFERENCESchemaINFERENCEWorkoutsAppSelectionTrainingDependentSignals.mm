@interface INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsIndoorWorkout:(BOOL)workout;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals

- (INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals;
  v5 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"commonDependent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCECommonAppDependentSignals alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)v5 setCommonDependent:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"workoutType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals setWorkoutType:](v5, "setWorkoutType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isIndoorWorkout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals setIsIndoorWorkout:](v5, "setIsIndoorWorkout:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self dictionaryRepresentation];
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
  if (self->_commonDependent)
  {
    commonDependent = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self commonDependent];
    dictionaryRepresentation = [commonDependent dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"commonDependent"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"commonDependent"];
    }
  }

  v7 = *(&self->_isIndoorWorkout + 1);
  if ((v7 & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals isIndoorWorkout](self, "isIndoorWorkout")}];
    [dictionary setObject:v8 forKeyedSubscript:@"isIndoorWorkout"];

    v7 = *(&self->_isIndoorWorkout + 1);
  }

  if (v7)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals workoutType](self, "workoutType")}];
    [dictionary setObject:v9 forKeyedSubscript:@"workoutType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  commonDependent = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self commonDependent];
  commonDependent2 = [equalCopy commonDependent];
  v7 = commonDependent2;
  if ((commonDependent != 0) == (commonDependent2 == 0))
  {

    goto LABEL_16;
  }

  commonDependent3 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self commonDependent];
  if (commonDependent3)
  {
    v9 = commonDependent3;
    commonDependent4 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self commonDependent];
    commonDependent5 = [equalCopy commonDependent];
    v12 = [commonDependent4 isEqual:commonDependent5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v13 = *(&self->_isIndoorWorkout + 1);
  v14 = equalCopy[21];
  if ((v13 & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (v13)
  {
    workoutType = self->_workoutType;
    if (workoutType == [equalCopy workoutType])
    {
      v13 = *(&self->_isIndoorWorkout + 1);
      v14 = equalCopy[21];
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
    if (isIndoorWorkout != [equalCopy isIndoorWorkout])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  commonDependent = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self commonDependent];

  if (commonDependent)
  {
    commonDependent2 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self commonDependent];
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
    PBDataWriterWriteBOOLField();
    v7 = toCopy;
  }
}

- (void)setHasIsIndoorWorkout:(BOOL)workout
{
  if (workout)
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
  v9.super_class = INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(INFERENCESchemaINFERENCEWorkoutsAppSelectionTrainingDependentSignals *)self commonDependent:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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