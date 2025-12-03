@interface NLXSchemaNLXDeviceFixedContext
- (BOOL)isEqual:(id)equal;
- (NLXSchemaNLXDeviceFixedContext)initWithDictionary:(id)dictionary;
- (NLXSchemaNLXDeviceFixedContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaNLXDeviceFixedContext

- (NLXSchemaNLXDeviceFixedContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = NLXSchemaNLXDeviceFixedContext;
  v5 = [(NLXSchemaNLXDeviceFixedContext *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isTestEvent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaNLXDeviceFixedContext setIsTestEvent:](v5, "setIsTestEvent:", [v6 BOOLValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (NLXSchemaNLXDeviceFixedContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaNLXDeviceFixedContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaNLXDeviceFixedContext *)self dictionaryRepresentation];
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
  if (*(&self->_isTestEvent + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[NLXSchemaNLXDeviceFixedContext isTestEvent](self, "isTestEvent")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isTestEvent"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_isTestEvent + 1))
  {
    return 2654435761 * self->_isTestEvent;
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
    if (*(&self->_isTestEvent + 1) == (equalCopy[9] & 1))
    {
      if (!*(&self->_isTestEvent + 1) || (isTestEvent = self->_isTestEvent, isTestEvent == [equalCopy isTestEvent]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (*(&self->_isTestEvent + 1))
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