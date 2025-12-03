@interface ASRSchemaASRAppleNeuralEngineCompilationContext
- (ASRSchemaASRAppleNeuralEngineCompilationContext)initWithDictionary:(id)dictionary;
- (ASRSchemaASRAppleNeuralEngineCompilationContext)initWithJSON:(id)n;
- (ASRSchemaASRAppleNeuralEngineCompilationEnded)ended;
- (ASRSchemaASRAppleNeuralEngineCompilationStarted)started;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteEnded;
- (void)deleteStarted;
- (void)setEnded:(id)ended;
- (void)setStarted:(id)started;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRAppleNeuralEngineCompilationContext

- (ASRSchemaASRAppleNeuralEngineCompilationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ASRSchemaASRAppleNeuralEngineCompilationContext;
  v5 = [(ASRSchemaASRAppleNeuralEngineCompilationContext *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"started"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ASRSchemaASRAppleNeuralEngineCompilationStarted alloc] initWithDictionary:v6];
      [(ASRSchemaASRAppleNeuralEngineCompilationContext *)v5 setStarted:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ASRSchemaASRAppleNeuralEngineCompilationEnded alloc] initWithDictionary:v8];
      [(ASRSchemaASRAppleNeuralEngineCompilationContext *)v5 setEnded:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ASRSchemaASRAppleNeuralEngineCompilationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self dictionaryRepresentation];
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
    ended = [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self ended];
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

  if (self->_started)
  {
    started = [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self started];
    dictionaryRepresentation2 = [started dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"started"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"started"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [equalCopy whichContextevent])
  {
    goto LABEL_13;
  }

  started = [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self started];
  started2 = [equalCopy started];
  if ((started != 0) == (started2 == 0))
  {
    goto LABEL_12;
  }

  started3 = [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self started];
  if (started3)
  {
    v9 = started3;
    started4 = [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self started];
    started5 = [equalCopy started];
    v12 = [started4 isEqual:started5];

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  started = [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self ended];
  started2 = [equalCopy ended];
  if ((started != 0) != (started2 == 0))
  {
    ended = [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self ended];
    if (!ended)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = ended;
    ended2 = [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self ended];
    ended3 = [equalCopy ended];
    v17 = [ended2 isEqual:ended3];

    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_12:
  }

LABEL_13:
  v18 = 0;
LABEL_14:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  started = [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self started];

  if (started)
  {
    started2 = [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self started];
    PBDataWriterWriteSubmessage();
  }

  ended = [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self ended];

  if (ended)
  {
    ended2 = [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self ended];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 102)
  {
    self->_whichContextevent = 0;
    self->_ended = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRAppleNeuralEngineCompilationEnded)ended
{
  if (self->_whichContextevent == 102)
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
  started = self->_started;
  self->_started = 0;

  v6 = 102;
  if (!endedCopy)
  {
    v6 = 0;
  }

  self->_whichContextevent = v6;
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (void)deleteStarted
{
  if (self->_whichContextevent == 101)
  {
    self->_whichContextevent = 0;
    self->_started = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ASRSchemaASRAppleNeuralEngineCompilationStarted)started
{
  if (self->_whichContextevent == 101)
  {
    v3 = self->_started;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStarted:(id)started
{
  startedCopy = started;
  ended = self->_ended;
  self->_ended = 0;

  v6 = 101;
  if (!startedCopy)
  {
    v6 = 0;
  }

  self->_whichContextevent = v6;
  started = self->_started;
  self->_started = startedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ASRSchemaASRAppleNeuralEngineCompilationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  started = [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self started];
  v7 = [started applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self deleteStarted];
  }

  ended = [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self ended];
  v10 = [ended applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ASRSchemaASRAppleNeuralEngineCompilationContext *)self deleteEnded];
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