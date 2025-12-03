@interface ASRSchemaASROneBestTranscriptTier1
- (ASRSchemaASROneBestTranscriptTier1)initWithDictionary:(id)dictionary;
- (ASRSchemaASROneBestTranscriptTier1)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASROneBestTranscriptTier1

- (ASRSchemaASROneBestTranscriptTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ASRSchemaASROneBestTranscriptTier1;
  v5 = [(ASRSchemaASROneBestTranscriptTier1 *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rawRecognition"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ASRSchemaASROneBestTranscriptTier1 *)v5 setRawRecognition:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"postItn"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ASRSchemaASROneBestTranscriptTier1 *)v5 setPostItn:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ASRSchemaASROneBestTranscriptTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASROneBestTranscriptTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASROneBestTranscriptTier1 *)self dictionaryRepresentation];
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
  if (self->_postItn)
  {
    postItn = [(ASRSchemaASROneBestTranscriptTier1 *)self postItn];
    v5 = [postItn copy];
    [dictionary setObject:v5 forKeyedSubscript:@"postItn"];
  }

  if (self->_rawRecognition)
  {
    rawRecognition = [(ASRSchemaASROneBestTranscriptTier1 *)self rawRecognition];
    v7 = [rawRecognition copy];
    [dictionary setObject:v7 forKeyedSubscript:@"rawRecognition"];
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

  rawRecognition = [(ASRSchemaASROneBestTranscriptTier1 *)self rawRecognition];
  rawRecognition2 = [equalCopy rawRecognition];
  if ((rawRecognition != 0) == (rawRecognition2 == 0))
  {
    goto LABEL_11;
  }

  rawRecognition3 = [(ASRSchemaASROneBestTranscriptTier1 *)self rawRecognition];
  if (rawRecognition3)
  {
    v8 = rawRecognition3;
    rawRecognition4 = [(ASRSchemaASROneBestTranscriptTier1 *)self rawRecognition];
    rawRecognition5 = [equalCopy rawRecognition];
    v11 = [rawRecognition4 isEqual:rawRecognition5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  rawRecognition = [(ASRSchemaASROneBestTranscriptTier1 *)self postItn];
  rawRecognition2 = [equalCopy postItn];
  if ((rawRecognition != 0) != (rawRecognition2 == 0))
  {
    postItn = [(ASRSchemaASROneBestTranscriptTier1 *)self postItn];
    if (!postItn)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = postItn;
    postItn2 = [(ASRSchemaASROneBestTranscriptTier1 *)self postItn];
    postItn3 = [equalCopy postItn];
    v16 = [postItn2 isEqual:postItn3];

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
  rawRecognition = [(ASRSchemaASROneBestTranscriptTier1 *)self rawRecognition];

  if (rawRecognition)
  {
    PBDataWriterWriteStringField();
  }

  postItn = [(ASRSchemaASROneBestTranscriptTier1 *)self postItn];

  if (postItn)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = ASRSchemaASROneBestTranscriptTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(ASRSchemaASROneBestTranscriptTier1 *)self deleteRawRecognition];
    [(ASRSchemaASROneBestTranscriptTier1 *)self deletePostItn];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(ASRSchemaASROneBestTranscriptTier1 *)self deleteRawRecognition];
    [(ASRSchemaASROneBestTranscriptTier1 *)self deletePostItn];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(ASRSchemaASROneBestTranscriptTier1 *)self deleteRawRecognition];
    [(ASRSchemaASROneBestTranscriptTier1 *)self deletePostItn];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(ASRSchemaASROneBestTranscriptTier1 *)self deleteRawRecognition];
    [(ASRSchemaASROneBestTranscriptTier1 *)self deletePostItn];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(ASRSchemaASROneBestTranscriptTier1 *)self deleteRawRecognition];
    [(ASRSchemaASROneBestTranscriptTier1 *)self deletePostItn];
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