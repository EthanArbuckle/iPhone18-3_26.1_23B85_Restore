@interface DUSchemaDUContent
- (BOOL)isEqual:(id)equal;
- (DUSchemaDUContent)initWithDictionary:(id)dictionary;
- (DUSchemaDUContent)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation DUSchemaDUContent

- (DUSchemaDUContent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = DUSchemaDUContent;
  v5 = [(DUSchemaDUContent *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dataPayload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
      [(DUSchemaDUContent *)v5 setDataPayload:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (DUSchemaDUContent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DUSchemaDUContent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DUSchemaDUContent *)self dictionaryRepresentation];
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
  if (self->_dataPayload)
  {
    dataPayload = [(DUSchemaDUContent *)self dataPayload];
    v5 = [dataPayload base64EncodedStringWithOptions:0];
    if (v5)
    {
      [dictionary setObject:v5 forKeyedSubscript:@"dataPayload"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"dataPayload"];
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
    dataPayload = [(DUSchemaDUContent *)self dataPayload];
    dataPayload2 = [equalCopy dataPayload];
    v7 = dataPayload2;
    if ((dataPayload != 0) != (dataPayload2 == 0))
    {
      dataPayload3 = [(DUSchemaDUContent *)self dataPayload];
      if (!dataPayload3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = dataPayload3;
      dataPayload4 = [(DUSchemaDUContent *)self dataPayload];
      dataPayload5 = [equalCopy dataPayload];
      v12 = [dataPayload4 isEqual:dataPayload5];

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
  dataPayload = [(DUSchemaDUContent *)self dataPayload];

  if (dataPayload)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = DUSchemaDUContent;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(DUSchemaDUContent *)self deleteDataPayload];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(DUSchemaDUContent *)self deleteDataPayload];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(DUSchemaDUContent *)self deleteDataPayload];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(DUSchemaDUContent *)self deleteDataPayload];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(DUSchemaDUContent *)self deleteDataPayload];
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