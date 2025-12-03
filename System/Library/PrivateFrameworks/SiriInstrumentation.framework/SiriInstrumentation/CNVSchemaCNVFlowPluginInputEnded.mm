@interface CNVSchemaCNVFlowPluginInputEnded
- (BOOL)isEqual:(id)equal;
- (CNVSchemaCNVFlowPluginInputEnded)initWithDictionary:(id)dictionary;
- (CNVSchemaCNVFlowPluginInputEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation CNVSchemaCNVFlowPluginInputEnded

- (CNVSchemaCNVFlowPluginInputEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = CNVSchemaCNVFlowPluginInputEnded;
  v5 = [(CNVSchemaCNVFlowPluginInputEnded *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"hasTopicChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CNVSchemaCNVFlowPluginInputEnded setHasTopicChanged:](v5, "setHasTopicChanged:", [v6 BOOLValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (CNVSchemaCNVFlowPluginInputEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CNVSchemaCNVFlowPluginInputEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CNVSchemaCNVFlowPluginInputEnded *)self dictionaryRepresentation];
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
  if (*(&self->_hasTopicChanged + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[CNVSchemaCNVFlowPluginInputEnded hasTopicChanged](self, "hasTopicChanged")}];
    [dictionary setObject:v4 forKeyedSubscript:@"hasTopicChanged"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_hasTopicChanged + 1))
  {
    return 2654435761 * self->_hasTopicChanged;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if (*(&self->_hasTopicChanged + 1) == (equalCopy[9] & 1))
    {
      if (!*(&self->_hasTopicChanged + 1) || (hasTopicChanged = self->_hasTopicChanged, hasTopicChanged == [equalCopy hasTopicChanged]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (*(&self->_hasTopicChanged + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end