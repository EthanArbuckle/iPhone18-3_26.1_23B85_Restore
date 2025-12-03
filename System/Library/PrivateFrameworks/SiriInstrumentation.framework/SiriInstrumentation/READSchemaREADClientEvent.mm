@interface READSchemaREADClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (READSchemaREADClientEvent)initWithDictionary:(id)dictionary;
- (READSchemaREADClientEvent)initWithJSON:(id)n;
- (READSchemaREADPlaybackSessionContext)playbackSessionContext;
- (READSchemaREADRequestContext)readThisRequestContext;
- (READSchemaREADRequestPreprocessingContext)readsThisRequestPreprocessingContext;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deletePlaybackSessionContext;
- (void)deleteReadThisRequestContext;
- (void)deleteReadsThisRequestPreprocessingContext;
- (void)setPlaybackSessionContext:(id)context;
- (void)setReadThisRequestContext:(id)context;
- (void)setReadsThisRequestPreprocessingContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation READSchemaREADClientEvent

- (READSchemaREADClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = READSchemaREADClientEvent;
  v5 = [(READSchemaREADClientEvent *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[READSchemaREADClientEventMetadata alloc] initWithDictionary:v6];
      [(READSchemaREADClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"readThisRequestContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[READSchemaREADRequestContext alloc] initWithDictionary:v8];
      [(READSchemaREADClientEvent *)v5 setReadThisRequestContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"readsThisRequestPreprocessingContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[READSchemaREADRequestPreprocessingContext alloc] initWithDictionary:v10];
      [(READSchemaREADClientEvent *)v5 setReadsThisRequestPreprocessingContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"playbackSessionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[READSchemaREADPlaybackSessionContext alloc] initWithDictionary:v12];
      [(READSchemaREADClientEvent *)v5 setPlaybackSessionContext:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (READSchemaREADClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(READSchemaREADClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(READSchemaREADClientEvent *)self dictionaryRepresentation];
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
  if (self->_eventMetadata)
  {
    eventMetadata = [(READSchemaREADClientEvent *)self eventMetadata];
    dictionaryRepresentation = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_playbackSessionContext)
  {
    playbackSessionContext = [(READSchemaREADClientEvent *)self playbackSessionContext];
    dictionaryRepresentation2 = [playbackSessionContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"playbackSessionContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"playbackSessionContext"];
    }
  }

  if (self->_readThisRequestContext)
  {
    readThisRequestContext = [(READSchemaREADClientEvent *)self readThisRequestContext];
    dictionaryRepresentation3 = [readThisRequestContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"readThisRequestContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"readThisRequestContext"];
    }
  }

  if (self->_readsThisRequestPreprocessingContext)
  {
    readsThisRequestPreprocessingContext = [(READSchemaREADClientEvent *)self readsThisRequestPreprocessingContext];
    dictionaryRepresentation4 = [readsThisRequestPreprocessingContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"readsThisRequestPreprocessingContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"readsThisRequestPreprocessingContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(READSchemaREADClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(READSchemaREADRequestContext *)self->_readThisRequestContext hash]^ v3;
  v5 = [(READSchemaREADRequestPreprocessingContext *)self->_readsThisRequestPreprocessingContext hash];
  return v4 ^ v5 ^ [(READSchemaREADPlaybackSessionContext *)self->_playbackSessionContext hash];
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

  eventMetadata = [(READSchemaREADClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  eventMetadata3 = [(READSchemaREADClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(READSchemaREADClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(READSchemaREADClientEvent *)self readThisRequestContext];
  eventMetadata2 = [equalCopy readThisRequestContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  readThisRequestContext = [(READSchemaREADClientEvent *)self readThisRequestContext];
  if (readThisRequestContext)
  {
    v14 = readThisRequestContext;
    readThisRequestContext2 = [(READSchemaREADClientEvent *)self readThisRequestContext];
    readThisRequestContext3 = [equalCopy readThisRequestContext];
    v17 = [readThisRequestContext2 isEqual:readThisRequestContext3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(READSchemaREADClientEvent *)self readsThisRequestPreprocessingContext];
  eventMetadata2 = [equalCopy readsThisRequestPreprocessingContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_22;
  }

  readsThisRequestPreprocessingContext = [(READSchemaREADClientEvent *)self readsThisRequestPreprocessingContext];
  if (readsThisRequestPreprocessingContext)
  {
    v19 = readsThisRequestPreprocessingContext;
    readsThisRequestPreprocessingContext2 = [(READSchemaREADClientEvent *)self readsThisRequestPreprocessingContext];
    readsThisRequestPreprocessingContext3 = [equalCopy readsThisRequestPreprocessingContext];
    v22 = [readsThisRequestPreprocessingContext2 isEqual:readsThisRequestPreprocessingContext3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  eventMetadata = [(READSchemaREADClientEvent *)self playbackSessionContext];
  eventMetadata2 = [equalCopy playbackSessionContext];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    playbackSessionContext = [(READSchemaREADClientEvent *)self playbackSessionContext];
    if (!playbackSessionContext)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = playbackSessionContext;
    playbackSessionContext2 = [(READSchemaREADClientEvent *)self playbackSessionContext];
    playbackSessionContext3 = [equalCopy playbackSessionContext];
    v27 = [playbackSessionContext2 isEqual:playbackSessionContext3];

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
  eventMetadata = [(READSchemaREADClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(READSchemaREADClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  readThisRequestContext = [(READSchemaREADClientEvent *)self readThisRequestContext];

  if (readThisRequestContext)
  {
    readThisRequestContext2 = [(READSchemaREADClientEvent *)self readThisRequestContext];
    PBDataWriterWriteSubmessage();
  }

  readsThisRequestPreprocessingContext = [(READSchemaREADClientEvent *)self readsThisRequestPreprocessingContext];

  if (readsThisRequestPreprocessingContext)
  {
    readsThisRequestPreprocessingContext2 = [(READSchemaREADClientEvent *)self readsThisRequestPreprocessingContext];
    PBDataWriterWriteSubmessage();
  }

  playbackSessionContext = [(READSchemaREADClientEvent *)self playbackSessionContext];

  v11 = toCopy;
  if (playbackSessionContext)
  {
    playbackSessionContext2 = [(READSchemaREADClientEvent *)self playbackSessionContext];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)deletePlaybackSessionContext
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_playbackSessionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (READSchemaREADPlaybackSessionContext)playbackSessionContext
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_playbackSessionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPlaybackSessionContext:(id)context
{
  contextCopy = context;
  readThisRequestContext = self->_readThisRequestContext;
  self->_readThisRequestContext = 0;

  readsThisRequestPreprocessingContext = self->_readsThisRequestPreprocessingContext;
  self->_readsThisRequestPreprocessingContext = 0;

  v7 = 103;
  if (!contextCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  playbackSessionContext = self->_playbackSessionContext;
  self->_playbackSessionContext = contextCopy;
}

- (void)deleteReadsThisRequestPreprocessingContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_readsThisRequestPreprocessingContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (READSchemaREADRequestPreprocessingContext)readsThisRequestPreprocessingContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_readsThisRequestPreprocessingContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setReadsThisRequestPreprocessingContext:(id)context
{
  contextCopy = context;
  readThisRequestContext = self->_readThisRequestContext;
  self->_readThisRequestContext = 0;

  playbackSessionContext = self->_playbackSessionContext;
  self->_playbackSessionContext = 0;

  v7 = 102;
  if (!contextCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  readsThisRequestPreprocessingContext = self->_readsThisRequestPreprocessingContext;
  self->_readsThisRequestPreprocessingContext = contextCopy;
}

- (void)deleteReadThisRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_readThisRequestContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (READSchemaREADRequestContext)readThisRequestContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_readThisRequestContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setReadThisRequestContext:(id)context
{
  contextCopy = context;
  readsThisRequestPreprocessingContext = self->_readsThisRequestPreprocessingContext;
  self->_readsThisRequestPreprocessingContext = 0;

  playbackSessionContext = self->_playbackSessionContext;
  self->_playbackSessionContext = 0;

  v7 = 101;
  if (!contextCopy)
  {
    v7 = 0;
  }

  self->_whichEvent_Type = v7;
  readThisRequestContext = self->_readThisRequestContext;
  self->_readThisRequestContext = contextCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(READSchemaREADClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 2)
  {
    return @"com.apple.aiml.siri.read.READClientEvent";
  }

  else
  {
    return off_1E78E18C8[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = READSchemaREADClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(READSchemaREADClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(READSchemaREADClientEvent *)self deleteEventMetadata];
  }

  readThisRequestContext = [(READSchemaREADClientEvent *)self readThisRequestContext];
  v10 = [readThisRequestContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(READSchemaREADClientEvent *)self deleteReadThisRequestContext];
  }

  readsThisRequestPreprocessingContext = [(READSchemaREADClientEvent *)self readsThisRequestPreprocessingContext];
  v13 = [readsThisRequestPreprocessingContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(READSchemaREADClientEvent *)self deleteReadsThisRequestPreprocessingContext];
  }

  playbackSessionContext = [(READSchemaREADClientEvent *)self playbackSessionContext];
  v16 = [playbackSessionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(READSchemaREADClientEvent *)self deletePlaybackSessionContext];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (int)componentName
{
  eventMetadata = [(READSchemaREADClientEvent *)self eventMetadata];
  readId = [eventMetadata readId];

  if (readId)
  {
    value = [readId value];
    if (value)
    {
      value2 = [readId value];
      v6 = [value2 length];

      if (v6)
      {
        LODWORD(value) = 40;
      }

      else
      {
        LODWORD(value) = 0;
      }
    }
  }

  else
  {
    LODWORD(value) = 0;
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(READSchemaREADClientEvent *)self eventMetadata];
  readId = [eventMetadata readId];

  if (!readId)
  {
    goto LABEL_5;
  }

  value = [readId value];
  if (!value)
  {
    goto LABEL_6;
  }

  value2 = [readId value];
  v6 = [value2 length];

  if (v6)
  {
    value = readId;
  }

  else
  {
LABEL_5:
    value = 0;
  }

LABEL_6:

  return value;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(READSchemaREADClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EAE38[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E78EAE50[tag - 101];
  }
}

@end