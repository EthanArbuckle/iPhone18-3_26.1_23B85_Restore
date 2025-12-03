@interface PFARepackagingExecution
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PFARepackagingExecution)initWithDictionary:(id)dictionary;
- (PFARepackagingExecution)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PFARepackagingExecution

- (PFARepackagingExecution)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PFARepackagingExecution;
  v5 = [(PFARepackagingExecution *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"clockIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PFARepackagingExecution *)v5 setClockIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"envelopeStatistics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PFAClockEnvelopeStatistics alloc] initWithDictionary:v8];
      [(PFARepackagingExecution *)v5 setEnvelopeStatistics:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"result"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PFARepackagingExecutionResult alloc] initWithDictionary:v10];
      [(PFARepackagingExecution *)v5 setResult:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (PFARepackagingExecution)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PFARepackagingExecution *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PFARepackagingExecution *)self dictionaryRepresentation];
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
  if (self->_clockIdentifier)
  {
    clockIdentifier = [(PFARepackagingExecution *)self clockIdentifier];
    dictionaryRepresentation = [clockIdentifier dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"clockIdentifier"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"clockIdentifier"];
    }
  }

  if (self->_envelopeStatistics)
  {
    envelopeStatistics = [(PFARepackagingExecution *)self envelopeStatistics];
    dictionaryRepresentation2 = [envelopeStatistics dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"envelopeStatistics"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"envelopeStatistics"];
    }
  }

  if (self->_result)
  {
    result = [(PFARepackagingExecution *)self result];
    dictionaryRepresentation3 = [result dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"result"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"result"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_clockIdentifier hash];
  v4 = [(PFAClockEnvelopeStatistics *)self->_envelopeStatistics hash]^ v3;
  return v4 ^ [(PFARepackagingExecutionResult *)self->_result hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  clockIdentifier = [(PFARepackagingExecution *)self clockIdentifier];
  clockIdentifier2 = [equalCopy clockIdentifier];
  if ((clockIdentifier != 0) == (clockIdentifier2 == 0))
  {
    goto LABEL_16;
  }

  clockIdentifier3 = [(PFARepackagingExecution *)self clockIdentifier];
  if (clockIdentifier3)
  {
    v8 = clockIdentifier3;
    clockIdentifier4 = [(PFARepackagingExecution *)self clockIdentifier];
    clockIdentifier5 = [equalCopy clockIdentifier];
    v11 = [clockIdentifier4 isEqual:clockIdentifier5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  clockIdentifier = [(PFARepackagingExecution *)self envelopeStatistics];
  clockIdentifier2 = [equalCopy envelopeStatistics];
  if ((clockIdentifier != 0) == (clockIdentifier2 == 0))
  {
    goto LABEL_16;
  }

  envelopeStatistics = [(PFARepackagingExecution *)self envelopeStatistics];
  if (envelopeStatistics)
  {
    v13 = envelopeStatistics;
    envelopeStatistics2 = [(PFARepackagingExecution *)self envelopeStatistics];
    envelopeStatistics3 = [equalCopy envelopeStatistics];
    v16 = [envelopeStatistics2 isEqual:envelopeStatistics3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  clockIdentifier = [(PFARepackagingExecution *)self result];
  clockIdentifier2 = [equalCopy result];
  if ((clockIdentifier != 0) != (clockIdentifier2 == 0))
  {
    result = [(PFARepackagingExecution *)self result];
    if (!result)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = result;
    result2 = [(PFARepackagingExecution *)self result];
    result3 = [equalCopy result];
    v21 = [result2 isEqual:result3];

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
  clockIdentifier = [(PFARepackagingExecution *)self clockIdentifier];

  if (clockIdentifier)
  {
    clockIdentifier2 = [(PFARepackagingExecution *)self clockIdentifier];
    PBDataWriterWriteSubmessage();
  }

  envelopeStatistics = [(PFARepackagingExecution *)self envelopeStatistics];

  if (envelopeStatistics)
  {
    envelopeStatistics2 = [(PFARepackagingExecution *)self envelopeStatistics];
    PBDataWriterWriteSubmessage();
  }

  result = [(PFARepackagingExecution *)self result];

  v9 = toCopy;
  if (result)
  {
    result2 = [(PFARepackagingExecution *)self result];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = PFARepackagingExecution;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  clockIdentifier = [(PFARepackagingExecution *)self clockIdentifier];
  v7 = [clockIdentifier applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PFARepackagingExecution *)self deleteClockIdentifier];
  }

  envelopeStatistics = [(PFARepackagingExecution *)self envelopeStatistics];
  v10 = [envelopeStatistics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PFARepackagingExecution *)self deleteEnvelopeStatistics];
  }

  result = [(PFARepackagingExecution *)self result];
  v13 = [result applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PFARepackagingExecution *)self deleteResult];
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