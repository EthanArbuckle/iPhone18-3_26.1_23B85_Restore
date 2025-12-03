@interface TTSSchemaTTSSynthesisStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (TTSSchemaTTSSynthesisStarted)initWithDictionary:(id)dictionary;
- (TTSSchemaTTSSynthesisStarted)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSynthesisEffect:(BOOL)effect;
- (void)setHasThermalLevel:(BOOL)level;
- (void)setHasThermalState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation TTSSchemaTTSSynthesisStarted

- (TTSSchemaTTSSynthesisStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = TTSSchemaTTSSynthesisStarted;
  v5 = [(TTSSchemaTTSSynthesisStarted *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"synthesisSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTSSchemaTTSSynthesisStarted setSynthesisSource:](v5, "setSynthesisSource:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"voiceContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[TTSSchemaTTSVoiceContext alloc] initWithDictionary:v7];
      [(TTSSchemaTTSSynthesisStarted *)v5 setVoiceContext:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"synthesisEffect"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTSSchemaTTSSynthesisStarted setSynthesisEffect:](v5, "setSynthesisEffect:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"thermalState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTSSchemaTTSSynthesisStarted setThermalState:](v5, "setThermalState:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"thermalLevel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[TTSSchemaTTSSynthesisStarted setThermalLevel:](v5, "setThermalLevel:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (TTSSchemaTTSSynthesisStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTSSchemaTTSSynthesisStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTSSchemaTTSSynthesisStarted *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [(TTSSchemaTTSSynthesisStarted *)self synthesisEffect]- 1;
    if (v5 > 2)
    {
      v6 = @"UNKNOWN";
    }

    else
    {
      v6 = off_1E78E81E0[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"synthesisEffect"];
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v7 = [(TTSSchemaTTSSynthesisStarted *)self synthesisSource]- 1;
  if (v7 > 8)
  {
    v8 = @"UNKNOWN";
  }

  else
  {
    v8 = off_1E78E81F8[v7];
  }

  [dictionary setObject:v8 forKeyedSubscript:@"synthesisSource"];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[TTSSchemaTTSSynthesisStarted thermalLevel](self, "thermalLevel")}];
  [dictionary setObject:v9 forKeyedSubscript:@"thermalLevel"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  v10 = [(TTSSchemaTTSSynthesisStarted *)self thermalState]- 1;
  if (v10 > 3)
  {
    v11 = @"DEVICETHERMALSTATE_UNKNOWN";
  }

  else
  {
    v11 = off_1E78E8240[v10];
  }

  [dictionary setObject:v11 forKeyedSubscript:@"thermalState"];
LABEL_19:
  if (self->_voiceContext)
  {
    voiceContext = [(TTSSchemaTTSSynthesisStarted *)self voiceContext];
    dictionaryRepresentation = [voiceContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"voiceContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"voiceContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_synthesisSource;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(TTSSchemaTTSVoiceContext *)self->_voiceContext hash];
  if ((*&self->_has & 2) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761 * self->_synthesisEffect;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761 * self->_thermalState;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = 2654435761 * self->_thermalLevel;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 1) != (equalCopy[36] & 1))
  {
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    synthesisSource = self->_synthesisSource;
    if (synthesisSource != [equalCopy synthesisSource])
    {
      goto LABEL_23;
    }
  }

  voiceContext = [(TTSSchemaTTSSynthesisStarted *)self voiceContext];
  voiceContext2 = [equalCopy voiceContext];
  v8 = voiceContext2;
  if ((voiceContext != 0) == (voiceContext2 == 0))
  {

    goto LABEL_23;
  }

  voiceContext3 = [(TTSSchemaTTSSynthesisStarted *)self voiceContext];
  if (voiceContext3)
  {
    v10 = voiceContext3;
    voiceContext4 = [(TTSSchemaTTSSynthesisStarted *)self voiceContext];
    voiceContext5 = [equalCopy voiceContext];
    v13 = [voiceContext4 isEqual:voiceContext5];

    if (!v13)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  has = self->_has;
  v15 = (*&has >> 1) & 1;
  v16 = equalCopy[36];
  if (v15 != ((v16 >> 1) & 1))
  {
LABEL_23:
    v22 = 0;
    goto LABEL_24;
  }

  if (v15)
  {
    synthesisEffect = self->_synthesisEffect;
    if (synthesisEffect != [equalCopy synthesisEffect])
    {
      goto LABEL_23;
    }

    has = self->_has;
    v16 = equalCopy[36];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v16 >> 2) & 1))
  {
    goto LABEL_23;
  }

  if (v18)
  {
    thermalState = self->_thermalState;
    if (thermalState == [equalCopy thermalState])
    {
      has = self->_has;
      v16 = equalCopy[36];
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_19:
  v20 = (*&has >> 3) & 1;
  if (v20 != ((v16 >> 3) & 1))
  {
    goto LABEL_23;
  }

  if (v20)
  {
    thermalLevel = self->_thermalLevel;
    if (thermalLevel != [equalCopy thermalLevel])
    {
      goto LABEL_23;
    }
  }

  v22 = 1;
LABEL_24:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  voiceContext = [(TTSSchemaTTSSynthesisStarted *)self voiceContext];

  if (voiceContext)
  {
    voiceContext2 = [(TTSSchemaTTSSynthesisStarted *)self voiceContext];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    PBDataWriterWriteInt32Field();
  }

LABEL_9:
}

- (void)setHasThermalLevel:(BOOL)level
{
  if (level)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasThermalState:(BOOL)state
{
  if (state)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSynthesisEffect:(BOOL)effect
{
  if (effect)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = TTSSchemaTTSSynthesisStarted;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(TTSSchemaTTSSynthesisStarted *)self voiceContext:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(TTSSchemaTTSSynthesisStarted *)self deleteVoiceContext];
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