@interface QDSchemaQDToolOutputDefinition
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (QDSchemaQDToolOutputDefinition)initWithDictionary:(id)dictionary;
- (QDSchemaQDToolOutputDefinition)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation QDSchemaQDToolOutputDefinition

- (QDSchemaQDToolOutputDefinition)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = QDSchemaQDToolOutputDefinition;
  v5 = [(QDSchemaQDToolOutputDefinition *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"entityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[QDSchemaQDEntityType alloc] initWithDictionary:v6];
      [(QDSchemaQDToolOutputDefinition *)v5 setEntityType:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (QDSchemaQDToolOutputDefinition)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(QDSchemaQDToolOutputDefinition *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(QDSchemaQDToolOutputDefinition *)self dictionaryRepresentation];
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
  if (self->_entityType)
  {
    entityType = [(QDSchemaQDToolOutputDefinition *)self entityType];
    dictionaryRepresentation = [entityType dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"entityType"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"entityType"];
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
    entityType = [(QDSchemaQDToolOutputDefinition *)self entityType];
    entityType2 = [equalCopy entityType];
    v7 = entityType2;
    if ((entityType != 0) != (entityType2 == 0))
    {
      entityType3 = [(QDSchemaQDToolOutputDefinition *)self entityType];
      if (!entityType3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = entityType3;
      entityType4 = [(QDSchemaQDToolOutputDefinition *)self entityType];
      entityType5 = [equalCopy entityType];
      v12 = [entityType4 isEqual:entityType5];

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
  entityType = [(QDSchemaQDToolOutputDefinition *)self entityType];

  if (entityType)
  {
    entityType2 = [(QDSchemaQDToolOutputDefinition *)self entityType];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = QDSchemaQDToolOutputDefinition;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(QDSchemaQDToolOutputDefinition *)self entityType:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(QDSchemaQDToolOutputDefinition *)self deleteEntityType];
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