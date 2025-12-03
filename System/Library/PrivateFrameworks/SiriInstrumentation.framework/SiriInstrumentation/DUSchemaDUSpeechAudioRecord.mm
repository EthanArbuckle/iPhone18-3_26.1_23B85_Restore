@interface DUSchemaDUSpeechAudioRecord
- (BOOL)isEqual:(id)equal;
- (DUSchemaDUSpeechAudioRecord)initWithDictionary:(id)dictionary;
- (DUSchemaDUSpeechAudioRecord)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation DUSchemaDUSpeechAudioRecord

- (DUSchemaDUSpeechAudioRecord)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = DUSchemaDUSpeechAudioRecord;
  v5 = [(DUSchemaDUSpeechAudioRecord *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"language"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DUSchemaDUSpeechAudioRecord *)v5 setLanguage:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"codec"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(DUSchemaDUSpeechAudioRecord *)v5 setCodec:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"interactionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(DUSchemaDUSpeechAudioRecord *)v5 setInteractionId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"speechId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(DUSchemaDUSpeechAudioRecord *)v5 setSpeechId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"speechIdString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(DUSchemaDUSpeechAudioRecord *)v5 setSpeechIdString:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"audioCreatedTimestampMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DUSchemaDUSpeechAudioRecord setAudioCreatedTimestampMs:](v5, "setAudioCreatedTimestampMs:", [v16 unsignedLongLongValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (DUSchemaDUSpeechAudioRecord)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DUSchemaDUSpeechAudioRecord *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DUSchemaDUSpeechAudioRecord *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DUSchemaDUSpeechAudioRecord audioCreatedTimestampMs](self, "audioCreatedTimestampMs")}];
    [dictionary setObject:v4 forKeyedSubscript:@"audioCreatedTimestampMs"];
  }

  if (self->_codec)
  {
    codec = [(DUSchemaDUSpeechAudioRecord *)self codec];
    v6 = [codec copy];
    [dictionary setObject:v6 forKeyedSubscript:@"codec"];
  }

  if (self->_interactionId)
  {
    interactionId = [(DUSchemaDUSpeechAudioRecord *)self interactionId];
    dictionaryRepresentation = [interactionId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"interactionId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"interactionId"];
    }
  }

  if (self->_language)
  {
    language = [(DUSchemaDUSpeechAudioRecord *)self language];
    v11 = [language copy];
    [dictionary setObject:v11 forKeyedSubscript:@"language"];
  }

  if (self->_speechId)
  {
    speechId = [(DUSchemaDUSpeechAudioRecord *)self speechId];
    dictionaryRepresentation2 = [speechId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"speechId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"speechId"];
    }
  }

  if (self->_speechIdString)
  {
    speechIdString = [(DUSchemaDUSpeechAudioRecord *)self speechIdString];
    v16 = [speechIdString copy];
    [dictionary setObject:v16 forKeyedSubscript:@"speechIdString"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_language hash];
  v4 = [(NSString *)self->_codec hash];
  v5 = [(SISchemaUUID *)self->_interactionId hash];
  v6 = [(SISchemaUUID *)self->_speechId hash];
  v7 = [(NSString *)self->_speechIdString hash];
  if (*&self->_has)
  {
    v8 = 2654435761u * self->_audioCreatedTimestampMs;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  language = [(DUSchemaDUSpeechAudioRecord *)self language];
  language2 = [equalCopy language];
  if ((language != 0) == (language2 == 0))
  {
    goto LABEL_26;
  }

  language3 = [(DUSchemaDUSpeechAudioRecord *)self language];
  if (language3)
  {
    v8 = language3;
    language4 = [(DUSchemaDUSpeechAudioRecord *)self language];
    language5 = [equalCopy language];
    v11 = [language4 isEqual:language5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  language = [(DUSchemaDUSpeechAudioRecord *)self codec];
  language2 = [equalCopy codec];
  if ((language != 0) == (language2 == 0))
  {
    goto LABEL_26;
  }

  codec = [(DUSchemaDUSpeechAudioRecord *)self codec];
  if (codec)
  {
    v13 = codec;
    codec2 = [(DUSchemaDUSpeechAudioRecord *)self codec];
    codec3 = [equalCopy codec];
    v16 = [codec2 isEqual:codec3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  language = [(DUSchemaDUSpeechAudioRecord *)self interactionId];
  language2 = [equalCopy interactionId];
  if ((language != 0) == (language2 == 0))
  {
    goto LABEL_26;
  }

  interactionId = [(DUSchemaDUSpeechAudioRecord *)self interactionId];
  if (interactionId)
  {
    v18 = interactionId;
    interactionId2 = [(DUSchemaDUSpeechAudioRecord *)self interactionId];
    interactionId3 = [equalCopy interactionId];
    v21 = [interactionId2 isEqual:interactionId3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  language = [(DUSchemaDUSpeechAudioRecord *)self speechId];
  language2 = [equalCopy speechId];
  if ((language != 0) == (language2 == 0))
  {
    goto LABEL_26;
  }

  speechId = [(DUSchemaDUSpeechAudioRecord *)self speechId];
  if (speechId)
  {
    v23 = speechId;
    speechId2 = [(DUSchemaDUSpeechAudioRecord *)self speechId];
    speechId3 = [equalCopy speechId];
    v26 = [speechId2 isEqual:speechId3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  language = [(DUSchemaDUSpeechAudioRecord *)self speechIdString];
  language2 = [equalCopy speechIdString];
  if ((language != 0) == (language2 == 0))
  {
LABEL_26:

    goto LABEL_27;
  }

  speechIdString = [(DUSchemaDUSpeechAudioRecord *)self speechIdString];
  if (speechIdString)
  {
    v28 = speechIdString;
    speechIdString2 = [(DUSchemaDUSpeechAudioRecord *)self speechIdString];
    speechIdString3 = [equalCopy speechIdString];
    v31 = [speechIdString2 isEqual:speechIdString3];

    if (!v31)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[56] & 1))
  {
    if ((*&self->_has & 1) == 0 || (audioCreatedTimestampMs = self->_audioCreatedTimestampMs, audioCreatedTimestampMs == [equalCopy audioCreatedTimestampMs]))
    {
      v32 = 1;
      goto LABEL_28;
    }
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  language = [(DUSchemaDUSpeechAudioRecord *)self language];

  if (language)
  {
    PBDataWriterWriteStringField();
  }

  codec = [(DUSchemaDUSpeechAudioRecord *)self codec];

  if (codec)
  {
    PBDataWriterWriteStringField();
  }

  interactionId = [(DUSchemaDUSpeechAudioRecord *)self interactionId];

  if (interactionId)
  {
    interactionId2 = [(DUSchemaDUSpeechAudioRecord *)self interactionId];
    PBDataWriterWriteSubmessage();
  }

  speechId = [(DUSchemaDUSpeechAudioRecord *)self speechId];

  if (speechId)
  {
    speechId2 = [(DUSchemaDUSpeechAudioRecord *)self speechId];
    PBDataWriterWriteSubmessage();
  }

  speechIdString = [(DUSchemaDUSpeechAudioRecord *)self speechIdString];

  if (speechIdString)
  {
    PBDataWriterWriteStringField();
  }

  v11 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
    v11 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = DUSchemaDUSpeechAudioRecord;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(DUSchemaDUSpeechAudioRecord *)self deleteInteractionId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechIdString];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(DUSchemaDUSpeechAudioRecord *)self deleteInteractionId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechIdString];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(DUSchemaDUSpeechAudioRecord *)self deleteInteractionId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechIdString];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(DUSchemaDUSpeechAudioRecord *)self deleteInteractionId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechIdString];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(DUSchemaDUSpeechAudioRecord *)self deleteInteractionId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechIdString];
  }

  if ([policyCopy isConditionSet:8])
  {
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechId];
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechIdString];
  }

  interactionId = [(DUSchemaDUSpeechAudioRecord *)self interactionId];
  v7 = [interactionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(DUSchemaDUSpeechAudioRecord *)self deleteInteractionId];
  }

  speechId = [(DUSchemaDUSpeechAudioRecord *)self speechId];
  v10 = [speechId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(DUSchemaDUSpeechAudioRecord *)self deleteSpeechId];
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