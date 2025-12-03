@interface FLOWLINKSchemaFLOWLinkActionStarted
- (BOOL)isEqual:(id)equal;
- (FLOWLINKSchemaFLOWLinkActionStarted)initWithDictionary:(id)dictionary;
- (FLOWLINKSchemaFLOWLinkActionStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation FLOWLINKSchemaFLOWLinkActionStarted

- (FLOWLINKSchemaFLOWLinkActionStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = FLOWLINKSchemaFLOWLinkActionStarted;
  v5 = [(FLOWLINKSchemaFLOWLinkActionStarted *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"currentAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWLINKSchemaFLOWLINKAction alloc] initWithDictionary:v6];
      [(FLOWLINKSchemaFLOWLinkActionStarted *)v5 setCurrentAction:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (FLOWLINKSchemaFLOWLinkActionStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWLINKSchemaFLOWLinkActionStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWLINKSchemaFLOWLinkActionStarted *)self dictionaryRepresentation];
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
  if (self->_currentAction)
  {
    currentAction = [(FLOWLINKSchemaFLOWLinkActionStarted *)self currentAction];
    dictionaryRepresentation = [currentAction dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"currentAction"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"currentAction"];
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
    currentAction = [(FLOWLINKSchemaFLOWLinkActionStarted *)self currentAction];
    currentAction2 = [equalCopy currentAction];
    v7 = currentAction2;
    if ((currentAction != 0) != (currentAction2 == 0))
    {
      currentAction3 = [(FLOWLINKSchemaFLOWLinkActionStarted *)self currentAction];
      if (!currentAction3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = currentAction3;
      currentAction4 = [(FLOWLINKSchemaFLOWLinkActionStarted *)self currentAction];
      currentAction5 = [equalCopy currentAction];
      v12 = [currentAction4 isEqual:currentAction5];

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
  currentAction = [(FLOWLINKSchemaFLOWLinkActionStarted *)self currentAction];

  if (currentAction)
  {
    currentAction2 = [(FLOWLINKSchemaFLOWLinkActionStarted *)self currentAction];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = FLOWLINKSchemaFLOWLinkActionStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(FLOWLINKSchemaFLOWLinkActionStarted *)self currentAction:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(FLOWLINKSchemaFLOWLinkActionStarted *)self deleteCurrentAction];
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