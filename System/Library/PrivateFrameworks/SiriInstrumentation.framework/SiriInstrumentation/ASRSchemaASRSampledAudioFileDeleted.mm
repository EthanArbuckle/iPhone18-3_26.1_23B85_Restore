@interface ASRSchemaASRSampledAudioFileDeleted
- (ASRSchemaASRSampledAudioFileDeleted)initWithDictionary:(id)dictionary;
- (ASRSchemaASRSampledAudioFileDeleted)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRSampledAudioFileDeleted

- (ASRSchemaASRSampledAudioFileDeleted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ASRSchemaASRSampledAudioFileDeleted;
  v5 = [(ASRSchemaASRSampledAudioFileDeleted *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalAsrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASRSchemaASRSampledAudioFileDeleted *)v5 setOriginalAsrId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (ASRSchemaASRSampledAudioFileDeleted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRSampledAudioFileDeleted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRSampledAudioFileDeleted *)self dictionaryRepresentation];
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
  if (self->_originalAsrId)
  {
    originalAsrId = [(ASRSchemaASRSampledAudioFileDeleted *)self originalAsrId];
    dictionaryRepresentation = [originalAsrId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"originalAsrId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"originalAsrId"];
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
    originalAsrId = [(ASRSchemaASRSampledAudioFileDeleted *)self originalAsrId];
    originalAsrId2 = [equalCopy originalAsrId];
    v7 = originalAsrId2;
    if ((originalAsrId != 0) != (originalAsrId2 == 0))
    {
      originalAsrId3 = [(ASRSchemaASRSampledAudioFileDeleted *)self originalAsrId];
      if (!originalAsrId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = originalAsrId3;
      originalAsrId4 = [(ASRSchemaASRSampledAudioFileDeleted *)self originalAsrId];
      originalAsrId5 = [equalCopy originalAsrId];
      v12 = [originalAsrId4 isEqual:originalAsrId5];

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
  originalAsrId = [(ASRSchemaASRSampledAudioFileDeleted *)self originalAsrId];

  if (originalAsrId)
  {
    originalAsrId2 = [(ASRSchemaASRSampledAudioFileDeleted *)self originalAsrId];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ASRSchemaASRSampledAudioFileDeleted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ASRSchemaASRSampledAudioFileDeleted *)self originalAsrId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ASRSchemaASRSampledAudioFileDeleted *)self deleteOriginalAsrId];
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