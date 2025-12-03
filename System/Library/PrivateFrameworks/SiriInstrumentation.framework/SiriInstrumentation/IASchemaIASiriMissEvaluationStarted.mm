@interface IASchemaIASiriMissEvaluationStarted
- (BOOL)isEqual:(id)equal;
- (IASchemaIASiriMissEvaluationStarted)initWithDictionary:(id)dictionary;
- (IASchemaIASiriMissEvaluationStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IASchemaIASiriMissEvaluationStarted

- (IASchemaIASiriMissEvaluationStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IASchemaIASiriMissEvaluationStarted;
  v5 = [(IASchemaIASiriMissEvaluationStarted *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"assetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IASchemaIASiriMissEvaluationStarted *)v5 setAssetVersion:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IASchemaIASiriMissEvaluationStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IASchemaIASiriMissEvaluationStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IASchemaIASiriMissEvaluationStarted *)self dictionaryRepresentation];
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
  if (self->_assetVersion)
  {
    assetVersion = [(IASchemaIASiriMissEvaluationStarted *)self assetVersion];
    v5 = [assetVersion copy];
    [dictionary setObject:v5 forKeyedSubscript:@"assetVersion"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    assetVersion = [(IASchemaIASiriMissEvaluationStarted *)self assetVersion];
    assetVersion2 = [equalCopy assetVersion];
    v7 = assetVersion2;
    if ((assetVersion != 0) != (assetVersion2 == 0))
    {
      assetVersion3 = [(IASchemaIASiriMissEvaluationStarted *)self assetVersion];
      if (!assetVersion3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = assetVersion3;
      assetVersion4 = [(IASchemaIASiriMissEvaluationStarted *)self assetVersion];
      assetVersion5 = [equalCopy assetVersion];
      v12 = [assetVersion4 isEqual:assetVersion5];

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
  assetVersion = [(IASchemaIASiriMissEvaluationStarted *)self assetVersion];

  if (assetVersion)
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