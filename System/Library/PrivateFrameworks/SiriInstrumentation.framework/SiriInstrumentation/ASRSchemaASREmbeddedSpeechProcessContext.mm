@interface ASRSchemaASREmbeddedSpeechProcessContext
- (ASRSchemaASREmbeddedSpeechProcessContext)initWithDictionary:(id)dictionary;
- (ASRSchemaASREmbeddedSpeechProcessContext)initWithJSON:(id)n;
- (ASRSchemaASREmbeddedSpeechProcessStarted)startedOrChanged;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteStartedOrChanged;
- (void)setStartedOrChanged:(id)changed;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASREmbeddedSpeechProcessContext

- (ASRSchemaASREmbeddedSpeechProcessContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ASRSchemaASREmbeddedSpeechProcessContext;
  v5 = [(ASRSchemaASREmbeddedSpeechProcessContext *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startedOrChanged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ASRSchemaASREmbeddedSpeechProcessStarted alloc] initWithDictionary:v6];
      [(ASRSchemaASREmbeddedSpeechProcessContext *)v5 setStartedOrChanged:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (ASRSchemaASREmbeddedSpeechProcessContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASREmbeddedSpeechProcessContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASREmbeddedSpeechProcessContext *)self dictionaryRepresentation];
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
  if (self->_startedOrChanged)
  {
    startedOrChanged = [(ASRSchemaASREmbeddedSpeechProcessContext *)self startedOrChanged];
    dictionaryRepresentation = [startedOrChanged dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"startedOrChanged"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"startedOrChanged"];
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
    whichContextevent = self->_whichContextevent;
    if (whichContextevent == [equalCopy whichContextevent])
    {
      startedOrChanged = [(ASRSchemaASREmbeddedSpeechProcessContext *)self startedOrChanged];
      startedOrChanged2 = [equalCopy startedOrChanged];
      v8 = startedOrChanged2;
      if ((startedOrChanged != 0) != (startedOrChanged2 == 0))
      {
        startedOrChanged3 = [(ASRSchemaASREmbeddedSpeechProcessContext *)self startedOrChanged];
        if (!startedOrChanged3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = startedOrChanged3;
        startedOrChanged4 = [(ASRSchemaASREmbeddedSpeechProcessContext *)self startedOrChanged];
        startedOrChanged5 = [equalCopy startedOrChanged];
        v13 = [startedOrChanged4 isEqual:startedOrChanged5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  startedOrChanged = [(ASRSchemaASREmbeddedSpeechProcessContext *)self startedOrChanged];

  if (startedOrChanged)
  {
    startedOrChanged2 = [(ASRSchemaASREmbeddedSpeechProcessContext *)self startedOrChanged];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteStartedOrChanged
{
  if (self->_whichContextevent == 101)
  {
    self->_whichContextevent = 0;
    self->_startedOrChanged = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASREmbeddedSpeechProcessStarted)startedOrChanged
{
  if (self->_whichContextevent == 101)
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
  v3 = 101;
  if (!changed)
  {
    v3 = 0;
  }

  self->_whichContextevent = v3;
  objc_storeStrong(&self->_startedOrChanged, changed);
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ASRSchemaASREmbeddedSpeechProcessContext;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ASRSchemaASREmbeddedSpeechProcessContext *)self startedOrChanged:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ASRSchemaASREmbeddedSpeechProcessContext *)self deleteStartedOrChanged];
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