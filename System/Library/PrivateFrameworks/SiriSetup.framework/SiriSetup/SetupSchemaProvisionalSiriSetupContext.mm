@interface SetupSchemaProvisionalSiriSetupContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SetupSchemaProvisionalSiriSetupContext)initWithDictionary:(id)dictionary;
- (SetupSchemaProvisionalSiriSetupContext)initWithJSON:(id)n;
- (SetupSchemaProvisionalSiriSetupEnded)ended;
- (SetupSchemaProvisionalSiriSetupStarted)started;
- (SetupSchemaProvisionalSiriSetupStep)step;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteStarted;
- (void)deleteStep;
- (void)setEnded:(id)ended;
- (void)setStarted:(id)started;
- (void)setStep:(id)step;
- (void)writeTo:(id)to;
@end

@implementation SetupSchemaProvisionalSiriSetupContext

- (void)setStarted:(id)started
{
  startedCopy = started;
  ended = self->_ended;
  self->_ended = 0;

  step = self->_step;
  self->_step = 0;

  self->_whichContextevent = startedCopy != 0;
  started = self->_started;
  self->_started = startedCopy;
}

- (SetupSchemaProvisionalSiriSetupStarted)started
{
  if (self->_whichContextevent == 1)
  {
    v3 = self->_started;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)deleteStarted
{
  if (self->_whichContextevent == 1)
  {
    self->_whichContextevent = 0;
    started = self->_started;
    self->_started = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (void)setEnded:(id)ended
{
  endedCopy = ended;
  started = self->_started;
  self->_started = 0;

  step = self->_step;
  self->_step = 0;

  self->_whichContextevent = 2 * (endedCopy != 0);
  ended = self->_ended;
  self->_ended = endedCopy;
}

- (SetupSchemaProvisionalSiriSetupEnded)ended
{
  if (self->_whichContextevent == 2)
  {
    v3 = self->_ended;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)deleteEnded
{
  if (self->_whichContextevent == 2)
  {
    self->_whichContextevent = 0;
    ended = self->_ended;
    self->_ended = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (void)setStep:(id)step
{
  stepCopy = step;
  started = self->_started;
  self->_started = 0;

  ended = self->_ended;
  self->_ended = 0;

  v7 = 3;
  if (!stepCopy)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  step = self->_step;
  self->_step = stepCopy;
}

- (SetupSchemaProvisionalSiriSetupStep)step
{
  if (self->_whichContextevent == 3)
  {
    v3 = self->_step;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)deleteStep
{
  if (self->_whichContextevent == 3)
  {
    self->_whichContextevent = 0;
    step = self->_step;
    self->_step = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  started = [(SetupSchemaProvisionalSiriSetupContext *)self started];

  if (started)
  {
    started2 = [(SetupSchemaProvisionalSiriSetupContext *)self started];
    PBDataWriterWriteSubmessage();
  }

  ended = [(SetupSchemaProvisionalSiriSetupContext *)self ended];

  if (ended)
  {
    ended2 = [(SetupSchemaProvisionalSiriSetupContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  step = [(SetupSchemaProvisionalSiriSetupContext *)self step];

  v9 = toCopy;
  if (step)
  {
    step2 = [(SetupSchemaProvisionalSiriSetupContext *)self step];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [equalCopy whichContextevent])
  {
    goto LABEL_18;
  }

  started = [(SetupSchemaProvisionalSiriSetupContext *)self started];
  started2 = [equalCopy started];
  if ((started != 0) == (started2 == 0))
  {
    goto LABEL_17;
  }

  started3 = [(SetupSchemaProvisionalSiriSetupContext *)self started];
  if (started3)
  {
    v9 = started3;
    started4 = [(SetupSchemaProvisionalSiriSetupContext *)self started];
    started5 = [equalCopy started];
    v12 = [started4 isEqual:started5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  started = [(SetupSchemaProvisionalSiriSetupContext *)self ended];
  started2 = [equalCopy ended];
  if ((started != 0) == (started2 == 0))
  {
    goto LABEL_17;
  }

  ended = [(SetupSchemaProvisionalSiriSetupContext *)self ended];
  if (ended)
  {
    v14 = ended;
    ended2 = [(SetupSchemaProvisionalSiriSetupContext *)self ended];
    ended3 = [equalCopy ended];
    v17 = [ended2 isEqual:ended3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  started = [(SetupSchemaProvisionalSiriSetupContext *)self step];
  started2 = [equalCopy step];
  if ((started != 0) != (started2 == 0))
  {
    step = [(SetupSchemaProvisionalSiriSetupContext *)self step];
    if (!step)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = step;
    step2 = [(SetupSchemaProvisionalSiriSetupContext *)self step];
    step3 = [equalCopy step];
    v22 = [step2 isEqual:step3];

    if (v22)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (unint64_t)hash
{
  v3 = [(SetupSchemaProvisionalSiriSetupStarted *)self->_started hash];
  v4 = [(SetupSchemaProvisionalSiriSetupEnded *)self->_ended hash]^ v3;
  return v4 ^ [(SetupSchemaProvisionalSiriSetupStep *)self->_step hash];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (self->_ended)
  {
    ended = [(SetupSchemaProvisionalSiriSetupContext *)self ended];
    dictionaryRepresentation = [ended dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"ended"];
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
      [dictionary setObject:null forKeyedSubscript:@"ended"];
    }
  }

  if (self->_started)
  {
    started = [(SetupSchemaProvisionalSiriSetupContext *)self started];
    dictionaryRepresentation2 = [started dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"started"];
    }

    else
    {
      null2 = [MEMORY[0x277CBEB68] null];
      [dictionary setObject:null2 forKeyedSubscript:@"started"];
    }
  }

  if (self->_step)
  {
    step = [(SetupSchemaProvisionalSiriSetupContext *)self step];
    dictionaryRepresentation3 = [step dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"step"];
    }

    else
    {
      null3 = [MEMORY[0x277CBEB68] null];
      [dictionary setObject:null3 forKeyedSubscript:@"step"];
    }
  }

  [(SetupSchemaProvisionalSiriSetupContext *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SetupSchemaProvisionalSiriSetupContext *)self dictionaryRepresentation];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SetupSchemaProvisionalSiriSetupContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SetupSchemaProvisionalSiriSetupContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (SetupSchemaProvisionalSiriSetupContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = SetupSchemaProvisionalSiriSetupContext;
  v5 = [(SetupSchemaProvisionalSiriSetupContext *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"started"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SetupSchemaProvisionalSiriSetupStarted alloc] initWithDictionary:v6];
      [(SetupSchemaProvisionalSiriSetupContext *)v5 setStarted:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SetupSchemaProvisionalSiriSetupEnded alloc] initWithDictionary:v8];
      [(SetupSchemaProvisionalSiriSetupContext *)v5 setEnded:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"step"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SetupSchemaProvisionalSiriSetupStep alloc] initWithDictionary:v10];
      [(SetupSchemaProvisionalSiriSetupContext *)v5 setStep:v11];
    }

    v12 = v5;
  }

  return v5;
}

@end