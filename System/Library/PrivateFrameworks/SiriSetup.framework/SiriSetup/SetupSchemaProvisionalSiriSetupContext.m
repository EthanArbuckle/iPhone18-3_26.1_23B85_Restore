@interface SetupSchemaProvisionalSiriSetupContext
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SetupSchemaProvisionalSiriSetupContext)initWithDictionary:(id)a3;
- (SetupSchemaProvisionalSiriSetupContext)initWithJSON:(id)a3;
- (SetupSchemaProvisionalSiriSetupEnded)ended;
- (SetupSchemaProvisionalSiriSetupStarted)started;
- (SetupSchemaProvisionalSiriSetupStep)step;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)deleteEnded;
- (void)deleteStarted;
- (void)deleteStep;
- (void)setEnded:(id)a3;
- (void)setStarted:(id)a3;
- (void)setStep:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SetupSchemaProvisionalSiriSetupContext

- (void)setStarted:(id)a3
{
  v4 = a3;
  ended = self->_ended;
  self->_ended = 0;

  step = self->_step;
  self->_step = 0;

  self->_whichContextevent = v4 != 0;
  started = self->_started;
  self->_started = v4;
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

- (void)setEnded:(id)a3
{
  v4 = a3;
  started = self->_started;
  self->_started = 0;

  step = self->_step;
  self->_step = 0;

  self->_whichContextevent = 2 * (v4 != 0);
  ended = self->_ended;
  self->_ended = v4;
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

- (void)setStep:(id)a3
{
  v4 = a3;
  started = self->_started;
  self->_started = 0;

  ended = self->_ended;
  self->_ended = 0;

  v7 = 3;
  if (!v4)
  {
    v7 = 0;
  }

  self->_whichContextevent = v7;
  step = self->_step;
  self->_step = v4;
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

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(SetupSchemaProvisionalSiriSetupContext *)self started];

  if (v4)
  {
    v5 = [(SetupSchemaProvisionalSiriSetupContext *)self started];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SetupSchemaProvisionalSiriSetupContext *)self ended];

  if (v6)
  {
    v7 = [(SetupSchemaProvisionalSiriSetupContext *)self ended];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(SetupSchemaProvisionalSiriSetupContext *)self step];

  v9 = v11;
  if (v8)
  {
    v10 = [(SetupSchemaProvisionalSiriSetupContext *)self step];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  whichContextevent = self->_whichContextevent;
  if (whichContextevent != [v4 whichContextevent])
  {
    goto LABEL_18;
  }

  v6 = [(SetupSchemaProvisionalSiriSetupContext *)self started];
  v7 = [v4 started];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(SetupSchemaProvisionalSiriSetupContext *)self started];
  if (v8)
  {
    v9 = v8;
    v10 = [(SetupSchemaProvisionalSiriSetupContext *)self started];
    v11 = [v4 started];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(SetupSchemaProvisionalSiriSetupContext *)self ended];
  v7 = [v4 ended];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(SetupSchemaProvisionalSiriSetupContext *)self ended];
  if (v13)
  {
    v14 = v13;
    v15 = [(SetupSchemaProvisionalSiriSetupContext *)self ended];
    v16 = [v4 ended];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(SetupSchemaProvisionalSiriSetupContext *)self step];
  v7 = [v4 step];
  if ((v6 != 0) != (v7 == 0))
  {
    v18 = [(SetupSchemaProvisionalSiriSetupContext *)self step];
    if (!v18)
    {

LABEL_21:
      v23 = 1;
      goto LABEL_19;
    }

    v19 = v18;
    v20 = [(SetupSchemaProvisionalSiriSetupContext *)self step];
    v21 = [v4 step];
    v22 = [v20 isEqual:v21];

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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (self->_ended)
  {
    v4 = [(SetupSchemaProvisionalSiriSetupContext *)self ended];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"ended"];
    }

    else
    {
      v6 = [MEMORY[0x277CBEB68] null];
      [v3 setObject:v6 forKeyedSubscript:@"ended"];
    }
  }

  if (self->_started)
  {
    v7 = [(SetupSchemaProvisionalSiriSetupContext *)self started];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"started"];
    }

    else
    {
      v9 = [MEMORY[0x277CBEB68] null];
      [v3 setObject:v9 forKeyedSubscript:@"started"];
    }
  }

  if (self->_step)
  {
    v10 = [(SetupSchemaProvisionalSiriSetupContext *)self step];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"step"];
    }

    else
    {
      v12 = [MEMORY[0x277CBEB68] null];
      [v3 setObject:v12 forKeyedSubscript:@"step"];
    }
  }

  [(SetupSchemaProvisionalSiriSetupContext *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (NSData)jsonData
{
  v2 = [(SetupSchemaProvisionalSiriSetupContext *)self dictionaryRepresentation];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SetupSchemaProvisionalSiriSetupContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SetupSchemaProvisionalSiriSetupContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (SetupSchemaProvisionalSiriSetupContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SetupSchemaProvisionalSiriSetupContext;
  v5 = [(SetupSchemaProvisionalSiriSetupContext *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"started"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SetupSchemaProvisionalSiriSetupStarted alloc] initWithDictionary:v6];
      [(SetupSchemaProvisionalSiriSetupContext *)v5 setStarted:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"ended"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SetupSchemaProvisionalSiriSetupEnded alloc] initWithDictionary:v8];
      [(SetupSchemaProvisionalSiriSetupContext *)v5 setEnded:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"step"];
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