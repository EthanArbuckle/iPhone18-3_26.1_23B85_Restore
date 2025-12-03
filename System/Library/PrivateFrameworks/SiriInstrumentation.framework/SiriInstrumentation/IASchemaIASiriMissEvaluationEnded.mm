@interface IASchemaIASiriMissEvaluationEnded
- (BOOL)isEqual:(id)equal;
- (IASchemaIASiriMissEvaluationEnded)initWithDictionary:(id)dictionary;
- (IASchemaIASiriMissEvaluationEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IASchemaIASiriMissEvaluationEnded

- (IASchemaIASiriMissEvaluationEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = IASchemaIASiriMissEvaluationEnded;
  v5 = [(IASchemaIASiriMissEvaluationEnded *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isSiriMiss"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IASchemaIASiriMissEvaluationEnded setIsSiriMiss:](v5, "setIsSiriMiss:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"voiceTriggerSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IASchemaIAVoiceTriggerEventSummary alloc] initWithDictionary:v7];
      [(IASchemaIASiriMissEvaluationEnded *)v5 setVoiceTriggerSummary:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (IASchemaIASiriMissEvaluationEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IASchemaIASiriMissEvaluationEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IASchemaIASiriMissEvaluationEnded *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IASchemaIASiriMissEvaluationEnded isSiriMiss](self, "isSiriMiss")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isSiriMiss"];
  }

  if (self->_voiceTriggerSummary)
  {
    voiceTriggerSummary = [(IASchemaIASiriMissEvaluationEnded *)self voiceTriggerSummary];
    dictionaryRepresentation = [voiceTriggerSummary dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"voiceTriggerSummary"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"voiceTriggerSummary"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_isSiriMiss;
  }

  else
  {
    v2 = 0;
  }

  return [(IASchemaIAVoiceTriggerEventSummary *)self->_voiceTriggerSummary hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (isSiriMiss = self->_isSiriMiss, isSiriMiss == [equalCopy isSiriMiss]))
      {
        voiceTriggerSummary = [(IASchemaIASiriMissEvaluationEnded *)self voiceTriggerSummary];
        voiceTriggerSummary2 = [equalCopy voiceTriggerSummary];
        v8 = voiceTriggerSummary2;
        if ((voiceTriggerSummary != 0) != (voiceTriggerSummary2 == 0))
        {
          voiceTriggerSummary3 = [(IASchemaIASiriMissEvaluationEnded *)self voiceTriggerSummary];
          if (!voiceTriggerSummary3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = voiceTriggerSummary3;
          voiceTriggerSummary4 = [(IASchemaIASiriMissEvaluationEnded *)self voiceTriggerSummary];
          voiceTriggerSummary5 = [equalCopy voiceTriggerSummary];
          v13 = [voiceTriggerSummary4 isEqual:voiceTriggerSummary5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  voiceTriggerSummary = [(IASchemaIASiriMissEvaluationEnded *)self voiceTriggerSummary];

  v5 = toCopy;
  if (voiceTriggerSummary)
  {
    voiceTriggerSummary2 = [(IASchemaIASiriMissEvaluationEnded *)self voiceTriggerSummary];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IASchemaIASiriMissEvaluationEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IASchemaIASiriMissEvaluationEnded *)self voiceTriggerSummary:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IASchemaIASiriMissEvaluationEnded *)self deleteVoiceTriggerSummary];
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