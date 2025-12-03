@interface ASRSchemaASRPackage
- (ASRSchemaASRPackage)initWithDictionary:(id)dictionary;
- (ASRSchemaASRPackage)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRPackage

- (ASRSchemaASRPackage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ASRSchemaASRPackage;
  v5 = [(ASRSchemaASRPackage *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rawRecognition"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ASRSchemaASRRecognitionResult alloc] initWithDictionary:v6];
      [(ASRSchemaASRPackage *)v5 setRawRecognition:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"postItn"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ASRSchemaASRRecognitionResult alloc] initWithDictionary:v8];
      [(ASRSchemaASRPackage *)v5 setPostItn:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ASRSchemaASRPackage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRPackage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRPackage *)self dictionaryRepresentation];
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
    postItn = [(ASRSchemaASRPackage *)self postItn];
    dictionaryRepresentation = [postItn dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"postItn"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"postItn"];
    }
  }

  if (self->_rawRecognition)
  {
    rawRecognition = [(ASRSchemaASRPackage *)self rawRecognition];
    dictionaryRepresentation2 = [rawRecognition dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"rawRecognition"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"rawRecognition"];
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

  rawRecognition = [(ASRSchemaASRPackage *)self rawRecognition];
  rawRecognition2 = [equalCopy rawRecognition];
  if ((rawRecognition != 0) == (rawRecognition2 == 0))
  {
    goto LABEL_11;
  }

  rawRecognition3 = [(ASRSchemaASRPackage *)self rawRecognition];
  if (rawRecognition3)
  {
    v8 = rawRecognition3;
    rawRecognition4 = [(ASRSchemaASRPackage *)self rawRecognition];
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

  rawRecognition = [(ASRSchemaASRPackage *)self postItn];
  rawRecognition2 = [equalCopy postItn];
  if ((rawRecognition != 0) != (rawRecognition2 == 0))
  {
    postItn = [(ASRSchemaASRPackage *)self postItn];
    if (!postItn)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = postItn;
    postItn2 = [(ASRSchemaASRPackage *)self postItn];
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
  rawRecognition = [(ASRSchemaASRPackage *)self rawRecognition];

  if (rawRecognition)
  {
    rawRecognition2 = [(ASRSchemaASRPackage *)self rawRecognition];
    PBDataWriterWriteSubmessage();
  }

  postItn = [(ASRSchemaASRPackage *)self postItn];

  if (postItn)
  {
    postItn2 = [(ASRSchemaASRPackage *)self postItn];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ASRSchemaASRPackage;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  rawRecognition = [(ASRSchemaASRPackage *)self rawRecognition];
  v7 = [rawRecognition applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ASRSchemaASRPackage *)self deleteRawRecognition];
  }

  postItn = [(ASRSchemaASRPackage *)self postItn];
  v10 = [postItn applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ASRSchemaASRPackage *)self deletePostItn];
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