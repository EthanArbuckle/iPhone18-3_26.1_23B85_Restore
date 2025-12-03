@interface CAMSchemaCAMModelId
- (BOOL)isEqual:(id)equal;
- (CAMSchemaCAMModelId)initWithDictionary:(id)dictionary;
- (CAMSchemaCAMModelId)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation CAMSchemaCAMModelId

- (CAMSchemaCAMModelId)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = CAMSchemaCAMModelId;
  v5 = [(CAMSchemaCAMModelId *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"modelName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(CAMSchemaCAMModelId *)v5 setModelName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaVersion alloc] initWithDictionary:v8];
      [(CAMSchemaCAMModelId *)v5 setModelVersion:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (CAMSchemaCAMModelId)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CAMSchemaCAMModelId *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CAMSchemaCAMModelId *)self dictionaryRepresentation];
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
  if (self->_modelName)
  {
    modelName = [(CAMSchemaCAMModelId *)self modelName];
    v5 = [modelName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"modelName"];
  }

  if (self->_modelVersion)
  {
    modelVersion = [(CAMSchemaCAMModelId *)self modelVersion];
    dictionaryRepresentation = [modelVersion dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"modelVersion"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"modelVersion"];
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
    goto LABEL_12;
  }

  modelName = [(CAMSchemaCAMModelId *)self modelName];
  modelName2 = [equalCopy modelName];
  if ((modelName != 0) == (modelName2 == 0))
  {
    goto LABEL_11;
  }

  modelName3 = [(CAMSchemaCAMModelId *)self modelName];
  if (modelName3)
  {
    v8 = modelName3;
    modelName4 = [(CAMSchemaCAMModelId *)self modelName];
    modelName5 = [equalCopy modelName];
    v11 = [modelName4 isEqual:modelName5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  modelName = [(CAMSchemaCAMModelId *)self modelVersion];
  modelName2 = [equalCopy modelVersion];
  if ((modelName != 0) != (modelName2 == 0))
  {
    modelVersion = [(CAMSchemaCAMModelId *)self modelVersion];
    if (!modelVersion)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = modelVersion;
    modelVersion2 = [(CAMSchemaCAMModelId *)self modelVersion];
    modelVersion3 = [equalCopy modelVersion];
    v16 = [modelVersion2 isEqual:modelVersion3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  modelName = [(CAMSchemaCAMModelId *)self modelName];

  if (modelName)
  {
    PBDataWriterWriteStringField();
  }

  modelVersion = [(CAMSchemaCAMModelId *)self modelVersion];

  if (modelVersion)
  {
    modelVersion2 = [(CAMSchemaCAMModelId *)self modelVersion];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = CAMSchemaCAMModelId;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(CAMSchemaCAMModelId *)self modelVersion:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(CAMSchemaCAMModelId *)self deleteModelVersion];
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