@interface ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata
- (ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata)initWithDictionary:(id)dictionary;
- (ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata

- (ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata;
  v5 = [(ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"speechProfileId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata *)v5 setSpeechProfileId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_speechProfileId)
  {
    speechProfileId = [(ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata *)self speechProfileId];
    dictionaryRepresentation = [speechProfileId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"speechProfileId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"speechProfileId"];
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
    speechProfileId = [(ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata *)self speechProfileId];
    speechProfileId2 = [equalCopy speechProfileId];
    v7 = speechProfileId2;
    if ((speechProfileId != 0) != (speechProfileId2 == 0))
    {
      speechProfileId3 = [(ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata *)self speechProfileId];
      if (!speechProfileId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = speechProfileId3;
      speechProfileId4 = [(ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata *)self speechProfileId];
      speechProfileId5 = [equalCopy speechProfileId];
      v12 = [speechProfileId4 isEqual:speechProfileId5];

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
  speechProfileId = [(ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata *)self speechProfileId];

  if (speechProfileId)
  {
    speechProfileId2 = [(ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata *)self speechProfileId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata *)self speechProfileId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ASRSpeechProfileSchemaASRSpeechProfileClientEventMetadata *)self deleteSpeechProfileId];
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