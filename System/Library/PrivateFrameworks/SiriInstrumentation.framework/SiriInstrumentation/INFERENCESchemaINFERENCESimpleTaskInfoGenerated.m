@interface INFERENCESchemaINFERENCESimpleTaskInfoGenerated
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCESimpleTaskInfoGenerated)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCESimpleTaskInfoGenerated)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsExecuted:(BOOL)a3;
- (void)setHasIsSuccess:(BOOL)a3;
- (void)setHasIsSuccessfulDirectExecution:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCESimpleTaskInfoGenerated

- (INFERENCESchemaINFERENCESimpleTaskInfoGenerated)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = INFERENCESchemaINFERENCESimpleTaskInfoGenerated;
  v5 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"originalResolutionContextId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)v5 setOriginalResolutionContextId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"taskSuccessType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCESimpleTaskInfoGenerated setTaskSuccessType:](v5, "setTaskSuccessType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isSuccess"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCESimpleTaskInfoGenerated setIsSuccess:](v5, "setIsSuccess:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"isExecuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCESimpleTaskInfoGenerated setIsExecuted:](v5, "setIsExecuted:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"isSuccessfulDirectExecution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCESimpleTaskInfoGenerated setIsSuccessfulDirectExecution:](v5, "setIsSuccessfulDirectExecution:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"taskSpecificInfo"];
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

- (INFERENCESchemaINFERENCESimpleTaskInfoGenerated)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCESimpleTaskInfoGenerated isExecuted](self, "isExecuted")}];
    [v3 setObject:v8 forKeyedSubscript:@"isExecuted"];

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
  [v3 setObject:v9 forKeyedSubscript:@"isSuccess"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCESimpleTaskInfoGenerated isSuccessfulDirectExecution](self, "isSuccessfulDirectExecution")}];
    [v3 setObject:v5 forKeyedSubscript:@"isSuccessfulDirectExecution"];
  }

LABEL_5:
  if (self->_originalResolutionContextId)
  {
    v6 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self originalResolutionContextId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"originalResolutionContextId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"originalResolutionContextId"];
    }
  }

  if (self->_taskSpecificInfo)
  {
    v11 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self taskSpecificInfo];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"taskSpecificInfo"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"taskSpecificInfo"];
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

    [v3 setObject:v15 forKeyedSubscript:@"taskSuccessType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self originalResolutionContextId];
  v6 = [v4 originalResolutionContextId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self originalResolutionContextId];
  if (v7)
  {
    v8 = v7;
    v9 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self originalResolutionContextId];
    v10 = [v4 originalResolutionContextId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = v4[32];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_27;
  }

  if (*&has)
  {
    taskSuccessType = self->_taskSuccessType;
    if (taskSuccessType != [v4 taskSuccessType])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = v4[32];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v15)
  {
    isSuccess = self->_isSuccess;
    if (isSuccess != [v4 isSuccess])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = v4[32];
  }

  v17 = (*&has >> 2) & 1;
  if (v17 != ((v13 >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v17)
  {
    isExecuted = self->_isExecuted;
    if (isExecuted != [v4 isExecuted])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v13 = v4[32];
  }

  v19 = (*&has >> 3) & 1;
  if (v19 != ((v13 >> 3) & 1))
  {
    goto LABEL_27;
  }

  if (v19)
  {
    isSuccessfulDirectExecution = self->_isSuccessfulDirectExecution;
    if (isSuccessfulDirectExecution != [v4 isSuccessfulDirectExecution])
    {
      goto LABEL_27;
    }
  }

  v5 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self taskSpecificInfo];
  v6 = [v4 taskSpecificInfo];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_26:

    goto LABEL_27;
  }

  v21 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self taskSpecificInfo];
  if (!v21)
  {

LABEL_30:
    v26 = 1;
    goto LABEL_28;
  }

  v22 = v21;
  v23 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self taskSpecificInfo];
  v24 = [v4 taskSpecificInfo];
  v25 = [v23 isEqual:v24];

  if (v25)
  {
    goto LABEL_30;
  }

LABEL_27:
  v26 = 0;
LABEL_28:

  return v26;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  v4 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self originalResolutionContextId];

  if (v4)
  {
    v5 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self originalResolutionContextId];
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
  v7 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self taskSpecificInfo];

  v8 = v10;
  if (v7)
  {
    v9 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self taskSpecificInfo];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (void)setHasIsSuccessfulDirectExecution:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsExecuted:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsSuccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = INFERENCESchemaINFERENCESimpleTaskInfoGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self originalResolutionContextId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self deleteOriginalResolutionContextId];
  }

  v9 = [(INFERENCESchemaINFERENCESimpleTaskInfoGenerated *)self taskSpecificInfo];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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