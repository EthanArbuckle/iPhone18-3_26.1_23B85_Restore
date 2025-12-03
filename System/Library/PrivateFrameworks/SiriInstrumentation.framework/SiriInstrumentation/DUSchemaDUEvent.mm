@interface DUSchemaDUEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (DUSchemaDUEvent)initWithDictionary:(id)dictionary;
- (DUSchemaDUEvent)initWithJSON:(id)n;
- (DUSchemaDUSearchSessionRecord)searchSessionRecord;
- (DUSchemaDUSpeechAudioRecord)speechAudioRecord;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteSearchSessionRecord;
- (void)deleteSpeechAudioRecord;
- (void)setSearchSessionRecord:(id)record;
- (void)setSpeechAudioRecord:(id)record;
- (void)writeTo:(id)to;
@end

@implementation DUSchemaDUEvent

- (DUSchemaDUEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = DUSchemaDUEvent;
  v5 = [(DUSchemaDUEvent *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[DUSchemaDUEventMetadata alloc] initWithDictionary:v6];
      [(DUSchemaDUEvent *)v5 setMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"content"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[DUSchemaDUContent alloc] initWithDictionary:v8];
      [(DUSchemaDUEvent *)v5 setContent:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"speechAudioRecord"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[DUSchemaDUSpeechAudioRecord alloc] initWithDictionary:v10];
      [(DUSchemaDUEvent *)v5 setSpeechAudioRecord:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"searchSessionRecord"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[DUSchemaDUSearchSessionRecord alloc] initWithDictionary:v12];
      [(DUSchemaDUEvent *)v5 setSearchSessionRecord:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (DUSchemaDUEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DUSchemaDUEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DUSchemaDUEvent *)self dictionaryRepresentation];
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
  if (self->_content)
  {
    content = [(DUSchemaDUEvent *)self content];
    dictionaryRepresentation = [content dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"content"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"content"];
    }
  }

  if (self->_metadata)
  {
    metadata = [(DUSchemaDUEvent *)self metadata];
    dictionaryRepresentation2 = [metadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"metadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"metadata"];
    }
  }

  if (self->_searchSessionRecord)
  {
    searchSessionRecord = [(DUSchemaDUEvent *)self searchSessionRecord];
    dictionaryRepresentation3 = [searchSessionRecord dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"searchSessionRecord"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"searchSessionRecord"];
    }
  }

  if (self->_speechAudioRecord)
  {
    speechAudioRecord = [(DUSchemaDUEvent *)self speechAudioRecord];
    dictionaryRepresentation4 = [speechAudioRecord dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"speechAudioRecord"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"speechAudioRecord"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(DUSchemaDUEventMetadata *)self->_metadata hash];
  v4 = [(DUSchemaDUContent *)self->_content hash]^ v3;
  v5 = [(DUSchemaDUSpeechAudioRecord *)self->_speechAudioRecord hash];
  return v4 ^ v5 ^ [(DUSchemaDUSearchSessionRecord *)self->_searchSessionRecord hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_23;
  }

  metadata = [(DUSchemaDUEvent *)self metadata];
  metadata2 = [equalCopy metadata];
  if ((metadata != 0) == (metadata2 == 0))
  {
    goto LABEL_22;
  }

  metadata3 = [(DUSchemaDUEvent *)self metadata];
  if (metadata3)
  {
    v9 = metadata3;
    metadata4 = [(DUSchemaDUEvent *)self metadata];
    metadata5 = [equalCopy metadata];
    v12 = [metadata4 isEqual:metadata5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  metadata = [(DUSchemaDUEvent *)self content];
  metadata2 = [equalCopy content];
  if ((metadata != 0) == (metadata2 == 0))
  {
    goto LABEL_22;
  }

  content = [(DUSchemaDUEvent *)self content];
  if (content)
  {
    v14 = content;
    content2 = [(DUSchemaDUEvent *)self content];
    content3 = [equalCopy content];
    v17 = [content2 isEqual:content3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  metadata = [(DUSchemaDUEvent *)self speechAudioRecord];
  metadata2 = [equalCopy speechAudioRecord];
  if ((metadata != 0) == (metadata2 == 0))
  {
    goto LABEL_22;
  }

  speechAudioRecord = [(DUSchemaDUEvent *)self speechAudioRecord];
  if (speechAudioRecord)
  {
    v19 = speechAudioRecord;
    speechAudioRecord2 = [(DUSchemaDUEvent *)self speechAudioRecord];
    speechAudioRecord3 = [equalCopy speechAudioRecord];
    v22 = [speechAudioRecord2 isEqual:speechAudioRecord3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  metadata = [(DUSchemaDUEvent *)self searchSessionRecord];
  metadata2 = [equalCopy searchSessionRecord];
  if ((metadata != 0) != (metadata2 == 0))
  {
    searchSessionRecord = [(DUSchemaDUEvent *)self searchSessionRecord];
    if (!searchSessionRecord)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = searchSessionRecord;
    searchSessionRecord2 = [(DUSchemaDUEvent *)self searchSessionRecord];
    searchSessionRecord3 = [equalCopy searchSessionRecord];
    v27 = [searchSessionRecord2 isEqual:searchSessionRecord3];

    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  metadata = [(DUSchemaDUEvent *)self metadata];

  if (metadata)
  {
    metadata2 = [(DUSchemaDUEvent *)self metadata];
    PBDataWriterWriteSubmessage();
  }

  content = [(DUSchemaDUEvent *)self content];

  if (content)
  {
    content2 = [(DUSchemaDUEvent *)self content];
    PBDataWriterWriteSubmessage();
  }

  speechAudioRecord = [(DUSchemaDUEvent *)self speechAudioRecord];

  if (speechAudioRecord)
  {
    speechAudioRecord2 = [(DUSchemaDUEvent *)self speechAudioRecord];
    PBDataWriterWriteSubmessage();
  }

  searchSessionRecord = [(DUSchemaDUEvent *)self searchSessionRecord];

  v11 = toCopy;
  if (searchSessionRecord)
  {
    searchSessionRecord2 = [(DUSchemaDUEvent *)self searchSessionRecord];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)deleteSearchSessionRecord
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_searchSessionRecord = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DUSchemaDUSearchSessionRecord)searchSessionRecord
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_searchSessionRecord;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSearchSessionRecord:(id)record
{
  recordCopy = record;
  speechAudioRecord = self->_speechAudioRecord;
  self->_speechAudioRecord = 0;

  v6 = 102;
  if (!recordCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  searchSessionRecord = self->_searchSessionRecord;
  self->_searchSessionRecord = recordCopy;
}

- (void)deleteSpeechAudioRecord
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_speechAudioRecord = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (DUSchemaDUSpeechAudioRecord)speechAudioRecord
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_speechAudioRecord;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpeechAudioRecord:(id)record
{
  recordCopy = record;
  searchSessionRecord = self->_searchSessionRecord;
  self->_searchSessionRecord = 0;

  v6 = 101;
  if (!recordCopy)
  {
    v6 = 0;
  }

  self->_whichEvent_Type = v6;
  speechAudioRecord = self->_speechAudioRecord;
  self->_speechAudioRecord = recordCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(DUSchemaDUEvent *)self whichEvent_Type];
  v3 = @"com.apple.aiml.dataupload.DUEvent";
  if (whichEvent_Type == 102)
  {
    v3 = @"com.apple.aiml.dataupload.DUEvent.DUSearchSessionRecord";
  }

  if (whichEvent_Type == 101)
  {
    return @"com.apple.aiml.dataupload.DUEvent.DUSpeechAudioRecord";
  }

  else
  {
    return v3;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = DUSchemaDUEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(DUSchemaDUEvent *)self deleteContent];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(DUSchemaDUEvent *)self deleteContent];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(DUSchemaDUEvent *)self deleteContent];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(DUSchemaDUEvent *)self deleteContent];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(DUSchemaDUEvent *)self deleteContent];
  }

  metadata = [(DUSchemaDUEvent *)self metadata];
  v7 = [metadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(DUSchemaDUEvent *)self deleteMetadata];
  }

  content = [(DUSchemaDUEvent *)self content];
  v10 = [content applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(DUSchemaDUEvent *)self deleteContent];
  }

  speechAudioRecord = [(DUSchemaDUEvent *)self speechAudioRecord];
  v13 = [speechAudioRecord applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(DUSchemaDUEvent *)self deleteSpeechAudioRecord];
  }

  searchSessionRecord = [(DUSchemaDUEvent *)self searchSessionRecord];
  v16 = [searchSessionRecord applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(DUSchemaDUEvent *)self deleteSearchSessionRecord];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(DUSchemaDUEvent *)self whichEvent_Type];
  if (whichEvent_Type == 101)
  {
    v4 = &OBJC_IVAR___DUSchemaDUEvent__speechAudioRecord;
    goto LABEL_5;
  }

  if (whichEvent_Type == 102)
  {
    v4 = &OBJC_IVAR___DUSchemaDUEvent__searchSessionRecord;
LABEL_5:
    v5 = *(&self->super.super.super.super.isa + *v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  v3 = @"searchSessionRecord";
  if (tag != 102)
  {
    v3 = 0;
  }

  if (tag == 101)
  {
    return @"speechAudioRecord";
  }

  else
  {
    return v3;
  }
}

@end