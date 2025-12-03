@interface GATSchemaGATRequestStarted
- (BOOL)isEqual:(id)equal;
- (GATSchemaGATRequestStarted)initWithDictionary:(id)dictionary;
- (GATSchemaGATRequestStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsConfirmationPromptSettingEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation GATSchemaGATRequestStarted

- (GATSchemaGATRequestStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = GATSchemaGATRequestStarted;
  v5 = [(GATSchemaGATRequestStarted *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"clientTraceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(GATSchemaGATRequestStarted *)v5 setClientTraceId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"appIntentName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATRequestStarted setAppIntentName:](v5, "setAppIntentName:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isConfirmationPromptSettingEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATRequestStarted setIsConfirmationPromptSettingEnabled:](v5, "setIsConfirmationPromptSettingEnabled:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (GATSchemaGATRequestStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GATSchemaGATRequestStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GATSchemaGATRequestStarted *)self dictionaryRepresentation];
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

    [dictionary setObject:v5 forKeyedSubscript:@"appIntentName"];
  }

  if (self->_clientTraceId)
  {
    clientTraceId = [(GATSchemaGATRequestStarted *)self clientTraceId];
    dictionaryRepresentation = [clientTraceId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"clientTraceId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"clientTraceId"];
    }
  }

  if ((*(&self->_isConfirmationPromptSettingEnabled + 1) & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[GATSchemaGATRequestStarted isConfirmationPromptSettingEnabled](self, "isConfirmationPromptSettingEnabled")}];
    [dictionary setObject:v9 forKeyedSubscript:@"isConfirmationPromptSettingEnabled"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  clientTraceId = [(GATSchemaGATRequestStarted *)self clientTraceId];
  clientTraceId2 = [equalCopy clientTraceId];
  v7 = clientTraceId2;
  if ((clientTraceId != 0) == (clientTraceId2 == 0))
  {

    goto LABEL_16;
  }

  clientTraceId3 = [(GATSchemaGATRequestStarted *)self clientTraceId];
  if (clientTraceId3)
  {
    v9 = clientTraceId3;
    clientTraceId4 = [(GATSchemaGATRequestStarted *)self clientTraceId];
    clientTraceId5 = [equalCopy clientTraceId];
    v12 = [clientTraceId4 isEqual:clientTraceId5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v13 = *(&self->_isConfirmationPromptSettingEnabled + 1);
  v14 = equalCopy[21];
  if ((v13 & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (v13)
  {
    appIntentName = self->_appIntentName;
    if (appIntentName == [equalCopy appIntentName])
    {
      v13 = *(&self->_isConfirmationPromptSettingEnabled + 1);
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
    isConfirmationPromptSettingEnabled = self->_isConfirmationPromptSettingEnabled;
    if (isConfirmationPromptSettingEnabled != [equalCopy isConfirmationPromptSettingEnabled])
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
  clientTraceId = [(GATSchemaGATRequestStarted *)self clientTraceId];

  if (clientTraceId)
  {
    clientTraceId2 = [(GATSchemaGATRequestStarted *)self clientTraceId];
    PBDataWriterWriteSubmessage();
  }

  v6 = *(&self->_isConfirmationPromptSettingEnabled + 1);
  if (v6)
  {
    PBDataWriterWriteInt32Field();
    v6 = *(&self->_isConfirmationPromptSettingEnabled + 1);
  }

  v7 = toCopy;
  if ((v6 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = toCopy;
  }
}

- (void)setHasIsConfirmationPromptSettingEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isConfirmationPromptSettingEnabled + 1) = *(&self->_isConfirmationPromptSettingEnabled + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = GATSchemaGATRequestStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(GATSchemaGATRequestStarted *)self clientTraceId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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