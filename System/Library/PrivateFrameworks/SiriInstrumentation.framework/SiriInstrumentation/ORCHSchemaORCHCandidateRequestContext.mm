@interface ORCHSchemaORCHCandidateRequestContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHCandidateRequestCancelled)cancelled;
- (ORCHSchemaORCHCandidateRequestContext)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHCandidateRequestContext)initWithJSON:(id)n;
- (ORCHSchemaORCHCandidateRequestStarted)started;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteCancelled;
- (void)deleteStarted;
- (void)setCancelled:(id)cancelled;
- (void)setStarted:(id)started;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHCandidateRequestContext

- (ORCHSchemaORCHCandidateRequestContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ORCHSchemaORCHCandidateRequestContext;
  v5 = [(ORCHSchemaORCHCandidateRequestContext *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"started"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ORCHSchemaORCHCandidateRequestStarted alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHCandidateRequestContext *)v5 setStarted:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"cancelled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ORCHSchemaORCHCandidateRequestCancelled alloc] initWithDictionary:v8];
      [(ORCHSchemaORCHCandidateRequestContext *)v5 setCancelled:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHCandidateRequestContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHCandidateRequestContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHCandidateRequestContext *)self dictionaryRepresentation];
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
  if (self->_cancelled)
  {
    cancelled = [(ORCHSchemaORCHCandidateRequestContext *)self cancelled];
    dictionaryRepresentation = [cancelled dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"cancelled"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"cancelled"];
    }
  }

  if (self->_started)
  {
    started = [(ORCHSchemaORCHCandidateRequestContext *)self started];
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

  started = [(ORCHSchemaORCHCandidateRequestContext *)self started];
  started2 = [equalCopy started];
  if ((started != 0) == (started2 == 0))
  {
    goto LABEL_12;
  }

  started3 = [(ORCHSchemaORCHCandidateRequestContext *)self started];
  if (started3)
  {
    v9 = started3;
    started4 = [(ORCHSchemaORCHCandidateRequestContext *)self started];
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

  started = [(ORCHSchemaORCHCandidateRequestContext *)self cancelled];
  started2 = [equalCopy cancelled];
  if ((started != 0) != (started2 == 0))
  {
    cancelled = [(ORCHSchemaORCHCandidateRequestContext *)self cancelled];
    if (!cancelled)
    {

LABEL_16:
      v18 = 1;
      goto LABEL_14;
    }

    v14 = cancelled;
    cancelled2 = [(ORCHSchemaORCHCandidateRequestContext *)self cancelled];
    cancelled3 = [equalCopy cancelled];
    v17 = [cancelled2 isEqual:cancelled3];

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
  started = [(ORCHSchemaORCHCandidateRequestContext *)self started];

  if (started)
  {
    started2 = [(ORCHSchemaORCHCandidateRequestContext *)self started];
    PBDataWriterWriteSubmessage();
  }

  cancelled = [(ORCHSchemaORCHCandidateRequestContext *)self cancelled];

  if (cancelled)
  {
    cancelled2 = [(ORCHSchemaORCHCandidateRequestContext *)self cancelled];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteCancelled
{
  if (self->_whichContextevent == 3)
  {
    self->_whichContextevent = 0;
    self->_cancelled = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHCandidateRequestCancelled)cancelled
{
  if (self->_whichContextevent == 3)
  {
    v3 = self->_cancelled;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  started = self->_started;
  self->_started = 0;

  v6 = 3;
  if (!cancelledCopy)
  {
    v6 = 0;
  }

  self->_whichContextevent = v6;
  cancelled = self->_cancelled;
  self->_cancelled = cancelledCopy;
}

- (void)deleteStarted
{
  if (self->_whichContextevent == 1)
  {
    self->_whichContextevent = 0;
    self->_started = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (ORCHSchemaORCHCandidateRequestStarted)started
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

- (void)setStarted:(id)started
{
  startedCopy = started;
  cancelled = self->_cancelled;
  self->_cancelled = 0;

  self->_whichContextevent = startedCopy != 0;
  started = self->_started;
  self->_started = startedCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ORCHSchemaORCHCandidateRequestContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  started = [(ORCHSchemaORCHCandidateRequestContext *)self started];
  v7 = [started applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ORCHSchemaORCHCandidateRequestContext *)self deleteStarted];
  }

  cancelled = [(ORCHSchemaORCHCandidateRequestContext *)self cancelled];
  v10 = [cancelled applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ORCHSchemaORCHCandidateRequestContext *)self deleteCancelled];
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