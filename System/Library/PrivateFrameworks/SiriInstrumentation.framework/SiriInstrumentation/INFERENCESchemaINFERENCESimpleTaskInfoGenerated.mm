@interface INFERENCESchemaINFERENCESimpleTaskInfoGenerated
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCESimpleTaskInfoGenerated)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCESimpleTaskInfoGenerated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsExecuted:(BOOL)executed;
- (void)setHasIsSuccess:(BOOL)success;
- (void)setHasIsSuccessfulDirectExecution:(BOOL)execution;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCESimpleTaskInfoGenerated

- (INFERENCESchemaINFERENCESimpleTaskInfoGenerated)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = INFERENCESchemaINFERENCESimpleTaskInfoGenerated;
  v5 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalResolutionContextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)v5 setOriginalResolutionContextId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"taskSuccessType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCESimpleTaskInfoGenerated setTaskSuccessType:](v5, "setTaskSuccessType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isSuccess"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCESimpleTaskInfoGenerated setIsSuccess:](v5, "setIsSuccess:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isExecuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCESimpleTaskInfoGenerated setIsExecuted:](v5, "setIsExecuted:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isSuccessfulDirectExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCESimpleTaskInfoGenerated setIsSuccessfulDirectExecution:](v5, "setIsSuccessfulDirectExecution:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"taskSpecificInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[INFERENCESchemaINFERENCETaskSpecificInfo alloc] initWithDictionary:v12];
      [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)v5 setTaskSpecificInfo:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCESimpleTaskInfoGenerated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self dictionaryRepresentation];
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
  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCESimpleTaskInfoGenerated isExecuted](self, "isExecuted")}];
    [dictionary setObject:v8 forKeyedSubscript:@"isExecuted"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCESimpleTaskInfoGenerated isSuccess](self, "isSuccess")}];
  [dictionary setObject:v9 forKeyedSubscript:@"isSuccess"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCESimpleTaskInfoGenerated isSuccessfulDirectExecution](self, "isSuccessfulDirectExecution")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isSuccessfulDirectExecution"];
  }

LABEL_5:
  if (self->_originalResolutionContextId)
  {
    originalResolutionContextId = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self originalResolutionContextId];
    dictionaryRepresentation = [originalResolutionContextId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"originalResolutionContextId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"originalResolutionContextId"];
    }
  }

  if (self->_taskSpecificInfo)
  {
    taskSpecificInfo = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self taskSpecificInfo];
    dictionaryRepresentation2 = [taskSpecificInfo dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"taskSpecificInfo"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"taskSpecificInfo"];
    }
  }

  if (*&self->_has)
  {
    v14 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self taskSuccessType]- 1;
    if (v14 > 3)
    {
      v15 = @"INFERENCETASKSUCCESSTYPE_UNKNOWN";
    }

    else
    {
      v15 = off_1E78D8B50[v14];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"taskSuccessType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalResolutionContextId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_taskSuccessType;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_isSuccess;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(INFERENCESchemaINFERENCETaskSpecificInfo *)self->_taskSpecificInfo hash];
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_isExecuted;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_isSuccessfulDirectExecution;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(INFERENCESchemaINFERENCETaskSpecificInfo *)self->_taskSpecificInfo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  originalResolutionContextId = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self originalResolutionContextId];
  originalResolutionContextId2 = [equalCopy originalResolutionContextId];
  if ((originalResolutionContextId != 0) == (originalResolutionContextId2 == 0))
  {
    goto LABEL_26;
  }

  originalResolutionContextId3 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self originalResolutionContextId];
  if (originalResolutionContextId3)
  {
    v8 = originalResolutionContextId3;
    originalResolutionContextId4 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self originalResolutionContextId];
    originalResolutionContextId5 = [equalCopy originalResolutionContextId];
    v11 = [originalResolutionContextId4 isEqual:originalResolutionContextId5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[32];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_27;
  }

  if (*&has)
  {
    taskSuccessType = self->_taskSuccessType;
    if (taskSuccessType != [equalCopy taskSuccessType])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = equalCopy[32];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v15)
  {
    isSuccess = self->_isSuccess;
    if (isSuccess != [equalCopy isSuccess])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = equalCopy[32];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v17)
  {
    isExecuted = self->_isExecuted;
    if (isExecuted != [equalCopy isExecuted])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = equalCopy[32];
  }

  v19 = (*&has >> 3) & 1;
  if (v19 != ((v13 >> 3) & 1))
  {
    goto LABEL_27;
  }

  if (v19)
  {
    isSuccessfulDirectExecution = self->_isSuccessfulDirectExecution;
    if (isSuccessfulDirectExecution != [equalCopy isSuccessfulDirectExecution])
    {
      goto LABEL_27;
    }
  }

  originalResolutionContextId = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self taskSpecificInfo];
  originalResolutionContextId2 = [equalCopy taskSpecificInfo];
  if ((originalResolutionContextId != 0) == (originalResolutionContextId2 == 0))
  {
LABEL_26:

    goto LABEL_27;
  }

  taskSpecificInfo = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self taskSpecificInfo];
  if (!taskSpecificInfo)
  {

LABEL_30:
    v26 = 1;
    goto LABEL_28;
  }

  v22 = taskSpecificInfo;
  taskSpecificInfo2 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self taskSpecificInfo];
  taskSpecificInfo3 = [equalCopy taskSpecificInfo];
  v25 = [taskSpecificInfo2 isEqual:taskSpecificInfo3];

  if (v25)
  {
    goto LABEL_30;
  }

LABEL_27:
  v26 = 0;
LABEL_28:

  return v26;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  originalResolutionContextId = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self originalResolutionContextId];

  if (originalResolutionContextId)
  {
    originalResolutionContextId2 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self originalResolutionContextId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    PBDataWriterWriteBOOLField();
  }

LABEL_8:
  taskSpecificInfo = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self taskSpecificInfo];

  v8 = toCopy;
  if (taskSpecificInfo)
  {
    taskSpecificInfo2 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self taskSpecificInfo];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (void)setHasIsSuccessfulDirectExecution:(BOOL)execution
{
  if (execution)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsExecuted:(BOOL)executed
{
  if (executed)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsSuccess:(BOOL)success
{
  if (success)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = INFERENCESchemaINFERENCESimpleTaskInfoGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  originalResolutionContextId = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self originalResolutionContextId];
  v7 = [originalResolutionContextId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self deleteOriginalResolutionContextId];
  }

  taskSpecificInfo = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self taskSpecificInfo];
  v10 = [taskSpecificInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self deleteTaskSpecificInfo];
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