@interface SISchemaSpeechTranscription
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaSpeechTranscription)initWithDictionary:(id)dictionary;
- (SISchemaSpeechTranscription)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaSpeechTranscription

- (SISchemaSpeechTranscription)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SISchemaSpeechTranscription;
  v5 = [(SISchemaSpeechTranscription *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"aceID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaSpeechTranscription *)v5 setAceID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"speechTranscriptionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaSpeechTranscription setSpeechTranscriptionType:](v5, "setSpeechTranscriptionType:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (SISchemaSpeechTranscription)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaSpeechTranscription *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaSpeechTranscription *)self dictionaryRepresentation];
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
  if (self->_aceID)
  {
    aceID = [(SISchemaSpeechTranscription *)self aceID];
    v5 = [aceID copy];
    [dictionary setObject:v5 forKeyedSubscript:@"aceID"];
  }

  if (*&self->_has)
  {
    v6 = [(SISchemaSpeechTranscription *)self speechTranscriptionType]- 1;
    if (v6 > 2)
    {
      v7 = @"SPEECHTRANSCRIPTIONTYPE_UNKNOWN_SPEECH_TRANSCRIPTION_TYPE";
    }

    else
    {
      v7 = off_1E78E6540[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"speechTranscriptionType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_aceID hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_speechTranscriptionType;
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

  aceID = [(SISchemaSpeechTranscription *)self aceID];
  aceID2 = [equalCopy aceID];
  v7 = aceID2;
  if ((aceID != 0) == (aceID2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  aceID3 = [(SISchemaSpeechTranscription *)self aceID];
  if (aceID3)
  {
    v9 = aceID3;
    aceID4 = [(SISchemaSpeechTranscription *)self aceID];
    aceID5 = [equalCopy aceID];
    v12 = [aceID4 isEqual:aceID5];

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
    speechTranscriptionType = self->_speechTranscriptionType;
    if (speechTranscriptionType != [equalCopy speechTranscriptionType])
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
  aceID = [(SISchemaSpeechTranscription *)self aceID];

  if (aceID)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end