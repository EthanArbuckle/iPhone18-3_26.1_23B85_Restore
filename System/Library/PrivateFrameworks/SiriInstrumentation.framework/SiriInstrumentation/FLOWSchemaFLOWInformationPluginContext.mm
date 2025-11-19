@interface FLOWSchemaFLOWInformationPluginContext
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWInformationPluginContext)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWInformationPluginContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWInformationPluginContext

- (FLOWSchemaFLOWInformationPluginContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FLOWSchemaFLOWInformationPluginContext;
  v5 = [(FLOWSchemaFLOWInformationPluginContext *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWInformationPluginContext setEventType:](v5, "setEventType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"executedPegasusDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(FLOWSchemaFLOWInformationPluginContext *)v5 setExecutedPegasusDomain:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWInformationPluginContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWInformationPluginContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWInformationPluginContext *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(FLOWSchemaFLOWInformationPluginContext *)self eventType];
    v5 = @"FLOWINFORMATIONPLUGINEVENTTYPE_UNKNOWN";
    if (v4 == 1)
    {
      v5 = @"FLOWINFORMATIONPLUGINEVENTTYPE_POMMES";
    }

    if (v4 == 2)
    {
      v6 = @"FLOWINFORMATIONPLUGINEVENTTYPE_MODALITY";
    }

    else
    {
      v6 = v5;
    }

    [v3 setObject:v6 forKeyedSubscript:@"eventType"];
  }

  if (self->_executedPegasusDomain)
  {
    v7 = [(FLOWSchemaFLOWInformationPluginContext *)self executedPegasusDomain];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"executedPegasusDomain"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_eventType;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_executedPegasusDomain hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (eventType = self->_eventType, eventType == [v4 eventType]))
      {
        v6 = [(FLOWSchemaFLOWInformationPluginContext *)self executedPegasusDomain];
        v7 = [v4 executedPegasusDomain];
        v8 = v7;
        if ((v6 != 0) != (v7 == 0))
        {
          v9 = [(FLOWSchemaFLOWInformationPluginContext *)self executedPegasusDomain];
          if (!v9)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = v9;
          v11 = [(FLOWSchemaFLOWInformationPluginContext *)self executedPegasusDomain];
          v12 = [v4 executedPegasusDomain];
          v13 = [v11 isEqual:v12];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(FLOWSchemaFLOWInformationPluginContext *)self executedPegasusDomain];

  v5 = v6;
  if (v4)
  {
    PBDataWriterWriteStringField();
    v5 = v6;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v8.receiver = self;
  v8.super_class = FLOWSchemaFLOWInformationPluginContext;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:v4];
  v6 = [v4 isConditionSet:{4, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(FLOWSchemaFLOWInformationPluginContext *)self deleteExecutedPegasusDomain];
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