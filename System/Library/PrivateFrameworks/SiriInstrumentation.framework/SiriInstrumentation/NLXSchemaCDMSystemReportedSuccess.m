@interface NLXSchemaCDMSystemReportedSuccess
- (BOOL)isEqual:(id)a3;
- (NLXSchemaCDMSystemReportedSuccess)initWithDictionary:(id)a3;
- (NLXSchemaCDMSystemReportedSuccess)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation NLXSchemaCDMSystemReportedSuccess

- (NLXSchemaCDMSystemReportedSuccess)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NLXSchemaCDMSystemReportedSuccess;
  v5 = [(NLXSchemaCDMSystemReportedSuccess *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"taskId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMSystemReportedSuccess *)v5 setTaskId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"task"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[USOSchemaUSOGraph alloc] initWithDictionary:v8];
      [(NLXSchemaCDMSystemReportedSuccess *)v5 setTask:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (NLXSchemaCDMSystemReportedSuccess)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLXSchemaCDMSystemReportedSuccess *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLXSchemaCDMSystemReportedSuccess *)self dictionaryRepresentation];
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
  if (self->_task)
  {
    v4 = [(NLXSchemaCDMSystemReportedSuccess *)self task];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"task"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"task"];
    }
  }

  if (self->_taskId)
  {
    v7 = [(NLXSchemaCDMSystemReportedSuccess *)self taskId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"taskId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"taskId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(NLXSchemaCDMSystemReportedSuccess *)self taskId];
  v6 = [v4 taskId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(NLXSchemaCDMSystemReportedSuccess *)self taskId];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLXSchemaCDMSystemReportedSuccess *)self taskId];
    v10 = [v4 taskId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(NLXSchemaCDMSystemReportedSuccess *)self task];
  v6 = [v4 task];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(NLXSchemaCDMSystemReportedSuccess *)self task];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(NLXSchemaCDMSystemReportedSuccess *)self task];
    v15 = [v4 task];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(NLXSchemaCDMSystemReportedSuccess *)self taskId];

  if (v4)
  {
    v5 = [(NLXSchemaCDMSystemReportedSuccess *)self taskId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(NLXSchemaCDMSystemReportedSuccess *)self task];

  if (v6)
  {
    v7 = [(NLXSchemaCDMSystemReportedSuccess *)self task];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NLXSchemaCDMSystemReportedSuccess;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(NLXSchemaCDMSystemReportedSuccess *)self taskId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLXSchemaCDMSystemReportedSuccess *)self deleteTaskId];
  }

  v9 = [(NLXSchemaCDMSystemReportedSuccess *)self task];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(NLXSchemaCDMSystemReportedSuccess *)self deleteTask];
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