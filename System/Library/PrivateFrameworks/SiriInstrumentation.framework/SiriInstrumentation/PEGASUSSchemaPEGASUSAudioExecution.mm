@interface PEGASUSSchemaPEGASUSAudioExecution
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAudioExecution)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSAudioExecution)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSAudioExecution

- (PEGASUSSchemaPEGASUSAudioExecution)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PEGASUSSchemaPEGASUSAudioExecution;
  v5 = [(PEGASUSSchemaPEGASUSAudioExecution *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"audioPlaybackSignal"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PEGASUSSchemaPEGASUSAudioPlaybackSignal alloc] initWithDictionary:v6];
      [(PEGASUSSchemaPEGASUSAudioExecution *)v5 setAudioPlaybackSignal:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"audioUnderstanding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PEGASUSSchemaPEGASUSAudioUnderstanding alloc] initWithDictionary:v8];
      [(PEGASUSSchemaPEGASUSAudioExecution *)v5 setAudioUnderstanding:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"audioQueueStateInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PEGASUSSchemaPEGASUSAudioQueueStateInfo alloc] initWithDictionary:v10];
      [(PEGASUSSchemaPEGASUSAudioExecution *)v5 setAudioQueueStateInfo:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSAudioExecution)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAudioExecution *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSAudioExecution *)self dictionaryRepresentation];
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
  if (self->_audioPlaybackSignal)
  {
    audioPlaybackSignal = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioPlaybackSignal];
    dictionaryRepresentation = [audioPlaybackSignal dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"audioPlaybackSignal"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"audioPlaybackSignal"];
    }
  }

  if (self->_audioQueueStateInfo)
  {
    audioQueueStateInfo = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioQueueStateInfo];
    dictionaryRepresentation2 = [audioQueueStateInfo dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"audioQueueStateInfo"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"audioQueueStateInfo"];
    }
  }

  if (self->_audioUnderstanding)
  {
    audioUnderstanding = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioUnderstanding];
    dictionaryRepresentation3 = [audioUnderstanding dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"audioUnderstanding"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"audioUnderstanding"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PEGASUSSchemaPEGASUSAudioPlaybackSignal *)self->_audioPlaybackSignal hash];
  v4 = [(PEGASUSSchemaPEGASUSAudioUnderstanding *)self->_audioUnderstanding hash]^ v3;
  return v4 ^ [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self->_audioQueueStateInfo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  audioPlaybackSignal = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioPlaybackSignal];
  audioPlaybackSignal2 = [equalCopy audioPlaybackSignal];
  if ((audioPlaybackSignal != 0) == (audioPlaybackSignal2 == 0))
  {
    goto LABEL_16;
  }

  audioPlaybackSignal3 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioPlaybackSignal];
  if (audioPlaybackSignal3)
  {
    v8 = audioPlaybackSignal3;
    audioPlaybackSignal4 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioPlaybackSignal];
    audioPlaybackSignal5 = [equalCopy audioPlaybackSignal];
    v11 = [audioPlaybackSignal4 isEqual:audioPlaybackSignal5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  audioPlaybackSignal = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioUnderstanding];
  audioPlaybackSignal2 = [equalCopy audioUnderstanding];
  if ((audioPlaybackSignal != 0) == (audioPlaybackSignal2 == 0))
  {
    goto LABEL_16;
  }

  audioUnderstanding = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioUnderstanding];
  if (audioUnderstanding)
  {
    v13 = audioUnderstanding;
    audioUnderstanding2 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioUnderstanding];
    audioUnderstanding3 = [equalCopy audioUnderstanding];
    v16 = [audioUnderstanding2 isEqual:audioUnderstanding3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  audioPlaybackSignal = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioQueueStateInfo];
  audioPlaybackSignal2 = [equalCopy audioQueueStateInfo];
  if ((audioPlaybackSignal != 0) != (audioPlaybackSignal2 == 0))
  {
    audioQueueStateInfo = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioQueueStateInfo];
    if (!audioQueueStateInfo)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = audioQueueStateInfo;
    audioQueueStateInfo2 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioQueueStateInfo];
    audioQueueStateInfo3 = [equalCopy audioQueueStateInfo];
    v21 = [audioQueueStateInfo2 isEqual:audioQueueStateInfo3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  audioPlaybackSignal = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioPlaybackSignal];

  if (audioPlaybackSignal)
  {
    audioPlaybackSignal2 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioPlaybackSignal];
    PBDataWriterWriteSubmessage();
  }

  audioUnderstanding = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioUnderstanding];

  if (audioUnderstanding)
  {
    audioUnderstanding2 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioUnderstanding];
    PBDataWriterWriteSubmessage();
  }

  audioQueueStateInfo = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioQueueStateInfo];

  v9 = toCopy;
  if (audioQueueStateInfo)
  {
    audioQueueStateInfo2 = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioQueueStateInfo];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = PEGASUSSchemaPEGASUSAudioExecution;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  audioPlaybackSignal = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioPlaybackSignal];
  v7 = [audioPlaybackSignal applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PEGASUSSchemaPEGASUSAudioExecution *)self deleteAudioPlaybackSignal];
  }

  audioUnderstanding = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioUnderstanding];
  v10 = [audioUnderstanding applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PEGASUSSchemaPEGASUSAudioExecution *)self deleteAudioUnderstanding];
  }

  audioQueueStateInfo = [(PEGASUSSchemaPEGASUSAudioExecution *)self audioQueueStateInfo];
  v13 = [audioQueueStateInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PEGASUSSchemaPEGASUSAudioExecution *)self deleteAudioQueueStateInfo];
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