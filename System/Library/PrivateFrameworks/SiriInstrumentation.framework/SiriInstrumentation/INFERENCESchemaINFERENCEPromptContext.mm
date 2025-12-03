@interface INFERENCESchemaINFERENCEPromptContext
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEConfirmationPromptContext)confirmationPromptContext;
- (INFERENCESchemaINFERENCEDisambiguationPromptContext)disambiguationPromptContext;
- (INFERENCESchemaINFERENCEPromptContext)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEPromptContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteConfirmationPromptContext;
- (void)deleteDisambiguationPromptContext;
- (void)setConfirmationPromptContext:(id)context;
- (void)setDisambiguationPromptContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEPromptContext

- (INFERENCESchemaINFERENCEPromptContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = INFERENCESchemaINFERENCEPromptContext;
  v5 = [(INFERENCESchemaINFERENCEPromptContext *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"tag"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPromptContext setTag:](v5, "setTag:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"confirmationPromptContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[INFERENCESchemaINFERENCEConfirmationPromptContext alloc] initWithDictionary:v7];
      [(INFERENCESchemaINFERENCEPromptContext *)v5 setConfirmationPromptContext:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"disambiguationPromptContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[INFERENCESchemaINFERENCEDisambiguationPromptContext alloc] initWithDictionary:v9];
      [(INFERENCESchemaINFERENCEPromptContext *)v5 setDisambiguationPromptContext:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEPromptContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEPromptContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEPromptContext *)self dictionaryRepresentation];
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
  if (self->_confirmationPromptContext)
  {
    confirmationPromptContext = [(INFERENCESchemaINFERENCEPromptContext *)self confirmationPromptContext];
    dictionaryRepresentation = [confirmationPromptContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"confirmationPromptContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"confirmationPromptContext"];
    }
  }

  if (self->_disambiguationPromptContext)
  {
    disambiguationPromptContext = [(INFERENCESchemaINFERENCEPromptContext *)self disambiguationPromptContext];
    dictionaryRepresentation2 = [disambiguationPromptContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"disambiguationPromptContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"disambiguationPromptContext"];
    }
  }

  if (*&self->_has)
  {
    v10 = [(INFERENCESchemaINFERENCEPromptContext *)self tag]- 1;
    if (v10 > 2)
    {
      v11 = @"INFERENCEPROMPTTAG_UNKNOWN";
    }

    else
    {
      v11 = off_1E78D8A80[v10];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"tag"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_tag;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(INFERENCESchemaINFERENCEConfirmationPromptContext *)self->_confirmationPromptContext hash]^ v3;
  return v4 ^ [(INFERENCESchemaINFERENCEDisambiguationPromptContext *)self->_disambiguationPromptContext hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  whichPromptcontext = self->_whichPromptcontext;
  if (whichPromptcontext != [equalCopy whichPromptcontext])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    tag = self->_tag;
    if (tag != [equalCopy tag])
    {
      goto LABEL_16;
    }
  }

  confirmationPromptContext = [(INFERENCESchemaINFERENCEPromptContext *)self confirmationPromptContext];
  confirmationPromptContext2 = [equalCopy confirmationPromptContext];
  if ((confirmationPromptContext != 0) == (confirmationPromptContext2 == 0))
  {
    goto LABEL_15;
  }

  confirmationPromptContext3 = [(INFERENCESchemaINFERENCEPromptContext *)self confirmationPromptContext];
  if (confirmationPromptContext3)
  {
    v10 = confirmationPromptContext3;
    confirmationPromptContext4 = [(INFERENCESchemaINFERENCEPromptContext *)self confirmationPromptContext];
    confirmationPromptContext5 = [equalCopy confirmationPromptContext];
    v13 = [confirmationPromptContext4 isEqual:confirmationPromptContext5];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  confirmationPromptContext = [(INFERENCESchemaINFERENCEPromptContext *)self disambiguationPromptContext];
  confirmationPromptContext2 = [equalCopy disambiguationPromptContext];
  if ((confirmationPromptContext != 0) != (confirmationPromptContext2 == 0))
  {
    disambiguationPromptContext = [(INFERENCESchemaINFERENCEPromptContext *)self disambiguationPromptContext];
    if (!disambiguationPromptContext)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = disambiguationPromptContext;
    disambiguationPromptContext2 = [(INFERENCESchemaINFERENCEPromptContext *)self disambiguationPromptContext];
    disambiguationPromptContext3 = [equalCopy disambiguationPromptContext];
    v18 = [disambiguationPromptContext2 isEqual:disambiguationPromptContext3];

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  confirmationPromptContext = [(INFERENCESchemaINFERENCEPromptContext *)self confirmationPromptContext];

  if (confirmationPromptContext)
  {
    confirmationPromptContext2 = [(INFERENCESchemaINFERENCEPromptContext *)self confirmationPromptContext];
    PBDataWriterWriteSubmessage();
  }

  disambiguationPromptContext = [(INFERENCESchemaINFERENCEPromptContext *)self disambiguationPromptContext];

  v7 = toCopy;
  if (disambiguationPromptContext)
  {
    disambiguationPromptContext2 = [(INFERENCESchemaINFERENCEPromptContext *)self disambiguationPromptContext];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (void)deleteDisambiguationPromptContext
{
  if (self->_whichPromptcontext == 3)
  {
    self->_whichPromptcontext = 0;
    self->_disambiguationPromptContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEDisambiguationPromptContext)disambiguationPromptContext
{
  if (self->_whichPromptcontext == 3)
  {
    v3 = self->_disambiguationPromptContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDisambiguationPromptContext:(id)context
{
  contextCopy = context;
  confirmationPromptContext = self->_confirmationPromptContext;
  self->_confirmationPromptContext = 0;

  v6 = 3;
  if (!contextCopy)
  {
    v6 = 0;
  }

  self->_whichPromptcontext = v6;
  disambiguationPromptContext = self->_disambiguationPromptContext;
  self->_disambiguationPromptContext = contextCopy;
}

- (void)deleteConfirmationPromptContext
{
  if (self->_whichPromptcontext == 2)
  {
    self->_whichPromptcontext = 0;
    self->_confirmationPromptContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCEConfirmationPromptContext)confirmationPromptContext
{
  if (self->_whichPromptcontext == 2)
  {
    v3 = self->_confirmationPromptContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setConfirmationPromptContext:(id)context
{
  contextCopy = context;
  disambiguationPromptContext = self->_disambiguationPromptContext;
  self->_disambiguationPromptContext = 0;

  self->_whichPromptcontext = 2 * (contextCopy != 0);
  confirmationPromptContext = self->_confirmationPromptContext;
  self->_confirmationPromptContext = contextCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = INFERENCESchemaINFERENCEPromptContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  confirmationPromptContext = [(INFERENCESchemaINFERENCEPromptContext *)self confirmationPromptContext];
  v7 = [confirmationPromptContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(INFERENCESchemaINFERENCEPromptContext *)self deleteConfirmationPromptContext];
  }

  disambiguationPromptContext = [(INFERENCESchemaINFERENCEPromptContext *)self disambiguationPromptContext];
  v10 = [disambiguationPromptContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(INFERENCESchemaINFERENCEPromptContext *)self deleteDisambiguationPromptContext];
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