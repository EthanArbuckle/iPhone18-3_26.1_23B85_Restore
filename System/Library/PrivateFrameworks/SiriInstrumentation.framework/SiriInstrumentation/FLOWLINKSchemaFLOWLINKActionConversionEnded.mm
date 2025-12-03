@interface FLOWLINKSchemaFLOWLINKActionConversionEnded
- (BOOL)isEqual:(id)equal;
- (FLOWLINKSchemaFLOWLINKActionConversionEnded)initWithDictionary:(id)dictionary;
- (FLOWLINKSchemaFLOWLINKActionConversionEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation FLOWLINKSchemaFLOWLINKActionConversionEnded

- (FLOWLINKSchemaFLOWLINKActionConversionEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FLOWLINKSchemaFLOWLINKActionConversionEnded;
  v5 = [(FLOWLINKSchemaFLOWLINKActionConversionEnded *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"action"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWLINKSchemaFLOWLINKAction alloc] initWithDictionary:v6];
      [(FLOWLINKSchemaFLOWLINKActionConversionEnded *)v5 setAction:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (FLOWLINKSchemaFLOWLINKActionConversionEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWLINKSchemaFLOWLINKActionConversionEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWLINKSchemaFLOWLINKActionConversionEnded *)self dictionaryRepresentation];
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
  if (self->_action)
  {
    action = [(FLOWLINKSchemaFLOWLINKActionConversionEnded *)self action];
    dictionaryRepresentation = [action dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"action"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"action"];
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
    action = [(FLOWLINKSchemaFLOWLINKActionConversionEnded *)self action];
    action2 = [equalCopy action];
    v7 = action2;
    if ((action != 0) != (action2 == 0))
    {
      action3 = [(FLOWLINKSchemaFLOWLINKActionConversionEnded *)self action];
      if (!action3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = action3;
      action4 = [(FLOWLINKSchemaFLOWLINKActionConversionEnded *)self action];
      action5 = [equalCopy action];
      v12 = [action4 isEqual:action5];

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
  action = [(FLOWLINKSchemaFLOWLINKActionConversionEnded *)self action];

  if (action)
  {
    action2 = [(FLOWLINKSchemaFLOWLINKActionConversionEnded *)self action];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = FLOWLINKSchemaFLOWLINKActionConversionEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(FLOWLINKSchemaFLOWLINKActionConversionEnded *)self action:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(FLOWLINKSchemaFLOWLINKActionConversionEnded *)self deleteAction];
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