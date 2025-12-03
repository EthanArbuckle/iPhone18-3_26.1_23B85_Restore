@interface RFSchemaRFComponentShown
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RFSchemaRFComponentShown)initWithDictionary:(id)dictionary;
- (RFSchemaRFComponentShown)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation RFSchemaRFComponentShown

- (RFSchemaRFComponentShown)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = RFSchemaRFComponentShown;
  v5 = [(RFSchemaRFComponentShown *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"component"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RFSchemaRFComponentShown setComponent:](v5, "setComponent:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"componentName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(RFSchemaRFComponentShown *)v5 setComponentName:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"componentIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(RFSchemaRFComponentShown *)v5 setComponentIndex:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (RFSchemaRFComponentShown)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RFSchemaRFComponentShown *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RFSchemaRFComponentShown *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(RFSchemaRFComponentShown *)self component]- 1;
    if (v4 > 0x45)
    {
      v5 = @"RFCOMPONENT_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E1970[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"component"];
  }

  if (self->_componentIndex)
  {
    componentIndex = [(RFSchemaRFComponentShown *)self componentIndex];
    v7 = [componentIndex copy];
    [dictionary setObject:v7 forKeyedSubscript:@"componentIndex"];
  }

  if (self->_componentName)
  {
    componentName = [(RFSchemaRFComponentShown *)self componentName];
    v9 = [componentName copy];
    [dictionary setObject:v9 forKeyedSubscript:@"componentName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_component;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_componentName hash]^ v3;
  return v4 ^ [(NSString *)self->_componentIndex hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    component = self->_component;
    if (component != [equalCopy component])
    {
      goto LABEL_15;
    }
  }

  componentName = [(RFSchemaRFComponentShown *)self componentName];
  componentName2 = [equalCopy componentName];
  if ((componentName != 0) == (componentName2 == 0))
  {
    goto LABEL_14;
  }

  componentName3 = [(RFSchemaRFComponentShown *)self componentName];
  if (componentName3)
  {
    v9 = componentName3;
    componentName4 = [(RFSchemaRFComponentShown *)self componentName];
    componentName5 = [equalCopy componentName];
    v12 = [componentName4 isEqual:componentName5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  componentName = [(RFSchemaRFComponentShown *)self componentIndex];
  componentName2 = [equalCopy componentIndex];
  if ((componentName != 0) != (componentName2 == 0))
  {
    componentIndex = [(RFSchemaRFComponentShown *)self componentIndex];
    if (!componentIndex)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = componentIndex;
    componentIndex2 = [(RFSchemaRFComponentShown *)self componentIndex];
    componentIndex3 = [equalCopy componentIndex];
    v17 = [componentIndex2 isEqual:componentIndex3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  componentName = [(RFSchemaRFComponentShown *)self componentName];

  if (componentName)
  {
    PBDataWriterWriteStringField();
  }

  componentIndex = [(RFSchemaRFComponentShown *)self componentIndex];

  v6 = toCopy;
  if (componentIndex)
  {
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end