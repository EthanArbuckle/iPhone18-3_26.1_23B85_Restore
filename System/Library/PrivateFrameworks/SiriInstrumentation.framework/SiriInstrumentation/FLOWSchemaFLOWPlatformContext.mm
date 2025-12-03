@interface FLOWSchemaFLOWPlatformContext
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWEntityContext)entityContext;
- (FLOWSchemaFLOWPlatformContext)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWPlatformContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteEntityContext;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWPlatformContext

- (FLOWSchemaFLOWPlatformContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = FLOWSchemaFLOWPlatformContext;
  v5 = [(FLOWSchemaFLOWPlatformContext *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"entityContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[FLOWSchemaFLOWEntityContext alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWPlatformContext *)v5 setEntityContext:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"entityContextValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[FLOWSchemaFLOWEntityContext alloc] initWithDictionary:v8];
      [(FLOWSchemaFLOWPlatformContext *)v5 setEntityContextValue:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWPlatformContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWPlatformContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWPlatformContext *)self dictionaryRepresentation];
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
  if (self->_entityContext)
  {
    entityContext = [(FLOWSchemaFLOWPlatformContext *)self entityContext];
    dictionaryRepresentation = [entityContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"entityContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"entityContext"];
    }
  }

  if (self->_entityContextValue)
  {
    entityContextValue = [(FLOWSchemaFLOWPlatformContext *)self entityContextValue];
    dictionaryRepresentation2 = [entityContextValue dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"entityContextValue"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"entityContextValue"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichPlatformcontext = self->_whichPlatformcontext;
  if (whichPlatformcontext != [equalCopy whichPlatformcontext])
  {
    goto LABEL_13;
  }

  entityContext = [(FLOWSchemaFLOWPlatformContext *)self entityContext];
  entityContext2 = [equalCopy entityContext];
  if ((entityContext != 0) == (entityContext2 == 0))
  {
    goto LABEL_12;
  }

  entityContext3 = [(FLOWSchemaFLOWPlatformContext *)self entityContext];
  if (entityContext3)
  {
    v9 = entityContext3;
    entityContext4 = [(FLOWSchemaFLOWPlatformContext *)self entityContext];
    entityContext5 = [equalCopy entityContext];
    v12 = [entityContext4 isEqual:entityContext5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  entityContext = [(FLOWSchemaFLOWPlatformContext *)self entityContextValue];
  entityContext2 = [equalCopy entityContextValue];
  if ((entityContext != 0) != (entityContext2 == 0))
  {
    entityContextValue = [(FLOWSchemaFLOWPlatformContext *)self entityContextValue];
    if (!entityContextValue)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = entityContextValue;
    entityContextValue2 = [(FLOWSchemaFLOWPlatformContext *)self entityContextValue];
    entityContextValue3 = [equalCopy entityContextValue];
    v17 = [entityContextValue2 isEqual:entityContextValue3];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  entityContext = [(FLOWSchemaFLOWPlatformContext *)self entityContext];

  if (entityContext)
  {
    entityContext2 = [(FLOWSchemaFLOWPlatformContext *)self entityContext];
    PBDataWriterWriteSubmessage();
  }

  entityContextValue = [(FLOWSchemaFLOWPlatformContext *)self entityContextValue];

  if (entityContextValue)
  {
    entityContextValue2 = [(FLOWSchemaFLOWPlatformContext *)self entityContextValue];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteEntityContext
{
  if (self->_whichPlatformcontext == 1)
  {
    self->_whichPlatformcontext = 0;
    self->_entityContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (FLOWSchemaFLOWEntityContext)entityContext
{
  if (self->_whichPlatformcontext == 1)
  {
    v3 = self->_entityContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = FLOWSchemaFLOWPlatformContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  entityContext = [(FLOWSchemaFLOWPlatformContext *)self entityContext];
  v7 = [entityContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWPlatformContext *)self deleteEntityContext];
  }

  entityContextValue = [(FLOWSchemaFLOWPlatformContext *)self entityContextValue];
  v10 = [entityContextValue applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLOWSchemaFLOWPlatformContext *)self deleteEntityContextValue];
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