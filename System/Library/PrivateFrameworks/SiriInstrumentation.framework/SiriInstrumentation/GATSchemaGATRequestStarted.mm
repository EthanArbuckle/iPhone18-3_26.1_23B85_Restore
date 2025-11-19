@interface GATSchemaGATRequestStarted
- (BOOL)isEqual:(id)a3;
- (GATSchemaGATRequestStarted)initWithDictionary:(id)a3;
- (GATSchemaGATRequestStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsConfirmationPromptSettingEnabled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation GATSchemaGATRequestStarted

- (GATSchemaGATRequestStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GATSchemaGATRequestStarted;
  v5 = [(GATSchemaGATRequestStarted *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"clientTraceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(GATSchemaGATRequestStarted *)v5 setClientTraceId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"appIntentName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATRequestStarted setAppIntentName:](v5, "setAppIntentName:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isConfirmationPromptSettingEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATRequestStarted setIsConfirmationPromptSettingEnabled:](v5, "setIsConfirmationPromptSettingEnabled:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (GATSchemaGATRequestStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GATSchemaGATRequestStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GATSchemaGATRequestStarted *)self dictionaryRepresentation];
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
  if (*(&self->_isConfirmationPromptSettingEnabled + 1))
  {
    v4 = [(GATSchemaGATRequestStarted *)self appIntentName]- 1;
    if (v4 > 2)
    {
      v5 = @"GATAPPINTENTNAME_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D7330[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"appIntentName"];
  }

  if (self->_clientTraceId)
  {
    v6 = [(GATSchemaGATRequestStarted *)self clientTraceId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"clientTraceId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"clientTraceId"];
    }
  }

  if ((*(&self->_isConfirmationPromptSettingEnabled + 1) & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[GATSchemaGATRequestStarted isConfirmationPromptSettingEnabled](self, "isConfirmationPromptSettingEnabled")}];
    [v3 setObject:v9 forKeyedSubscript:@"isConfirmationPromptSettingEnabled"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_clientTraceId hash];
  if (*(&self->_isConfirmationPromptSettingEnabled + 1))
  {
    v4 = 2654435761 * self->_appIntentName;
    if ((*(&self->_isConfirmationPromptSettingEnabled + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*(&self->_isConfirmationPromptSettingEnabled + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_isConfirmationPromptSettingEnabled;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(GATSchemaGATRequestStarted *)self clientTraceId];
  v6 = [v4 clientTraceId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_16;
  }

  v8 = [(GATSchemaGATRequestStarted *)self clientTraceId];
  if (v8)
  {
    v9 = v8;
    v10 = [(GATSchemaGATRequestStarted *)self clientTraceId];
    v11 = [v4 clientTraceId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v13 = *(&self->_isConfirmationPromptSettingEnabled + 1);
  v14 = v4[21];
  if ((v13 & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (v13)
  {
    appIntentName = self->_appIntentName;
    if (appIntentName == [v4 appIntentName])
    {
      v13 = *(&self->_isConfirmationPromptSettingEnabled + 1);
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
    isConfirmationPromptSettingEnabled = self->_isConfirmationPromptSettingEnabled;
    if (isConfirmationPromptSettingEnabled != [v4 isConfirmationPromptSettingEnabled])
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
  v4 = [(GATSchemaGATRequestStarted *)self clientTraceId];

  if (v4)
  {
    v5 = [(GATSchemaGATRequestStarted *)self clientTraceId];
    PBDataWriterWriteSubmessage();
  }

  v6 = *(&self->_isConfirmationPromptSettingEnabled + 1);
  if (v6)
  {
    PBDataWriterWriteInt32Field();
    v6 = *(&self->_isConfirmationPromptSettingEnabled + 1);
  }

  v7 = v8;
  if ((v6 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = v8;
  }
}

- (void)setHasIsConfirmationPromptSettingEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isConfirmationPromptSettingEnabled + 1) = *(&self->_isConfirmationPromptSettingEnabled + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = GATSchemaGATRequestStarted;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(GATSchemaGATRequestStarted *)self clientTraceId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(GATSchemaGATRequestStarted *)self deleteClientTraceId];
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