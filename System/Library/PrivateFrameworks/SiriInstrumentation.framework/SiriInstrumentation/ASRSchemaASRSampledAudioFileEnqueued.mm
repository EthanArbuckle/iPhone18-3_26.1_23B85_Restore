@interface ASRSchemaASRSampledAudioFileEnqueued
- (ASRSchemaASRSampledAudioFileEnqueued)initWithDictionary:(id)dictionary;
- (ASRSchemaASRSampledAudioFileEnqueued)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRSampledAudioFileEnqueued

- (ASRSchemaASRSampledAudioFileEnqueued)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = ASRSchemaASRSampledAudioFileEnqueued;
  v5 = [(ASRSchemaASRSampledAudioFileEnqueued *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalAsrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASRSchemaASRSampledAudioFileEnqueued *)v5 setOriginalAsrId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"audioCodec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRSampledAudioFileEnqueued setAudioCodec:](v5, "setAudioCodec:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (ASRSchemaASRSampledAudioFileEnqueued)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRSampledAudioFileEnqueued *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRSampledAudioFileEnqueued *)self dictionaryRepresentation];
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
    v4 = [(ASRSchemaASRSampledAudioFileEnqueued *)self audioCodec]- 1;
    if (v4 > 0xA)
    {
      v5 = @"MHASRAUDIOCODEC_UNKNOWN";
    }

    else
    {
      v5 = off_1E78D1F18[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"audioCodec"];
  }

  if (self->_originalAsrId)
  {
    originalAsrId = [(ASRSchemaASRSampledAudioFileEnqueued *)self originalAsrId];
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

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalAsrId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_audioCodec;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  originalAsrId = [(ASRSchemaASRSampledAudioFileEnqueued *)self originalAsrId];
  originalAsrId2 = [equalCopy originalAsrId];
  v7 = originalAsrId2;
  if ((originalAsrId != 0) == (originalAsrId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  originalAsrId3 = [(ASRSchemaASRSampledAudioFileEnqueued *)self originalAsrId];
  if (originalAsrId3)
  {
    v9 = originalAsrId3;
    originalAsrId4 = [(ASRSchemaASRSampledAudioFileEnqueued *)self originalAsrId];
    originalAsrId5 = [equalCopy originalAsrId];
    v12 = [originalAsrId4 isEqual:originalAsrId5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    audioCodec = self->_audioCodec;
    if (audioCodec != [equalCopy audioCodec])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  originalAsrId = [(ASRSchemaASRSampledAudioFileEnqueued *)self originalAsrId];

  if (originalAsrId)
  {
    originalAsrId2 = [(ASRSchemaASRSampledAudioFileEnqueued *)self originalAsrId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ASRSchemaASRSampledAudioFileEnqueued;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ASRSchemaASRSampledAudioFileEnqueued *)self originalAsrId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ASRSchemaASRSampledAudioFileEnqueued *)self deleteOriginalAsrId];
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