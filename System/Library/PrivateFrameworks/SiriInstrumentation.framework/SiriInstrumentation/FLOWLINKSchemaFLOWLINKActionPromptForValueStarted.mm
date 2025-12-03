@interface FLOWLINKSchemaFLOWLINKActionPromptForValueStarted
- (BOOL)isEqual:(id)equal;
- (FLOWLINKSchemaFLOWLINKActionPromptForValueStarted)initWithDictionary:(id)dictionary;
- (FLOWLINKSchemaFLOWLINKActionPromptForValueStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation FLOWLINKSchemaFLOWLINKActionPromptForValueStarted

- (FLOWLINKSchemaFLOWLINKActionPromptForValueStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FLOWLINKSchemaFLOWLINKActionPromptForValueStarted;
  v5 = [(FLOWLINKSchemaFLOWLINKActionPromptForValueStarted *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"parameter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWLINKSchemaFLOWLINKActionParameter alloc] initWithDictionary:v6];
      [(FLOWLINKSchemaFLOWLINKActionPromptForValueStarted *)v5 setParameter:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (FLOWLINKSchemaFLOWLINKActionPromptForValueStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWLINKSchemaFLOWLINKActionPromptForValueStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWLINKSchemaFLOWLINKActionPromptForValueStarted *)self dictionaryRepresentation];
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
  if (self->_parameter)
  {
    parameter = [(FLOWLINKSchemaFLOWLINKActionPromptForValueStarted *)self parameter];
    dictionaryRepresentation = [parameter dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"parameter"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"parameter"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    parameter = [(FLOWLINKSchemaFLOWLINKActionPromptForValueStarted *)self parameter];
    parameter2 = [equalCopy parameter];
    v7 = parameter2;
    if ((parameter != 0) != (parameter2 == 0))
    {
      parameter3 = [(FLOWLINKSchemaFLOWLINKActionPromptForValueStarted *)self parameter];
      if (!parameter3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = parameter3;
      parameter4 = [(FLOWLINKSchemaFLOWLINKActionPromptForValueStarted *)self parameter];
      parameter5 = [equalCopy parameter];
      v12 = [parameter4 isEqual:parameter5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  parameter = [(FLOWLINKSchemaFLOWLINKActionPromptForValueStarted *)self parameter];

  if (parameter)
  {
    parameter2 = [(FLOWLINKSchemaFLOWLINKActionPromptForValueStarted *)self parameter];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = FLOWLINKSchemaFLOWLINKActionPromptForValueStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(FLOWLINKSchemaFLOWLINKActionPromptForValueStarted *)self parameter:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(FLOWLINKSchemaFLOWLINKActionPromptForValueStarted *)self deleteParameter];
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