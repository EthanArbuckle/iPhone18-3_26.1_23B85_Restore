@interface MHSchemaMHAdMatchingStarted
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHAdMatchingStarted)initWithDictionary:(id)dictionary;
- (MHSchemaMHAdMatchingStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHAdMatchingStarted

- (MHSchemaMHAdMatchingStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = MHSchemaMHAdMatchingStarted;
  v5 = [(MHSchemaMHAdMatchingStarted *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHAdMatchingStarted *)v5 setModelVersion:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (MHSchemaMHAdMatchingStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHAdMatchingStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHAdMatchingStarted *)self dictionaryRepresentation];
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
  if (self->_modelVersion)
  {
    modelVersion = [(MHSchemaMHAdMatchingStarted *)self modelVersion];
    v5 = [modelVersion copy];
    [dictionary setObject:v5 forKeyedSubscript:@"modelVersion"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    modelVersion = [(MHSchemaMHAdMatchingStarted *)self modelVersion];
    modelVersion2 = [equalCopy modelVersion];
    v7 = modelVersion2;
    if ((modelVersion != 0) != (modelVersion2 == 0))
    {
      modelVersion3 = [(MHSchemaMHAdMatchingStarted *)self modelVersion];
      if (!modelVersion3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = modelVersion3;
      modelVersion4 = [(MHSchemaMHAdMatchingStarted *)self modelVersion];
      modelVersion5 = [equalCopy modelVersion];
      v12 = [modelVersion4 isEqual:modelVersion5];

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
  modelVersion = [(MHSchemaMHAdMatchingStarted *)self modelVersion];

  if (modelVersion)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end