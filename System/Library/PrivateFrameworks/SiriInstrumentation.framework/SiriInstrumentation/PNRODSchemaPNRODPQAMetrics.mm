@interface PNRODSchemaPNRODPQAMetrics
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODPQAMetrics)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODPQAMetrics)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODPQAMetrics

- (PNRODSchemaPNRODPQAMetrics)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = PNRODSchemaPNRODPQAMetrics;
  v5 = [(PNRODSchemaPNRODPQAMetrics *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"searchToolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODPQAMetrics *)v5 setSearchToolId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"overallTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODPQAMetrics *)v5 setOverallTime:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"llmQUTotalTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODPQAMetrics *)v5 setLlmQUTotalTime:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"spotlightTotalTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODPQAMetrics *)v5 setSpotlightTotalTime:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"answerSynthesisTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v14];
      [(PNRODSchemaPNRODPQAMetrics *)v5 setAnswerSynthesisTime:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODPQAMetrics)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODPQAMetrics *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODPQAMetrics *)self dictionaryRepresentation];
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
  if (self->_answerSynthesisTime)
  {
    answerSynthesisTime = [(PNRODSchemaPNRODPQAMetrics *)self answerSynthesisTime];
    dictionaryRepresentation = [answerSynthesisTime dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"answerSynthesisTime"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"answerSynthesisTime"];
    }
  }

  if (self->_llmQUTotalTime)
  {
    llmQUTotalTime = [(PNRODSchemaPNRODPQAMetrics *)self llmQUTotalTime];
    dictionaryRepresentation2 = [llmQUTotalTime dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"llmQUTotalTime"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"llmQUTotalTime"];
    }
  }

  if (self->_overallTime)
  {
    overallTime = [(PNRODSchemaPNRODPQAMetrics *)self overallTime];
    dictionaryRepresentation3 = [overallTime dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"overallTime"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"overallTime"];
    }
  }

  if (self->_searchToolId)
  {
    searchToolId = [(PNRODSchemaPNRODPQAMetrics *)self searchToolId];
    dictionaryRepresentation4 = [searchToolId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"searchToolId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"searchToolId"];
    }
  }

  if (self->_spotlightTotalTime)
  {
    spotlightTotalTime = [(PNRODSchemaPNRODPQAMetrics *)self spotlightTotalTime];
    dictionaryRepresentation5 = [spotlightTotalTime dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"spotlightTotalTime"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"spotlightTotalTime"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_searchToolId hash];
  v4 = [(PNRODSchemaPNRODMetricDuration *)self->_overallTime hash]^ v3;
  v5 = [(PNRODSchemaPNRODMetricDuration *)self->_llmQUTotalTime hash];
  v6 = v4 ^ v5 ^ [(PNRODSchemaPNRODMetricDuration *)self->_spotlightTotalTime hash];
  return v6 ^ [(PNRODSchemaPNRODMetricDuration *)self->_answerSynthesisTime hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  searchToolId = [(PNRODSchemaPNRODPQAMetrics *)self searchToolId];
  searchToolId2 = [equalCopy searchToolId];
  if ((searchToolId != 0) == (searchToolId2 == 0))
  {
    goto LABEL_26;
  }

  searchToolId3 = [(PNRODSchemaPNRODPQAMetrics *)self searchToolId];
  if (searchToolId3)
  {
    v8 = searchToolId3;
    searchToolId4 = [(PNRODSchemaPNRODPQAMetrics *)self searchToolId];
    searchToolId5 = [equalCopy searchToolId];
    v11 = [searchToolId4 isEqual:searchToolId5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  searchToolId = [(PNRODSchemaPNRODPQAMetrics *)self overallTime];
  searchToolId2 = [equalCopy overallTime];
  if ((searchToolId != 0) == (searchToolId2 == 0))
  {
    goto LABEL_26;
  }

  overallTime = [(PNRODSchemaPNRODPQAMetrics *)self overallTime];
  if (overallTime)
  {
    v13 = overallTime;
    overallTime2 = [(PNRODSchemaPNRODPQAMetrics *)self overallTime];
    overallTime3 = [equalCopy overallTime];
    v16 = [overallTime2 isEqual:overallTime3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  searchToolId = [(PNRODSchemaPNRODPQAMetrics *)self llmQUTotalTime];
  searchToolId2 = [equalCopy llmQUTotalTime];
  if ((searchToolId != 0) == (searchToolId2 == 0))
  {
    goto LABEL_26;
  }

  llmQUTotalTime = [(PNRODSchemaPNRODPQAMetrics *)self llmQUTotalTime];
  if (llmQUTotalTime)
  {
    v18 = llmQUTotalTime;
    llmQUTotalTime2 = [(PNRODSchemaPNRODPQAMetrics *)self llmQUTotalTime];
    llmQUTotalTime3 = [equalCopy llmQUTotalTime];
    v21 = [llmQUTotalTime2 isEqual:llmQUTotalTime3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  searchToolId = [(PNRODSchemaPNRODPQAMetrics *)self spotlightTotalTime];
  searchToolId2 = [equalCopy spotlightTotalTime];
  if ((searchToolId != 0) == (searchToolId2 == 0))
  {
    goto LABEL_26;
  }

  spotlightTotalTime = [(PNRODSchemaPNRODPQAMetrics *)self spotlightTotalTime];
  if (spotlightTotalTime)
  {
    v23 = spotlightTotalTime;
    spotlightTotalTime2 = [(PNRODSchemaPNRODPQAMetrics *)self spotlightTotalTime];
    spotlightTotalTime3 = [equalCopy spotlightTotalTime];
    v26 = [spotlightTotalTime2 isEqual:spotlightTotalTime3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  searchToolId = [(PNRODSchemaPNRODPQAMetrics *)self answerSynthesisTime];
  searchToolId2 = [equalCopy answerSynthesisTime];
  if ((searchToolId != 0) != (searchToolId2 == 0))
  {
    answerSynthesisTime = [(PNRODSchemaPNRODPQAMetrics *)self answerSynthesisTime];
    if (!answerSynthesisTime)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = answerSynthesisTime;
    answerSynthesisTime2 = [(PNRODSchemaPNRODPQAMetrics *)self answerSynthesisTime];
    answerSynthesisTime3 = [equalCopy answerSynthesisTime];
    v31 = [answerSynthesisTime2 isEqual:answerSynthesisTime3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  searchToolId = [(PNRODSchemaPNRODPQAMetrics *)self searchToolId];

  if (searchToolId)
  {
    searchToolId2 = [(PNRODSchemaPNRODPQAMetrics *)self searchToolId];
    PBDataWriterWriteSubmessage();
  }

  overallTime = [(PNRODSchemaPNRODPQAMetrics *)self overallTime];

  if (overallTime)
  {
    overallTime2 = [(PNRODSchemaPNRODPQAMetrics *)self overallTime];
    PBDataWriterWriteSubmessage();
  }

  llmQUTotalTime = [(PNRODSchemaPNRODPQAMetrics *)self llmQUTotalTime];

  if (llmQUTotalTime)
  {
    llmQUTotalTime2 = [(PNRODSchemaPNRODPQAMetrics *)self llmQUTotalTime];
    PBDataWriterWriteSubmessage();
  }

  spotlightTotalTime = [(PNRODSchemaPNRODPQAMetrics *)self spotlightTotalTime];

  if (spotlightTotalTime)
  {
    spotlightTotalTime2 = [(PNRODSchemaPNRODPQAMetrics *)self spotlightTotalTime];
    PBDataWriterWriteSubmessage();
  }

  answerSynthesisTime = [(PNRODSchemaPNRODPQAMetrics *)self answerSynthesisTime];

  v13 = toCopy;
  if (answerSynthesisTime)
  {
    answerSynthesisTime2 = [(PNRODSchemaPNRODPQAMetrics *)self answerSynthesisTime];
    PBDataWriterWriteSubmessage();

    v13 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v22.receiver = self;
  v22.super_class = PNRODSchemaPNRODPQAMetrics;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:policyCopy];
  searchToolId = [(PNRODSchemaPNRODPQAMetrics *)self searchToolId];
  v7 = [searchToolId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PNRODSchemaPNRODPQAMetrics *)self deleteSearchToolId];
  }

  overallTime = [(PNRODSchemaPNRODPQAMetrics *)self overallTime];
  v10 = [overallTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PNRODSchemaPNRODPQAMetrics *)self deleteOverallTime];
  }

  llmQUTotalTime = [(PNRODSchemaPNRODPQAMetrics *)self llmQUTotalTime];
  v13 = [llmQUTotalTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PNRODSchemaPNRODPQAMetrics *)self deleteLlmQUTotalTime];
  }

  spotlightTotalTime = [(PNRODSchemaPNRODPQAMetrics *)self spotlightTotalTime];
  v16 = [spotlightTotalTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PNRODSchemaPNRODPQAMetrics *)self deleteSpotlightTotalTime];
  }

  answerSynthesisTime = [(PNRODSchemaPNRODPQAMetrics *)self answerSynthesisTime];
  v19 = [answerSynthesisTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PNRODSchemaPNRODPQAMetrics *)self deleteAnswerSynthesisTime];
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