@interface PLUSSchemaPLUSDomainConfiguredState
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSDomainConfiguredState)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSDomainConfiguredState)initWithJSON:(id)n;
- (PLUSSchemaPLUSMediaConfiguredState)mediaState;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteMediaState;
- (void)setMediaState:(id)state;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSDomainConfiguredState

- (PLUSSchemaPLUSDomainConfiguredState)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PLUSSchemaPLUSDomainConfiguredState;
  v5 = [(PLUSSchemaPLUSDomainConfiguredState *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"mediaState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PLUSSchemaPLUSMediaConfiguredState alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSDomainConfiguredState *)v5 setMediaState:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSDomainConfiguredState)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSDomainConfiguredState *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSDomainConfiguredState *)self dictionaryRepresentation];
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
  if (self->_mediaState)
  {
    mediaState = [(PLUSSchemaPLUSDomainConfiguredState *)self mediaState];
    dictionaryRepresentation = [mediaState dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"mediaState"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"mediaState"];
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
    whichDomainstate = self->_whichDomainstate;
    if (whichDomainstate == [equalCopy whichDomainstate])
    {
      mediaState = [(PLUSSchemaPLUSDomainConfiguredState *)self mediaState];
      mediaState2 = [equalCopy mediaState];
      v8 = mediaState2;
      if ((mediaState != 0) != (mediaState2 == 0))
      {
        mediaState3 = [(PLUSSchemaPLUSDomainConfiguredState *)self mediaState];
        if (!mediaState3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = mediaState3;
        mediaState4 = [(PLUSSchemaPLUSDomainConfiguredState *)self mediaState];
        mediaState5 = [equalCopy mediaState];
        v13 = [mediaState4 isEqual:mediaState5];

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
  mediaState = [(PLUSSchemaPLUSDomainConfiguredState *)self mediaState];

  if (mediaState)
  {
    mediaState2 = [(PLUSSchemaPLUSDomainConfiguredState *)self mediaState];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteMediaState
{
  if (self->_whichDomainstate == 100)
  {
    self->_whichDomainstate = 0;
    self->_mediaState = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PLUSSchemaPLUSMediaConfiguredState)mediaState
{
  if (self->_whichDomainstate == 100)
  {
    v3 = self->_mediaState;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setMediaState:(id)state
{
  v3 = 100;
  if (!state)
  {
    v3 = 0;
  }

  self->_whichDomainstate = v3;
  objc_storeStrong(&self->_mediaState, state);
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSDomainConfiguredState;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PLUSSchemaPLUSDomainConfiguredState *)self mediaState:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PLUSSchemaPLUSDomainConfiguredState *)self deleteMediaState];
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