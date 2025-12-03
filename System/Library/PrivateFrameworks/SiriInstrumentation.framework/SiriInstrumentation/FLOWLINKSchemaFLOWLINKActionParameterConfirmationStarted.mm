@interface FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted
- (BOOL)isEqual:(id)equal;
- (FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted)initWithDictionary:(id)dictionary;
- (FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted

- (FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted;
  v5 = [(FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"parameter"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWLINKSchemaFLOWLINKActionParameter alloc] initWithDictionary:v6];
      [(FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted *)v5 setParameter:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted *)self dictionaryRepresentation];
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
    parameter = [(FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted *)self parameter];
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
    parameter = [(FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted *)self parameter];
    parameter2 = [equalCopy parameter];
    v7 = parameter2;
    if ((parameter != 0) != (parameter2 == 0))
    {
      parameter3 = [(FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted *)self parameter];
      if (!parameter3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = parameter3;
      parameter4 = [(FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted *)self parameter];
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
  parameter = [(FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted *)self parameter];

  if (parameter)
  {
    parameter2 = [(FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted *)self parameter];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted *)self parameter:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(FLOWLINKSchemaFLOWLINKActionParameterConfirmationStarted *)self deleteParameter];
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