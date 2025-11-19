@interface PNRODSchemaPNRODPQAMetrics
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PNRODSchemaPNRODPQAMetrics)initWithDictionary:(id)a3;
- (PNRODSchemaPNRODPQAMetrics)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PNRODSchemaPNRODPQAMetrics

- (PNRODSchemaPNRODPQAMetrics)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PNRODSchemaPNRODPQAMetrics;
  v5 = [(PNRODSchemaPNRODPQAMetrics *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"searchToolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODPQAMetrics *)v5 setSearchToolId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"overallTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODPQAMetrics *)v5 setOverallTime:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"llmQUTotalTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODPQAMetrics *)v5 setLlmQUTotalTime:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"spotlightTotalTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODPQAMetrics *)v5 setSpotlightTotalTime:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"answerSynthesisTime"];
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

- (PNRODSchemaPNRODPQAMetrics)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODPQAMetrics *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PNRODSchemaPNRODPQAMetrics *)self dictionaryRepresentation];
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
  if (self->_answerSynthesisTime)
  {
    v4 = [(PNRODSchemaPNRODPQAMetrics *)self answerSynthesisTime];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"answerSynthesisTime"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"answerSynthesisTime"];
    }
  }

  if (self->_llmQUTotalTime)
  {
    v7 = [(PNRODSchemaPNRODPQAMetrics *)self llmQUTotalTime];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"llmQUTotalTime"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"llmQUTotalTime"];
    }
  }

  if (self->_overallTime)
  {
    v10 = [(PNRODSchemaPNRODPQAMetrics *)self overallTime];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"overallTime"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"overallTime"];
    }
  }

  if (self->_searchToolId)
  {
    v13 = [(PNRODSchemaPNRODPQAMetrics *)self searchToolId];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"searchToolId"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"searchToolId"];
    }
  }

  if (self->_spotlightTotalTime)
  {
    v16 = [(PNRODSchemaPNRODPQAMetrics *)self spotlightTotalTime];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"spotlightTotalTime"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"spotlightTotalTime"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_searchToolId hash];
  v4 = [(PNRODSchemaPNRODMetricDuration *)self->_overallTime hash]^ v3;
  v5 = [(PNRODSchemaPNRODMetricDuration *)self->_llmQUTotalTime hash];
  v6 = v4 ^ v5 ^ [(PNRODSchemaPNRODMetricDuration *)self->_spotlightTotalTime hash];
  return v6 ^ [(PNRODSchemaPNRODMetricDuration *)self->_answerSynthesisTime hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(PNRODSchemaPNRODPQAMetrics *)self searchToolId];
  v6 = [v4 searchToolId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(PNRODSchemaPNRODPQAMetrics *)self searchToolId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PNRODSchemaPNRODPQAMetrics *)self searchToolId];
    v10 = [v4 searchToolId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODPQAMetrics *)self overallTime];
  v6 = [v4 overallTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(PNRODSchemaPNRODPQAMetrics *)self overallTime];
  if (v12)
  {
    v13 = v12;
    v14 = [(PNRODSchemaPNRODPQAMetrics *)self overallTime];
    v15 = [v4 overallTime];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODPQAMetrics *)self llmQUTotalTime];
  v6 = [v4 llmQUTotalTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(PNRODSchemaPNRODPQAMetrics *)self llmQUTotalTime];
  if (v17)
  {
    v18 = v17;
    v19 = [(PNRODSchemaPNRODPQAMetrics *)self llmQUTotalTime];
    v20 = [v4 llmQUTotalTime];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODPQAMetrics *)self spotlightTotalTime];
  v6 = [v4 spotlightTotalTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(PNRODSchemaPNRODPQAMetrics *)self spotlightTotalTime];
  if (v22)
  {
    v23 = v22;
    v24 = [(PNRODSchemaPNRODPQAMetrics *)self spotlightTotalTime];
    v25 = [v4 spotlightTotalTime];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODPQAMetrics *)self answerSynthesisTime];
  v6 = [v4 answerSynthesisTime];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(PNRODSchemaPNRODPQAMetrics *)self answerSynthesisTime];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(PNRODSchemaPNRODPQAMetrics *)self answerSynthesisTime];
    v30 = [v4 answerSynthesisTime];
    v31 = [v29 isEqual:v30];

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

- (void)writeTo:(id)a3
{
  v15 = a3;
  v4 = [(PNRODSchemaPNRODPQAMetrics *)self searchToolId];

  if (v4)
  {
    v5 = [(PNRODSchemaPNRODPQAMetrics *)self searchToolId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PNRODSchemaPNRODPQAMetrics *)self overallTime];

  if (v6)
  {
    v7 = [(PNRODSchemaPNRODPQAMetrics *)self overallTime];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PNRODSchemaPNRODPQAMetrics *)self llmQUTotalTime];

  if (v8)
  {
    v9 = [(PNRODSchemaPNRODPQAMetrics *)self llmQUTotalTime];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PNRODSchemaPNRODPQAMetrics *)self spotlightTotalTime];

  if (v10)
  {
    v11 = [(PNRODSchemaPNRODPQAMetrics *)self spotlightTotalTime];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(PNRODSchemaPNRODPQAMetrics *)self answerSynthesisTime];

  v13 = v15;
  if (v12)
  {
    v14 = [(PNRODSchemaPNRODPQAMetrics *)self answerSynthesisTime];
    PBDataWriterWriteSubmessage();

    v13 = v15;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PNRODSchemaPNRODPQAMetrics;
  v5 = [(SISchemaInstrumentationMessage *)&v22 applySensitiveConditionsPolicy:v4];
  v6 = [(PNRODSchemaPNRODPQAMetrics *)self searchToolId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PNRODSchemaPNRODPQAMetrics *)self deleteSearchToolId];
  }

  v9 = [(PNRODSchemaPNRODPQAMetrics *)self overallTime];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PNRODSchemaPNRODPQAMetrics *)self deleteOverallTime];
  }

  v12 = [(PNRODSchemaPNRODPQAMetrics *)self llmQUTotalTime];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PNRODSchemaPNRODPQAMetrics *)self deleteLlmQUTotalTime];
  }

  v15 = [(PNRODSchemaPNRODPQAMetrics *)self spotlightTotalTime];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PNRODSchemaPNRODPQAMetrics *)self deleteSpotlightTotalTime];
  }

  v18 = [(PNRODSchemaPNRODPQAMetrics *)self answerSynthesisTime];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
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