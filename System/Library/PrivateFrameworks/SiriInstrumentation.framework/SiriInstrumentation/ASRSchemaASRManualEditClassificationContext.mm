@interface ASRSchemaASRManualEditClassificationContext
- (ASRSchemaASRManualEditClassificationContext)initWithDictionary:(id)dictionary;
- (ASRSchemaASRManualEditClassificationContext)initWithJSON:(id)n;
- (ASRSchemaASRManualEditClassificationEnded)ended;
- (ASRSchemaASRManualEditClassificationFailed)failed;
- (ASRSchemaASRManualEditClassificationStarted)startedOrChanged;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteFailed;
- (void)deleteStartedOrChanged;
- (void)setEnded:(id)ended;
- (void)setFailed:(id)failed;
- (void)setStartedOrChanged:(id)changed;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRManualEditClassificationContext

- (ASRSchemaASRManualEditClassificationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = ASRSchemaASRManualEditClassificationContext;
  v5 = [(ASRSchemaASRManualEditClassificationContext *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalAsrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASRSchemaASRManualEditClassificationContext *)v5 setOriginalAsrId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ASRSchemaASRManualEditClassificationStarted alloc] initWithDictionary:v8];
      [(ASRSchemaASRManualEditClassificationContext *)v5 setStartedOrChanged:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ASRSchemaASRManualEditClassificationEnded alloc] initWithDictionary:v10];
      [(ASRSchemaASRManualEditClassificationContext *)v5 setEnded:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"failed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ASRSchemaASRManualEditClassificationFailed alloc] initWithDictionary:v12];
      [(ASRSchemaASRManualEditClassificationContext *)v5 setFailed:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (ASRSchemaASRManualEditClassificationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRManualEditClassificationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRManualEditClassificationContext *)self dictionaryRepresentation];
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
  if (self->_ended)
  {
    ended = [(ASRSchemaASRManualEditClassificationContext *)self ended];
    dictionaryRepresentation = [ended dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"ended"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"ended"];
    }
  }

  if (self->_failed)
  {
    failed = [(ASRSchemaASRManualEditClassificationContext *)self failed];
    dictionaryRepresentation2 = [failed dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"failed"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"failed"];
    }
  }

  if (self->_originalAsrId)
  {
    originalAsrId = [(ASRSchemaASRManualEditClassificationContext *)self originalAsrId];
    dictionaryRepresentation3 = [originalAsrId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"originalAsrId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"originalAsrId"];
    }
  }

  if (self->_startedOrChanged)
  {
    startedOrChanged = [(ASRSchemaASRManualEditClassificationContext *)self startedOrChanged];
    dictionaryRepresentation4 = [startedOrChanged dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"startedOrChanged"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalAsrId hash];
  v4 = [(ASRSchemaASRManualEditClassificationStarted *)self->_startedOrChanged hash]^ v3;
  v5 = [(ASRSchemaASRManualEditClassificationEnded *)self->_ended hash];
  return v4 ^ v5 ^ [(ASRSchemaASRManualEditClassificationFailed *)self->_failed hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [equalCopy whichContextevent])
  {
    goto LABEL_23;
  }

  originalAsrId = [(ASRSchemaASRManualEditClassificationContext *)self originalAsrId];
  originalAsrId2 = [equalCopy originalAsrId];
  if ((originalAsrId != 0) == (originalAsrId2 == 0))
  {
    goto LABEL_22;
  }

  originalAsrId3 = [(ASRSchemaASRManualEditClassificationContext *)self originalAsrId];
  if (originalAsrId3)
  {
    v9 = originalAsrId3;
    originalAsrId4 = [(ASRSchemaASRManualEditClassificationContext *)self originalAsrId];
    originalAsrId5 = [equalCopy originalAsrId];
    v12 = [originalAsrId4 isEqual:originalAsrId5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  originalAsrId = [(ASRSchemaASRManualEditClassificationContext *)self startedOrChanged];
  originalAsrId2 = [equalCopy startedOrChanged];
  if ((originalAsrId != 0) == (originalAsrId2 == 0))
  {
    goto LABEL_22;
  }

  startedOrChanged = [(ASRSchemaASRManualEditClassificationContext *)self startedOrChanged];
  if (startedOrChanged)
  {
    v14 = startedOrChanged;
    startedOrChanged2 = [(ASRSchemaASRManualEditClassificationContext *)self startedOrChanged];
    startedOrChanged3 = [equalCopy startedOrChanged];
    v17 = [startedOrChanged2 isEqual:startedOrChanged3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  originalAsrId = [(ASRSchemaASRManualEditClassificationContext *)self ended];
  originalAsrId2 = [equalCopy ended];
  if ((originalAsrId != 0) == (originalAsrId2 == 0))
  {
    goto LABEL_22;
  }

  ended = [(ASRSchemaASRManualEditClassificationContext *)self ended];
  if (ended)
  {
    v19 = ended;
    ended2 = [(ASRSchemaASRManualEditClassificationContext *)self ended];
    ended3 = [equalCopy ended];
    v22 = [ended2 isEqual:ended3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  originalAsrId = [(ASRSchemaASRManualEditClassificationContext *)self failed];
  originalAsrId2 = [equalCopy failed];
  if ((originalAsrId != 0) != (originalAsrId2 == 0))
  {
    failed = [(ASRSchemaASRManualEditClassificationContext *)self failed];
    if (!failed)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = failed;
    failed2 = [(ASRSchemaASRManualEditClassificationContext *)self failed];
    failed3 = [equalCopy failed];
    v27 = [failed2 isEqual:failed3];

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
  originalAsrId = [(ASRSchemaASRManualEditClassificationContext *)self originalAsrId];

  if (originalAsrId)
  {
    originalAsrId2 = [(ASRSchemaASRManualEditClassificationContext *)self originalAsrId];
    PBDataWriterWriteSubmessage();
  }

  startedOrChanged = [(ASRSchemaASRManualEditClassificationContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(ASRSchemaASRManualEditClassificationContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }

  ended = [(ASRSchemaASRManualEditClassificationContext *)self ended];

  if (ended)
  {
    ended2 = [(ASRSchemaASRManualEditClassificationContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  failed = [(ASRSchemaASRManualEditClassificationContext *)self failed];

  v11 = toCopy;
  if (failed)
  {
    failed2 = [(ASRSchemaASRManualEditClassificationContext *)self failed];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)deleteFailed
{
  if (self->_whichContextevent == 4)
  {
    self->_whichContextevent = 0;
    self->_failed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRManualEditClassificationFailed)failed
{
  if (self->_whichContextevent == 4)
  {
    v3 = self->_failed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFailed:(id)failed
{
  failedCopy = failed;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  ended = self->_ended;
  self->_ended = 0;

  self->_whichContextevent = 4 * (failedCopy != 0);
  failed = self->_failed;
  self->_failed = failedCopy;
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 3)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRManualEditClassificationEnded)ended
{
  if (self->_whichContextevent == 3)
  {
    v3 = self->_ended;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEnded:(id)ended
{
  endedCopy = ended;
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = 0;

  failed = self->_failed;
  self->_failed = 0;

  v7 = 3;
  if (!endedCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 2)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRManualEditClassificationStarted)startedOrChanged
{
  if (self->_whichContextevent == 2)
  {
    v3 = self->_startedOrChanged;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStartedOrChanged:(id)changed
{
  changedCopy = changed;
  ended = self->_ended;
  self->_ended = 0;

  failed = self->_failed;
  self->_failed = 0;

  self->_whichContextevent = 2 * (changedCopy != 0);
  startedOrChanged = self->_startedOrChanged;
  self->_startedOrChanged = changedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = ASRSchemaASRManualEditClassificationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  originalAsrId = [(ASRSchemaASRManualEditClassificationContext *)self originalAsrId];
  v7 = [originalAsrId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ASRSchemaASRManualEditClassificationContext *)self deleteOriginalAsrId];
  }

  startedOrChanged = [(ASRSchemaASRManualEditClassificationContext *)self startedOrChanged];
  v10 = [startedOrChanged applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ASRSchemaASRManualEditClassificationContext *)self deleteStartedOrChanged];
  }

  ended = [(ASRSchemaASRManualEditClassificationContext *)self ended];
  v13 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ASRSchemaASRManualEditClassificationContext *)self deleteEnded];
  }

  failed = [(ASRSchemaASRManualEditClassificationContext *)self failed];
  v16 = [failed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ASRSchemaASRManualEditClassificationContext *)self deleteFailed];
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