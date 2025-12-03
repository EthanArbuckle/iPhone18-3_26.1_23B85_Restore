@interface IFTSchemaIFTToolDefinition
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTToolDefinition)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTToolDefinition)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTToolDefinition

- (IFTSchemaIFTToolDefinition)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = IFTSchemaIFTToolDefinition;
  v5 = [(IFTSchemaIFTToolDefinition *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IFTSchemaIFTToolDefinition *)v5 setToolId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"toolType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTToolDefinition setToolType:](v5, "setToolType:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (IFTSchemaIFTToolDefinition)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTToolDefinition *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTToolDefinition *)self dictionaryRepresentation];
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
  if (self->_toolId)
  {
    toolId = [(IFTSchemaIFTToolDefinition *)self toolId];
    v5 = [toolId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"toolId"];
  }

  if (*&self->_has)
  {
    v6 = [(IFTSchemaIFTToolDefinition *)self toolType]- 1;
    if (v6 > 2)
    {
      v7 = @"IFTTOOLTYPE_UNKNOWN";
    }

    else
    {
      v7 = off_1E78D85C8[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"toolType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_toolId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_toolType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  toolId = [(IFTSchemaIFTToolDefinition *)self toolId];
  toolId2 = [equalCopy toolId];
  v7 = toolId2;
  if ((toolId != 0) == (toolId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  toolId3 = [(IFTSchemaIFTToolDefinition *)self toolId];
  if (toolId3)
  {
    v9 = toolId3;
    toolId4 = [(IFTSchemaIFTToolDefinition *)self toolId];
    toolId5 = [equalCopy toolId];
    v12 = [toolId4 isEqual:toolId5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    toolType = self->_toolType;
    if (toolType != [equalCopy toolType])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  toolId = [(IFTSchemaIFTToolDefinition *)self toolId];

  if (toolId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v8.receiver = self;
  v8.super_class = IFTSchemaIFTToolDefinition;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v8 applySensitiveConditionsPolicy:policyCopy];
  v6 = [policyCopy isConditionSet:{4, v8.receiver, v8.super_class}];

  if (v6)
  {
    [(IFTSchemaIFTToolDefinition *)self deleteToolId];
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