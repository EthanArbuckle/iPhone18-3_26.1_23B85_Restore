@interface DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics

- (DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics;
  v5 = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"userLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics setUserLocale:](v5, "setUserLocale:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"transcriptionMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[DODMLASRSchemaDODMLASRTranscriptionMetrics alloc] initWithDictionary:v7];
      [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)v5 setTranscriptionMetrics:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"modelMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[DODMLASRSchemaDODMLASRModelMetrics alloc] initWithDictionary:v9];
      [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)v5 setModelMetrics:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"evaluationMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[DODMLASRSchemaDODMLASREvaluationMetrics alloc] initWithDictionary:v11];
      [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)v5 setEvaluationMetrics:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self dictionaryRepresentation];
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
  if (self->_evaluationMetrics)
  {
    evaluationMetrics = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self evaluationMetrics];
    dictionaryRepresentation = [evaluationMetrics dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"evaluationMetrics"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"evaluationMetrics"];
    }
  }

  if (self->_modelMetrics)
  {
    modelMetrics = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self modelMetrics];
    dictionaryRepresentation2 = [modelMetrics dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"modelMetrics"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"modelMetrics"];
    }
  }

  if (self->_transcriptionMetrics)
  {
    transcriptionMetrics = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self transcriptionMetrics];
    dictionaryRepresentation3 = [transcriptionMetrics dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"transcriptionMetrics"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"transcriptionMetrics"];
    }
  }

  if (*&self->_has)
  {
    v13 = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self userLocale]- 1;
    if (v13 > 0x3D)
    {
      v14 = @"LOCALE_UNKNOWN_LOCALE";
    }

    else
    {
      v14 = off_1E78D4250[v13];
    }

    [dictionary setObject:v14 forKeyedSubscript:@"userLocale"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_userLocale;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self->_transcriptionMetrics hash]^ v3;
  v5 = [(DODMLASRSchemaDODMLASRModelMetrics *)self->_modelMetrics hash];
  return v4 ^ v5 ^ [(DODMLASRSchemaDODMLASREvaluationMetrics *)self->_evaluationMetrics hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    userLocale = self->_userLocale;
    if (userLocale != [equalCopy userLocale])
    {
      goto LABEL_20;
    }
  }

  transcriptionMetrics = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self transcriptionMetrics];
  transcriptionMetrics2 = [equalCopy transcriptionMetrics];
  if ((transcriptionMetrics != 0) == (transcriptionMetrics2 == 0))
  {
    goto LABEL_19;
  }

  transcriptionMetrics3 = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self transcriptionMetrics];
  if (transcriptionMetrics3)
  {
    v9 = transcriptionMetrics3;
    transcriptionMetrics4 = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self transcriptionMetrics];
    transcriptionMetrics5 = [equalCopy transcriptionMetrics];
    v12 = [transcriptionMetrics4 isEqual:transcriptionMetrics5];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  transcriptionMetrics = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self modelMetrics];
  transcriptionMetrics2 = [equalCopy modelMetrics];
  if ((transcriptionMetrics != 0) == (transcriptionMetrics2 == 0))
  {
    goto LABEL_19;
  }

  modelMetrics = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self modelMetrics];
  if (modelMetrics)
  {
    v14 = modelMetrics;
    modelMetrics2 = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self modelMetrics];
    modelMetrics3 = [equalCopy modelMetrics];
    v17 = [modelMetrics2 isEqual:modelMetrics3];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  transcriptionMetrics = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self evaluationMetrics];
  transcriptionMetrics2 = [equalCopy evaluationMetrics];
  if ((transcriptionMetrics != 0) != (transcriptionMetrics2 == 0))
  {
    evaluationMetrics = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self evaluationMetrics];
    if (!evaluationMetrics)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = evaluationMetrics;
    evaluationMetrics2 = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self evaluationMetrics];
    evaluationMetrics3 = [equalCopy evaluationMetrics];
    v22 = [evaluationMetrics2 isEqual:evaluationMetrics3];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  transcriptionMetrics = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self transcriptionMetrics];

  if (transcriptionMetrics)
  {
    transcriptionMetrics2 = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self transcriptionMetrics];
    PBDataWriterWriteSubmessage();
  }

  modelMetrics = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self modelMetrics];

  if (modelMetrics)
  {
    modelMetrics2 = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self modelMetrics];
    PBDataWriterWriteSubmessage();
  }

  evaluationMetrics = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self evaluationMetrics];

  v9 = toCopy;
  if (evaluationMetrics)
  {
    evaluationMetrics2 = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self evaluationMetrics];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  transcriptionMetrics = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self transcriptionMetrics];
  v7 = [transcriptionMetrics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self deleteTranscriptionMetrics];
  }

  modelMetrics = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self modelMetrics];
  v10 = [modelMetrics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self deleteModelMetrics];
  }

  evaluationMetrics = [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self evaluationMetrics];
  v13 = [evaluationMetrics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics *)self deleteEvaluationMetrics];
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