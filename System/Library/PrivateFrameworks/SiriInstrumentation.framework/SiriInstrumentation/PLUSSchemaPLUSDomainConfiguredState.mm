@interface PLUSSchemaPLUSDomainConfiguredState
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSDomainConfiguredState)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSDomainConfiguredState)initWithJSON:(id)a3;
- (PLUSSchemaPLUSMediaConfiguredState)mediaState;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteMediaState;
- (void)setMediaState:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSDomainConfiguredState

- (PLUSSchemaPLUSDomainConfiguredState)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PLUSSchemaPLUSDomainConfiguredState;
  v5 = [(PLUSSchemaPLUSDomainConfiguredState *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"mediaState"];
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

- (PLUSSchemaPLUSDomainConfiguredState)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSDomainConfiguredState *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSDomainConfiguredState *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_mediaState)
  {
    v4 = [(PLUSSchemaPLUSDomainConfiguredState *)self mediaState];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"mediaState"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"mediaState"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    whichDomainstate = self->_whichDomainstate;
    if (whichDomainstate == [v4 whichDomainstate])
    {
      v6 = [(PLUSSchemaPLUSDomainConfiguredState *)self mediaState];
      v7 = [v4 mediaState];
      v8 = v7;
      if ((v6 != 0) != (v7 == 0))
      {
        v9 = [(PLUSSchemaPLUSDomainConfiguredState *)self mediaState];
        if (!v9)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = v9;
        v11 = [(PLUSSchemaPLUSDomainConfiguredState *)self mediaState];
        v12 = [v4 mediaState];
        v13 = [v11 isEqual:v12];

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

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(PLUSSchemaPLUSDomainConfiguredState *)self mediaState];

  if (v4)
  {
    v5 = [(PLUSSchemaPLUSDomainConfiguredState *)self mediaState];
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

- (void)setMediaState:(id)a3
{
  v3 = 100;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichDomainstate = v3;
  objc_storeStrong(&self->_mediaState, a3);
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSDomainConfiguredState;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSDomainConfiguredState *)self mediaState:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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